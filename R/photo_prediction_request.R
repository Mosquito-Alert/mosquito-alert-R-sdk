#' Create a new PhotoPredictionRequest
#'
#' @description
#' PhotoPredictionRequest Class
#'
#' @docType class
#' @title PhotoPredictionRequest
#' @description PhotoPredictionRequest Class
#' @format An \code{R6Class} generator object
#' @field bbox  \link{BoundingBoxRequest}
#' @field insect_confidence Insect confidence numeric
#' @field predicted_class  character
#' @field threshold_deviation  numeric
#' @field is_decisive Indicates if this prediction can close the identification task. character [optional]
#' @field scores  \link{PredictionScoreRequest}
#' @field classifier_version  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PhotoPredictionRequest <- R6::R6Class(
  "PhotoPredictionRequest",
  public = list(
    `bbox` = NULL,
    `insect_confidence` = NULL,
    `predicted_class` = NULL,
    `threshold_deviation` = NULL,
    `is_decisive` = NULL,
    `scores` = NULL,
    `classifier_version` = NULL,

    #' @description
    #' Initialize a new PhotoPredictionRequest class.
    #'
    #' @param bbox bbox
    #' @param insect_confidence Insect confidence
    #' @param predicted_class predicted_class
    #' @param threshold_deviation threshold_deviation
    #' @param scores scores
    #' @param classifier_version classifier_version
    #' @param is_decisive Indicates if this prediction can close the identification task.
    #' @param ... Other optional arguments.
    initialize = function(`bbox`, `insect_confidence`, `predicted_class`, `threshold_deviation`, `scores`, `classifier_version`, `is_decisive` = NULL, ...) {
      if (!missing(`bbox`)) {
        stopifnot(R6::is.R6(`bbox`))
        self$`bbox` <- `bbox`
      }
      if (!missing(`insect_confidence`)) {
        if (!(is.numeric(`insect_confidence`) && length(`insect_confidence`) == 1)) {
          stop(paste("Error! Invalid data for `insect_confidence`. Must be a number:", `insect_confidence`))
        }
        self$`insect_confidence` <- `insect_confidence`
      }
      if (!missing(`predicted_class`)) {
        if (!(`predicted_class` %in% c("ae_albopictus", "ae_aegypti", "ae_japonicus", "ae_koreicus", "culex", "anopheles", "culiseta", "other_species", "not_sure"))) {
          stop(paste("Error! \"", `predicted_class`, "\" cannot be assigned to `predicted_class`. Must be \"ae_albopictus\", \"ae_aegypti\", \"ae_japonicus\", \"ae_koreicus\", \"culex\", \"anopheles\", \"culiseta\", \"other_species\", \"not_sure\".", sep = ""))
        }
        if (!(is.character(`predicted_class`) && length(`predicted_class`) == 1)) {
          stop(paste("Error! Invalid data for `predicted_class`. Must be a string:", `predicted_class`))
        }
        self$`predicted_class` <- `predicted_class`
      }
      if (!missing(`threshold_deviation`)) {
        if (!(is.numeric(`threshold_deviation`) && length(`threshold_deviation`) == 1)) {
          stop(paste("Error! Invalid data for `threshold_deviation`. Must be a number:", `threshold_deviation`))
        }
        self$`threshold_deviation` <- `threshold_deviation`
      }
      if (!missing(`scores`)) {
        stopifnot(R6::is.R6(`scores`))
        self$`scores` <- `scores`
      }
      if (!missing(`classifier_version`)) {
        if (!(`classifier_version` %in% c("v2023.1", "v2024.1", "v2025.1", "v2025.2", "v2025.3", "v2025.4"))) {
          stop(paste("Error! \"", `classifier_version`, "\" cannot be assigned to `classifier_version`. Must be \"v2023.1\", \"v2024.1\", \"v2025.1\", \"v2025.2\", \"v2025.3\", \"v2025.4\".", sep = ""))
        }
        if (!(is.character(`classifier_version`) && length(`classifier_version`) == 1)) {
          stop(paste("Error! Invalid data for `classifier_version`. Must be a string:", `classifier_version`))
        }
        self$`classifier_version` <- `classifier_version`
      }
      if (!is.null(`is_decisive`)) {
        if (!(is.logical(`is_decisive`) && length(`is_decisive`) == 1)) {
          stop(paste("Error! Invalid data for `is_decisive`. Must be a boolean:", `is_decisive`))
        }
        self$`is_decisive` <- `is_decisive`
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
    #' @return PhotoPredictionRequest as a base R list.
    #' @examples
    #' # convert array of PhotoPredictionRequest (x) to a data frame
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
    #' Convert PhotoPredictionRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      PhotoPredictionRequestObject <- list()
      if (!is.null(self$`bbox`)) {
        PhotoPredictionRequestObject[["bbox"]] <-
          self$`bbox`$toSimpleType()
      }
      if (!is.null(self$`insect_confidence`)) {
        PhotoPredictionRequestObject[["insect_confidence"]] <-
          self$`insect_confidence`
      }
      if (!is.null(self$`predicted_class`)) {
        PhotoPredictionRequestObject[["predicted_class"]] <-
          self$`predicted_class`
      }
      if (!is.null(self$`threshold_deviation`)) {
        PhotoPredictionRequestObject[["threshold_deviation"]] <-
          self$`threshold_deviation`
      }
      if (!is.null(self$`is_decisive`)) {
        PhotoPredictionRequestObject[["is_decisive"]] <-
          self$`is_decisive`
      }
      if (!is.null(self$`scores`)) {
        PhotoPredictionRequestObject[["scores"]] <-
          self$`scores`$toSimpleType()
      }
      if (!is.null(self$`classifier_version`)) {
        PhotoPredictionRequestObject[["classifier_version"]] <-
          self$`classifier_version`
      }
      return(PhotoPredictionRequestObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of PhotoPredictionRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of PhotoPredictionRequest
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
    #' @return PhotoPredictionRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of PhotoPredictionRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of PhotoPredictionRequest
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
    #' Validate JSON input with respect to PhotoPredictionRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `bbox`
      if (!is.null(input_json$`bbox`)) {
        stopifnot(R6::is.R6(input_json$`bbox`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PhotoPredictionRequest: the required field `bbox` is missing."))
      }
      # check the required field `insect_confidence`
      if (!is.null(input_json$`insect_confidence`)) {
        if (!(is.numeric(input_json$`insect_confidence`) && length(input_json$`insect_confidence`) == 1)) {
          stop(paste("Error! Invalid data for `insect_confidence`. Must be a number:", input_json$`insect_confidence`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PhotoPredictionRequest: the required field `insect_confidence` is missing."))
      }
      # check the required field `predicted_class`
      if (!is.null(input_json$`predicted_class`)) {
        if (!(is.character(input_json$`predicted_class`) && length(input_json$`predicted_class`) == 1)) {
          stop(paste("Error! Invalid data for `predicted_class`. Must be a string:", input_json$`predicted_class`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PhotoPredictionRequest: the required field `predicted_class` is missing."))
      }
      # check the required field `threshold_deviation`
      if (!is.null(input_json$`threshold_deviation`)) {
        if (!(is.numeric(input_json$`threshold_deviation`) && length(input_json$`threshold_deviation`) == 1)) {
          stop(paste("Error! Invalid data for `threshold_deviation`. Must be a number:", input_json$`threshold_deviation`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PhotoPredictionRequest: the required field `threshold_deviation` is missing."))
      }
      # check the required field `scores`
      if (!is.null(input_json$`scores`)) {
        stopifnot(R6::is.R6(input_json$`scores`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PhotoPredictionRequest: the required field `scores` is missing."))
      }
      # check the required field `classifier_version`
      if (!is.null(input_json$`classifier_version`)) {
        if (!(is.character(input_json$`classifier_version`) && length(input_json$`classifier_version`) == 1)) {
          stop(paste("Error! Invalid data for `classifier_version`. Must be a string:", input_json$`classifier_version`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PhotoPredictionRequest: the required field `classifier_version` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of PhotoPredictionRequest
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `bbox` is null
      if (is.null(self$`bbox`)) {
        return(FALSE)
      }

      # check if the required `insect_confidence` is null
      if (is.null(self$`insect_confidence`)) {
        return(FALSE)
      }

      if (self$`insect_confidence` > 1.0) {
        return(FALSE)
      }
      if (self$`insect_confidence` < 0.0) {
        return(FALSE)
      }

      # check if the required `threshold_deviation` is null
      if (is.null(self$`threshold_deviation`)) {
        return(FALSE)
      }

      if (self$`threshold_deviation` > 1.0) {
        return(FALSE)
      }
      if (self$`threshold_deviation` < -1.0) {
        return(FALSE)
      }

      # check if the required `scores` is null
      if (is.null(self$`scores`)) {
        return(FALSE)
      }

      # check if the required `classifier_version` is null
      if (is.null(self$`classifier_version`)) {
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
      # check if the required `bbox` is null
      if (is.null(self$`bbox`)) {
        invalid_fields["bbox"] <- "Non-nullable required field `bbox` cannot be null."
      }

      # check if the required `insect_confidence` is null
      if (is.null(self$`insect_confidence`)) {
        invalid_fields["insect_confidence"] <- "Non-nullable required field `insect_confidence` cannot be null."
      }

      if (self$`insect_confidence` > 1.0) {
        invalid_fields["insect_confidence"] <- "Invalid value for `insect_confidence`, must be smaller than or equal to 1.0."
      }
      if (self$`insect_confidence` < 0.0) {
        invalid_fields["insect_confidence"] <- "Invalid value for `insect_confidence`, must be bigger than or equal to 0.0."
      }

      # check if the required `threshold_deviation` is null
      if (is.null(self$`threshold_deviation`)) {
        invalid_fields["threshold_deviation"] <- "Non-nullable required field `threshold_deviation` cannot be null."
      }

      if (self$`threshold_deviation` > 1.0) {
        invalid_fields["threshold_deviation"] <- "Invalid value for `threshold_deviation`, must be smaller than or equal to 1.0."
      }
      if (self$`threshold_deviation` < -1.0) {
        invalid_fields["threshold_deviation"] <- "Invalid value for `threshold_deviation`, must be bigger than or equal to -1.0."
      }

      # check if the required `scores` is null
      if (is.null(self$`scores`)) {
        invalid_fields["scores"] <- "Non-nullable required field `scores` cannot be null."
      }

      # check if the required `classifier_version` is null
      if (is.null(self$`classifier_version`)) {
        invalid_fields["classifier_version"] <- "Non-nullable required field `classifier_version` cannot be null."
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
# PhotoPredictionRequest$unlock()
#
## Below is an example to define the print function
# PhotoPredictionRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PhotoPredictionRequest$lock()

