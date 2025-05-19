#' @docType class
#' @title IdentificationtasksPredictionsPartialUpdateError
#'
#' @description IdentificationtasksPredictionsPartialUpdateError Class
#'
#' @format An \code{R6Class} generator object
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
IdentificationtasksPredictionsPartialUpdateError <- R6::R6Class(
  "IdentificationtasksPredictionsPartialUpdateError",
  public = list(
    #' @field actual_instance the object stored in this instance.
    actual_instance = NULL,
    #' @field actual_type the type of the object stored in this instance.
    actual_type = NULL,
    #' @field one_of  a list of types defined in the oneOf schema.
    one_of = list("IdentificationtasksPredictionsPartialUpdateBboxNonFieldErrorsErrorComponent", "IdentificationtasksPredictionsPartialUpdateBboxXMaxErrorComponent", "IdentificationtasksPredictionsPartialUpdateBboxXMinErrorComponent", "IdentificationtasksPredictionsPartialUpdateBboxYMaxErrorComponent", "IdentificationtasksPredictionsPartialUpdateBboxYMinErrorComponent", "IdentificationtasksPredictionsPartialUpdateClassifierVersionErrorComponent", "IdentificationtasksPredictionsPartialUpdateInsectConfidenceErrorComponent", "IdentificationtasksPredictionsPartialUpdateIsDecisiveErrorComponent", "IdentificationtasksPredictionsPartialUpdateNonFieldErrorsErrorComponent", "IdentificationtasksPredictionsPartialUpdatePredictedClassErrorComponent", "IdentificationtasksPredictionsPartialUpdateScoresAeAegyptiErrorComponent", "IdentificationtasksPredictionsPartialUpdateScoresAeAlbopictusErrorComponent", "IdentificationtasksPredictionsPartialUpdateScoresAeJaponicusErrorComponent", "IdentificationtasksPredictionsPartialUpdateScoresAeKoreicusErrorComponent", "IdentificationtasksPredictionsPartialUpdateScoresAnophelesErrorComponent", "IdentificationtasksPredictionsPartialUpdateScoresCulexErrorComponent", "IdentificationtasksPredictionsPartialUpdateScoresCulisetaErrorComponent", "IdentificationtasksPredictionsPartialUpdateScoresNonFieldErrorsErrorComponent", "IdentificationtasksPredictionsPartialUpdateScoresNotSureErrorComponent", "IdentificationtasksPredictionsPartialUpdateScoresOtherSpeciesErrorComponent", "IdentificationtasksPredictionsPartialUpdateThresholdDeviationErrorComponent"),

    #' @description
    #' Initialize a new IdentificationtasksPredictionsPartialUpdateError.
    #'
    #' @param instance an instance of the object defined in the oneOf schemas: "IdentificationtasksPredictionsPartialUpdateBboxNonFieldErrorsErrorComponent", "IdentificationtasksPredictionsPartialUpdateBboxXMaxErrorComponent", "IdentificationtasksPredictionsPartialUpdateBboxXMinErrorComponent", "IdentificationtasksPredictionsPartialUpdateBboxYMaxErrorComponent", "IdentificationtasksPredictionsPartialUpdateBboxYMinErrorComponent", "IdentificationtasksPredictionsPartialUpdateClassifierVersionErrorComponent", "IdentificationtasksPredictionsPartialUpdateInsectConfidenceErrorComponent", "IdentificationtasksPredictionsPartialUpdateIsDecisiveErrorComponent", "IdentificationtasksPredictionsPartialUpdateNonFieldErrorsErrorComponent", "IdentificationtasksPredictionsPartialUpdatePredictedClassErrorComponent", "IdentificationtasksPredictionsPartialUpdateScoresAeAegyptiErrorComponent", "IdentificationtasksPredictionsPartialUpdateScoresAeAlbopictusErrorComponent", "IdentificationtasksPredictionsPartialUpdateScoresAeJaponicusErrorComponent", "IdentificationtasksPredictionsPartialUpdateScoresAeKoreicusErrorComponent", "IdentificationtasksPredictionsPartialUpdateScoresAnophelesErrorComponent", "IdentificationtasksPredictionsPartialUpdateScoresCulexErrorComponent", "IdentificationtasksPredictionsPartialUpdateScoresCulisetaErrorComponent", "IdentificationtasksPredictionsPartialUpdateScoresNonFieldErrorsErrorComponent", "IdentificationtasksPredictionsPartialUpdateScoresNotSureErrorComponent", "IdentificationtasksPredictionsPartialUpdateScoresOtherSpeciesErrorComponent", "IdentificationtasksPredictionsPartialUpdateThresholdDeviationErrorComponent"
    initialize = function(instance = NULL) {
      if (is.null(instance)) {
        # do nothing
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksPredictionsPartialUpdateBboxNonFieldErrorsErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksPredictionsPartialUpdateBboxNonFieldErrorsErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksPredictionsPartialUpdateBboxXMaxErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksPredictionsPartialUpdateBboxXMaxErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksPredictionsPartialUpdateBboxXMinErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksPredictionsPartialUpdateBboxXMinErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksPredictionsPartialUpdateBboxYMaxErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksPredictionsPartialUpdateBboxYMaxErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksPredictionsPartialUpdateBboxYMinErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksPredictionsPartialUpdateBboxYMinErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksPredictionsPartialUpdateClassifierVersionErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksPredictionsPartialUpdateClassifierVersionErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksPredictionsPartialUpdateInsectConfidenceErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksPredictionsPartialUpdateInsectConfidenceErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksPredictionsPartialUpdateIsDecisiveErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksPredictionsPartialUpdateIsDecisiveErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksPredictionsPartialUpdateNonFieldErrorsErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksPredictionsPartialUpdateNonFieldErrorsErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksPredictionsPartialUpdatePredictedClassErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksPredictionsPartialUpdatePredictedClassErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksPredictionsPartialUpdateScoresAeAegyptiErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksPredictionsPartialUpdateScoresAeAegyptiErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksPredictionsPartialUpdateScoresAeAlbopictusErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksPredictionsPartialUpdateScoresAeAlbopictusErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksPredictionsPartialUpdateScoresAeJaponicusErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksPredictionsPartialUpdateScoresAeJaponicusErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksPredictionsPartialUpdateScoresAeKoreicusErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksPredictionsPartialUpdateScoresAeKoreicusErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksPredictionsPartialUpdateScoresAnophelesErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksPredictionsPartialUpdateScoresAnophelesErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksPredictionsPartialUpdateScoresCulexErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksPredictionsPartialUpdateScoresCulexErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksPredictionsPartialUpdateScoresCulisetaErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksPredictionsPartialUpdateScoresCulisetaErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksPredictionsPartialUpdateScoresNonFieldErrorsErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksPredictionsPartialUpdateScoresNonFieldErrorsErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksPredictionsPartialUpdateScoresNotSureErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksPredictionsPartialUpdateScoresNotSureErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksPredictionsPartialUpdateScoresOtherSpeciesErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksPredictionsPartialUpdateScoresOtherSpeciesErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksPredictionsPartialUpdateThresholdDeviationErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksPredictionsPartialUpdateThresholdDeviationErrorComponent"
      } else {
        stop(paste("Failed to initialize IdentificationtasksPredictionsPartialUpdateError with oneOf schemas IdentificationtasksPredictionsPartialUpdateBboxNonFieldErrorsErrorComponent, IdentificationtasksPredictionsPartialUpdateBboxXMaxErrorComponent, IdentificationtasksPredictionsPartialUpdateBboxXMinErrorComponent, IdentificationtasksPredictionsPartialUpdateBboxYMaxErrorComponent, IdentificationtasksPredictionsPartialUpdateBboxYMinErrorComponent, IdentificationtasksPredictionsPartialUpdateClassifierVersionErrorComponent, IdentificationtasksPredictionsPartialUpdateInsectConfidenceErrorComponent, IdentificationtasksPredictionsPartialUpdateIsDecisiveErrorComponent, IdentificationtasksPredictionsPartialUpdateNonFieldErrorsErrorComponent, IdentificationtasksPredictionsPartialUpdatePredictedClassErrorComponent, IdentificationtasksPredictionsPartialUpdateScoresAeAegyptiErrorComponent, IdentificationtasksPredictionsPartialUpdateScoresAeAlbopictusErrorComponent, IdentificationtasksPredictionsPartialUpdateScoresAeJaponicusErrorComponent, IdentificationtasksPredictionsPartialUpdateScoresAeKoreicusErrorComponent, IdentificationtasksPredictionsPartialUpdateScoresAnophelesErrorComponent, IdentificationtasksPredictionsPartialUpdateScoresCulexErrorComponent, IdentificationtasksPredictionsPartialUpdateScoresCulisetaErrorComponent, IdentificationtasksPredictionsPartialUpdateScoresNonFieldErrorsErrorComponent, IdentificationtasksPredictionsPartialUpdateScoresNotSureErrorComponent, IdentificationtasksPredictionsPartialUpdateScoresOtherSpeciesErrorComponent, IdentificationtasksPredictionsPartialUpdateThresholdDeviationErrorComponent. Provided class name: ",
                   get(class(instance)[[1]], pos = -1)$classname))
      }
    },

    #' @description
    #' Deserialize JSON string into an instance of IdentificationtasksPredictionsPartialUpdateError.
    #' An alias to the method `fromJSON` .
    #'
    #' @param input The input JSON.
    #'
    #' @return An instance of IdentificationtasksPredictionsPartialUpdateError.
    fromJSONString = function(input) {
      self$fromJSON(input)
    },

    #' @description
    #' Deserialize JSON string into an instance of IdentificationtasksPredictionsPartialUpdateError.
    #'
    #' @param input The input JSON.
    #'
    #' @return An instance of IdentificationtasksPredictionsPartialUpdateError.
    fromJSON = function(input) {
      matched <- 0 # match counter
      matched_schemas <- list() #names of matched schemas
      error_messages <- list()
      instance <- NULL

      `IdentificationtasksPredictionsPartialUpdateNonFieldErrorsErrorComponent_result` <- tryCatch({
          `IdentificationtasksPredictionsPartialUpdateNonFieldErrorsErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksPredictionsPartialUpdateNonFieldErrorsErrorComponent_instance` <- `IdentificationtasksPredictionsPartialUpdateNonFieldErrorsErrorComponent`$new()
          instance <- `IdentificationtasksPredictionsPartialUpdateNonFieldErrorsErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksPredictionsPartialUpdateNonFieldErrorsErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksPredictionsPartialUpdateNonFieldErrorsErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksPredictionsPartialUpdateNonFieldErrorsErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksPredictionsPartialUpdateNonFieldErrorsErrorComponent_result`["message"])
      }

      `IdentificationtasksPredictionsPartialUpdateBboxNonFieldErrorsErrorComponent_result` <- tryCatch({
          `IdentificationtasksPredictionsPartialUpdateBboxNonFieldErrorsErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksPredictionsPartialUpdateBboxNonFieldErrorsErrorComponent_instance` <- `IdentificationtasksPredictionsPartialUpdateBboxNonFieldErrorsErrorComponent`$new()
          instance <- `IdentificationtasksPredictionsPartialUpdateBboxNonFieldErrorsErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksPredictionsPartialUpdateBboxNonFieldErrorsErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksPredictionsPartialUpdateBboxNonFieldErrorsErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksPredictionsPartialUpdateBboxNonFieldErrorsErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksPredictionsPartialUpdateBboxNonFieldErrorsErrorComponent_result`["message"])
      }

      `IdentificationtasksPredictionsPartialUpdateBboxXMinErrorComponent_result` <- tryCatch({
          `IdentificationtasksPredictionsPartialUpdateBboxXMinErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksPredictionsPartialUpdateBboxXMinErrorComponent_instance` <- `IdentificationtasksPredictionsPartialUpdateBboxXMinErrorComponent`$new()
          instance <- `IdentificationtasksPredictionsPartialUpdateBboxXMinErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksPredictionsPartialUpdateBboxXMinErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksPredictionsPartialUpdateBboxXMinErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksPredictionsPartialUpdateBboxXMinErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksPredictionsPartialUpdateBboxXMinErrorComponent_result`["message"])
      }

      `IdentificationtasksPredictionsPartialUpdateBboxYMinErrorComponent_result` <- tryCatch({
          `IdentificationtasksPredictionsPartialUpdateBboxYMinErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksPredictionsPartialUpdateBboxYMinErrorComponent_instance` <- `IdentificationtasksPredictionsPartialUpdateBboxYMinErrorComponent`$new()
          instance <- `IdentificationtasksPredictionsPartialUpdateBboxYMinErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksPredictionsPartialUpdateBboxYMinErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksPredictionsPartialUpdateBboxYMinErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksPredictionsPartialUpdateBboxYMinErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksPredictionsPartialUpdateBboxYMinErrorComponent_result`["message"])
      }

      `IdentificationtasksPredictionsPartialUpdateBboxXMaxErrorComponent_result` <- tryCatch({
          `IdentificationtasksPredictionsPartialUpdateBboxXMaxErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksPredictionsPartialUpdateBboxXMaxErrorComponent_instance` <- `IdentificationtasksPredictionsPartialUpdateBboxXMaxErrorComponent`$new()
          instance <- `IdentificationtasksPredictionsPartialUpdateBboxXMaxErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksPredictionsPartialUpdateBboxXMaxErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksPredictionsPartialUpdateBboxXMaxErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksPredictionsPartialUpdateBboxXMaxErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksPredictionsPartialUpdateBboxXMaxErrorComponent_result`["message"])
      }

      `IdentificationtasksPredictionsPartialUpdateBboxYMaxErrorComponent_result` <- tryCatch({
          `IdentificationtasksPredictionsPartialUpdateBboxYMaxErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksPredictionsPartialUpdateBboxYMaxErrorComponent_instance` <- `IdentificationtasksPredictionsPartialUpdateBboxYMaxErrorComponent`$new()
          instance <- `IdentificationtasksPredictionsPartialUpdateBboxYMaxErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksPredictionsPartialUpdateBboxYMaxErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksPredictionsPartialUpdateBboxYMaxErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksPredictionsPartialUpdateBboxYMaxErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksPredictionsPartialUpdateBboxYMaxErrorComponent_result`["message"])
      }

      `IdentificationtasksPredictionsPartialUpdateInsectConfidenceErrorComponent_result` <- tryCatch({
          `IdentificationtasksPredictionsPartialUpdateInsectConfidenceErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksPredictionsPartialUpdateInsectConfidenceErrorComponent_instance` <- `IdentificationtasksPredictionsPartialUpdateInsectConfidenceErrorComponent`$new()
          instance <- `IdentificationtasksPredictionsPartialUpdateInsectConfidenceErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksPredictionsPartialUpdateInsectConfidenceErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksPredictionsPartialUpdateInsectConfidenceErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksPredictionsPartialUpdateInsectConfidenceErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksPredictionsPartialUpdateInsectConfidenceErrorComponent_result`["message"])
      }

      `IdentificationtasksPredictionsPartialUpdatePredictedClassErrorComponent_result` <- tryCatch({
          `IdentificationtasksPredictionsPartialUpdatePredictedClassErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksPredictionsPartialUpdatePredictedClassErrorComponent_instance` <- `IdentificationtasksPredictionsPartialUpdatePredictedClassErrorComponent`$new()
          instance <- `IdentificationtasksPredictionsPartialUpdatePredictedClassErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksPredictionsPartialUpdatePredictedClassErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksPredictionsPartialUpdatePredictedClassErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksPredictionsPartialUpdatePredictedClassErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksPredictionsPartialUpdatePredictedClassErrorComponent_result`["message"])
      }

      `IdentificationtasksPredictionsPartialUpdateThresholdDeviationErrorComponent_result` <- tryCatch({
          `IdentificationtasksPredictionsPartialUpdateThresholdDeviationErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksPredictionsPartialUpdateThresholdDeviationErrorComponent_instance` <- `IdentificationtasksPredictionsPartialUpdateThresholdDeviationErrorComponent`$new()
          instance <- `IdentificationtasksPredictionsPartialUpdateThresholdDeviationErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksPredictionsPartialUpdateThresholdDeviationErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksPredictionsPartialUpdateThresholdDeviationErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksPredictionsPartialUpdateThresholdDeviationErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksPredictionsPartialUpdateThresholdDeviationErrorComponent_result`["message"])
      }

      `IdentificationtasksPredictionsPartialUpdateIsDecisiveErrorComponent_result` <- tryCatch({
          `IdentificationtasksPredictionsPartialUpdateIsDecisiveErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksPredictionsPartialUpdateIsDecisiveErrorComponent_instance` <- `IdentificationtasksPredictionsPartialUpdateIsDecisiveErrorComponent`$new()
          instance <- `IdentificationtasksPredictionsPartialUpdateIsDecisiveErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksPredictionsPartialUpdateIsDecisiveErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksPredictionsPartialUpdateIsDecisiveErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksPredictionsPartialUpdateIsDecisiveErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksPredictionsPartialUpdateIsDecisiveErrorComponent_result`["message"])
      }

      `IdentificationtasksPredictionsPartialUpdateScoresNonFieldErrorsErrorComponent_result` <- tryCatch({
          `IdentificationtasksPredictionsPartialUpdateScoresNonFieldErrorsErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksPredictionsPartialUpdateScoresNonFieldErrorsErrorComponent_instance` <- `IdentificationtasksPredictionsPartialUpdateScoresNonFieldErrorsErrorComponent`$new()
          instance <- `IdentificationtasksPredictionsPartialUpdateScoresNonFieldErrorsErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksPredictionsPartialUpdateScoresNonFieldErrorsErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksPredictionsPartialUpdateScoresNonFieldErrorsErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksPredictionsPartialUpdateScoresNonFieldErrorsErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksPredictionsPartialUpdateScoresNonFieldErrorsErrorComponent_result`["message"])
      }

      `IdentificationtasksPredictionsPartialUpdateScoresAeAlbopictusErrorComponent_result` <- tryCatch({
          `IdentificationtasksPredictionsPartialUpdateScoresAeAlbopictusErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksPredictionsPartialUpdateScoresAeAlbopictusErrorComponent_instance` <- `IdentificationtasksPredictionsPartialUpdateScoresAeAlbopictusErrorComponent`$new()
          instance <- `IdentificationtasksPredictionsPartialUpdateScoresAeAlbopictusErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksPredictionsPartialUpdateScoresAeAlbopictusErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksPredictionsPartialUpdateScoresAeAlbopictusErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksPredictionsPartialUpdateScoresAeAlbopictusErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksPredictionsPartialUpdateScoresAeAlbopictusErrorComponent_result`["message"])
      }

      `IdentificationtasksPredictionsPartialUpdateScoresAeAegyptiErrorComponent_result` <- tryCatch({
          `IdentificationtasksPredictionsPartialUpdateScoresAeAegyptiErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksPredictionsPartialUpdateScoresAeAegyptiErrorComponent_instance` <- `IdentificationtasksPredictionsPartialUpdateScoresAeAegyptiErrorComponent`$new()
          instance <- `IdentificationtasksPredictionsPartialUpdateScoresAeAegyptiErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksPredictionsPartialUpdateScoresAeAegyptiErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksPredictionsPartialUpdateScoresAeAegyptiErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksPredictionsPartialUpdateScoresAeAegyptiErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksPredictionsPartialUpdateScoresAeAegyptiErrorComponent_result`["message"])
      }

      `IdentificationtasksPredictionsPartialUpdateScoresAeJaponicusErrorComponent_result` <- tryCatch({
          `IdentificationtasksPredictionsPartialUpdateScoresAeJaponicusErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksPredictionsPartialUpdateScoresAeJaponicusErrorComponent_instance` <- `IdentificationtasksPredictionsPartialUpdateScoresAeJaponicusErrorComponent`$new()
          instance <- `IdentificationtasksPredictionsPartialUpdateScoresAeJaponicusErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksPredictionsPartialUpdateScoresAeJaponicusErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksPredictionsPartialUpdateScoresAeJaponicusErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksPredictionsPartialUpdateScoresAeJaponicusErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksPredictionsPartialUpdateScoresAeJaponicusErrorComponent_result`["message"])
      }

      `IdentificationtasksPredictionsPartialUpdateScoresAeKoreicusErrorComponent_result` <- tryCatch({
          `IdentificationtasksPredictionsPartialUpdateScoresAeKoreicusErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksPredictionsPartialUpdateScoresAeKoreicusErrorComponent_instance` <- `IdentificationtasksPredictionsPartialUpdateScoresAeKoreicusErrorComponent`$new()
          instance <- `IdentificationtasksPredictionsPartialUpdateScoresAeKoreicusErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksPredictionsPartialUpdateScoresAeKoreicusErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksPredictionsPartialUpdateScoresAeKoreicusErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksPredictionsPartialUpdateScoresAeKoreicusErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksPredictionsPartialUpdateScoresAeKoreicusErrorComponent_result`["message"])
      }

      `IdentificationtasksPredictionsPartialUpdateScoresCulexErrorComponent_result` <- tryCatch({
          `IdentificationtasksPredictionsPartialUpdateScoresCulexErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksPredictionsPartialUpdateScoresCulexErrorComponent_instance` <- `IdentificationtasksPredictionsPartialUpdateScoresCulexErrorComponent`$new()
          instance <- `IdentificationtasksPredictionsPartialUpdateScoresCulexErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksPredictionsPartialUpdateScoresCulexErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksPredictionsPartialUpdateScoresCulexErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksPredictionsPartialUpdateScoresCulexErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksPredictionsPartialUpdateScoresCulexErrorComponent_result`["message"])
      }

      `IdentificationtasksPredictionsPartialUpdateScoresAnophelesErrorComponent_result` <- tryCatch({
          `IdentificationtasksPredictionsPartialUpdateScoresAnophelesErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksPredictionsPartialUpdateScoresAnophelesErrorComponent_instance` <- `IdentificationtasksPredictionsPartialUpdateScoresAnophelesErrorComponent`$new()
          instance <- `IdentificationtasksPredictionsPartialUpdateScoresAnophelesErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksPredictionsPartialUpdateScoresAnophelesErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksPredictionsPartialUpdateScoresAnophelesErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksPredictionsPartialUpdateScoresAnophelesErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksPredictionsPartialUpdateScoresAnophelesErrorComponent_result`["message"])
      }

      `IdentificationtasksPredictionsPartialUpdateScoresCulisetaErrorComponent_result` <- tryCatch({
          `IdentificationtasksPredictionsPartialUpdateScoresCulisetaErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksPredictionsPartialUpdateScoresCulisetaErrorComponent_instance` <- `IdentificationtasksPredictionsPartialUpdateScoresCulisetaErrorComponent`$new()
          instance <- `IdentificationtasksPredictionsPartialUpdateScoresCulisetaErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksPredictionsPartialUpdateScoresCulisetaErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksPredictionsPartialUpdateScoresCulisetaErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksPredictionsPartialUpdateScoresCulisetaErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksPredictionsPartialUpdateScoresCulisetaErrorComponent_result`["message"])
      }

      `IdentificationtasksPredictionsPartialUpdateScoresOtherSpeciesErrorComponent_result` <- tryCatch({
          `IdentificationtasksPredictionsPartialUpdateScoresOtherSpeciesErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksPredictionsPartialUpdateScoresOtherSpeciesErrorComponent_instance` <- `IdentificationtasksPredictionsPartialUpdateScoresOtherSpeciesErrorComponent`$new()
          instance <- `IdentificationtasksPredictionsPartialUpdateScoresOtherSpeciesErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksPredictionsPartialUpdateScoresOtherSpeciesErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksPredictionsPartialUpdateScoresOtherSpeciesErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksPredictionsPartialUpdateScoresOtherSpeciesErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksPredictionsPartialUpdateScoresOtherSpeciesErrorComponent_result`["message"])
      }

      `IdentificationtasksPredictionsPartialUpdateScoresNotSureErrorComponent_result` <- tryCatch({
          `IdentificationtasksPredictionsPartialUpdateScoresNotSureErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksPredictionsPartialUpdateScoresNotSureErrorComponent_instance` <- `IdentificationtasksPredictionsPartialUpdateScoresNotSureErrorComponent`$new()
          instance <- `IdentificationtasksPredictionsPartialUpdateScoresNotSureErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksPredictionsPartialUpdateScoresNotSureErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksPredictionsPartialUpdateScoresNotSureErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksPredictionsPartialUpdateScoresNotSureErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksPredictionsPartialUpdateScoresNotSureErrorComponent_result`["message"])
      }

      `IdentificationtasksPredictionsPartialUpdateClassifierVersionErrorComponent_result` <- tryCatch({
          `IdentificationtasksPredictionsPartialUpdateClassifierVersionErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksPredictionsPartialUpdateClassifierVersionErrorComponent_instance` <- `IdentificationtasksPredictionsPartialUpdateClassifierVersionErrorComponent`$new()
          instance <- `IdentificationtasksPredictionsPartialUpdateClassifierVersionErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksPredictionsPartialUpdateClassifierVersionErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksPredictionsPartialUpdateClassifierVersionErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksPredictionsPartialUpdateClassifierVersionErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksPredictionsPartialUpdateClassifierVersionErrorComponent_result`["message"])
      }

      if (matched == 1) {
        # successfully match exactly 1 schema specified in oneOf
        self$actual_instance <- instance
        self$actual_type <- instance_type
      } else if (matched > 1) {
        # more than 1 match
        stop(paste("Multiple matches found when deserializing the input into IdentificationtasksPredictionsPartialUpdateError with oneOf schemas IdentificationtasksPredictionsPartialUpdateBboxNonFieldErrorsErrorComponent, IdentificationtasksPredictionsPartialUpdateBboxXMaxErrorComponent, IdentificationtasksPredictionsPartialUpdateBboxXMinErrorComponent, IdentificationtasksPredictionsPartialUpdateBboxYMaxErrorComponent, IdentificationtasksPredictionsPartialUpdateBboxYMinErrorComponent, IdentificationtasksPredictionsPartialUpdateClassifierVersionErrorComponent, IdentificationtasksPredictionsPartialUpdateInsectConfidenceErrorComponent, IdentificationtasksPredictionsPartialUpdateIsDecisiveErrorComponent, IdentificationtasksPredictionsPartialUpdateNonFieldErrorsErrorComponent, IdentificationtasksPredictionsPartialUpdatePredictedClassErrorComponent, IdentificationtasksPredictionsPartialUpdateScoresAeAegyptiErrorComponent, IdentificationtasksPredictionsPartialUpdateScoresAeAlbopictusErrorComponent, IdentificationtasksPredictionsPartialUpdateScoresAeJaponicusErrorComponent, IdentificationtasksPredictionsPartialUpdateScoresAeKoreicusErrorComponent, IdentificationtasksPredictionsPartialUpdateScoresAnophelesErrorComponent, IdentificationtasksPredictionsPartialUpdateScoresCulexErrorComponent, IdentificationtasksPredictionsPartialUpdateScoresCulisetaErrorComponent, IdentificationtasksPredictionsPartialUpdateScoresNonFieldErrorsErrorComponent, IdentificationtasksPredictionsPartialUpdateScoresNotSureErrorComponent, IdentificationtasksPredictionsPartialUpdateScoresOtherSpeciesErrorComponent, IdentificationtasksPredictionsPartialUpdateThresholdDeviationErrorComponent. Matched schemas: ",
                   paste(matched_schemas, collapse = ", ")))
      } else {
        # no match
        stop(paste("No match found when deserializing the input into IdentificationtasksPredictionsPartialUpdateError with oneOf schemas IdentificationtasksPredictionsPartialUpdateBboxNonFieldErrorsErrorComponent, IdentificationtasksPredictionsPartialUpdateBboxXMaxErrorComponent, IdentificationtasksPredictionsPartialUpdateBboxXMinErrorComponent, IdentificationtasksPredictionsPartialUpdateBboxYMaxErrorComponent, IdentificationtasksPredictionsPartialUpdateBboxYMinErrorComponent, IdentificationtasksPredictionsPartialUpdateClassifierVersionErrorComponent, IdentificationtasksPredictionsPartialUpdateInsectConfidenceErrorComponent, IdentificationtasksPredictionsPartialUpdateIsDecisiveErrorComponent, IdentificationtasksPredictionsPartialUpdateNonFieldErrorsErrorComponent, IdentificationtasksPredictionsPartialUpdatePredictedClassErrorComponent, IdentificationtasksPredictionsPartialUpdateScoresAeAegyptiErrorComponent, IdentificationtasksPredictionsPartialUpdateScoresAeAlbopictusErrorComponent, IdentificationtasksPredictionsPartialUpdateScoresAeJaponicusErrorComponent, IdentificationtasksPredictionsPartialUpdateScoresAeKoreicusErrorComponent, IdentificationtasksPredictionsPartialUpdateScoresAnophelesErrorComponent, IdentificationtasksPredictionsPartialUpdateScoresCulexErrorComponent, IdentificationtasksPredictionsPartialUpdateScoresCulisetaErrorComponent, IdentificationtasksPredictionsPartialUpdateScoresNonFieldErrorsErrorComponent, IdentificationtasksPredictionsPartialUpdateScoresNotSureErrorComponent, IdentificationtasksPredictionsPartialUpdateScoresOtherSpeciesErrorComponent, IdentificationtasksPredictionsPartialUpdateThresholdDeviationErrorComponent. Details: >>",
                   paste(error_messages, collapse = " >> ")))
      }

      self
    },

    #' @description
    #' Serialize IdentificationtasksPredictionsPartialUpdateError to JSON string.
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return JSON string representation of the IdentificationtasksPredictionsPartialUpdateError.
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
    #' Convert IdentificationtasksPredictionsPartialUpdateError to a base R type
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
    #' Validate the input JSON with respect to IdentificationtasksPredictionsPartialUpdateError and
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
#IdentificationtasksPredictionsPartialUpdateError$unlock()
#
## Below is an example to define the print function
#IdentificationtasksPredictionsPartialUpdateError$set("public", "print", function(...) {
#  print(jsonlite::prettify(self$toJSONString()))
#  invisible(self)
#})
## Uncomment below to lock the class to prevent modifications to the method or field
#IdentificationtasksPredictionsPartialUpdateError$lock()

