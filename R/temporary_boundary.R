#' Create a new TemporaryBoundary
#'
#' @description
#' TemporaryBoundary Class
#'
#' @docType class
#' @title TemporaryBoundary
#' @description TemporaryBoundary Class
#' @format An \code{R6Class} generator object
#' @field uuid  character
#' @field expires_in Time in seconds until this cached boundary expires. integer
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
TemporaryBoundary <- R6::R6Class(
  "TemporaryBoundary",
  public = list(
    `uuid` = NULL,
    `expires_in` = NULL,

    #' @description
    #' Initialize a new TemporaryBoundary class.
    #'
    #' @param uuid uuid
    #' @param expires_in Time in seconds until this cached boundary expires.
    #' @param ... Other optional arguments.
    initialize = function(`uuid`, `expires_in`, ...) {
      if (!missing(`uuid`)) {
        if (!(is.character(`uuid`) && length(`uuid`) == 1)) {
          stop(paste("Error! Invalid data for `uuid`. Must be a string:", `uuid`))
        }
        self$`uuid` <- `uuid`
      }
      if (!missing(`expires_in`)) {
        if (!(is.numeric(`expires_in`) && length(`expires_in`) == 1)) {
          stop(paste("Error! Invalid data for `expires_in`. Must be an integer:", `expires_in`))
        }
        self$`expires_in` <- `expires_in`
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
    #' @return TemporaryBoundary as a base R list.
    #' @examples
    #' # convert array of TemporaryBoundary (x) to a data frame
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
    #' Convert TemporaryBoundary to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      TemporaryBoundaryObject <- list()
      if (!is.null(self$`uuid`)) {
        TemporaryBoundaryObject[["uuid"]] <-
          self$`uuid`
      }
      if (!is.null(self$`expires_in`)) {
        TemporaryBoundaryObject[["expires_in"]] <-
          self$`expires_in`
      }
      return(TemporaryBoundaryObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of TemporaryBoundary
    #'
    #' @param input_json the JSON input
    #' @return the instance of TemporaryBoundary
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`uuid`)) {
        self$`uuid` <- this_object$`uuid`
      }
      if (!is.null(this_object$`expires_in`)) {
        self$`expires_in` <- this_object$`expires_in`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return TemporaryBoundary in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of TemporaryBoundary
    #'
    #' @param input_json the JSON input
    #' @return the instance of TemporaryBoundary
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`uuid` <- this_object$`uuid`
      self$`expires_in` <- this_object$`expires_in`
      self
    },

    #' @description
    #' Validate JSON input with respect to TemporaryBoundary and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `uuid`
      if (!is.null(input_json$`uuid`)) {
        if (!(is.character(input_json$`uuid`) && length(input_json$`uuid`) == 1)) {
          stop(paste("Error! Invalid data for `uuid`. Must be a string:", input_json$`uuid`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TemporaryBoundary: the required field `uuid` is missing."))
      }
      # check the required field `expires_in`
      if (!is.null(input_json$`expires_in`)) {
        if (!(is.numeric(input_json$`expires_in`) && length(input_json$`expires_in`) == 1)) {
          stop(paste("Error! Invalid data for `expires_in`. Must be an integer:", input_json$`expires_in`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TemporaryBoundary: the required field `expires_in` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of TemporaryBoundary
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `uuid` is null
      if (is.null(self$`uuid`)) {
        return(FALSE)
      }

      # check if the required `expires_in` is null
      if (is.null(self$`expires_in`)) {
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
      # check if the required `uuid` is null
      if (is.null(self$`uuid`)) {
        invalid_fields["uuid"] <- "Non-nullable required field `uuid` cannot be null."
      }

      # check if the required `expires_in` is null
      if (is.null(self$`expires_in`)) {
        invalid_fields["expires_in"] <- "Non-nullable required field `expires_in` cannot be null."
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
# TemporaryBoundary$unlock()
#
## Below is an example to define the print function
# TemporaryBoundary$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# TemporaryBoundary$lock()

