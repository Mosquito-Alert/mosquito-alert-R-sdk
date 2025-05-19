#' Create a new PatchedPhotoPredictionRequest
#'
#' @description
#' PatchedPhotoPredictionRequest Class
#'
#' @docType class
#' @title PatchedPhotoPredictionRequest
#' @description PatchedPhotoPredictionRequest Class
#' @format An \code{R6Class} generator object
#' @field bbox  \link{BoundingBoxRequest} [optional]
#' @field insect_confidence Insect confidence numeric [optional]
#' @field predicted_class  character [optional]
#' @field threshold_deviation  numeric [optional]
#' @field is_decisive Indicates if this prediction can close the identification task. character [optional]
#' @field scores  \link{PredictionScoreRequest} [optional]
#' @field classifier_version  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PatchedPhotoPredictionRequest <- R6::R6Class(
  "PatchedPhotoPredictionRequest",
  public = list(
    `bbox` = NULL,
    `insect_confidence` = NULL,
    `predicted_class` = NULL,
    `threshold_deviation` = NULL,
    `is_decisive` = NULL,
    `scores` = NULL,
    `classifier_version` = NULL,

    #' @description
    #' Initialize a new PatchedPhotoPredictionRequest class.
    #'
    #' @param bbox bbox
    #' @param insect_confidence Insect confidence
    #' @param predicted_class predicted_class
    #' @param threshold_deviation threshold_deviation
    #' @param is_decisive Indicates if this prediction can close the identification task.
    #' @param scores scores
    #' @param classifier_version classifier_version
    #' @param ... Other optional arguments.
    initialize = function(`bbox` = NULL, `insect_confidence` = NULL, `predicted_class` = NULL, `threshold_deviation` = NULL, `is_decisive` = NULL, `scores` = NULL, `classifier_version` = NULL, ...) {
      if (!is.null(`bbox`)) {
        stopifnot(R6::is.R6(`bbox`))
        self$`bbox` <- `bbox`
      }
      if (!is.null(`insect_confidence`)) {
        if (!(is.numeric(`insect_confidence`) && length(`insect_confidence`) == 1)) {
          stop(paste("Error! Invalid data for `insect_confidence`. Must be a number:", `insect_confidence`))
        }
        self$`insect_confidence` <- `insect_confidence`
      }
      if (!is.null(`predicted_class`)) {
        if (!(`predicted_class` %in% c("ae_albopictus", "ae_aegypti", "ae_japonicus", "ae_koreicus", "culex", "anopheles", "culiseta", "other_species", "not_sure"))) {
          stop(paste("Error! \"", `predicted_class`, "\" cannot be assigned to `predicted_class`. Must be \"ae_albopictus\", \"ae_aegypti\", \"ae_japonicus\", \"ae_koreicus\", \"culex\", \"anopheles\", \"culiseta\", \"other_species\", \"not_sure\".", sep = ""))
        }
        if (!(is.character(`predicted_class`) && length(`predicted_class`) == 1)) {
          stop(paste("Error! Invalid data for `predicted_class`. Must be a string:", `predicted_class`))
        }
        self$`predicted_class` <- `predicted_class`
      }
      if (!is.null(`threshold_deviation`)) {
        if (!(is.numeric(`threshold_deviation`) && length(`threshold_deviation`) == 1)) {
          stop(paste("Error! Invalid data for `threshold_deviation`. Must be a number:", `threshold_deviation`))
        }
        self$`threshold_deviation` <- `threshold_deviation`
      }
      if (!is.null(`is_decisive`)) {
        if (!(is.logical(`is_decisive`) && length(`is_decisive`) == 1)) {
          stop(paste("Error! Invalid data for `is_decisive`. Must be a boolean:", `is_decisive`))
        }
        self$`is_decisive` <- `is_decisive`
      }
      if (!is.null(`scores`)) {
        stopifnot(R6::is.R6(`scores`))
        self$`scores` <- `scores`
      }
      if (!is.null(`classifier_version`)) {
        if (!(`classifier_version` %in% c("v2023.1", "v2024.1", "v2025.1", "v2025.2", "v2025.3", "v2025.4"))) {
          stop(paste("Error! \"", `classifier_version`, "\" cannot be assigned to `classifier_version`. Must be \"v2023.1\", \"v2024.1\", \"v2025.1\", \"v2025.2\", \"v2025.3\", \"v2025.4\".", sep = ""))
        }
        if (!(is.character(`classifier_version`) && length(`classifier_version`) == 1)) {
          stop(paste("Error! Invalid data for `classifier_version`. Must be a string:", `classifier_version`))
        }
        self$`classifier_version` <- `classifier_version`
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
    #' @return PatchedPhotoPredictionRequest as a base R list.
    #' @examples
    #' # convert array of PatchedPhotoPredictionRequest (x) to a data frame
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
    #' Convert PatchedPhotoPredictionRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      PatchedPhotoPredictionRequestObject <- list()
      if (!is.null(self$`bbox`)) {
        PatchedPhotoPredictionRequestObject[["bbox"]] <-
          self$`bbox`$toSimpleType()
      }
      if (!is.null(self$`insect_confidence`)) {
        PatchedPhotoPredictionRequestObject[["insect_confidence"]] <-
          self$`insect_confidence`
      }
      if (!is.null(self$`predicted_class`)) {
        PatchedPhotoPredictionRequestObject[["predicted_class"]] <-
          self$`predicted_class`
      }
      if (!is.null(self$`threshold_deviation`)) {
        PatchedPhotoPredictionRequestObject[["threshold_deviation"]] <-
          self$`threshold_deviation`
      }
      if (!is.null(self$`is_decisive`)) {
        PatchedPhotoPredictionRequestObject[["is_decisive"]] <-
          self$`is_decisive`
      }
      if (!is.null(self$`scores`)) {
        PatchedPhotoPredictionRequestObject[["scores"]] <-
          self$`scores`$toSimpleType()
      }
      if (!is.null(self$`classifier_version`)) {
        PatchedPhotoPredictionRequestObject[["classifier_version"]] <-
          self$`classifier_version`
      }
      return(PatchedPhotoPredictionRequestObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of PatchedPhotoPredictionRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of PatchedPhotoPredictionRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`bbox`)) {
        `bbox_object` <- BoundingBoxRequest$new()
        `bbox_object`$fromJSON(jsonlite::toJSON(this_object$`bbox`, auto_unbox = TRUE, digits = NA))
        self$`bbox` <- `bbox_object`
      }
      if (!is.null(this_object$`insect_confidence`)) {
        self$`insect_confidence` <- this_object$`insect_confidence`
      }
      if (!is.null(this_object$`predicted_class`)) {
        if (!is.null(this_object$`predicted_class`) && !(this_object$`predicted_class` %in% c("ae_albopictus", "ae_aegypti", "ae_japonicus", "ae_koreicus", "culex", "anopheles", "culiseta", "other_species", "not_sure"))) {
          stop(paste("Error! \"", this_object$`predicted_class`, "\" cannot be assigned to `predicted_class`. Must be \"ae_albopictus\", \"ae_aegypti\", \"ae_japonicus\", \"ae_koreicus\", \"culex\", \"anopheles\", \"culiseta\", \"other_species\", \"not_sure\".", sep = ""))
        }
        self$`predicted_class` <- this_object$`predicted_class`
      }
      if (!is.null(this_object$`threshold_deviation`)) {
        self$`threshold_deviation` <- this_object$`threshold_deviation`
      }
      if (!is.null(this_object$`is_decisive`)) {
        self$`is_decisive` <- this_object$`is_decisive`
      }
      if (!is.null(this_object$`scores`)) {
        `scores_object` <- PredictionScoreRequest$new()
        `scores_object`$fromJSON(jsonlite::toJSON(this_object$`scores`, auto_unbox = TRUE, digits = NA))
        self$`scores` <- `scores_object`
      }
      if (!is.null(this_object$`classifier_version`)) {
        if (!is.null(this_object$`classifier_version`) && !(this_object$`classifier_version` %in% c("v2023.1", "v2024.1", "v2025.1", "v2025.2", "v2025.3", "v2025.4"))) {
          stop(paste("Error! \"", this_object$`classifier_version`, "\" cannot be assigned to `classifier_version`. Must be \"v2023.1\", \"v2024.1\", \"v2025.1\", \"v2025.2\", \"v2025.3\", \"v2025.4\".", sep = ""))
        }
        self$`classifier_version` <- this_object$`classifier_version`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return PatchedPhotoPredictionRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of PatchedPhotoPredictionRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of PatchedPhotoPredictionRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`bbox` <- BoundingBoxRequest$new()$fromJSON(jsonlite::toJSON(this_object$`bbox`, auto_unbox = TRUE, digits = NA))
      self$`insect_confidence` <- this_object$`insect_confidence`
      if (!is.null(this_object$`predicted_class`) && !(this_object$`predicted_class` %in% c("ae_albopictus", "ae_aegypti", "ae_japonicus", "ae_koreicus", "culex", "anopheles", "culiseta", "other_species", "not_sure"))) {
        stop(paste("Error! \"", this_object$`predicted_class`, "\" cannot be assigned to `predicted_class`. Must be \"ae_albopictus\", \"ae_aegypti\", \"ae_japonicus\", \"ae_koreicus\", \"culex\", \"anopheles\", \"culiseta\", \"other_species\", \"not_sure\".", sep = ""))
      }
      self$`predicted_class` <- this_object$`predicted_class`
      self$`threshold_deviation` <- this_object$`threshold_deviation`
      self$`is_decisive` <- this_object$`is_decisive`
      self$`scores` <- PredictionScoreRequest$new()$fromJSON(jsonlite::toJSON(this_object$`scores`, auto_unbox = TRUE, digits = NA))
      if (!is.null(this_object$`classifier_version`) && !(this_object$`classifier_version` %in% c("v2023.1", "v2024.1", "v2025.1", "v2025.2", "v2025.3", "v2025.4"))) {
        stop(paste("Error! \"", this_object$`classifier_version`, "\" cannot be assigned to `classifier_version`. Must be \"v2023.1\", \"v2024.1\", \"v2025.1\", \"v2025.2\", \"v2025.3\", \"v2025.4\".", sep = ""))
      }
      self$`classifier_version` <- this_object$`classifier_version`
      self
    },

    #' @description
    #' Validate JSON input with respect to PatchedPhotoPredictionRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of PatchedPhotoPredictionRequest
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      if (self$`insect_confidence` > 1.0) {
        return(FALSE)
      }
      if (self$`insect_confidence` < 0.0) {
        return(FALSE)
      }

      if (self$`threshold_deviation` > 1.0) {
        return(FALSE)
      }
      if (self$`threshold_deviation` < -1.0) {
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
      if (self$`insect_confidence` > 1.0) {
        invalid_fields["insect_confidence"] <- "Invalid value for `insect_confidence`, must be smaller than or equal to 1.0."
      }
      if (self$`insect_confidence` < 0.0) {
        invalid_fields["insect_confidence"] <- "Invalid value for `insect_confidence`, must be bigger than or equal to 0.0."
      }

      if (self$`threshold_deviation` > 1.0) {
        invalid_fields["threshold_deviation"] <- "Invalid value for `threshold_deviation`, must be smaller than or equal to 1.0."
      }
      if (self$`threshold_deviation` < -1.0) {
        invalid_fields["threshold_deviation"] <- "Invalid value for `threshold_deviation`, must be bigger than or equal to -1.0."
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
# PatchedPhotoPredictionRequest$unlock()
#
## Below is an example to define the print function
# PatchedPhotoPredictionRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PatchedPhotoPredictionRequest$lock()

