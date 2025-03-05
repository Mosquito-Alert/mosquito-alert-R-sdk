#' Create a new ObservationPredictionRequest
#'
#' @description
#' ObservationPredictionRequest Class
#'
#' @docType class
#' @title ObservationPredictionRequest
#' @description ObservationPredictionRequest Class
#' @format An \code{R6Class} generator object
#' @field ref_photo_uuid The selected photo whose prediction represents the observation as the best classification result. character
#' @field is_executive_validation Whether if the photo prediction will be used as an executive validation for the report. character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ObservationPredictionRequest <- R6::R6Class(
  "ObservationPredictionRequest",
  public = list(
    `ref_photo_uuid` = NULL,
    `is_executive_validation` = NULL,

    #' @description
    #' Initialize a new ObservationPredictionRequest class.
    #'
    #' @param ref_photo_uuid The selected photo whose prediction represents the observation as the best classification result.
    #' @param is_executive_validation Whether if the photo prediction will be used as an executive validation for the report.. Default to FALSE.
    #' @param ... Other optional arguments.
    initialize = function(`ref_photo_uuid`, `is_executive_validation` = FALSE, ...) {
      if (!missing(`ref_photo_uuid`)) {
        if (!(is.character(`ref_photo_uuid`) && length(`ref_photo_uuid`) == 1)) {
          stop(paste("Error! Invalid data for `ref_photo_uuid`. Must be a string:", `ref_photo_uuid`))
        }
        self$`ref_photo_uuid` <- `ref_photo_uuid`
      }
      if (!is.null(`is_executive_validation`)) {
        if (!(is.logical(`is_executive_validation`) && length(`is_executive_validation`) == 1)) {
          stop(paste("Error! Invalid data for `is_executive_validation`. Must be a boolean:", `is_executive_validation`))
        }
        self$`is_executive_validation` <- `is_executive_validation`
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
    #' @return ObservationPredictionRequest as a base R list.
    #' @examples
    #' # convert array of ObservationPredictionRequest (x) to a data frame
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
    #' Convert ObservationPredictionRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ObservationPredictionRequestObject <- list()
      if (!is.null(self$`ref_photo_uuid`)) {
        ObservationPredictionRequestObject[["ref_photo_uuid"]] <-
          self$`ref_photo_uuid`
      }
      if (!is.null(self$`is_executive_validation`)) {
        ObservationPredictionRequestObject[["is_executive_validation"]] <-
          self$`is_executive_validation`
      }
      return(ObservationPredictionRequestObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of ObservationPredictionRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of ObservationPredictionRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`ref_photo_uuid`)) {
        self$`ref_photo_uuid` <- this_object$`ref_photo_uuid`
      }
      if (!is.null(this_object$`is_executive_validation`)) {
        self$`is_executive_validation` <- this_object$`is_executive_validation`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ObservationPredictionRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ObservationPredictionRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of ObservationPredictionRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`ref_photo_uuid` <- this_object$`ref_photo_uuid`
      self$`is_executive_validation` <- this_object$`is_executive_validation`
      self
    },

    #' @description
    #' Validate JSON input with respect to ObservationPredictionRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `ref_photo_uuid`
      if (!is.null(input_json$`ref_photo_uuid`)) {
        if (!(is.character(input_json$`ref_photo_uuid`) && length(input_json$`ref_photo_uuid`) == 1)) {
          stop(paste("Error! Invalid data for `ref_photo_uuid`. Must be a string:", input_json$`ref_photo_uuid`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ObservationPredictionRequest: the required field `ref_photo_uuid` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ObservationPredictionRequest
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `ref_photo_uuid` is null
      if (is.null(self$`ref_photo_uuid`)) {
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
      # check if the required `ref_photo_uuid` is null
      if (is.null(self$`ref_photo_uuid`)) {
        invalid_fields["ref_photo_uuid"] <- "Non-nullable required field `ref_photo_uuid` cannot be null."
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
# ObservationPredictionRequest$unlock()
#
## Below is an example to define the print function
# ObservationPredictionRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ObservationPredictionRequest$lock()

