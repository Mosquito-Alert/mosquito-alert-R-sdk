#' Create a new UserPermission
#'
#' @description
#' UserPermission Class
#'
#' @docType class
#' @title UserPermission
#' @description UserPermission Class
#' @format An \code{R6Class} generator object
#' @field general  \link{GeneralPermission}
#' @field countries  list(\link{CountryPermission})
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
UserPermission <- R6::R6Class(
  "UserPermission",
  public = list(
    `general` = NULL,
    `countries` = NULL,

    #' @description
    #' Initialize a new UserPermission class.
    #'
    #' @param general general
    #' @param countries countries
    #' @param ... Other optional arguments.
    initialize = function(`general`, `countries`, ...) {
      if (!missing(`general`)) {
        stopifnot(R6::is.R6(`general`))
        self$`general` <- `general`
      }
      if (!missing(`countries`)) {
        stopifnot(is.vector(`countries`), length(`countries`) != 0)
        sapply(`countries`, function(x) stopifnot(R6::is.R6(x)))
        self$`countries` <- `countries`
      }
    },

    #' @description
    #' Convert to an R object. This method is deprecated. Use `toSimpleType()` instead.
    toJSON = function() {
      .Deprecated(new = "toSimpleType", msg = "Use the '$toSimpleType()' method instead since that is more clearly named. Use '$toJSONString()' to get a JSON string")
      return(self$toSimpleType())
    },

    #' @description
    #' Convert to a List
    #'
    #' Convert the R6 object to a list to work more easily with other tooling.
    #'
    #' @return UserPermission as a base R list.
    #' @examples
    #' # convert array of UserPermission (x) to a data frame
    #' \dontrun{
    #' library(purrr)
    #' library(tibble)
    #' df <- x |> map(\(y)y$toList()) |> map(as_tibble) |> list_rbind()
    #' df
    #' }
    toList = function() {
      return(self$toSimpleType())
    },

    #' @description
    #' Convert UserPermission to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      UserPermissionObject <- list()
      if (!is.null(self$`general`)) {
        UserPermissionObject[["general"]] <-
          self$`general`$toSimpleType()
      }
      if (!is.null(self$`countries`)) {
        UserPermissionObject[["countries"]] <-
          lapply(self$`countries`, function(x) x$toSimpleType())
      }
      return(UserPermissionObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of UserPermission
    #'
    #' @param input_json the JSON input
    #' @return the instance of UserPermission
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`general`)) {
        `general_object` <- GeneralPermission$new()
        `general_object`$fromJSON(jsonlite::toJSON(this_object$`general`, auto_unbox = TRUE, digits = NA))
        self$`general` <- `general_object`
      }
      if (!is.null(this_object$`countries`)) {
        self$`countries` <- ApiClient$new()$deserializeObj(this_object$`countries`, "array[CountryPermission]", loadNamespace("MosquitoAlert"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return UserPermission in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of UserPermission
    #'
    #' @param input_json the JSON input
    #' @return the instance of UserPermission
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`general` <- GeneralPermission$new()$fromJSON(jsonlite::toJSON(this_object$`general`, auto_unbox = TRUE, digits = NA))
      self$`countries` <- ApiClient$new()$deserializeObj(this_object$`countries`, "array[CountryPermission]", loadNamespace("MosquitoAlert"))
      self
    },

    #' @description
    #' Validate JSON input with respect to UserPermission and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `general`
      if (!is.null(input_json$`general`)) {
        stopifnot(R6::is.R6(input_json$`general`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UserPermission: the required field `general` is missing."))
      }
      # check the required field `countries`
      if (!is.null(input_json$`countries`)) {
        stopifnot(is.vector(input_json$`countries`), length(input_json$`countries`) != 0)
        tmp <- sapply(input_json$`countries`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UserPermission: the required field `countries` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of UserPermission
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `general` is null
      if (is.null(self$`general`)) {
        return(FALSE)
      }

      # check if the required `countries` is null
      if (is.null(self$`countries`)) {
        return(FALSE)
      }

      TRUE
    },

    #' @description
    #' Return a list of invalid fields (if any).
    #'
    #' @return A list of invalid fields (if any).
    getInvalidFields = function() {
      invalid_fields <- list()
      # check if the required `general` is null
      if (is.null(self$`general`)) {
        invalid_fields["general"] <- "Non-nullable required field `general` cannot be null."
      }

      # check if the required `countries` is null
      if (is.null(self$`countries`)) {
        invalid_fields["countries"] <- "Non-nullable required field `countries` cannot be null."
      }

      invalid_fields
    },

    #' @description
    #' Print the object
    print = function() {
      print(jsonlite::prettify(self$toJSONString()))
      invisible(self)
    }
  ),
  # Lock the class to prevent modifications to the method or field
  lock_class = TRUE
)
## Uncomment below to unlock the class to allow modifications of the method or field
# UserPermission$unlock()
#
## Below is an example to define the print function
# UserPermission$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# UserPermission$lock()

