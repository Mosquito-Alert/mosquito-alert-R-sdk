#' Create a new SimplePhotoRequest
#'
#' @description
#' SimplePhotoRequest Class
#'
#' @docType class
#' @title SimplePhotoRequest
#' @description SimplePhotoRequest Class
#' @format An \code{R6Class} generator object
#' @field file  data.frame
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SimplePhotoRequest <- R6::R6Class(
  "SimplePhotoRequest",
  public = list(
    `file` = NULL,

    #' @description
    #' Initialize a new SimplePhotoRequest class.
    #'
    #' @param file file
    #' @param ... Other optional arguments.
    initialize = function(`file`, ...) {
      if (!missing(`file`)) {
        self$`file` <- `file`
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
    #' @return SimplePhotoRequest as a base R list.
    #' @examples
    #' # convert array of SimplePhotoRequest (x) to a data frame
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
    #' Convert SimplePhotoRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      SimplePhotoRequestObject <- list()
      if (!is.null(self$`file`)) {
        SimplePhotoRequestObject[["file"]] <-
          self$`file`
      }
      return(SimplePhotoRequestObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of SimplePhotoRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of SimplePhotoRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`file`)) {
        self$`file` <- this_object$`file`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return SimplePhotoRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of SimplePhotoRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of SimplePhotoRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`file` <- this_object$`file`
      self
    },

    #' @description
    #' Validate JSON input with respect to SimplePhotoRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `file`
      if (!is.null(input_json$`file`)) {
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SimplePhotoRequest: the required field `file` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of SimplePhotoRequest
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `file` is null
      if (is.null(self$`file`)) {
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
      # check if the required `file` is null
      if (is.null(self$`file`)) {
        invalid_fields["file"] <- "Non-nullable required field `file` cannot be null."
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
# SimplePhotoRequest$unlock()
#
## Below is an example to define the print function
# SimplePhotoRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# SimplePhotoRequest$lock()

