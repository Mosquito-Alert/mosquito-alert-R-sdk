#' Create a new ObservationFlagsRequest
#'
#' @description
#' ObservationFlagsRequest Class
#'
#' @docType class
#' @title ObservationFlagsRequest
#' @description ObservationFlagsRequest Class
#' @format An \code{R6Class} generator object
#' @field is_favourite  character [optional]
#' @field is_visible  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ObservationFlagsRequest <- R6::R6Class(
  "ObservationFlagsRequest",
  public = list(
    `is_favourite` = NULL,
    `is_visible` = NULL,

    #' @description
    #' Initialize a new ObservationFlagsRequest class.
    #'
    #' @param is_favourite is_favourite. Default to FALSE.
    #' @param is_visible is_visible. Default to TRUE.
    #' @param ... Other optional arguments.
    initialize = function(`is_favourite` = FALSE, `is_visible` = TRUE, ...) {
      if (!is.null(`is_favourite`)) {
        if (!(is.logical(`is_favourite`) && length(`is_favourite`) == 1)) {
          stop(paste("Error! Invalid data for `is_favourite`. Must be a boolean:", `is_favourite`))
        }
        self$`is_favourite` <- `is_favourite`
      }
      if (!is.null(`is_visible`)) {
        if (!(is.logical(`is_visible`) && length(`is_visible`) == 1)) {
          stop(paste("Error! Invalid data for `is_visible`. Must be a boolean:", `is_visible`))
        }
        self$`is_visible` <- `is_visible`
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
    #' @return ObservationFlagsRequest as a base R list.
    #' @examples
    #' # convert array of ObservationFlagsRequest (x) to a data frame
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
    #' Convert ObservationFlagsRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ObservationFlagsRequestObject <- list()
      if (!is.null(self$`is_favourite`)) {
        ObservationFlagsRequestObject[["is_favourite"]] <-
          self$`is_favourite`
      }
      if (!is.null(self$`is_visible`)) {
        ObservationFlagsRequestObject[["is_visible"]] <-
          self$`is_visible`
      }
      return(ObservationFlagsRequestObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of ObservationFlagsRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of ObservationFlagsRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`is_favourite`)) {
        self$`is_favourite` <- this_object$`is_favourite`
      }
      if (!is.null(this_object$`is_visible`)) {
        self$`is_visible` <- this_object$`is_visible`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ObservationFlagsRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ObservationFlagsRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of ObservationFlagsRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`is_favourite` <- this_object$`is_favourite`
      self$`is_visible` <- this_object$`is_visible`
      self
    },

    #' @description
    #' Validate JSON input with respect to ObservationFlagsRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ObservationFlagsRequest
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
# ObservationFlagsRequest$unlock()
#
## Below is an example to define the print function
# ObservationFlagsRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ObservationFlagsRequest$lock()

