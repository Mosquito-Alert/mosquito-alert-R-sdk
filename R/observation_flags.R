#' Create a new ObservationFlags
#'
#' @description
#' ObservationFlags Class
#'
#' @docType class
#' @title ObservationFlags
#' @description ObservationFlags Class
#' @format An \code{R6Class} generator object
#' @field is_favourite  character
#' @field is_visible  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ObservationFlags <- R6::R6Class(
  "ObservationFlags",
  public = list(
    `is_favourite` = NULL,
    `is_visible` = NULL,

    #' @description
    #' Initialize a new ObservationFlags class.
    #'
    #' @param is_favourite is_favourite
    #' @param is_visible is_visible
    #' @param ... Other optional arguments.
    initialize = function(`is_favourite`, `is_visible`, ...) {
      if (!missing(`is_favourite`)) {
        if (!(is.logical(`is_favourite`) && length(`is_favourite`) == 1)) {
          stop(paste("Error! Invalid data for `is_favourite`. Must be a boolean:", `is_favourite`))
        }
        self$`is_favourite` <- `is_favourite`
      }
      if (!missing(`is_visible`)) {
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
    #' @return ObservationFlags as a base R list.
    #' @examples
    #' # convert array of ObservationFlags (x) to a data frame
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
    #' Convert ObservationFlags to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ObservationFlagsObject <- list()
      if (!is.null(self$`is_favourite`)) {
        ObservationFlagsObject[["is_favourite"]] <-
          self$`is_favourite`
      }
      if (!is.null(self$`is_visible`)) {
        ObservationFlagsObject[["is_visible"]] <-
          self$`is_visible`
      }
      return(ObservationFlagsObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of ObservationFlags
    #'
    #' @param input_json the JSON input
    #' @return the instance of ObservationFlags
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
    #' @return ObservationFlags in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ObservationFlags
    #'
    #' @param input_json the JSON input
    #' @return the instance of ObservationFlags
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`is_favourite` <- this_object$`is_favourite`
      self$`is_visible` <- this_object$`is_visible`
      self
    },

    #' @description
    #' Validate JSON input with respect to ObservationFlags and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `is_favourite`
      if (!is.null(input_json$`is_favourite`)) {
        if (!(is.logical(input_json$`is_favourite`) && length(input_json$`is_favourite`) == 1)) {
          stop(paste("Error! Invalid data for `is_favourite`. Must be a boolean:", input_json$`is_favourite`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ObservationFlags: the required field `is_favourite` is missing."))
      }
      # check the required field `is_visible`
      if (!is.null(input_json$`is_visible`)) {
        if (!(is.logical(input_json$`is_visible`) && length(input_json$`is_visible`) == 1)) {
          stop(paste("Error! Invalid data for `is_visible`. Must be a boolean:", input_json$`is_visible`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ObservationFlags: the required field `is_visible` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ObservationFlags
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `is_favourite` is null
      if (is.null(self$`is_favourite`)) {
        return(FALSE)
      }

      # check if the required `is_visible` is null
      if (is.null(self$`is_visible`)) {
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
      # check if the required `is_favourite` is null
      if (is.null(self$`is_favourite`)) {
        invalid_fields["is_favourite"] <- "Non-nullable required field `is_favourite` cannot be null."
      }

      # check if the required `is_visible` is null
      if (is.null(self$`is_visible`)) {
        invalid_fields["is_visible"] <- "Non-nullable required field `is_visible` cannot be null."
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
# ObservationFlags$unlock()
#
## Below is an example to define the print function
# ObservationFlags$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ObservationFlags$lock()

