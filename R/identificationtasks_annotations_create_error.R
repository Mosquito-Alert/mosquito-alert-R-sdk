#' @docType class
#' @title IdentificationtasksAnnotationsCreateError
#'
#' @description IdentificationtasksAnnotationsCreateError Class
#'
#' @format An \code{R6Class} generator object
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
IdentificationtasksAnnotationsCreateError <- R6::R6Class(
  "IdentificationtasksAnnotationsCreateError",
  public = list(
    #' @field actual_instance the object stored in this instance.
    actual_instance = NULL,
    #' @field actual_type the type of the object stored in this instance.
    actual_type = NULL,
    #' @field one_of  a list of types defined in the oneOf schema.
    one_of = list("IdentificationtasksAnnotationsCreateBestPhotoUuidErrorComponent", "IdentificationtasksAnnotationsCreateCharacteristicsIsBloodFedErrorComponent", "IdentificationtasksAnnotationsCreateCharacteristicsIsGravidErrorComponent", "IdentificationtasksAnnotationsCreateCharacteristicsNonFieldErrorsErrorComponent", "IdentificationtasksAnnotationsCreateCharacteristicsSexErrorComponent", "IdentificationtasksAnnotationsCreateClassificationConfidenceLabelErrorComponent", "IdentificationtasksAnnotationsCreateClassificationNonFieldErrorsErrorComponent", "IdentificationtasksAnnotationsCreateClassificationTaxonIdErrorComponent", "IdentificationtasksAnnotationsCreateFeedbackInternalNoteErrorComponent", "IdentificationtasksAnnotationsCreateFeedbackNonFieldErrorsErrorComponent", "IdentificationtasksAnnotationsCreateFeedbackPublicNoteErrorComponent", "IdentificationtasksAnnotationsCreateFeedbackUserNoteErrorComponent", "IdentificationtasksAnnotationsCreateIsDecisiveErrorComponent", "IdentificationtasksAnnotationsCreateIsFlaggedErrorComponent", "IdentificationtasksAnnotationsCreateNonFieldErrorsErrorComponent", "IdentificationtasksAnnotationsCreateObservationFlagsIsFavouriteErrorComponent", "IdentificationtasksAnnotationsCreateObservationFlagsIsVisibleErrorComponent", "IdentificationtasksAnnotationsCreateObservationFlagsNonFieldErrorsErrorComponent", "IdentificationtasksAnnotationsCreateTagsErrorComponent", "IdentificationtasksAnnotationsCreateTagsINDEXErrorComponent"),

    #' @description
    #' Initialize a new IdentificationtasksAnnotationsCreateError.
    #'
    #' @param instance an instance of the object defined in the oneOf schemas: "IdentificationtasksAnnotationsCreateBestPhotoUuidErrorComponent", "IdentificationtasksAnnotationsCreateCharacteristicsIsBloodFedErrorComponent", "IdentificationtasksAnnotationsCreateCharacteristicsIsGravidErrorComponent", "IdentificationtasksAnnotationsCreateCharacteristicsNonFieldErrorsErrorComponent", "IdentificationtasksAnnotationsCreateCharacteristicsSexErrorComponent", "IdentificationtasksAnnotationsCreateClassificationConfidenceLabelErrorComponent", "IdentificationtasksAnnotationsCreateClassificationNonFieldErrorsErrorComponent", "IdentificationtasksAnnotationsCreateClassificationTaxonIdErrorComponent", "IdentificationtasksAnnotationsCreateFeedbackInternalNoteErrorComponent", "IdentificationtasksAnnotationsCreateFeedbackNonFieldErrorsErrorComponent", "IdentificationtasksAnnotationsCreateFeedbackPublicNoteErrorComponent", "IdentificationtasksAnnotationsCreateFeedbackUserNoteErrorComponent", "IdentificationtasksAnnotationsCreateIsDecisiveErrorComponent", "IdentificationtasksAnnotationsCreateIsFlaggedErrorComponent", "IdentificationtasksAnnotationsCreateNonFieldErrorsErrorComponent", "IdentificationtasksAnnotationsCreateObservationFlagsIsFavouriteErrorComponent", "IdentificationtasksAnnotationsCreateObservationFlagsIsVisibleErrorComponent", "IdentificationtasksAnnotationsCreateObservationFlagsNonFieldErrorsErrorComponent", "IdentificationtasksAnnotationsCreateTagsErrorComponent", "IdentificationtasksAnnotationsCreateTagsINDEXErrorComponent"
    initialize = function(instance = NULL) {
      if (is.null(instance)) {
        # do nothing
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksAnnotationsCreateBestPhotoUuidErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksAnnotationsCreateBestPhotoUuidErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksAnnotationsCreateCharacteristicsIsBloodFedErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksAnnotationsCreateCharacteristicsIsBloodFedErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksAnnotationsCreateCharacteristicsIsGravidErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksAnnotationsCreateCharacteristicsIsGravidErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksAnnotationsCreateCharacteristicsNonFieldErrorsErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksAnnotationsCreateCharacteristicsNonFieldErrorsErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksAnnotationsCreateCharacteristicsSexErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksAnnotationsCreateCharacteristicsSexErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksAnnotationsCreateClassificationConfidenceLabelErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksAnnotationsCreateClassificationConfidenceLabelErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksAnnotationsCreateClassificationNonFieldErrorsErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksAnnotationsCreateClassificationNonFieldErrorsErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksAnnotationsCreateClassificationTaxonIdErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksAnnotationsCreateClassificationTaxonIdErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksAnnotationsCreateFeedbackInternalNoteErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksAnnotationsCreateFeedbackInternalNoteErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksAnnotationsCreateFeedbackNonFieldErrorsErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksAnnotationsCreateFeedbackNonFieldErrorsErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksAnnotationsCreateFeedbackPublicNoteErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksAnnotationsCreateFeedbackPublicNoteErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksAnnotationsCreateFeedbackUserNoteErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksAnnotationsCreateFeedbackUserNoteErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksAnnotationsCreateIsDecisiveErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksAnnotationsCreateIsDecisiveErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksAnnotationsCreateIsFlaggedErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksAnnotationsCreateIsFlaggedErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksAnnotationsCreateNonFieldErrorsErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksAnnotationsCreateNonFieldErrorsErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksAnnotationsCreateObservationFlagsIsFavouriteErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksAnnotationsCreateObservationFlagsIsFavouriteErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksAnnotationsCreateObservationFlagsIsVisibleErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksAnnotationsCreateObservationFlagsIsVisibleErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksAnnotationsCreateObservationFlagsNonFieldErrorsErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksAnnotationsCreateObservationFlagsNonFieldErrorsErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksAnnotationsCreateTagsErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksAnnotationsCreateTagsErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksAnnotationsCreateTagsINDEXErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksAnnotationsCreateTagsINDEXErrorComponent"
      } else {
        stop(paste("Failed to initialize IdentificationtasksAnnotationsCreateError with oneOf schemas IdentificationtasksAnnotationsCreateBestPhotoUuidErrorComponent, IdentificationtasksAnnotationsCreateCharacteristicsIsBloodFedErrorComponent, IdentificationtasksAnnotationsCreateCharacteristicsIsGravidErrorComponent, IdentificationtasksAnnotationsCreateCharacteristicsNonFieldErrorsErrorComponent, IdentificationtasksAnnotationsCreateCharacteristicsSexErrorComponent, IdentificationtasksAnnotationsCreateClassificationConfidenceLabelErrorComponent, IdentificationtasksAnnotationsCreateClassificationNonFieldErrorsErrorComponent, IdentificationtasksAnnotationsCreateClassificationTaxonIdErrorComponent, IdentificationtasksAnnotationsCreateFeedbackInternalNoteErrorComponent, IdentificationtasksAnnotationsCreateFeedbackNonFieldErrorsErrorComponent, IdentificationtasksAnnotationsCreateFeedbackPublicNoteErrorComponent, IdentificationtasksAnnotationsCreateFeedbackUserNoteErrorComponent, IdentificationtasksAnnotationsCreateIsDecisiveErrorComponent, IdentificationtasksAnnotationsCreateIsFlaggedErrorComponent, IdentificationtasksAnnotationsCreateNonFieldErrorsErrorComponent, IdentificationtasksAnnotationsCreateObservationFlagsIsFavouriteErrorComponent, IdentificationtasksAnnotationsCreateObservationFlagsIsVisibleErrorComponent, IdentificationtasksAnnotationsCreateObservationFlagsNonFieldErrorsErrorComponent, IdentificationtasksAnnotationsCreateTagsErrorComponent, IdentificationtasksAnnotationsCreateTagsINDEXErrorComponent. Provided class name: ",
                   get(class(instance)[[1]], pos = -1)$classname))
      }
    },

    #' @description
    #' Deserialize JSON string into an instance of IdentificationtasksAnnotationsCreateError.
    #' An alias to the method `fromJSON` .
    #'
    #' @param input The input JSON.
    #'
    #' @return An instance of IdentificationtasksAnnotationsCreateError.
    fromJSONString = function(input) {
      self$fromJSON(input)
    },

    #' @description
    #' Deserialize JSON string into an instance of IdentificationtasksAnnotationsCreateError.
    #'
    #' @param input The input JSON.
    #'
    #' @return An instance of IdentificationtasksAnnotationsCreateError.
    fromJSON = function(input) {
      matched <- 0 # match counter
      matched_schemas <- list() #names of matched schemas
      error_messages <- list()
      instance <- NULL

      `IdentificationtasksAnnotationsCreateNonFieldErrorsErrorComponent_result` <- tryCatch({
          `IdentificationtasksAnnotationsCreateNonFieldErrorsErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksAnnotationsCreateNonFieldErrorsErrorComponent_instance` <- `IdentificationtasksAnnotationsCreateNonFieldErrorsErrorComponent`$new()
          instance <- `IdentificationtasksAnnotationsCreateNonFieldErrorsErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksAnnotationsCreateNonFieldErrorsErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksAnnotationsCreateNonFieldErrorsErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksAnnotationsCreateNonFieldErrorsErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksAnnotationsCreateNonFieldErrorsErrorComponent_result`["message"])
      }

      `IdentificationtasksAnnotationsCreateBestPhotoUuidErrorComponent_result` <- tryCatch({
          `IdentificationtasksAnnotationsCreateBestPhotoUuidErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksAnnotationsCreateBestPhotoUuidErrorComponent_instance` <- `IdentificationtasksAnnotationsCreateBestPhotoUuidErrorComponent`$new()
          instance <- `IdentificationtasksAnnotationsCreateBestPhotoUuidErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksAnnotationsCreateBestPhotoUuidErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksAnnotationsCreateBestPhotoUuidErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksAnnotationsCreateBestPhotoUuidErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksAnnotationsCreateBestPhotoUuidErrorComponent_result`["message"])
      }

      `IdentificationtasksAnnotationsCreateClassificationNonFieldErrorsErrorComponent_result` <- tryCatch({
          `IdentificationtasksAnnotationsCreateClassificationNonFieldErrorsErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksAnnotationsCreateClassificationNonFieldErrorsErrorComponent_instance` <- `IdentificationtasksAnnotationsCreateClassificationNonFieldErrorsErrorComponent`$new()
          instance <- `IdentificationtasksAnnotationsCreateClassificationNonFieldErrorsErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksAnnotationsCreateClassificationNonFieldErrorsErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksAnnotationsCreateClassificationNonFieldErrorsErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksAnnotationsCreateClassificationNonFieldErrorsErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksAnnotationsCreateClassificationNonFieldErrorsErrorComponent_result`["message"])
      }

      `IdentificationtasksAnnotationsCreateClassificationTaxonIdErrorComponent_result` <- tryCatch({
          `IdentificationtasksAnnotationsCreateClassificationTaxonIdErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksAnnotationsCreateClassificationTaxonIdErrorComponent_instance` <- `IdentificationtasksAnnotationsCreateClassificationTaxonIdErrorComponent`$new()
          instance <- `IdentificationtasksAnnotationsCreateClassificationTaxonIdErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksAnnotationsCreateClassificationTaxonIdErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksAnnotationsCreateClassificationTaxonIdErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksAnnotationsCreateClassificationTaxonIdErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksAnnotationsCreateClassificationTaxonIdErrorComponent_result`["message"])
      }

      `IdentificationtasksAnnotationsCreateClassificationConfidenceLabelErrorComponent_result` <- tryCatch({
          `IdentificationtasksAnnotationsCreateClassificationConfidenceLabelErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksAnnotationsCreateClassificationConfidenceLabelErrorComponent_instance` <- `IdentificationtasksAnnotationsCreateClassificationConfidenceLabelErrorComponent`$new()
          instance <- `IdentificationtasksAnnotationsCreateClassificationConfidenceLabelErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksAnnotationsCreateClassificationConfidenceLabelErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksAnnotationsCreateClassificationConfidenceLabelErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksAnnotationsCreateClassificationConfidenceLabelErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksAnnotationsCreateClassificationConfidenceLabelErrorComponent_result`["message"])
      }

      `IdentificationtasksAnnotationsCreateCharacteristicsNonFieldErrorsErrorComponent_result` <- tryCatch({
          `IdentificationtasksAnnotationsCreateCharacteristicsNonFieldErrorsErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksAnnotationsCreateCharacteristicsNonFieldErrorsErrorComponent_instance` <- `IdentificationtasksAnnotationsCreateCharacteristicsNonFieldErrorsErrorComponent`$new()
          instance <- `IdentificationtasksAnnotationsCreateCharacteristicsNonFieldErrorsErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksAnnotationsCreateCharacteristicsNonFieldErrorsErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksAnnotationsCreateCharacteristicsNonFieldErrorsErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksAnnotationsCreateCharacteristicsNonFieldErrorsErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksAnnotationsCreateCharacteristicsNonFieldErrorsErrorComponent_result`["message"])
      }

      `IdentificationtasksAnnotationsCreateCharacteristicsSexErrorComponent_result` <- tryCatch({
          `IdentificationtasksAnnotationsCreateCharacteristicsSexErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksAnnotationsCreateCharacteristicsSexErrorComponent_instance` <- `IdentificationtasksAnnotationsCreateCharacteristicsSexErrorComponent`$new()
          instance <- `IdentificationtasksAnnotationsCreateCharacteristicsSexErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksAnnotationsCreateCharacteristicsSexErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksAnnotationsCreateCharacteristicsSexErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksAnnotationsCreateCharacteristicsSexErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksAnnotationsCreateCharacteristicsSexErrorComponent_result`["message"])
      }

      `IdentificationtasksAnnotationsCreateCharacteristicsIsBloodFedErrorComponent_result` <- tryCatch({
          `IdentificationtasksAnnotationsCreateCharacteristicsIsBloodFedErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksAnnotationsCreateCharacteristicsIsBloodFedErrorComponent_instance` <- `IdentificationtasksAnnotationsCreateCharacteristicsIsBloodFedErrorComponent`$new()
          instance <- `IdentificationtasksAnnotationsCreateCharacteristicsIsBloodFedErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksAnnotationsCreateCharacteristicsIsBloodFedErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksAnnotationsCreateCharacteristicsIsBloodFedErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksAnnotationsCreateCharacteristicsIsBloodFedErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksAnnotationsCreateCharacteristicsIsBloodFedErrorComponent_result`["message"])
      }

      `IdentificationtasksAnnotationsCreateCharacteristicsIsGravidErrorComponent_result` <- tryCatch({
          `IdentificationtasksAnnotationsCreateCharacteristicsIsGravidErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksAnnotationsCreateCharacteristicsIsGravidErrorComponent_instance` <- `IdentificationtasksAnnotationsCreateCharacteristicsIsGravidErrorComponent`$new()
          instance <- `IdentificationtasksAnnotationsCreateCharacteristicsIsGravidErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksAnnotationsCreateCharacteristicsIsGravidErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksAnnotationsCreateCharacteristicsIsGravidErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksAnnotationsCreateCharacteristicsIsGravidErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksAnnotationsCreateCharacteristicsIsGravidErrorComponent_result`["message"])
      }

      `IdentificationtasksAnnotationsCreateFeedbackNonFieldErrorsErrorComponent_result` <- tryCatch({
          `IdentificationtasksAnnotationsCreateFeedbackNonFieldErrorsErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksAnnotationsCreateFeedbackNonFieldErrorsErrorComponent_instance` <- `IdentificationtasksAnnotationsCreateFeedbackNonFieldErrorsErrorComponent`$new()
          instance <- `IdentificationtasksAnnotationsCreateFeedbackNonFieldErrorsErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksAnnotationsCreateFeedbackNonFieldErrorsErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksAnnotationsCreateFeedbackNonFieldErrorsErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksAnnotationsCreateFeedbackNonFieldErrorsErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksAnnotationsCreateFeedbackNonFieldErrorsErrorComponent_result`["message"])
      }

      `IdentificationtasksAnnotationsCreateFeedbackPublicNoteErrorComponent_result` <- tryCatch({
          `IdentificationtasksAnnotationsCreateFeedbackPublicNoteErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksAnnotationsCreateFeedbackPublicNoteErrorComponent_instance` <- `IdentificationtasksAnnotationsCreateFeedbackPublicNoteErrorComponent`$new()
          instance <- `IdentificationtasksAnnotationsCreateFeedbackPublicNoteErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksAnnotationsCreateFeedbackPublicNoteErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksAnnotationsCreateFeedbackPublicNoteErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksAnnotationsCreateFeedbackPublicNoteErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksAnnotationsCreateFeedbackPublicNoteErrorComponent_result`["message"])
      }

      `IdentificationtasksAnnotationsCreateFeedbackInternalNoteErrorComponent_result` <- tryCatch({
          `IdentificationtasksAnnotationsCreateFeedbackInternalNoteErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksAnnotationsCreateFeedbackInternalNoteErrorComponent_instance` <- `IdentificationtasksAnnotationsCreateFeedbackInternalNoteErrorComponent`$new()
          instance <- `IdentificationtasksAnnotationsCreateFeedbackInternalNoteErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksAnnotationsCreateFeedbackInternalNoteErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksAnnotationsCreateFeedbackInternalNoteErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksAnnotationsCreateFeedbackInternalNoteErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksAnnotationsCreateFeedbackInternalNoteErrorComponent_result`["message"])
      }

      `IdentificationtasksAnnotationsCreateFeedbackUserNoteErrorComponent_result` <- tryCatch({
          `IdentificationtasksAnnotationsCreateFeedbackUserNoteErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksAnnotationsCreateFeedbackUserNoteErrorComponent_instance` <- `IdentificationtasksAnnotationsCreateFeedbackUserNoteErrorComponent`$new()
          instance <- `IdentificationtasksAnnotationsCreateFeedbackUserNoteErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksAnnotationsCreateFeedbackUserNoteErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksAnnotationsCreateFeedbackUserNoteErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksAnnotationsCreateFeedbackUserNoteErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksAnnotationsCreateFeedbackUserNoteErrorComponent_result`["message"])
      }

      `IdentificationtasksAnnotationsCreateIsFlaggedErrorComponent_result` <- tryCatch({
          `IdentificationtasksAnnotationsCreateIsFlaggedErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksAnnotationsCreateIsFlaggedErrorComponent_instance` <- `IdentificationtasksAnnotationsCreateIsFlaggedErrorComponent`$new()
          instance <- `IdentificationtasksAnnotationsCreateIsFlaggedErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksAnnotationsCreateIsFlaggedErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksAnnotationsCreateIsFlaggedErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksAnnotationsCreateIsFlaggedErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksAnnotationsCreateIsFlaggedErrorComponent_result`["message"])
      }

      `IdentificationtasksAnnotationsCreateIsDecisiveErrorComponent_result` <- tryCatch({
          `IdentificationtasksAnnotationsCreateIsDecisiveErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksAnnotationsCreateIsDecisiveErrorComponent_instance` <- `IdentificationtasksAnnotationsCreateIsDecisiveErrorComponent`$new()
          instance <- `IdentificationtasksAnnotationsCreateIsDecisiveErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksAnnotationsCreateIsDecisiveErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksAnnotationsCreateIsDecisiveErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksAnnotationsCreateIsDecisiveErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksAnnotationsCreateIsDecisiveErrorComponent_result`["message"])
      }

      `IdentificationtasksAnnotationsCreateObservationFlagsNonFieldErrorsErrorComponent_result` <- tryCatch({
          `IdentificationtasksAnnotationsCreateObservationFlagsNonFieldErrorsErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksAnnotationsCreateObservationFlagsNonFieldErrorsErrorComponent_instance` <- `IdentificationtasksAnnotationsCreateObservationFlagsNonFieldErrorsErrorComponent`$new()
          instance <- `IdentificationtasksAnnotationsCreateObservationFlagsNonFieldErrorsErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksAnnotationsCreateObservationFlagsNonFieldErrorsErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksAnnotationsCreateObservationFlagsNonFieldErrorsErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksAnnotationsCreateObservationFlagsNonFieldErrorsErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksAnnotationsCreateObservationFlagsNonFieldErrorsErrorComponent_result`["message"])
      }

      `IdentificationtasksAnnotationsCreateObservationFlagsIsFavouriteErrorComponent_result` <- tryCatch({
          `IdentificationtasksAnnotationsCreateObservationFlagsIsFavouriteErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksAnnotationsCreateObservationFlagsIsFavouriteErrorComponent_instance` <- `IdentificationtasksAnnotationsCreateObservationFlagsIsFavouriteErrorComponent`$new()
          instance <- `IdentificationtasksAnnotationsCreateObservationFlagsIsFavouriteErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksAnnotationsCreateObservationFlagsIsFavouriteErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksAnnotationsCreateObservationFlagsIsFavouriteErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksAnnotationsCreateObservationFlagsIsFavouriteErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksAnnotationsCreateObservationFlagsIsFavouriteErrorComponent_result`["message"])
      }

      `IdentificationtasksAnnotationsCreateObservationFlagsIsVisibleErrorComponent_result` <- tryCatch({
          `IdentificationtasksAnnotationsCreateObservationFlagsIsVisibleErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksAnnotationsCreateObservationFlagsIsVisibleErrorComponent_instance` <- `IdentificationtasksAnnotationsCreateObservationFlagsIsVisibleErrorComponent`$new()
          instance <- `IdentificationtasksAnnotationsCreateObservationFlagsIsVisibleErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksAnnotationsCreateObservationFlagsIsVisibleErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksAnnotationsCreateObservationFlagsIsVisibleErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksAnnotationsCreateObservationFlagsIsVisibleErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksAnnotationsCreateObservationFlagsIsVisibleErrorComponent_result`["message"])
      }

      `IdentificationtasksAnnotationsCreateTagsErrorComponent_result` <- tryCatch({
          `IdentificationtasksAnnotationsCreateTagsErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksAnnotationsCreateTagsErrorComponent_instance` <- `IdentificationtasksAnnotationsCreateTagsErrorComponent`$new()
          instance <- `IdentificationtasksAnnotationsCreateTagsErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksAnnotationsCreateTagsErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksAnnotationsCreateTagsErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksAnnotationsCreateTagsErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksAnnotationsCreateTagsErrorComponent_result`["message"])
      }

      `IdentificationtasksAnnotationsCreateTagsINDEXErrorComponent_result` <- tryCatch({
          `IdentificationtasksAnnotationsCreateTagsINDEXErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksAnnotationsCreateTagsINDEXErrorComponent_instance` <- `IdentificationtasksAnnotationsCreateTagsINDEXErrorComponent`$new()
          instance <- `IdentificationtasksAnnotationsCreateTagsINDEXErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksAnnotationsCreateTagsINDEXErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksAnnotationsCreateTagsINDEXErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksAnnotationsCreateTagsINDEXErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksAnnotationsCreateTagsINDEXErrorComponent_result`["message"])
      }

      if (matched == 1) {
        # successfully match exactly 1 schema specified in oneOf
        self$actual_instance <- instance
        self$actual_type <- instance_type
      } else if (matched > 1) {
        # more than 1 match
        stop(paste("Multiple matches found when deserializing the input into IdentificationtasksAnnotationsCreateError with oneOf schemas IdentificationtasksAnnotationsCreateBestPhotoUuidErrorComponent, IdentificationtasksAnnotationsCreateCharacteristicsIsBloodFedErrorComponent, IdentificationtasksAnnotationsCreateCharacteristicsIsGravidErrorComponent, IdentificationtasksAnnotationsCreateCharacteristicsNonFieldErrorsErrorComponent, IdentificationtasksAnnotationsCreateCharacteristicsSexErrorComponent, IdentificationtasksAnnotationsCreateClassificationConfidenceLabelErrorComponent, IdentificationtasksAnnotationsCreateClassificationNonFieldErrorsErrorComponent, IdentificationtasksAnnotationsCreateClassificationTaxonIdErrorComponent, IdentificationtasksAnnotationsCreateFeedbackInternalNoteErrorComponent, IdentificationtasksAnnotationsCreateFeedbackNonFieldErrorsErrorComponent, IdentificationtasksAnnotationsCreateFeedbackPublicNoteErrorComponent, IdentificationtasksAnnotationsCreateFeedbackUserNoteErrorComponent, IdentificationtasksAnnotationsCreateIsDecisiveErrorComponent, IdentificationtasksAnnotationsCreateIsFlaggedErrorComponent, IdentificationtasksAnnotationsCreateNonFieldErrorsErrorComponent, IdentificationtasksAnnotationsCreateObservationFlagsIsFavouriteErrorComponent, IdentificationtasksAnnotationsCreateObservationFlagsIsVisibleErrorComponent, IdentificationtasksAnnotationsCreateObservationFlagsNonFieldErrorsErrorComponent, IdentificationtasksAnnotationsCreateTagsErrorComponent, IdentificationtasksAnnotationsCreateTagsINDEXErrorComponent. Matched schemas: ",
                   paste(matched_schemas, collapse = ", ")))
      } else {
        # no match
        stop(paste("No match found when deserializing the input into IdentificationtasksAnnotationsCreateError with oneOf schemas IdentificationtasksAnnotationsCreateBestPhotoUuidErrorComponent, IdentificationtasksAnnotationsCreateCharacteristicsIsBloodFedErrorComponent, IdentificationtasksAnnotationsCreateCharacteristicsIsGravidErrorComponent, IdentificationtasksAnnotationsCreateCharacteristicsNonFieldErrorsErrorComponent, IdentificationtasksAnnotationsCreateCharacteristicsSexErrorComponent, IdentificationtasksAnnotationsCreateClassificationConfidenceLabelErrorComponent, IdentificationtasksAnnotationsCreateClassificationNonFieldErrorsErrorComponent, IdentificationtasksAnnotationsCreateClassificationTaxonIdErrorComponent, IdentificationtasksAnnotationsCreateFeedbackInternalNoteErrorComponent, IdentificationtasksAnnotationsCreateFeedbackNonFieldErrorsErrorComponent, IdentificationtasksAnnotationsCreateFeedbackPublicNoteErrorComponent, IdentificationtasksAnnotationsCreateFeedbackUserNoteErrorComponent, IdentificationtasksAnnotationsCreateIsDecisiveErrorComponent, IdentificationtasksAnnotationsCreateIsFlaggedErrorComponent, IdentificationtasksAnnotationsCreateNonFieldErrorsErrorComponent, IdentificationtasksAnnotationsCreateObservationFlagsIsFavouriteErrorComponent, IdentificationtasksAnnotationsCreateObservationFlagsIsVisibleErrorComponent, IdentificationtasksAnnotationsCreateObservationFlagsNonFieldErrorsErrorComponent, IdentificationtasksAnnotationsCreateTagsErrorComponent, IdentificationtasksAnnotationsCreateTagsINDEXErrorComponent. Details: >>",
                   paste(error_messages, collapse = " >> ")))
      }

      self
    },

    #' @description
    #' Serialize IdentificationtasksAnnotationsCreateError to JSON string.
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return JSON string representation of the IdentificationtasksAnnotationsCreateError.
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      if (!is.null(self$actual_instance)) {
        json <- jsonlite::toJSON(simple, auto_unbox = TRUE, ...)
        return(as.character(jsonlite::minify(json)))
      } else {
        return(NULL)
      }
    },

    #' @description
    #' Convert to an R object. This method is deprecated. Use `toSimpleType()` instead.
    toJSON = function() {
      .Deprecated(new = "toSimpleType", msg = "Use the '$toSimpleType()' method instead since that is more clearly named. Use '$toJSONString()' to get a JSON string")
      return(self$toSimpleType())
    },

    #' @description
    #' Convert IdentificationtasksAnnotationsCreateError to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      if (!is.null(self$actual_instance)) {
        return(self$actual_instance$toSimpleType())
      } else {
        return(NULL)
      }
    },

    #' @description
    #' Validate the input JSON with respect to IdentificationtasksAnnotationsCreateError and
    #' throw exception if invalid.
    #'
    #' @param input The input JSON.
    validateJSON = function(input) {
      # backup current values
      actual_instance_bak <- self$actual_instance
      actual_type_bak <- self$actual_type

      # if it's not valid, an error will be thrown
      self$fromJSON(input)

      # no error thrown, restore old values
      self$actual_instance <- actual_instance_bak
      self$actual_type <- actual_type_bak
    },

    #' @description
    #' Returns the string representation of the instance.
    #'
    #' @return The string representation of the instance.
    toString = function() {
      jsoncontent <- c(
        sprintf('"actual_instance": %s', if (is.null(self$actual_instance)) NULL else self$actual_instance$toJSONString()),
        sprintf('"actual_type": "%s"', self$actual_type),
        sprintf('"one_of": "%s"', paste(unlist(self$one_of), collapse = ", "))
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      as.character(jsonlite::prettify(paste("{", jsoncontent, "}", sep = "")))
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
#IdentificationtasksAnnotationsCreateError$unlock()
#
## Below is an example to define the print function
#IdentificationtasksAnnotationsCreateError$set("public", "print", function(...) {
#  print(jsonlite::prettify(self$toJSONString()))
#  invisible(self)
#})
## Uncomment below to lock the class to prevent modifications to the method or field
#IdentificationtasksAnnotationsCreateError$lock()

