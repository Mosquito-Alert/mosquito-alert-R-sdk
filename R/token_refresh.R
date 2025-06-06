#' Create a new TokenRefresh
#'
#' @description
#' TokenRefresh Class
#'
#' @docType class
#' @title TokenRefresh
#' @description TokenRefresh Class
#' @format An \code{R6Class} generator object
#' @field access  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
TokenRefresh <- R6::R6Class(
  "TokenRefresh",
  public = list(
    `access` = NULL,

    #' @description
    #' Initialize a new TokenRefresh class.
    #'
    #' @param access access
    #' @param ... Other optional arguments.
    initialize = function(`access`, ...) {
      if (!missing(`access`)) {
        if (!(is.character(`access`) && length(`access`) == 1)) {
          stop(paste("Error! Invalid data for `access`. Must be a string:", `access`))
        }
        self$`access` <- `access`
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
    #' @return TokenRefresh as a base R list.
    #' @examples
    #' # convert array of TokenRefresh (x) to a data frame
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
    #' Convert TokenRefresh to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      TokenRefreshObject <- list()
      if (!is.null(self$`access`)) {
        TokenRefreshObject[["access"]] <-
          self$`access`
      }
      return(TokenRefreshObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of TokenRefresh
    #'
    #' @param input_json the JSON input
    #' @return the instance of TokenRefresh
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`access`)) {
        self$`access` <- this_object$`access`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return TokenRefresh in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of TokenRefresh
    #'
    #' @param input_json the JSON input
    #' @return the instance of TokenRefresh
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`access` <- this_object$`access`
      self
    },

    #' @description
    #' Validate JSON input with respect to TokenRefresh and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `access`
      if (!is.null(input_json$`access`)) {
        if (!(is.character(input_json$`access`) && length(input_json$`access`) == 1)) {
          stop(paste("Error! Invalid data for `access`. Must be a string:", input_json$`access`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TokenRefresh: the required field `access` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of TokenRefresh
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `access` is null
      if (is.null(self$`access`)) {
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
      # check if the required `access` is null
      if (is.null(self$`access`)) {
        invalid_fields["access"] <- "Non-nullable required field `access` cannot be null."
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
# TokenRefresh$unlock()
#
## Below is an example to define the print function
# TokenRefresh$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# TokenRefresh$lock()

