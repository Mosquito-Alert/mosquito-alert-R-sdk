#' Create a new MobileApp
#'
#' @description
#' MobileApp Class
#'
#' @docType class
#' @title MobileApp
#' @description MobileApp Class
#' @format An \code{R6Class} generator object
#' @field package_name  character
#' @field package_version  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
MobileApp <- R6::R6Class(
  "MobileApp",
  public = list(
    `package_name` = NULL,
    `package_version` = NULL,

    #' @description
    #' Initialize a new MobileApp class.
    #'
    #' @param package_name package_name
    #' @param package_version package_version
    #' @param ... Other optional arguments.
    initialize = function(`package_name`, `package_version`, ...) {
      if (!missing(`package_name`)) {
        if (!(is.character(`package_name`) && length(`package_name`) == 1)) {
          stop(paste("Error! Invalid data for `package_name`. Must be a string:", `package_name`))
        }
        self$`package_name` <- `package_name`
      }
      if (!missing(`package_version`)) {
        if (!(is.character(`package_version`) && length(`package_version`) == 1)) {
          stop(paste("Error! Invalid data for `package_version`. Must be a string:", `package_version`))
        }
        self$`package_version` <- `package_version`
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
    #' @return MobileApp as a base R list.
    #' @examples
    #' # convert array of MobileApp (x) to a data frame
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
    #' Convert MobileApp to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      MobileAppObject <- list()
      if (!is.null(self$`package_name`)) {
        MobileAppObject[["package_name"]] <-
          self$`package_name`
      }
      if (!is.null(self$`package_version`)) {
        MobileAppObject[["package_version"]] <-
          self$`package_version`
      }
      return(MobileAppObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of MobileApp
    #'
    #' @param input_json the JSON input
    #' @return the instance of MobileApp
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`package_name`)) {
        self$`package_name` <- this_object$`package_name`
      }
      if (!is.null(this_object$`package_version`)) {
        self$`package_version` <- this_object$`package_version`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return MobileApp in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of MobileApp
    #'
    #' @param input_json the JSON input
    #' @return the instance of MobileApp
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`package_name` <- this_object$`package_name`
      self$`package_version` <- this_object$`package_version`
      self
    },

    #' @description
    #' Validate JSON input with respect to MobileApp and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `package_name`
      if (!is.null(input_json$`package_name`)) {
        if (!(is.character(input_json$`package_name`) && length(input_json$`package_name`) == 1)) {
          stop(paste("Error! Invalid data for `package_name`. Must be a string:", input_json$`package_name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for MobileApp: the required field `package_name` is missing."))
      }
      # check the required field `package_version`
      if (!is.null(input_json$`package_version`)) {
        if (!(is.character(input_json$`package_version`) && length(input_json$`package_version`) == 1)) {
          stop(paste("Error! Invalid data for `package_version`. Must be a string:", input_json$`package_version`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for MobileApp: the required field `package_version` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of MobileApp
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `package_name` is null
      if (is.null(self$`package_name`)) {
        return(FALSE)
      }

      if (nchar(self$`package_name`) > 128) {
        return(FALSE)
      }

      # check if the required `package_version` is null
      if (is.null(self$`package_version`)) {
        return(FALSE)
      }

      if (nchar(self$`package_version`) > 32) {
        return(FALSE)
      }
      if (!str_detect(self$`package_version`, "^(\\d+)\\.(\\d+)\\.(\\d+)(?:-([0-9a-zA-Z.-]+))?(?:\\+([0-9a-zA-Z.-]+))?$")) {
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
      # check if the required `package_name` is null
      if (is.null(self$`package_name`)) {
        invalid_fields["package_name"] <- "Non-nullable required field `package_name` cannot be null."
      }

      if (nchar(self$`package_name`) > 128) {
        invalid_fields["package_name"] <- "Invalid length for `package_name`, must be smaller than or equal to 128."
      }

      # check if the required `package_version` is null
      if (is.null(self$`package_version`)) {
        invalid_fields["package_version"] <- "Non-nullable required field `package_version` cannot be null."
      }

      if (nchar(self$`package_version`) > 32) {
        invalid_fields["package_version"] <- "Invalid length for `package_version`, must be smaller than or equal to 32."
      }
      if (!str_detect(self$`package_version`, "^(\\d+)\\.(\\d+)\\.(\\d+)(?:-([0-9a-zA-Z.-]+))?(?:\\+([0-9a-zA-Z.-]+))?$")) {
        invalid_fields["package_version"] <- "Invalid value for `package_version`, must conform to the pattern ^(\\d+)\\.(\\d+)\\.(\\d+)(?:-([0-9a-zA-Z.-]+))?(?:\\+([0-9a-zA-Z.-]+))?$."
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
# MobileApp$unlock()
#
## Below is an example to define the print function
# MobileApp$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# MobileApp$lock()

