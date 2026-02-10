#' Create a new TemporaryBoundaryRequest
#'
#' @description
#' TemporaryBoundaryRequest Class
#'
#' @docType class
#' @title TemporaryBoundaryRequest
#' @description TemporaryBoundaryRequest Class
#' @format An \code{R6Class} generator object
#' @field geojson  \link{AnyType}
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
TemporaryBoundaryRequest <- R6::R6Class(
  "TemporaryBoundaryRequest",
  public = list(
    `geojson` = NULL,

    #' @description
    #' Initialize a new TemporaryBoundaryRequest class.
    #'
    #' @param geojson geojson
    #' @param ... Other optional arguments.
    initialize = function(`geojson`, ...) {
      if (!missing(`geojson`)) {
        stopifnot(R6::is.R6(`geojson`))
        self$`geojson` <- `geojson`
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
    #' @return TemporaryBoundaryRequest as a base R list.
    #' @examples
    #' # convert array of TemporaryBoundaryRequest (x) to a data frame
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
    #' Convert TemporaryBoundaryRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      TemporaryBoundaryRequestObject <- list()
      if (!is.null(self$`geojson`)) {
        TemporaryBoundaryRequestObject[["geojson"]] <-
          self$`geojson`$toSimpleType()
      }
      return(TemporaryBoundaryRequestObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of TemporaryBoundaryRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of TemporaryBoundaryRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`geojson`)) {
        `geojson_object` <- AnyType$new()
        `geojson_object`$fromJSON(jsonlite::toJSON(this_object$`geojson`, auto_unbox = TRUE, digits = NA))
        self$`geojson` <- `geojson_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return TemporaryBoundaryRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of TemporaryBoundaryRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of TemporaryBoundaryRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`geojson` <- AnyType$new()$fromJSON(jsonlite::toJSON(this_object$`geojson`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to TemporaryBoundaryRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `geojson`
      if (!is.null(input_json$`geojson`)) {
        stopifnot(R6::is.R6(input_json$`geojson`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TemporaryBoundaryRequest: the required field `geojson` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of TemporaryBoundaryRequest
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      TRUE
    },

    #' @description
    #' Return a list of invalid fields (if any).
    #'
    #' @return A list of invalid fields (if any).
    getInvalidFields = function() {
      invalid_fields <- list()
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
# TemporaryBoundaryRequest$unlock()
#
## Below is an example to define the print function
# TemporaryBoundaryRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# TemporaryBoundaryRequest$lock()

