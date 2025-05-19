#' Create a new AnnotationClassification
#'
#' @description
#' AnnotationClassification Class
#'
#' @docType class
#' @title AnnotationClassification
#' @description AnnotationClassification Class
#' @format An \code{R6Class} generator object
#' @field taxon  \link{SimpleTaxon}
#' @field confidence  numeric
#' @field confidence_label  character
#' @field is_high_confidence  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AnnotationClassification <- R6::R6Class(
  "AnnotationClassification",
  public = list(
    `taxon` = NULL,
    `confidence` = NULL,
    `confidence_label` = NULL,
    `is_high_confidence` = NULL,

    #' @description
    #' Initialize a new AnnotationClassification class.
    #'
    #' @param taxon taxon
    #' @param confidence confidence
    #' @param confidence_label confidence_label
    #' @param is_high_confidence is_high_confidence
    #' @param ... Other optional arguments.
    initialize = function(`taxon`, `confidence`, `confidence_label`, `is_high_confidence`, ...) {
      if (!missing(`taxon`)) {
        stopifnot(R6::is.R6(`taxon`))
        self$`taxon` <- `taxon`
      }
      if (!missing(`confidence`)) {
        if (!(is.numeric(`confidence`) && length(`confidence`) == 1)) {
          stop(paste("Error! Invalid data for `confidence`. Must be a number:", `confidence`))
        }
        self$`confidence` <- `confidence`
      }
      if (!missing(`confidence_label`)) {
        if (!(`confidence_label` %in% c("definitely", "probably"))) {
          stop(paste("Error! \"", `confidence_label`, "\" cannot be assigned to `confidence_label`. Must be \"definitely\", \"probably\".", sep = ""))
        }
        if (!(is.character(`confidence_label`) && length(`confidence_label`) == 1)) {
          stop(paste("Error! Invalid data for `confidence_label`. Must be a string:", `confidence_label`))
        }
        self$`confidence_label` <- `confidence_label`
      }
      if (!missing(`is_high_confidence`)) {
        if (!(is.logical(`is_high_confidence`) && length(`is_high_confidence`) == 1)) {
          stop(paste("Error! Invalid data for `is_high_confidence`. Must be a boolean:", `is_high_confidence`))
        }
        self$`is_high_confidence` <- `is_high_confidence`
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
    #' @return AnnotationClassification as a base R list.
    #' @examples
    #' # convert array of AnnotationClassification (x) to a data frame
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
    #' Convert AnnotationClassification to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AnnotationClassificationObject <- list()
      if (!is.null(self$`taxon`)) {
        AnnotationClassificationObject[["taxon"]] <-
          self$`taxon`$toSimpleType()
      }
      if (!is.null(self$`confidence`)) {
        AnnotationClassificationObject[["confidence"]] <-
          self$`confidence`
      }
      if (!is.null(self$`confidence_label`)) {
        AnnotationClassificationObject[["confidence_label"]] <-
          self$`confidence_label`
      }
      if (!is.null(self$`is_high_confidence`)) {
        AnnotationClassificationObject[["is_high_confidence"]] <-
          self$`is_high_confidence`
      }
      return(AnnotationClassificationObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of AnnotationClassification
    #'
    #' @param input_json the JSON input
    #' @return the instance of AnnotationClassification
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`taxon`)) {
        `taxon_object` <- SimpleTaxon$new()
        `taxon_object`$fromJSON(jsonlite::toJSON(this_object$`taxon`, auto_unbox = TRUE, digits = NA))
        self$`taxon` <- `taxon_object`
      }
      if (!is.null(this_object$`confidence`)) {
        self$`confidence` <- this_object$`confidence`
      }
      if (!is.null(this_object$`confidence_label`)) {
        if (!is.null(this_object$`confidence_label`) && !(this_object$`confidence_label` %in% c("definitely", "probably"))) {
          stop(paste("Error! \"", this_object$`confidence_label`, "\" cannot be assigned to `confidence_label`. Must be \"definitely\", \"probably\".", sep = ""))
        }
        self$`confidence_label` <- this_object$`confidence_label`
      }
      if (!is.null(this_object$`is_high_confidence`)) {
        self$`is_high_confidence` <- this_object$`is_high_confidence`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return AnnotationClassification in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of AnnotationClassification
    #'
    #' @param input_json the JSON input
    #' @return the instance of AnnotationClassification
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`taxon` <- SimpleTaxon$new()$fromJSON(jsonlite::toJSON(this_object$`taxon`, auto_unbox = TRUE, digits = NA))
      self$`confidence` <- this_object$`confidence`
      if (!is.null(this_object$`confidence_label`) && !(this_object$`confidence_label` %in% c("definitely", "probably"))) {
        stop(paste("Error! \"", this_object$`confidence_label`, "\" cannot be assigned to `confidence_label`. Must be \"definitely\", \"probably\".", sep = ""))
      }
      self$`confidence_label` <- this_object$`confidence_label`
      self$`is_high_confidence` <- this_object$`is_high_confidence`
      self
    },

    #' @description
    #' Validate JSON input with respect to AnnotationClassification and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `taxon`
      if (!is.null(input_json$`taxon`)) {
        stopifnot(R6::is.R6(input_json$`taxon`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AnnotationClassification: the required field `taxon` is missing."))
      }
      # check the required field `confidence`
      if (!is.null(input_json$`confidence`)) {
        if (!(is.numeric(input_json$`confidence`) && length(input_json$`confidence`) == 1)) {
          stop(paste("Error! Invalid data for `confidence`. Must be a number:", input_json$`confidence`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AnnotationClassification: the required field `confidence` is missing."))
      }
      # check the required field `confidence_label`
      if (!is.null(input_json$`confidence_label`)) {
        if (!(is.character(input_json$`confidence_label`) && length(input_json$`confidence_label`) == 1)) {
          stop(paste("Error! Invalid data for `confidence_label`. Must be a string:", input_json$`confidence_label`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AnnotationClassification: the required field `confidence_label` is missing."))
      }
      # check the required field `is_high_confidence`
      if (!is.null(input_json$`is_high_confidence`)) {
        if (!(is.logical(input_json$`is_high_confidence`) && length(input_json$`is_high_confidence`) == 1)) {
          stop(paste("Error! Invalid data for `is_high_confidence`. Must be a boolean:", input_json$`is_high_confidence`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AnnotationClassification: the required field `is_high_confidence` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AnnotationClassification
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `taxon` is null
      if (is.null(self$`taxon`)) {
        return(FALSE)
      }

      # check if the required `confidence` is null
      if (is.null(self$`confidence`)) {
        return(FALSE)
      }

      # check if the required `confidence_label` is null
      if (is.null(self$`confidence_label`)) {
        return(FALSE)
      }

      # check if the required `is_high_confidence` is null
      if (is.null(self$`is_high_confidence`)) {
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
      # check if the required `taxon` is null
      if (is.null(self$`taxon`)) {
        invalid_fields["taxon"] <- "Non-nullable required field `taxon` cannot be null."
      }

      # check if the required `confidence` is null
      if (is.null(self$`confidence`)) {
        invalid_fields["confidence"] <- "Non-nullable required field `confidence` cannot be null."
      }

      # check if the required `confidence_label` is null
      if (is.null(self$`confidence_label`)) {
        invalid_fields["confidence_label"] <- "Non-nullable required field `confidence_label` cannot be null."
      }

      # check if the required `is_high_confidence` is null
      if (is.null(self$`is_high_confidence`)) {
        invalid_fields["is_high_confidence"] <- "Non-nullable required field `is_high_confidence` cannot be null."
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
# AnnotationClassification$unlock()
#
## Below is an example to define the print function
# AnnotationClassification$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AnnotationClassification$lock()

