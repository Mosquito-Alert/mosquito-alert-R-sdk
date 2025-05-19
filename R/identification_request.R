#' Create a new IdentificationRequest
#'
#' @description
#' IdentificationRequest Class
#'
#' @docType class
#' @title IdentificationRequest
#' @description IdentificationRequest Class
#' @format An \code{R6Class} generator object
#' @field photo  \link{SimplePhotoRequest}
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
IdentificationRequest <- R6::R6Class(
  "IdentificationRequest",
  public = list(
    `photo` = NULL,

    #' @description
    #' Initialize a new IdentificationRequest class.
    #'
    #' @param photo photo
    #' @param ... Other optional arguments.
    initialize = function(`photo`, ...) {
      if (!missing(`photo`)) {
        stopifnot(R6::is.R6(`photo`))
        self$`photo` <- `photo`
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
    #' @return IdentificationRequest as a base R list.
    #' @examples
    #' # convert array of IdentificationRequest (x) to a data frame
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
    #' Convert IdentificationRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      IdentificationRequestObject <- list()
      if (!is.null(self$`photo`)) {
        IdentificationRequestObject[["photo"]] <-
          self$`photo`$toSimpleType()
      }
      return(IdentificationRequestObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of IdentificationRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of IdentificationRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`photo`)) {
        `photo_object` <- SimplePhotoRequest$new()
        `photo_object`$fromJSON(jsonlite::toJSON(this_object$`photo`, auto_unbox = TRUE, digits = NA))
        self$`photo` <- `photo_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return IdentificationRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of IdentificationRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of IdentificationRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`photo` <- SimplePhotoRequest$new()$fromJSON(jsonlite::toJSON(this_object$`photo`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to IdentificationRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `photo`
      if (!is.null(input_json$`photo`)) {
        stopifnot(R6::is.R6(input_json$`photo`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for IdentificationRequest: the required field `photo` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of IdentificationRequest
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `photo` is null
      if (is.null(self$`photo`)) {
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
      # check if the required `photo` is null
      if (is.null(self$`photo`)) {
        invalid_fields["photo"] <- "Non-nullable required field `photo` cannot be null."
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
# IdentificationRequest$unlock()
#
## Below is an example to define the print function
# IdentificationRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# IdentificationRequest$lock()

