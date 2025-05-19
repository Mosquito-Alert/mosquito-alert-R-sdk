#' @docType class
#' @title PhotosPredictionPartialUpdateError
#'
#' @description PhotosPredictionPartialUpdateError Class
#'
#' @format An \code{R6Class} generator object
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PhotosPredictionPartialUpdateError <- R6::R6Class(
  "PhotosPredictionPartialUpdateError",
  public = list(
    #' @field actual_instance the object stored in this instance.
    actual_instance = NULL,
    #' @field actual_type the type of the object stored in this instance.
    actual_type = NULL,
    #' @field one_of  a list of types defined in the oneOf schema.
    one_of = list("PhotosPredictionPartialUpdateBboxNonFieldErrorsErrorComponent", "PhotosPredictionPartialUpdateBboxXMaxErrorComponent", "PhotosPredictionPartialUpdateBboxXMinErrorComponent", "PhotosPredictionPartialUpdateBboxYMaxErrorComponent", "PhotosPredictionPartialUpdateBboxYMinErrorComponent", "PhotosPredictionPartialUpdateClassifierVersionErrorComponent", "PhotosPredictionPartialUpdateInsectConfidenceErrorComponent", "PhotosPredictionPartialUpdateIsDecisiveErrorComponent", "PhotosPredictionPartialUpdateNonFieldErrorsErrorComponent", "PhotosPredictionPartialUpdatePredictedClassErrorComponent", "PhotosPredictionPartialUpdateScoresAeAegyptiErrorComponent", "PhotosPredictionPartialUpdateScoresAeAlbopictusErrorComponent", "PhotosPredictionPartialUpdateScoresAeJaponicusErrorComponent", "PhotosPredictionPartialUpdateScoresAeKoreicusErrorComponent", "PhotosPredictionPartialUpdateScoresAnophelesErrorComponent", "PhotosPredictionPartialUpdateScoresCulexErrorComponent", "PhotosPredictionPartialUpdateScoresCulisetaErrorComponent", "PhotosPredictionPartialUpdateScoresNonFieldErrorsErrorComponent", "PhotosPredictionPartialUpdateScoresNotSureErrorComponent", "PhotosPredictionPartialUpdateScoresOtherSpeciesErrorComponent", "PhotosPredictionPartialUpdateThresholdDeviationErrorComponent"),

    #' @description
    #' Initialize a new PhotosPredictionPartialUpdateError.
    #'
    #' @param instance an instance of the object defined in the oneOf schemas: "PhotosPredictionPartialUpdateBboxNonFieldErrorsErrorComponent", "PhotosPredictionPartialUpdateBboxXMaxErrorComponent", "PhotosPredictionPartialUpdateBboxXMinErrorComponent", "PhotosPredictionPartialUpdateBboxYMaxErrorComponent", "PhotosPredictionPartialUpdateBboxYMinErrorComponent", "PhotosPredictionPartialUpdateClassifierVersionErrorComponent", "PhotosPredictionPartialUpdateInsectConfidenceErrorComponent", "PhotosPredictionPartialUpdateIsDecisiveErrorComponent", "PhotosPredictionPartialUpdateNonFieldErrorsErrorComponent", "PhotosPredictionPartialUpdatePredictedClassErrorComponent", "PhotosPredictionPartialUpdateScoresAeAegyptiErrorComponent", "PhotosPredictionPartialUpdateScoresAeAlbopictusErrorComponent", "PhotosPredictionPartialUpdateScoresAeJaponicusErrorComponent", "PhotosPredictionPartialUpdateScoresAeKoreicusErrorComponent", "PhotosPredictionPartialUpdateScoresAnophelesErrorComponent", "PhotosPredictionPartialUpdateScoresCulexErrorComponent", "PhotosPredictionPartialUpdateScoresCulisetaErrorComponent", "PhotosPredictionPartialUpdateScoresNonFieldErrorsErrorComponent", "PhotosPredictionPartialUpdateScoresNotSureErrorComponent", "PhotosPredictionPartialUpdateScoresOtherSpeciesErrorComponent", "PhotosPredictionPartialUpdateThresholdDeviationErrorComponent"
    initialize = function(instance = NULL) {
      if (is.null(instance)) {
        # do nothing
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "PhotosPredictionPartialUpdateBboxNonFieldErrorsErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "PhotosPredictionPartialUpdateBboxNonFieldErrorsErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "PhotosPredictionPartialUpdateBboxXMaxErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "PhotosPredictionPartialUpdateBboxXMaxErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "PhotosPredictionPartialUpdateBboxXMinErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "PhotosPredictionPartialUpdateBboxXMinErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "PhotosPredictionPartialUpdateBboxYMaxErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "PhotosPredictionPartialUpdateBboxYMaxErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "PhotosPredictionPartialUpdateBboxYMinErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "PhotosPredictionPartialUpdateBboxYMinErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "PhotosPredictionPartialUpdateClassifierVersionErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "PhotosPredictionPartialUpdateClassifierVersionErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "PhotosPredictionPartialUpdateInsectConfidenceErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "PhotosPredictionPartialUpdateInsectConfidenceErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "PhotosPredictionPartialUpdateIsDecisiveErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "PhotosPredictionPartialUpdateIsDecisiveErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "PhotosPredictionPartialUpdateNonFieldErrorsErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "PhotosPredictionPartialUpdateNonFieldErrorsErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "PhotosPredictionPartialUpdatePredictedClassErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "PhotosPredictionPartialUpdatePredictedClassErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "PhotosPredictionPartialUpdateScoresAeAegyptiErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "PhotosPredictionPartialUpdateScoresAeAegyptiErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "PhotosPredictionPartialUpdateScoresAeAlbopictusErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "PhotosPredictionPartialUpdateScoresAeAlbopictusErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "PhotosPredictionPartialUpdateScoresAeJaponicusErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "PhotosPredictionPartialUpdateScoresAeJaponicusErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "PhotosPredictionPartialUpdateScoresAeKoreicusErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "PhotosPredictionPartialUpdateScoresAeKoreicusErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "PhotosPredictionPartialUpdateScoresAnophelesErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "PhotosPredictionPartialUpdateScoresAnophelesErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "PhotosPredictionPartialUpdateScoresCulexErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "PhotosPredictionPartialUpdateScoresCulexErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "PhotosPredictionPartialUpdateScoresCulisetaErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "PhotosPredictionPartialUpdateScoresCulisetaErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "PhotosPredictionPartialUpdateScoresNonFieldErrorsErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "PhotosPredictionPartialUpdateScoresNonFieldErrorsErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "PhotosPredictionPartialUpdateScoresNotSureErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "PhotosPredictionPartialUpdateScoresNotSureErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "PhotosPredictionPartialUpdateScoresOtherSpeciesErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "PhotosPredictionPartialUpdateScoresOtherSpeciesErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "PhotosPredictionPartialUpdateThresholdDeviationErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "PhotosPredictionPartialUpdateThresholdDeviationErrorComponent"
      } else {
        stop(paste("Failed to initialize PhotosPredictionPartialUpdateError with oneOf schemas PhotosPredictionPartialUpdateBboxNonFieldErrorsErrorComponent, PhotosPredictionPartialUpdateBboxXMaxErrorComponent, PhotosPredictionPartialUpdateBboxXMinErrorComponent, PhotosPredictionPartialUpdateBboxYMaxErrorComponent, PhotosPredictionPartialUpdateBboxYMinErrorComponent, PhotosPredictionPartialUpdateClassifierVersionErrorComponent, PhotosPredictionPartialUpdateInsectConfidenceErrorComponent, PhotosPredictionPartialUpdateIsDecisiveErrorComponent, PhotosPredictionPartialUpdateNonFieldErrorsErrorComponent, PhotosPredictionPartialUpdatePredictedClassErrorComponent, PhotosPredictionPartialUpdateScoresAeAegyptiErrorComponent, PhotosPredictionPartialUpdateScoresAeAlbopictusErrorComponent, PhotosPredictionPartialUpdateScoresAeJaponicusErrorComponent, PhotosPredictionPartialUpdateScoresAeKoreicusErrorComponent, PhotosPredictionPartialUpdateScoresAnophelesErrorComponent, PhotosPredictionPartialUpdateScoresCulexErrorComponent, PhotosPredictionPartialUpdateScoresCulisetaErrorComponent, PhotosPredictionPartialUpdateScoresNonFieldErrorsErrorComponent, PhotosPredictionPartialUpdateScoresNotSureErrorComponent, PhotosPredictionPartialUpdateScoresOtherSpeciesErrorComponent, PhotosPredictionPartialUpdateThresholdDeviationErrorComponent. Provided class name: ",
                   get(class(instance)[[1]], pos = -1)$classname))
      }
    },

    #' @description
    #' Deserialize JSON string into an instance of PhotosPredictionPartialUpdateError.
    #' An alias to the method `fromJSON` .
    #'
    #' @param input The input JSON.
    #'
    #' @return An instance of PhotosPredictionPartialUpdateError.
    fromJSONString = function(input) {
      self$fromJSON(input)
    },

    #' @description
    #' Deserialize JSON string into an instance of PhotosPredictionPartialUpdateError.
    #'
    #' @param input The input JSON.
    #'
    #' @return An instance of PhotosPredictionPartialUpdateError.
    fromJSON = function(input) {
      matched <- 0 # match counter
      matched_schemas <- list() #names of matched schemas
      error_messages <- list()
      instance <- NULL

      `PhotosPredictionPartialUpdateNonFieldErrorsErrorComponent_result` <- tryCatch({
          `PhotosPredictionPartialUpdateNonFieldErrorsErrorComponent`$public_methods$validateJSON(input)
          `PhotosPredictionPartialUpdateNonFieldErrorsErrorComponent_instance` <- `PhotosPredictionPartialUpdateNonFieldErrorsErrorComponent`$new()
          instance <- `PhotosPredictionPartialUpdateNonFieldErrorsErrorComponent_instance`$fromJSON(input)
          instance_type <- "PhotosPredictionPartialUpdateNonFieldErrorsErrorComponent"
          matched_schemas <- append(matched_schemas, "PhotosPredictionPartialUpdateNonFieldErrorsErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`PhotosPredictionPartialUpdateNonFieldErrorsErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `PhotosPredictionPartialUpdateNonFieldErrorsErrorComponent_result`["message"])
      }

      `PhotosPredictionPartialUpdateBboxNonFieldErrorsErrorComponent_result` <- tryCatch({
          `PhotosPredictionPartialUpdateBboxNonFieldErrorsErrorComponent`$public_methods$validateJSON(input)
          `PhotosPredictionPartialUpdateBboxNonFieldErrorsErrorComponent_instance` <- `PhotosPredictionPartialUpdateBboxNonFieldErrorsErrorComponent`$new()
          instance <- `PhotosPredictionPartialUpdateBboxNonFieldErrorsErrorComponent_instance`$fromJSON(input)
          instance_type <- "PhotosPredictionPartialUpdateBboxNonFieldErrorsErrorComponent"
          matched_schemas <- append(matched_schemas, "PhotosPredictionPartialUpdateBboxNonFieldErrorsErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`PhotosPredictionPartialUpdateBboxNonFieldErrorsErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `PhotosPredictionPartialUpdateBboxNonFieldErrorsErrorComponent_result`["message"])
      }

      `PhotosPredictionPartialUpdateBboxXMinErrorComponent_result` <- tryCatch({
          `PhotosPredictionPartialUpdateBboxXMinErrorComponent`$public_methods$validateJSON(input)
          `PhotosPredictionPartialUpdateBboxXMinErrorComponent_instance` <- `PhotosPredictionPartialUpdateBboxXMinErrorComponent`$new()
          instance <- `PhotosPredictionPartialUpdateBboxXMinErrorComponent_instance`$fromJSON(input)
          instance_type <- "PhotosPredictionPartialUpdateBboxXMinErrorComponent"
          matched_schemas <- append(matched_schemas, "PhotosPredictionPartialUpdateBboxXMinErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`PhotosPredictionPartialUpdateBboxXMinErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `PhotosPredictionPartialUpdateBboxXMinErrorComponent_result`["message"])
      }

      `PhotosPredictionPartialUpdateBboxYMinErrorComponent_result` <- tryCatch({
          `PhotosPredictionPartialUpdateBboxYMinErrorComponent`$public_methods$validateJSON(input)
          `PhotosPredictionPartialUpdateBboxYMinErrorComponent_instance` <- `PhotosPredictionPartialUpdateBboxYMinErrorComponent`$new()
          instance <- `PhotosPredictionPartialUpdateBboxYMinErrorComponent_instance`$fromJSON(input)
          instance_type <- "PhotosPredictionPartialUpdateBboxYMinErrorComponent"
          matched_schemas <- append(matched_schemas, "PhotosPredictionPartialUpdateBboxYMinErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`PhotosPredictionPartialUpdateBboxYMinErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `PhotosPredictionPartialUpdateBboxYMinErrorComponent_result`["message"])
      }

      `PhotosPredictionPartialUpdateBboxXMaxErrorComponent_result` <- tryCatch({
          `PhotosPredictionPartialUpdateBboxXMaxErrorComponent`$public_methods$validateJSON(input)
          `PhotosPredictionPartialUpdateBboxXMaxErrorComponent_instance` <- `PhotosPredictionPartialUpdateBboxXMaxErrorComponent`$new()
          instance <- `PhotosPredictionPartialUpdateBboxXMaxErrorComponent_instance`$fromJSON(input)
          instance_type <- "PhotosPredictionPartialUpdateBboxXMaxErrorComponent"
          matched_schemas <- append(matched_schemas, "PhotosPredictionPartialUpdateBboxXMaxErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`PhotosPredictionPartialUpdateBboxXMaxErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `PhotosPredictionPartialUpdateBboxXMaxErrorComponent_result`["message"])
      }

      `PhotosPredictionPartialUpdateBboxYMaxErrorComponent_result` <- tryCatch({
          `PhotosPredictionPartialUpdateBboxYMaxErrorComponent`$public_methods$validateJSON(input)
          `PhotosPredictionPartialUpdateBboxYMaxErrorComponent_instance` <- `PhotosPredictionPartialUpdateBboxYMaxErrorComponent`$new()
          instance <- `PhotosPredictionPartialUpdateBboxYMaxErrorComponent_instance`$fromJSON(input)
          instance_type <- "PhotosPredictionPartialUpdateBboxYMaxErrorComponent"
          matched_schemas <- append(matched_schemas, "PhotosPredictionPartialUpdateBboxYMaxErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`PhotosPredictionPartialUpdateBboxYMaxErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `PhotosPredictionPartialUpdateBboxYMaxErrorComponent_result`["message"])
      }

      `PhotosPredictionPartialUpdateInsectConfidenceErrorComponent_result` <- tryCatch({
          `PhotosPredictionPartialUpdateInsectConfidenceErrorComponent`$public_methods$validateJSON(input)
          `PhotosPredictionPartialUpdateInsectConfidenceErrorComponent_instance` <- `PhotosPredictionPartialUpdateInsectConfidenceErrorComponent`$new()
          instance <- `PhotosPredictionPartialUpdateInsectConfidenceErrorComponent_instance`$fromJSON(input)
          instance_type <- "PhotosPredictionPartialUpdateInsectConfidenceErrorComponent"
          matched_schemas <- append(matched_schemas, "PhotosPredictionPartialUpdateInsectConfidenceErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`PhotosPredictionPartialUpdateInsectConfidenceErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `PhotosPredictionPartialUpdateInsectConfidenceErrorComponent_result`["message"])
      }

      `PhotosPredictionPartialUpdatePredictedClassErrorComponent_result` <- tryCatch({
          `PhotosPredictionPartialUpdatePredictedClassErrorComponent`$public_methods$validateJSON(input)
          `PhotosPredictionPartialUpdatePredictedClassErrorComponent_instance` <- `PhotosPredictionPartialUpdatePredictedClassErrorComponent`$new()
          instance <- `PhotosPredictionPartialUpdatePredictedClassErrorComponent_instance`$fromJSON(input)
          instance_type <- "PhotosPredictionPartialUpdatePredictedClassErrorComponent"
          matched_schemas <- append(matched_schemas, "PhotosPredictionPartialUpdatePredictedClassErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`PhotosPredictionPartialUpdatePredictedClassErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `PhotosPredictionPartialUpdatePredictedClassErrorComponent_result`["message"])
      }

      `PhotosPredictionPartialUpdateThresholdDeviationErrorComponent_result` <- tryCatch({
          `PhotosPredictionPartialUpdateThresholdDeviationErrorComponent`$public_methods$validateJSON(input)
          `PhotosPredictionPartialUpdateThresholdDeviationErrorComponent_instance` <- `PhotosPredictionPartialUpdateThresholdDeviationErrorComponent`$new()
          instance <- `PhotosPredictionPartialUpdateThresholdDeviationErrorComponent_instance`$fromJSON(input)
          instance_type <- "PhotosPredictionPartialUpdateThresholdDeviationErrorComponent"
          matched_schemas <- append(matched_schemas, "PhotosPredictionPartialUpdateThresholdDeviationErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`PhotosPredictionPartialUpdateThresholdDeviationErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `PhotosPredictionPartialUpdateThresholdDeviationErrorComponent_result`["message"])
      }

      `PhotosPredictionPartialUpdateIsDecisiveErrorComponent_result` <- tryCatch({
          `PhotosPredictionPartialUpdateIsDecisiveErrorComponent`$public_methods$validateJSON(input)
          `PhotosPredictionPartialUpdateIsDecisiveErrorComponent_instance` <- `PhotosPredictionPartialUpdateIsDecisiveErrorComponent`$new()
          instance <- `PhotosPredictionPartialUpdateIsDecisiveErrorComponent_instance`$fromJSON(input)
          instance_type <- "PhotosPredictionPartialUpdateIsDecisiveErrorComponent"
          matched_schemas <- append(matched_schemas, "PhotosPredictionPartialUpdateIsDecisiveErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`PhotosPredictionPartialUpdateIsDecisiveErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `PhotosPredictionPartialUpdateIsDecisiveErrorComponent_result`["message"])
      }

      `PhotosPredictionPartialUpdateScoresNonFieldErrorsErrorComponent_result` <- tryCatch({
          `PhotosPredictionPartialUpdateScoresNonFieldErrorsErrorComponent`$public_methods$validateJSON(input)
          `PhotosPredictionPartialUpdateScoresNonFieldErrorsErrorComponent_instance` <- `PhotosPredictionPartialUpdateScoresNonFieldErrorsErrorComponent`$new()
          instance <- `PhotosPredictionPartialUpdateScoresNonFieldErrorsErrorComponent_instance`$fromJSON(input)
          instance_type <- "PhotosPredictionPartialUpdateScoresNonFieldErrorsErrorComponent"
          matched_schemas <- append(matched_schemas, "PhotosPredictionPartialUpdateScoresNonFieldErrorsErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`PhotosPredictionPartialUpdateScoresNonFieldErrorsErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `PhotosPredictionPartialUpdateScoresNonFieldErrorsErrorComponent_result`["message"])
      }

      `PhotosPredictionPartialUpdateScoresAeAlbopictusErrorComponent_result` <- tryCatch({
          `PhotosPredictionPartialUpdateScoresAeAlbopictusErrorComponent`$public_methods$validateJSON(input)
          `PhotosPredictionPartialUpdateScoresAeAlbopictusErrorComponent_instance` <- `PhotosPredictionPartialUpdateScoresAeAlbopictusErrorComponent`$new()
          instance <- `PhotosPredictionPartialUpdateScoresAeAlbopictusErrorComponent_instance`$fromJSON(input)
          instance_type <- "PhotosPredictionPartialUpdateScoresAeAlbopictusErrorComponent"
          matched_schemas <- append(matched_schemas, "PhotosPredictionPartialUpdateScoresAeAlbopictusErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`PhotosPredictionPartialUpdateScoresAeAlbopictusErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `PhotosPredictionPartialUpdateScoresAeAlbopictusErrorComponent_result`["message"])
      }

      `PhotosPredictionPartialUpdateScoresAeAegyptiErrorComponent_result` <- tryCatch({
          `PhotosPredictionPartialUpdateScoresAeAegyptiErrorComponent`$public_methods$validateJSON(input)
          `PhotosPredictionPartialUpdateScoresAeAegyptiErrorComponent_instance` <- `PhotosPredictionPartialUpdateScoresAeAegyptiErrorComponent`$new()
          instance <- `PhotosPredictionPartialUpdateScoresAeAegyptiErrorComponent_instance`$fromJSON(input)
          instance_type <- "PhotosPredictionPartialUpdateScoresAeAegyptiErrorComponent"
          matched_schemas <- append(matched_schemas, "PhotosPredictionPartialUpdateScoresAeAegyptiErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`PhotosPredictionPartialUpdateScoresAeAegyptiErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `PhotosPredictionPartialUpdateScoresAeAegyptiErrorComponent_result`["message"])
      }

      `PhotosPredictionPartialUpdateScoresAeJaponicusErrorComponent_result` <- tryCatch({
          `PhotosPredictionPartialUpdateScoresAeJaponicusErrorComponent`$public_methods$validateJSON(input)
          `PhotosPredictionPartialUpdateScoresAeJaponicusErrorComponent_instance` <- `PhotosPredictionPartialUpdateScoresAeJaponicusErrorComponent`$new()
          instance <- `PhotosPredictionPartialUpdateScoresAeJaponicusErrorComponent_instance`$fromJSON(input)
          instance_type <- "PhotosPredictionPartialUpdateScoresAeJaponicusErrorComponent"
          matched_schemas <- append(matched_schemas, "PhotosPredictionPartialUpdateScoresAeJaponicusErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`PhotosPredictionPartialUpdateScoresAeJaponicusErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `PhotosPredictionPartialUpdateScoresAeJaponicusErrorComponent_result`["message"])
      }

      `PhotosPredictionPartialUpdateScoresAeKoreicusErrorComponent_result` <- tryCatch({
          `PhotosPredictionPartialUpdateScoresAeKoreicusErrorComponent`$public_methods$validateJSON(input)
          `PhotosPredictionPartialUpdateScoresAeKoreicusErrorComponent_instance` <- `PhotosPredictionPartialUpdateScoresAeKoreicusErrorComponent`$new()
          instance <- `PhotosPredictionPartialUpdateScoresAeKoreicusErrorComponent_instance`$fromJSON(input)
          instance_type <- "PhotosPredictionPartialUpdateScoresAeKoreicusErrorComponent"
          matched_schemas <- append(matched_schemas, "PhotosPredictionPartialUpdateScoresAeKoreicusErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`PhotosPredictionPartialUpdateScoresAeKoreicusErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `PhotosPredictionPartialUpdateScoresAeKoreicusErrorComponent_result`["message"])
      }

      `PhotosPredictionPartialUpdateScoresCulexErrorComponent_result` <- tryCatch({
          `PhotosPredictionPartialUpdateScoresCulexErrorComponent`$public_methods$validateJSON(input)
          `PhotosPredictionPartialUpdateScoresCulexErrorComponent_instance` <- `PhotosPredictionPartialUpdateScoresCulexErrorComponent`$new()
          instance <- `PhotosPredictionPartialUpdateScoresCulexErrorComponent_instance`$fromJSON(input)
          instance_type <- "PhotosPredictionPartialUpdateScoresCulexErrorComponent"
          matched_schemas <- append(matched_schemas, "PhotosPredictionPartialUpdateScoresCulexErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`PhotosPredictionPartialUpdateScoresCulexErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `PhotosPredictionPartialUpdateScoresCulexErrorComponent_result`["message"])
      }

      `PhotosPredictionPartialUpdateScoresAnophelesErrorComponent_result` <- tryCatch({
          `PhotosPredictionPartialUpdateScoresAnophelesErrorComponent`$public_methods$validateJSON(input)
          `PhotosPredictionPartialUpdateScoresAnophelesErrorComponent_instance` <- `PhotosPredictionPartialUpdateScoresAnophelesErrorComponent`$new()
          instance <- `PhotosPredictionPartialUpdateScoresAnophelesErrorComponent_instance`$fromJSON(input)
          instance_type <- "PhotosPredictionPartialUpdateScoresAnophelesErrorComponent"
          matched_schemas <- append(matched_schemas, "PhotosPredictionPartialUpdateScoresAnophelesErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`PhotosPredictionPartialUpdateScoresAnophelesErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `PhotosPredictionPartialUpdateScoresAnophelesErrorComponent_result`["message"])
      }

      `PhotosPredictionPartialUpdateScoresCulisetaErrorComponent_result` <- tryCatch({
          `PhotosPredictionPartialUpdateScoresCulisetaErrorComponent`$public_methods$validateJSON(input)
          `PhotosPredictionPartialUpdateScoresCulisetaErrorComponent_instance` <- `PhotosPredictionPartialUpdateScoresCulisetaErrorComponent`$new()
          instance <- `PhotosPredictionPartialUpdateScoresCulisetaErrorComponent_instance`$fromJSON(input)
          instance_type <- "PhotosPredictionPartialUpdateScoresCulisetaErrorComponent"
          matched_schemas <- append(matched_schemas, "PhotosPredictionPartialUpdateScoresCulisetaErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`PhotosPredictionPartialUpdateScoresCulisetaErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `PhotosPredictionPartialUpdateScoresCulisetaErrorComponent_result`["message"])
      }

      `PhotosPredictionPartialUpdateScoresOtherSpeciesErrorComponent_result` <- tryCatch({
          `PhotosPredictionPartialUpdateScoresOtherSpeciesErrorComponent`$public_methods$validateJSON(input)
          `PhotosPredictionPartialUpdateScoresOtherSpeciesErrorComponent_instance` <- `PhotosPredictionPartialUpdateScoresOtherSpeciesErrorComponent`$new()
          instance <- `PhotosPredictionPartialUpdateScoresOtherSpeciesErrorComponent_instance`$fromJSON(input)
          instance_type <- "PhotosPredictionPartialUpdateScoresOtherSpeciesErrorComponent"
          matched_schemas <- append(matched_schemas, "PhotosPredictionPartialUpdateScoresOtherSpeciesErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`PhotosPredictionPartialUpdateScoresOtherSpeciesErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `PhotosPredictionPartialUpdateScoresOtherSpeciesErrorComponent_result`["message"])
      }

      `PhotosPredictionPartialUpdateScoresNotSureErrorComponent_result` <- tryCatch({
          `PhotosPredictionPartialUpdateScoresNotSureErrorComponent`$public_methods$validateJSON(input)
          `PhotosPredictionPartialUpdateScoresNotSureErrorComponent_instance` <- `PhotosPredictionPartialUpdateScoresNotSureErrorComponent`$new()
          instance <- `PhotosPredictionPartialUpdateScoresNotSureErrorComponent_instance`$fromJSON(input)
          instance_type <- "PhotosPredictionPartialUpdateScoresNotSureErrorComponent"
          matched_schemas <- append(matched_schemas, "PhotosPredictionPartialUpdateScoresNotSureErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`PhotosPredictionPartialUpdateScoresNotSureErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `PhotosPredictionPartialUpdateScoresNotSureErrorComponent_result`["message"])
      }

      `PhotosPredictionPartialUpdateClassifierVersionErrorComponent_result` <- tryCatch({
          `PhotosPredictionPartialUpdateClassifierVersionErrorComponent`$public_methods$validateJSON(input)
          `PhotosPredictionPartialUpdateClassifierVersionErrorComponent_instance` <- `PhotosPredictionPartialUpdateClassifierVersionErrorComponent`$new()
          instance <- `PhotosPredictionPartialUpdateClassifierVersionErrorComponent_instance`$fromJSON(input)
          instance_type <- "PhotosPredictionPartialUpdateClassifierVersionErrorComponent"
          matched_schemas <- append(matched_schemas, "PhotosPredictionPartialUpdateClassifierVersionErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`PhotosPredictionPartialUpdateClassifierVersionErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `PhotosPredictionPartialUpdateClassifierVersionErrorComponent_result`["message"])
      }

      if (matched == 1) {
        # successfully match exactly 1 schema specified in oneOf
        self$actual_instance <- instance
        self$actual_type <- instance_type
      } else if (matched > 1) {
        # more than 1 match
        stop(paste("Multiple matches found when deserializing the input into PhotosPredictionPartialUpdateError with oneOf schemas PhotosPredictionPartialUpdateBboxNonFieldErrorsErrorComponent, PhotosPredictionPartialUpdateBboxXMaxErrorComponent, PhotosPredictionPartialUpdateBboxXMinErrorComponent, PhotosPredictionPartialUpdateBboxYMaxErrorComponent, PhotosPredictionPartialUpdateBboxYMinErrorComponent, PhotosPredictionPartialUpdateClassifierVersionErrorComponent, PhotosPredictionPartialUpdateInsectConfidenceErrorComponent, PhotosPredictionPartialUpdateIsDecisiveErrorComponent, PhotosPredictionPartialUpdateNonFieldErrorsErrorComponent, PhotosPredictionPartialUpdatePredictedClassErrorComponent, PhotosPredictionPartialUpdateScoresAeAegyptiErrorComponent, PhotosPredictionPartialUpdateScoresAeAlbopictusErrorComponent, PhotosPredictionPartialUpdateScoresAeJaponicusErrorComponent, PhotosPredictionPartialUpdateScoresAeKoreicusErrorComponent, PhotosPredictionPartialUpdateScoresAnophelesErrorComponent, PhotosPredictionPartialUpdateScoresCulexErrorComponent, PhotosPredictionPartialUpdateScoresCulisetaErrorComponent, PhotosPredictionPartialUpdateScoresNonFieldErrorsErrorComponent, PhotosPredictionPartialUpdateScoresNotSureErrorComponent, PhotosPredictionPartialUpdateScoresOtherSpeciesErrorComponent, PhotosPredictionPartialUpdateThresholdDeviationErrorComponent. Matched schemas: ",
                   paste(matched_schemas, collapse = ", ")))
      } else {
        # no match
        stop(paste("No match found when deserializing the input into PhotosPredictionPartialUpdateError with oneOf schemas PhotosPredictionPartialUpdateBboxNonFieldErrorsErrorComponent, PhotosPredictionPartialUpdateBboxXMaxErrorComponent, PhotosPredictionPartialUpdateBboxXMinErrorComponent, PhotosPredictionPartialUpdateBboxYMaxErrorComponent, PhotosPredictionPartialUpdateBboxYMinErrorComponent, PhotosPredictionPartialUpdateClassifierVersionErrorComponent, PhotosPredictionPartialUpdateInsectConfidenceErrorComponent, PhotosPredictionPartialUpdateIsDecisiveErrorComponent, PhotosPredictionPartialUpdateNonFieldErrorsErrorComponent, PhotosPredictionPartialUpdatePredictedClassErrorComponent, PhotosPredictionPartialUpdateScoresAeAegyptiErrorComponent, PhotosPredictionPartialUpdateScoresAeAlbopictusErrorComponent, PhotosPredictionPartialUpdateScoresAeJaponicusErrorComponent, PhotosPredictionPartialUpdateScoresAeKoreicusErrorComponent, PhotosPredictionPartialUpdateScoresAnophelesErrorComponent, PhotosPredictionPartialUpdateScoresCulexErrorComponent, PhotosPredictionPartialUpdateScoresCulisetaErrorComponent, PhotosPredictionPartialUpdateScoresNonFieldErrorsErrorComponent, PhotosPredictionPartialUpdateScoresNotSureErrorComponent, PhotosPredictionPartialUpdateScoresOtherSpeciesErrorComponent, PhotosPredictionPartialUpdateThresholdDeviationErrorComponent. Details: >>",
                   paste(error_messages, collapse = " >> ")))
      }

      self
    },

    #' @description
    #' Serialize PhotosPredictionPartialUpdateError to JSON string.
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return JSON string representation of the PhotosPredictionPartialUpdateError.
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
    #' Convert PhotosPredictionPartialUpdateError to a base R type
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
    #' Validate the input JSON with respect to PhotosPredictionPartialUpdateError and
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
#PhotosPredictionPartialUpdateError$unlock()
#
## Below is an example to define the print function
#PhotosPredictionPartialUpdateError$set("public", "print", function(...) {
#  print(jsonlite::prettify(self$toJSONString()))
#  invisible(self)
#})
## Uncomment below to lock the class to prevent modifications to the method or field
#PhotosPredictionPartialUpdateError$lock()

