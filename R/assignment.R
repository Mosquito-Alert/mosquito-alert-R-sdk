#' Create a new Assignment
#'
#' @description
#' Assignment Class
#'
#' @docType class
#' @title Assignment
#' @description Assignment Class
#' @format An \code{R6Class} generator object
#' @field observation  \link{AssignedObservation}
#' @field annotation_type  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Assignment <- R6::R6Class(
  "Assignment",
  public = list(
    `observation` = NULL,
    `annotation_type` = NULL,

    #' @description
    #' Initialize a new Assignment class.
    #'
    #' @param observation observation
    #' @param annotation_type annotation_type
    #' @param ... Other optional arguments.
    initialize = function(`observation`, `annotation_type`, ...) {
      if (!missing(`observation`)) {
        stopifnot(R6::is.R6(`observation`))
        self$`observation` <- `observation`
      }
      if (!missing(`annotation_type`)) {
        if (!(`annotation_type` %in% c("short", "long"))) {
          stop(paste("Error! \"", `annotation_type`, "\" cannot be assigned to `annotation_type`. Must be \"short\", \"long\".", sep = ""))
        }
        if (!(is.character(`annotation_type`) && length(`annotation_type`) == 1)) {
          stop(paste("Error! Invalid data for `annotation_type`. Must be a string:", `annotation_type`))
        }
        self$`annotation_type` <- `annotation_type`
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
    #' @return Assignment as a base R list.
    #' @examples
    #' # convert array of Assignment (x) to a data frame
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
    #' Convert Assignment to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AssignmentObject <- list()
      if (!is.null(self$`observation`)) {
        AssignmentObject[["observation"]] <-
          self$`observation`$toSimpleType()
      }
      if (!is.null(self$`annotation_type`)) {
        AssignmentObject[["annotation_type"]] <-
          self$`annotation_type`
      }
      return(AssignmentObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of Assignment
    #'
    #' @param input_json the JSON input
    #' @return the instance of Assignment
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`observation`)) {
        `observation_object` <- AssignedObservation$new()
        `observation_object`$fromJSON(jsonlite::toJSON(this_object$`observation`, auto_unbox = TRUE, digits = NA))
        self$`observation` <- `observation_object`
      }
      if (!is.null(this_object$`annotation_type`)) {
        if (!is.null(this_object$`annotation_type`) && !(this_object$`annotation_type` %in% c("short", "long"))) {
          stop(paste("Error! \"", this_object$`annotation_type`, "\" cannot be assigned to `annotation_type`. Must be \"short\", \"long\".", sep = ""))
        }
        self$`annotation_type` <- this_object$`annotation_type`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return Assignment in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of Assignment
    #'
    #' @param input_json the JSON input
    #' @return the instance of Assignment
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`observation` <- AssignedObservation$new()$fromJSON(jsonlite::toJSON(this_object$`observation`, auto_unbox = TRUE, digits = NA))
      if (!is.null(this_object$`annotation_type`) && !(this_object$`annotation_type` %in% c("short", "long"))) {
        stop(paste("Error! \"", this_object$`annotation_type`, "\" cannot be assigned to `annotation_type`. Must be \"short\", \"long\".", sep = ""))
      }
      self$`annotation_type` <- this_object$`annotation_type`
      self
    },

    #' @description
    #' Validate JSON input with respect to Assignment and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `observation`
      if (!is.null(input_json$`observation`)) {
        stopifnot(R6::is.R6(input_json$`observation`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Assignment: the required field `observation` is missing."))
      }
      # check the required field `annotation_type`
      if (!is.null(input_json$`annotation_type`)) {
        if (!(is.character(input_json$`annotation_type`) && length(input_json$`annotation_type`) == 1)) {
          stop(paste("Error! Invalid data for `annotation_type`. Must be a string:", input_json$`annotation_type`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Assignment: the required field `annotation_type` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Assignment
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `observation` is null
      if (is.null(self$`observation`)) {
        return(FALSE)
      }

      # check if the required `annotation_type` is null
      if (is.null(self$`annotation_type`)) {
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
      # check if the required `observation` is null
      if (is.null(self$`observation`)) {
        invalid_fields["observation"] <- "Non-nullable required field `observation` cannot be null."
      }

      # check if the required `annotation_type` is null
      if (is.null(self$`annotation_type`)) {
        invalid_fields["annotation_type"] <- "Non-nullable required field `annotation_type` cannot be null."
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
# Assignment$unlock()
#
## Below is an example to define the print function
# Assignment$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Assignment$lock()

