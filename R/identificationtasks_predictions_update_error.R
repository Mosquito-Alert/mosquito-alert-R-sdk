#' @docType class
#' @title IdentificationtasksPredictionsUpdateError
#'
#' @description IdentificationtasksPredictionsUpdateError Class
#'
#' @format An \code{R6Class} generator object
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
IdentificationtasksPredictionsUpdateError <- R6::R6Class(
  "IdentificationtasksPredictionsUpdateError",
  public = list(
    #' @field actual_instance the object stored in this instance.
    actual_instance = NULL,
    #' @field actual_type the type of the object stored in this instance.
    actual_type = NULL,
    #' @field one_of  a list of types defined in the oneOf schema.
    one_of = list("IdentificationtasksPredictionsUpdateBboxNonFieldErrorsErrorComponent", "IdentificationtasksPredictionsUpdateBboxXMaxErrorComponent", "IdentificationtasksPredictionsUpdateBboxXMinErrorComponent", "IdentificationtasksPredictionsUpdateBboxYMaxErrorComponent", "IdentificationtasksPredictionsUpdateBboxYMinErrorComponent", "IdentificationtasksPredictionsUpdateClassifierVersionErrorComponent", "IdentificationtasksPredictionsUpdateInsectConfidenceErrorComponent", "IdentificationtasksPredictionsUpdateIsDecisiveErrorComponent", "IdentificationtasksPredictionsUpdateNonFieldErrorsErrorComponent", "IdentificationtasksPredictionsUpdatePredictedClassErrorComponent", "IdentificationtasksPredictionsUpdateScoresAeAegyptiErrorComponent", "IdentificationtasksPredictionsUpdateScoresAeAlbopictusErrorComponent", "IdentificationtasksPredictionsUpdateScoresAeJaponicusErrorComponent", "IdentificationtasksPredictionsUpdateScoresAeKoreicusErrorComponent", "IdentificationtasksPredictionsUpdateScoresAnophelesErrorComponent", "IdentificationtasksPredictionsUpdateScoresCulexErrorComponent", "IdentificationtasksPredictionsUpdateScoresCulisetaErrorComponent", "IdentificationtasksPredictionsUpdateScoresNonFieldErrorsErrorComponent", "IdentificationtasksPredictionsUpdateScoresNotSureErrorComponent", "IdentificationtasksPredictionsUpdateScoresOtherSpeciesErrorComponent", "IdentificationtasksPredictionsUpdateThresholdDeviationErrorComponent"),

    #' @description
    #' Initialize a new IdentificationtasksPredictionsUpdateError.
    #'
    #' @param instance an instance of the object defined in the oneOf schemas: "IdentificationtasksPredictionsUpdateBboxNonFieldErrorsErrorComponent", "IdentificationtasksPredictionsUpdateBboxXMaxErrorComponent", "IdentificationtasksPredictionsUpdateBboxXMinErrorComponent", "IdentificationtasksPredictionsUpdateBboxYMaxErrorComponent", "IdentificationtasksPredictionsUpdateBboxYMinErrorComponent", "IdentificationtasksPredictionsUpdateClassifierVersionErrorComponent", "IdentificationtasksPredictionsUpdateInsectConfidenceErrorComponent", "IdentificationtasksPredictionsUpdateIsDecisiveErrorComponent", "IdentificationtasksPredictionsUpdateNonFieldErrorsErrorComponent", "IdentificationtasksPredictionsUpdatePredictedClassErrorComponent", "IdentificationtasksPredictionsUpdateScoresAeAegyptiErrorComponent", "IdentificationtasksPredictionsUpdateScoresAeAlbopictusErrorComponent", "IdentificationtasksPredictionsUpdateScoresAeJaponicusErrorComponent", "IdentificationtasksPredictionsUpdateScoresAeKoreicusErrorComponent", "IdentificationtasksPredictionsUpdateScoresAnophelesErrorComponent", "IdentificationtasksPredictionsUpdateScoresCulexErrorComponent", "IdentificationtasksPredictionsUpdateScoresCulisetaErrorComponent", "IdentificationtasksPredictionsUpdateScoresNonFieldErrorsErrorComponent", "IdentificationtasksPredictionsUpdateScoresNotSureErrorComponent", "IdentificationtasksPredictionsUpdateScoresOtherSpeciesErrorComponent", "IdentificationtasksPredictionsUpdateThresholdDeviationErrorComponent"
    initialize = function(instance = NULL) {
      if (is.null(instance)) {
        # do nothing
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksPredictionsUpdateBboxNonFieldErrorsErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksPredictionsUpdateBboxNonFieldErrorsErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksPredictionsUpdateBboxXMaxErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksPredictionsUpdateBboxXMaxErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksPredictionsUpdateBboxXMinErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksPredictionsUpdateBboxXMinErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksPredictionsUpdateBboxYMaxErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksPredictionsUpdateBboxYMaxErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksPredictionsUpdateBboxYMinErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksPredictionsUpdateBboxYMinErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksPredictionsUpdateClassifierVersionErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksPredictionsUpdateClassifierVersionErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksPredictionsUpdateInsectConfidenceErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksPredictionsUpdateInsectConfidenceErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksPredictionsUpdateIsDecisiveErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksPredictionsUpdateIsDecisiveErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksPredictionsUpdateNonFieldErrorsErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksPredictionsUpdateNonFieldErrorsErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksPredictionsUpdatePredictedClassErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksPredictionsUpdatePredictedClassErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksPredictionsUpdateScoresAeAegyptiErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksPredictionsUpdateScoresAeAegyptiErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksPredictionsUpdateScoresAeAlbopictusErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksPredictionsUpdateScoresAeAlbopictusErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksPredictionsUpdateScoresAeJaponicusErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksPredictionsUpdateScoresAeJaponicusErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksPredictionsUpdateScoresAeKoreicusErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksPredictionsUpdateScoresAeKoreicusErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksPredictionsUpdateScoresAnophelesErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksPredictionsUpdateScoresAnophelesErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksPredictionsUpdateScoresCulexErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksPredictionsUpdateScoresCulexErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksPredictionsUpdateScoresCulisetaErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksPredictionsUpdateScoresCulisetaErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksPredictionsUpdateScoresNonFieldErrorsErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksPredictionsUpdateScoresNonFieldErrorsErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksPredictionsUpdateScoresNotSureErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksPredictionsUpdateScoresNotSureErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksPredictionsUpdateScoresOtherSpeciesErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksPredictionsUpdateScoresOtherSpeciesErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksPredictionsUpdateThresholdDeviationErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksPredictionsUpdateThresholdDeviationErrorComponent"
      } else {
        stop(paste("Failed to initialize IdentificationtasksPredictionsUpdateError with oneOf schemas IdentificationtasksPredictionsUpdateBboxNonFieldErrorsErrorComponent, IdentificationtasksPredictionsUpdateBboxXMaxErrorComponent, IdentificationtasksPredictionsUpdateBboxXMinErrorComponent, IdentificationtasksPredictionsUpdateBboxYMaxErrorComponent, IdentificationtasksPredictionsUpdateBboxYMinErrorComponent, IdentificationtasksPredictionsUpdateClassifierVersionErrorComponent, IdentificationtasksPredictionsUpdateInsectConfidenceErrorComponent, IdentificationtasksPredictionsUpdateIsDecisiveErrorComponent, IdentificationtasksPredictionsUpdateNonFieldErrorsErrorComponent, IdentificationtasksPredictionsUpdatePredictedClassErrorComponent, IdentificationtasksPredictionsUpdateScoresAeAegyptiErrorComponent, IdentificationtasksPredictionsUpdateScoresAeAlbopictusErrorComponent, IdentificationtasksPredictionsUpdateScoresAeJaponicusErrorComponent, IdentificationtasksPredictionsUpdateScoresAeKoreicusErrorComponent, IdentificationtasksPredictionsUpdateScoresAnophelesErrorComponent, IdentificationtasksPredictionsUpdateScoresCulexErrorComponent, IdentificationtasksPredictionsUpdateScoresCulisetaErrorComponent, IdentificationtasksPredictionsUpdateScoresNonFieldErrorsErrorComponent, IdentificationtasksPredictionsUpdateScoresNotSureErrorComponent, IdentificationtasksPredictionsUpdateScoresOtherSpeciesErrorComponent, IdentificationtasksPredictionsUpdateThresholdDeviationErrorComponent. Provided class name: ",
                   get(class(instance)[[1]], pos = -1)$classname))
      }
    },

    #' @description
    #' Deserialize JSON string into an instance of IdentificationtasksPredictionsUpdateError.
    #' An alias to the method `fromJSON` .
    #'
    #' @param input The input JSON.
    #'
    #' @return An instance of IdentificationtasksPredictionsUpdateError.
    fromJSONString = function(input) {
      self$fromJSON(input)
    },

    #' @description
    #' Deserialize JSON string into an instance of IdentificationtasksPredictionsUpdateError.
    #'
    #' @param input The input JSON.
    #'
    #' @return An instance of IdentificationtasksPredictionsUpdateError.
    fromJSON = function(input) {
      matched <- 0 # match counter
      matched_schemas <- list() #names of matched schemas
      error_messages <- list()
      instance <- NULL

      `IdentificationtasksPredictionsUpdateNonFieldErrorsErrorComponent_result` <- tryCatch({
          `IdentificationtasksPredictionsUpdateNonFieldErrorsErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksPredictionsUpdateNonFieldErrorsErrorComponent_instance` <- `IdentificationtasksPredictionsUpdateNonFieldErrorsErrorComponent`$new()
          instance <- `IdentificationtasksPredictionsUpdateNonFieldErrorsErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksPredictionsUpdateNonFieldErrorsErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksPredictionsUpdateNonFieldErrorsErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksPredictionsUpdateNonFieldErrorsErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksPredictionsUpdateNonFieldErrorsErrorComponent_result`["message"])
      }

      `IdentificationtasksPredictionsUpdateBboxNonFieldErrorsErrorComponent_result` <- tryCatch({
          `IdentificationtasksPredictionsUpdateBboxNonFieldErrorsErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksPredictionsUpdateBboxNonFieldErrorsErrorComponent_instance` <- `IdentificationtasksPredictionsUpdateBboxNonFieldErrorsErrorComponent`$new()
          instance <- `IdentificationtasksPredictionsUpdateBboxNonFieldErrorsErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksPredictionsUpdateBboxNonFieldErrorsErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksPredictionsUpdateBboxNonFieldErrorsErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksPredictionsUpdateBboxNonFieldErrorsErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksPredictionsUpdateBboxNonFieldErrorsErrorComponent_result`["message"])
      }

      `IdentificationtasksPredictionsUpdateBboxXMinErrorComponent_result` <- tryCatch({
          `IdentificationtasksPredictionsUpdateBboxXMinErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksPredictionsUpdateBboxXMinErrorComponent_instance` <- `IdentificationtasksPredictionsUpdateBboxXMinErrorComponent`$new()
          instance <- `IdentificationtasksPredictionsUpdateBboxXMinErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksPredictionsUpdateBboxXMinErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksPredictionsUpdateBboxXMinErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksPredictionsUpdateBboxXMinErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksPredictionsUpdateBboxXMinErrorComponent_result`["message"])
      }

      `IdentificationtasksPredictionsUpdateBboxYMinErrorComponent_result` <- tryCatch({
          `IdentificationtasksPredictionsUpdateBboxYMinErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksPredictionsUpdateBboxYMinErrorComponent_instance` <- `IdentificationtasksPredictionsUpdateBboxYMinErrorComponent`$new()
          instance <- `IdentificationtasksPredictionsUpdateBboxYMinErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksPredictionsUpdateBboxYMinErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksPredictionsUpdateBboxYMinErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksPredictionsUpdateBboxYMinErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksPredictionsUpdateBboxYMinErrorComponent_result`["message"])
      }

      `IdentificationtasksPredictionsUpdateBboxXMaxErrorComponent_result` <- tryCatch({
          `IdentificationtasksPredictionsUpdateBboxXMaxErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksPredictionsUpdateBboxXMaxErrorComponent_instance` <- `IdentificationtasksPredictionsUpdateBboxXMaxErrorComponent`$new()
          instance <- `IdentificationtasksPredictionsUpdateBboxXMaxErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksPredictionsUpdateBboxXMaxErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksPredictionsUpdateBboxXMaxErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksPredictionsUpdateBboxXMaxErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksPredictionsUpdateBboxXMaxErrorComponent_result`["message"])
      }

      `IdentificationtasksPredictionsUpdateBboxYMaxErrorComponent_result` <- tryCatch({
          `IdentificationtasksPredictionsUpdateBboxYMaxErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksPredictionsUpdateBboxYMaxErrorComponent_instance` <- `IdentificationtasksPredictionsUpdateBboxYMaxErrorComponent`$new()
          instance <- `IdentificationtasksPredictionsUpdateBboxYMaxErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksPredictionsUpdateBboxYMaxErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksPredictionsUpdateBboxYMaxErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksPredictionsUpdateBboxYMaxErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksPredictionsUpdateBboxYMaxErrorComponent_result`["message"])
      }

      `IdentificationtasksPredictionsUpdateInsectConfidenceErrorComponent_result` <- tryCatch({
          `IdentificationtasksPredictionsUpdateInsectConfidenceErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksPredictionsUpdateInsectConfidenceErrorComponent_instance` <- `IdentificationtasksPredictionsUpdateInsectConfidenceErrorComponent`$new()
          instance <- `IdentificationtasksPredictionsUpdateInsectConfidenceErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksPredictionsUpdateInsectConfidenceErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksPredictionsUpdateInsectConfidenceErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksPredictionsUpdateInsectConfidenceErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksPredictionsUpdateInsectConfidenceErrorComponent_result`["message"])
      }

      `IdentificationtasksPredictionsUpdatePredictedClassErrorComponent_result` <- tryCatch({
          `IdentificationtasksPredictionsUpdatePredictedClassErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksPredictionsUpdatePredictedClassErrorComponent_instance` <- `IdentificationtasksPredictionsUpdatePredictedClassErrorComponent`$new()
          instance <- `IdentificationtasksPredictionsUpdatePredictedClassErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksPredictionsUpdatePredictedClassErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksPredictionsUpdatePredictedClassErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksPredictionsUpdatePredictedClassErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksPredictionsUpdatePredictedClassErrorComponent_result`["message"])
      }

      `IdentificationtasksPredictionsUpdateThresholdDeviationErrorComponent_result` <- tryCatch({
          `IdentificationtasksPredictionsUpdateThresholdDeviationErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksPredictionsUpdateThresholdDeviationErrorComponent_instance` <- `IdentificationtasksPredictionsUpdateThresholdDeviationErrorComponent`$new()
          instance <- `IdentificationtasksPredictionsUpdateThresholdDeviationErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksPredictionsUpdateThresholdDeviationErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksPredictionsUpdateThresholdDeviationErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksPredictionsUpdateThresholdDeviationErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksPredictionsUpdateThresholdDeviationErrorComponent_result`["message"])
      }

      `IdentificationtasksPredictionsUpdateIsDecisiveErrorComponent_result` <- tryCatch({
          `IdentificationtasksPredictionsUpdateIsDecisiveErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksPredictionsUpdateIsDecisiveErrorComponent_instance` <- `IdentificationtasksPredictionsUpdateIsDecisiveErrorComponent`$new()
          instance <- `IdentificationtasksPredictionsUpdateIsDecisiveErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksPredictionsUpdateIsDecisiveErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksPredictionsUpdateIsDecisiveErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksPredictionsUpdateIsDecisiveErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksPredictionsUpdateIsDecisiveErrorComponent_result`["message"])
      }

      `IdentificationtasksPredictionsUpdateScoresNonFieldErrorsErrorComponent_result` <- tryCatch({
          `IdentificationtasksPredictionsUpdateScoresNonFieldErrorsErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksPredictionsUpdateScoresNonFieldErrorsErrorComponent_instance` <- `IdentificationtasksPredictionsUpdateScoresNonFieldErrorsErrorComponent`$new()
          instance <- `IdentificationtasksPredictionsUpdateScoresNonFieldErrorsErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksPredictionsUpdateScoresNonFieldErrorsErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksPredictionsUpdateScoresNonFieldErrorsErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksPredictionsUpdateScoresNonFieldErrorsErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksPredictionsUpdateScoresNonFieldErrorsErrorComponent_result`["message"])
      }

      `IdentificationtasksPredictionsUpdateScoresAeAlbopictusErrorComponent_result` <- tryCatch({
          `IdentificationtasksPredictionsUpdateScoresAeAlbopictusErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksPredictionsUpdateScoresAeAlbopictusErrorComponent_instance` <- `IdentificationtasksPredictionsUpdateScoresAeAlbopictusErrorComponent`$new()
          instance <- `IdentificationtasksPredictionsUpdateScoresAeAlbopictusErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksPredictionsUpdateScoresAeAlbopictusErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksPredictionsUpdateScoresAeAlbopictusErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksPredictionsUpdateScoresAeAlbopictusErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksPredictionsUpdateScoresAeAlbopictusErrorComponent_result`["message"])
      }

      `IdentificationtasksPredictionsUpdateScoresAeAegyptiErrorComponent_result` <- tryCatch({
          `IdentificationtasksPredictionsUpdateScoresAeAegyptiErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksPredictionsUpdateScoresAeAegyptiErrorComponent_instance` <- `IdentificationtasksPredictionsUpdateScoresAeAegyptiErrorComponent`$new()
          instance <- `IdentificationtasksPredictionsUpdateScoresAeAegyptiErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksPredictionsUpdateScoresAeAegyptiErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksPredictionsUpdateScoresAeAegyptiErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksPredictionsUpdateScoresAeAegyptiErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksPredictionsUpdateScoresAeAegyptiErrorComponent_result`["message"])
      }

      `IdentificationtasksPredictionsUpdateScoresAeJaponicusErrorComponent_result` <- tryCatch({
          `IdentificationtasksPredictionsUpdateScoresAeJaponicusErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksPredictionsUpdateScoresAeJaponicusErrorComponent_instance` <- `IdentificationtasksPredictionsUpdateScoresAeJaponicusErrorComponent`$new()
          instance <- `IdentificationtasksPredictionsUpdateScoresAeJaponicusErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksPredictionsUpdateScoresAeJaponicusErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksPredictionsUpdateScoresAeJaponicusErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksPredictionsUpdateScoresAeJaponicusErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksPredictionsUpdateScoresAeJaponicusErrorComponent_result`["message"])
      }

      `IdentificationtasksPredictionsUpdateScoresAeKoreicusErrorComponent_result` <- tryCatch({
          `IdentificationtasksPredictionsUpdateScoresAeKoreicusErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksPredictionsUpdateScoresAeKoreicusErrorComponent_instance` <- `IdentificationtasksPredictionsUpdateScoresAeKoreicusErrorComponent`$new()
          instance <- `IdentificationtasksPredictionsUpdateScoresAeKoreicusErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksPredictionsUpdateScoresAeKoreicusErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksPredictionsUpdateScoresAeKoreicusErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksPredictionsUpdateScoresAeKoreicusErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksPredictionsUpdateScoresAeKoreicusErrorComponent_result`["message"])
      }

      `IdentificationtasksPredictionsUpdateScoresCulexErrorComponent_result` <- tryCatch({
          `IdentificationtasksPredictionsUpdateScoresCulexErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksPredictionsUpdateScoresCulexErrorComponent_instance` <- `IdentificationtasksPredictionsUpdateScoresCulexErrorComponent`$new()
          instance <- `IdentificationtasksPredictionsUpdateScoresCulexErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksPredictionsUpdateScoresCulexErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksPredictionsUpdateScoresCulexErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksPredictionsUpdateScoresCulexErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksPredictionsUpdateScoresCulexErrorComponent_result`["message"])
      }

      `IdentificationtasksPredictionsUpdateScoresAnophelesErrorComponent_result` <- tryCatch({
          `IdentificationtasksPredictionsUpdateScoresAnophelesErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksPredictionsUpdateScoresAnophelesErrorComponent_instance` <- `IdentificationtasksPredictionsUpdateScoresAnophelesErrorComponent`$new()
          instance <- `IdentificationtasksPredictionsUpdateScoresAnophelesErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksPredictionsUpdateScoresAnophelesErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksPredictionsUpdateScoresAnophelesErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksPredictionsUpdateScoresAnophelesErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksPredictionsUpdateScoresAnophelesErrorComponent_result`["message"])
      }

      `IdentificationtasksPredictionsUpdateScoresCulisetaErrorComponent_result` <- tryCatch({
          `IdentificationtasksPredictionsUpdateScoresCulisetaErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksPredictionsUpdateScoresCulisetaErrorComponent_instance` <- `IdentificationtasksPredictionsUpdateScoresCulisetaErrorComponent`$new()
          instance <- `IdentificationtasksPredictionsUpdateScoresCulisetaErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksPredictionsUpdateScoresCulisetaErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksPredictionsUpdateScoresCulisetaErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksPredictionsUpdateScoresCulisetaErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksPredictionsUpdateScoresCulisetaErrorComponent_result`["message"])
      }

      `IdentificationtasksPredictionsUpdateScoresOtherSpeciesErrorComponent_result` <- tryCatch({
          `IdentificationtasksPredictionsUpdateScoresOtherSpeciesErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksPredictionsUpdateScoresOtherSpeciesErrorComponent_instance` <- `IdentificationtasksPredictionsUpdateScoresOtherSpeciesErrorComponent`$new()
          instance <- `IdentificationtasksPredictionsUpdateScoresOtherSpeciesErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksPredictionsUpdateScoresOtherSpeciesErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksPredictionsUpdateScoresOtherSpeciesErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksPredictionsUpdateScoresOtherSpeciesErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksPredictionsUpdateScoresOtherSpeciesErrorComponent_result`["message"])
      }

      `IdentificationtasksPredictionsUpdateScoresNotSureErrorComponent_result` <- tryCatch({
          `IdentificationtasksPredictionsUpdateScoresNotSureErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksPredictionsUpdateScoresNotSureErrorComponent_instance` <- `IdentificationtasksPredictionsUpdateScoresNotSureErrorComponent`$new()
          instance <- `IdentificationtasksPredictionsUpdateScoresNotSureErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksPredictionsUpdateScoresNotSureErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksPredictionsUpdateScoresNotSureErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksPredictionsUpdateScoresNotSureErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksPredictionsUpdateScoresNotSureErrorComponent_result`["message"])
      }

      `IdentificationtasksPredictionsUpdateClassifierVersionErrorComponent_result` <- tryCatch({
          `IdentificationtasksPredictionsUpdateClassifierVersionErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksPredictionsUpdateClassifierVersionErrorComponent_instance` <- `IdentificationtasksPredictionsUpdateClassifierVersionErrorComponent`$new()
          instance <- `IdentificationtasksPredictionsUpdateClassifierVersionErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksPredictionsUpdateClassifierVersionErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksPredictionsUpdateClassifierVersionErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksPredictionsUpdateClassifierVersionErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksPredictionsUpdateClassifierVersionErrorComponent_result`["message"])
      }

      if (matched == 1) {
        # successfully match exactly 1 schema specified in oneOf
        self$actual_instance <- instance
        self$actual_type <- instance_type
      } else if (matched > 1) {
        # more than 1 match
        stop(paste("Multiple matches found when deserializing the input into IdentificationtasksPredictionsUpdateError with oneOf schemas IdentificationtasksPredictionsUpdateBboxNonFieldErrorsErrorComponent, IdentificationtasksPredictionsUpdateBboxXMaxErrorComponent, IdentificationtasksPredictionsUpdateBboxXMinErrorComponent, IdentificationtasksPredictionsUpdateBboxYMaxErrorComponent, IdentificationtasksPredictionsUpdateBboxYMinErrorComponent, IdentificationtasksPredictionsUpdateClassifierVersionErrorComponent, IdentificationtasksPredictionsUpdateInsectConfidenceErrorComponent, IdentificationtasksPredictionsUpdateIsDecisiveErrorComponent, IdentificationtasksPredictionsUpdateNonFieldErrorsErrorComponent, IdentificationtasksPredictionsUpdatePredictedClassErrorComponent, IdentificationtasksPredictionsUpdateScoresAeAegyptiErrorComponent, IdentificationtasksPredictionsUpdateScoresAeAlbopictusErrorComponent, IdentificationtasksPredictionsUpdateScoresAeJaponicusErrorComponent, IdentificationtasksPredictionsUpdateScoresAeKoreicusErrorComponent, IdentificationtasksPredictionsUpdateScoresAnophelesErrorComponent, IdentificationtasksPredictionsUpdateScoresCulexErrorComponent, IdentificationtasksPredictionsUpdateScoresCulisetaErrorComponent, IdentificationtasksPredictionsUpdateScoresNonFieldErrorsErrorComponent, IdentificationtasksPredictionsUpdateScoresNotSureErrorComponent, IdentificationtasksPredictionsUpdateScoresOtherSpeciesErrorComponent, IdentificationtasksPredictionsUpdateThresholdDeviationErrorComponent. Matched schemas: ",
                   paste(matched_schemas, collapse = ", ")))
      } else {
        # no match
        stop(paste("No match found when deserializing the input into IdentificationtasksPredictionsUpdateError with oneOf schemas IdentificationtasksPredictionsUpdateBboxNonFieldErrorsErrorComponent, IdentificationtasksPredictionsUpdateBboxXMaxErrorComponent, IdentificationtasksPredictionsUpdateBboxXMinErrorComponent, IdentificationtasksPredictionsUpdateBboxYMaxErrorComponent, IdentificationtasksPredictionsUpdateBboxYMinErrorComponent, IdentificationtasksPredictionsUpdateClassifierVersionErrorComponent, IdentificationtasksPredictionsUpdateInsectConfidenceErrorComponent, IdentificationtasksPredictionsUpdateIsDecisiveErrorComponent, IdentificationtasksPredictionsUpdateNonFieldErrorsErrorComponent, IdentificationtasksPredictionsUpdatePredictedClassErrorComponent, IdentificationtasksPredictionsUpdateScoresAeAegyptiErrorComponent, IdentificationtasksPredictionsUpdateScoresAeAlbopictusErrorComponent, IdentificationtasksPredictionsUpdateScoresAeJaponicusErrorComponent, IdentificationtasksPredictionsUpdateScoresAeKoreicusErrorComponent, IdentificationtasksPredictionsUpdateScoresAnophelesErrorComponent, IdentificationtasksPredictionsUpdateScoresCulexErrorComponent, IdentificationtasksPredictionsUpdateScoresCulisetaErrorComponent, IdentificationtasksPredictionsUpdateScoresNonFieldErrorsErrorComponent, IdentificationtasksPredictionsUpdateScoresNotSureErrorComponent, IdentificationtasksPredictionsUpdateScoresOtherSpeciesErrorComponent, IdentificationtasksPredictionsUpdateThresholdDeviationErrorComponent. Details: >>",
                   paste(error_messages, collapse = " >> ")))
      }

      self
    },

    #' @description
    #' Serialize IdentificationtasksPredictionsUpdateError to JSON string.
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return JSON string representation of the IdentificationtasksPredictionsUpdateError.
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
    #' Convert IdentificationtasksPredictionsUpdateError to a base R type
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
    #' Validate the input JSON with respect to IdentificationtasksPredictionsUpdateError and
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
#IdentificationtasksPredictionsUpdateError$unlock()
#
## Below is an example to define the print function
#IdentificationtasksPredictionsUpdateError$set("public", "print", function(...) {
#  print(jsonlite::prettify(self$toJSONString()))
#  invisible(self)
#})
## Uncomment below to lock the class to prevent modifications to the method or field
#IdentificationtasksPredictionsUpdateError$lock()

