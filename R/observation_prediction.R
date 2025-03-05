#' Create a new ObservationPrediction
#'
#' @description
#' ObservationPrediction Class
#'
#' @docType class
#' @title ObservationPrediction
#' @description ObservationPrediction Class
#' @format An \code{R6Class} generator object
#' @field ref_photo_uuid The selected photo whose prediction represents the observation as the best classification result. character
#' @field insect_confidence  numeric
#' @field predicted_class  character
#' @field predicted_class_display  character
#' @field is_executive_validation Whether if the photo prediction will be used as an executive validation for the report. character
#' @field created_at  character
#' @field updated_at  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ObservationPrediction <- R6::R6Class(
  "ObservationPrediction",
  public = list(
    `ref_photo_uuid` = NULL,
    `insect_confidence` = NULL,
    `predicted_class` = NULL,
    `predicted_class_display` = NULL,
    `is_executive_validation` = NULL,
    `created_at` = NULL,
    `updated_at` = NULL,

    #' @description
    #' Initialize a new ObservationPrediction class.
    #'
    #' @param ref_photo_uuid The selected photo whose prediction represents the observation as the best classification result.
    #' @param insect_confidence insect_confidence
    #' @param predicted_class predicted_class
    #' @param predicted_class_display predicted_class_display
    #' @param is_executive_validation Whether if the photo prediction will be used as an executive validation for the report.
    #' @param created_at created_at
    #' @param updated_at updated_at
    #' @param ... Other optional arguments.
    initialize = function(`ref_photo_uuid`, `insect_confidence`, `predicted_class`, `predicted_class_display`, `is_executive_validation`, `created_at`, `updated_at`, ...) {
      if (!missing(`ref_photo_uuid`)) {
        if (!(is.character(`ref_photo_uuid`) && length(`ref_photo_uuid`) == 1)) {
          stop(paste("Error! Invalid data for `ref_photo_uuid`. Must be a string:", `ref_photo_uuid`))
        }
        self$`ref_photo_uuid` <- `ref_photo_uuid`
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
      if (!missing(`predicted_class_display`)) {
        if (!(`predicted_class_display` %in% c("Aedes albopictus", "Aedes aegypti", "Aedes japonicus", "Aedes koreicus", "Culex (s.p)", "Anopheles (s.p.)", "Culiseta (s.p.)", "Ohter species", "Unidentifiable"))) {
          stop(paste("Error! \"", `predicted_class_display`, "\" cannot be assigned to `predicted_class_display`. Must be \"Aedes albopictus\", \"Aedes aegypti\", \"Aedes japonicus\", \"Aedes koreicus\", \"Culex (s.p)\", \"Anopheles (s.p.)\", \"Culiseta (s.p.)\", \"Ohter species\", \"Unidentifiable\".", sep = ""))
        }
        if (!(is.character(`predicted_class_display`) && length(`predicted_class_display`) == 1)) {
          stop(paste("Error! Invalid data for `predicted_class_display`. Must be a string:", `predicted_class_display`))
        }
        self$`predicted_class_display` <- `predicted_class_display`
      }
      if (!missing(`is_executive_validation`)) {
        if (!(is.logical(`is_executive_validation`) && length(`is_executive_validation`) == 1)) {
          stop(paste("Error! Invalid data for `is_executive_validation`. Must be a boolean:", `is_executive_validation`))
        }
        self$`is_executive_validation` <- `is_executive_validation`
      }
      if (!missing(`created_at`)) {
        if (!(is.character(`created_at`) && length(`created_at`) == 1)) {
          stop(paste("Error! Invalid data for `created_at`. Must be a string:", `created_at`))
        }
        self$`created_at` <- `created_at`
      }
      if (!missing(`updated_at`)) {
        if (!(is.character(`updated_at`) && length(`updated_at`) == 1)) {
          stop(paste("Error! Invalid data for `updated_at`. Must be a string:", `updated_at`))
        }
        self$`updated_at` <- `updated_at`
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
    #' @return ObservationPrediction as a base R list.
    #' @examples
    #' # convert array of ObservationPrediction (x) to a data frame
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
    #' Convert ObservationPrediction to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ObservationPredictionObject <- list()
      if (!is.null(self$`ref_photo_uuid`)) {
        ObservationPredictionObject[["ref_photo_uuid"]] <-
          self$`ref_photo_uuid`
      }
      if (!is.null(self$`insect_confidence`)) {
        ObservationPredictionObject[["insect_confidence"]] <-
          self$`insect_confidence`
      }
      if (!is.null(self$`predicted_class`)) {
        ObservationPredictionObject[["predicted_class"]] <-
          self$`predicted_class`
      }
      if (!is.null(self$`predicted_class_display`)) {
        ObservationPredictionObject[["predicted_class_display"]] <-
          self$`predicted_class_display`
      }
      if (!is.null(self$`is_executive_validation`)) {
        ObservationPredictionObject[["is_executive_validation"]] <-
          self$`is_executive_validation`
      }
      if (!is.null(self$`created_at`)) {
        ObservationPredictionObject[["created_at"]] <-
          self$`created_at`
      }
      if (!is.null(self$`updated_at`)) {
        ObservationPredictionObject[["updated_at"]] <-
          self$`updated_at`
      }
      return(ObservationPredictionObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of ObservationPrediction
    #'
    #' @param input_json the JSON input
    #' @return the instance of ObservationPrediction
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`ref_photo_uuid`)) {
        self$`ref_photo_uuid` <- this_object$`ref_photo_uuid`
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
      if (!is.null(this_object$`predicted_class_display`)) {
        if (!is.null(this_object$`predicted_class_display`) && !(this_object$`predicted_class_display` %in% c("Aedes albopictus", "Aedes aegypti", "Aedes japonicus", "Aedes koreicus", "Culex (s.p)", "Anopheles (s.p.)", "Culiseta (s.p.)", "Ohter species", "Unidentifiable"))) {
          stop(paste("Error! \"", this_object$`predicted_class_display`, "\" cannot be assigned to `predicted_class_display`. Must be \"Aedes albopictus\", \"Aedes aegypti\", \"Aedes japonicus\", \"Aedes koreicus\", \"Culex (s.p)\", \"Anopheles (s.p.)\", \"Culiseta (s.p.)\", \"Ohter species\", \"Unidentifiable\".", sep = ""))
        }
        self$`predicted_class_display` <- this_object$`predicted_class_display`
      }
      if (!is.null(this_object$`is_executive_validation`)) {
        self$`is_executive_validation` <- this_object$`is_executive_validation`
      }
      if (!is.null(this_object$`created_at`)) {
        self$`created_at` <- this_object$`created_at`
      }
      if (!is.null(this_object$`updated_at`)) {
        self$`updated_at` <- this_object$`updated_at`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ObservationPrediction in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ObservationPrediction
    #'
    #' @param input_json the JSON input
    #' @return the instance of ObservationPrediction
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`ref_photo_uuid` <- this_object$`ref_photo_uuid`
      self$`insect_confidence` <- this_object$`insect_confidence`
      if (!is.null(this_object$`predicted_class`) && !(this_object$`predicted_class` %in% c("ae_albopictus", "ae_aegypti", "ae_japonicus", "ae_koreicus", "culex", "anopheles", "culiseta", "other_species", "not_sure"))) {
        stop(paste("Error! \"", this_object$`predicted_class`, "\" cannot be assigned to `predicted_class`. Must be \"ae_albopictus\", \"ae_aegypti\", \"ae_japonicus\", \"ae_koreicus\", \"culex\", \"anopheles\", \"culiseta\", \"other_species\", \"not_sure\".", sep = ""))
      }
      self$`predicted_class` <- this_object$`predicted_class`
      if (!is.null(this_object$`predicted_class_display`) && !(this_object$`predicted_class_display` %in% c("Aedes albopictus", "Aedes aegypti", "Aedes japonicus", "Aedes koreicus", "Culex (s.p)", "Anopheles (s.p.)", "Culiseta (s.p.)", "Ohter species", "Unidentifiable"))) {
        stop(paste("Error! \"", this_object$`predicted_class_display`, "\" cannot be assigned to `predicted_class_display`. Must be \"Aedes albopictus\", \"Aedes aegypti\", \"Aedes japonicus\", \"Aedes koreicus\", \"Culex (s.p)\", \"Anopheles (s.p.)\", \"Culiseta (s.p.)\", \"Ohter species\", \"Unidentifiable\".", sep = ""))
      }
      self$`predicted_class_display` <- this_object$`predicted_class_display`
      self$`is_executive_validation` <- this_object$`is_executive_validation`
      self$`created_at` <- this_object$`created_at`
      self$`updated_at` <- this_object$`updated_at`
      self
    },

    #' @description
    #' Validate JSON input with respect to ObservationPrediction and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for ObservationPrediction: the required field `ref_photo_uuid` is missing."))
      }
      # check the required field `insect_confidence`
      if (!is.null(input_json$`insect_confidence`)) {
        if (!(is.numeric(input_json$`insect_confidence`) && length(input_json$`insect_confidence`) == 1)) {
          stop(paste("Error! Invalid data for `insect_confidence`. Must be a number:", input_json$`insect_confidence`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ObservationPrediction: the required field `insect_confidence` is missing."))
      }
      # check the required field `predicted_class`
      if (!is.null(input_json$`predicted_class`)) {
        if (!(is.character(input_json$`predicted_class`) && length(input_json$`predicted_class`) == 1)) {
          stop(paste("Error! Invalid data for `predicted_class`. Must be a string:", input_json$`predicted_class`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ObservationPrediction: the required field `predicted_class` is missing."))
      }
      # check the required field `predicted_class_display`
      if (!is.null(input_json$`predicted_class_display`)) {
        if (!(is.character(input_json$`predicted_class_display`) && length(input_json$`predicted_class_display`) == 1)) {
          stop(paste("Error! Invalid data for `predicted_class_display`. Must be a string:", input_json$`predicted_class_display`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ObservationPrediction: the required field `predicted_class_display` is missing."))
      }
      # check the required field `is_executive_validation`
      if (!is.null(input_json$`is_executive_validation`)) {
        if (!(is.logical(input_json$`is_executive_validation`) && length(input_json$`is_executive_validation`) == 1)) {
          stop(paste("Error! Invalid data for `is_executive_validation`. Must be a boolean:", input_json$`is_executive_validation`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ObservationPrediction: the required field `is_executive_validation` is missing."))
      }
      # check the required field `created_at`
      if (!is.null(input_json$`created_at`)) {
        if (!(is.character(input_json$`created_at`) && length(input_json$`created_at`) == 1)) {
          stop(paste("Error! Invalid data for `created_at`. Must be a string:", input_json$`created_at`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ObservationPrediction: the required field `created_at` is missing."))
      }
      # check the required field `updated_at`
      if (!is.null(input_json$`updated_at`)) {
        if (!(is.character(input_json$`updated_at`) && length(input_json$`updated_at`) == 1)) {
          stop(paste("Error! Invalid data for `updated_at`. Must be a string:", input_json$`updated_at`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ObservationPrediction: the required field `updated_at` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ObservationPrediction
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

      # check if the required `insect_confidence` is null
      if (is.null(self$`insect_confidence`)) {
        return(FALSE)
      }

      if (self$`insect_confidence` > 1) {
        return(FALSE)
      }
      if (self$`insect_confidence` < 0) {
        return(FALSE)
      }

      # check if the required `predicted_class` is null
      if (is.null(self$`predicted_class`)) {
        return(FALSE)
      }

      # check if the required `predicted_class_display` is null
      if (is.null(self$`predicted_class_display`)) {
        return(FALSE)
      }

      # check if the required `is_executive_validation` is null
      if (is.null(self$`is_executive_validation`)) {
        return(FALSE)
      }

      # check if the required `created_at` is null
      if (is.null(self$`created_at`)) {
        return(FALSE)
      }

      # check if the required `updated_at` is null
      if (is.null(self$`updated_at`)) {
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

      # check if the required `insect_confidence` is null
      if (is.null(self$`insect_confidence`)) {
        invalid_fields["insect_confidence"] <- "Non-nullable required field `insect_confidence` cannot be null."
      }

      if (self$`insect_confidence` > 1) {
        invalid_fields["insect_confidence"] <- "Invalid value for `insect_confidence`, must be smaller than or equal to 1."
      }
      if (self$`insect_confidence` < 0) {
        invalid_fields["insect_confidence"] <- "Invalid value for `insect_confidence`, must be bigger than or equal to 0."
      }

      # check if the required `predicted_class` is null
      if (is.null(self$`predicted_class`)) {
        invalid_fields["predicted_class"] <- "Non-nullable required field `predicted_class` cannot be null."
      }

      # check if the required `predicted_class_display` is null
      if (is.null(self$`predicted_class_display`)) {
        invalid_fields["predicted_class_display"] <- "Non-nullable required field `predicted_class_display` cannot be null."
      }

      # check if the required `is_executive_validation` is null
      if (is.null(self$`is_executive_validation`)) {
        invalid_fields["is_executive_validation"] <- "Non-nullable required field `is_executive_validation` cannot be null."
      }

      # check if the required `created_at` is null
      if (is.null(self$`created_at`)) {
        invalid_fields["created_at"] <- "Non-nullable required field `created_at` cannot be null."
      }

      # check if the required `updated_at` is null
      if (is.null(self$`updated_at`)) {
        invalid_fields["updated_at"] <- "Non-nullable required field `updated_at` cannot be null."
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
# ObservationPrediction$unlock()
#
## Below is an example to define the print function
# ObservationPrediction$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ObservationPrediction$lock()

