#' Create a new TokenRefreshRequest
#'
#' @description
#' TokenRefreshRequest Class
#'
#' @docType class
#' @title TokenRefreshRequest
#' @description TokenRefreshRequest Class
#' @format An \code{R6Class} generator object
#' @field refresh  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
TokenRefreshRequest <- R6::R6Class(
  "TokenRefreshRequest",
  public = list(
    `refresh` = NULL,

    #' @description
    #' Initialize a new TokenRefreshRequest class.
    #'
    #' @param refresh refresh
    #' @param ... Other optional arguments.
    initialize = function(`refresh`, ...) {
      if (!missing(`refresh`)) {
        if (!(is.character(`refresh`) && length(`refresh`) == 1)) {
          stop(paste("Error! Invalid data for `refresh`. Must be a string:", `refresh`))
        }
        self$`refresh` <- `refresh`
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
    #' @return TokenRefreshRequest as a base R list.
    #' @examples
    #' # convert array of TokenRefreshRequest (x) to a data frame
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
    #' Convert TokenRefreshRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      TokenRefreshRequestObject <- list()
      if (!is.null(self$`refresh`)) {
        TokenRefreshRequestObject[["refresh"]] <-
          self$`refresh`
      }
      return(TokenRefreshRequestObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of TokenRefreshRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of TokenRefreshRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`refresh`)) {
        self$`refresh` <- this_object$`refresh`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return TokenRefreshRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of TokenRefreshRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of TokenRefreshRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`refresh` <- this_object$`refresh`
      self
    },

    #' @description
    #' Validate JSON input with respect to TokenRefreshRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `refresh`
      if (!is.null(input_json$`refresh`)) {
        if (!(is.character(input_json$`refresh`) && length(input_json$`refresh`) == 1)) {
          stop(paste("Error! Invalid data for `refresh`. Must be a string:", input_json$`refresh`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TokenRefreshRequest: the required field `refresh` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of TokenRefreshRequest
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `refresh` is null
      if (is.null(self$`refresh`)) {
        return(FALSE)
      }

      if (nchar(self$`refresh`) < 1) {
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
      # check if the required `refresh` is null
      if (is.null(self$`refresh`)) {
        invalid_fields["refresh"] <- "Non-nullable required field `refresh` cannot be null."
      }

      if (nchar(self$`refresh`) < 1) {
        invalid_fields["refresh"] <- "Invalid length for `refresh`, must be bigger than or equal to 1."
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
# TokenRefreshRequest$unlock()
#
## Below is an example to define the print function
# TokenRefreshRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# TokenRefreshRequest$lock()

