#' @docType class
#' @title PhotosPredictionUpdateError
#'
#' @description PhotosPredictionUpdateError Class
#'
#' @format An \code{R6Class} generator object
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PhotosPredictionUpdateError <- R6::R6Class(
  "PhotosPredictionUpdateError",
  public = list(
    #' @field actual_instance the object stored in this instance.
    actual_instance = NULL,
    #' @field actual_type the type of the object stored in this instance.
    actual_type = NULL,
    #' @field one_of  a list of types defined in the oneOf schema.
    one_of = list("PhotosPredictionUpdateBboxNonFieldErrorsErrorComponent", "PhotosPredictionUpdateBboxXMaxErrorComponent", "PhotosPredictionUpdateBboxXMinErrorComponent", "PhotosPredictionUpdateBboxYMaxErrorComponent", "PhotosPredictionUpdateBboxYMinErrorComponent", "PhotosPredictionUpdateClassifierVersionErrorComponent", "PhotosPredictionUpdateInsectConfidenceErrorComponent", "PhotosPredictionUpdateIsDecisiveErrorComponent", "PhotosPredictionUpdateNonFieldErrorsErrorComponent", "PhotosPredictionUpdatePredictedClassErrorComponent", "PhotosPredictionUpdateScoresAeAegyptiErrorComponent", "PhotosPredictionUpdateScoresAeAlbopictusErrorComponent", "PhotosPredictionUpdateScoresAeJaponicusErrorComponent", "PhotosPredictionUpdateScoresAeKoreicusErrorComponent", "PhotosPredictionUpdateScoresAnophelesErrorComponent", "PhotosPredictionUpdateScoresCulexErrorComponent", "PhotosPredictionUpdateScoresCulisetaErrorComponent", "PhotosPredictionUpdateScoresNonFieldErrorsErrorComponent", "PhotosPredictionUpdateScoresNotSureErrorComponent", "PhotosPredictionUpdateScoresOtherSpeciesErrorComponent", "PhotosPredictionUpdateThresholdDeviationErrorComponent"),

    #' @description
    #' Initialize a new PhotosPredictionUpdateError.
    #'
    #' @param instance an instance of the object defined in the oneOf schemas: "PhotosPredictionUpdateBboxNonFieldErrorsErrorComponent", "PhotosPredictionUpdateBboxXMaxErrorComponent", "PhotosPredictionUpdateBboxXMinErrorComponent", "PhotosPredictionUpdateBboxYMaxErrorComponent", "PhotosPredictionUpdateBboxYMinErrorComponent", "PhotosPredictionUpdateClassifierVersionErrorComponent", "PhotosPredictionUpdateInsectConfidenceErrorComponent", "PhotosPredictionUpdateIsDecisiveErrorComponent", "PhotosPredictionUpdateNonFieldErrorsErrorComponent", "PhotosPredictionUpdatePredictedClassErrorComponent", "PhotosPredictionUpdateScoresAeAegyptiErrorComponent", "PhotosPredictionUpdateScoresAeAlbopictusErrorComponent", "PhotosPredictionUpdateScoresAeJaponicusErrorComponent", "PhotosPredictionUpdateScoresAeKoreicusErrorComponent", "PhotosPredictionUpdateScoresAnophelesErrorComponent", "PhotosPredictionUpdateScoresCulexErrorComponent", "PhotosPredictionUpdateScoresCulisetaErrorComponent", "PhotosPredictionUpdateScoresNonFieldErrorsErrorComponent", "PhotosPredictionUpdateScoresNotSureErrorComponent", "PhotosPredictionUpdateScoresOtherSpeciesErrorComponent", "PhotosPredictionUpdateThresholdDeviationErrorComponent"
    initialize = function(instance = NULL) {
      if (is.null(instance)) {
        # do nothing
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "PhotosPredictionUpdateBboxNonFieldErrorsErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "PhotosPredictionUpdateBboxNonFieldErrorsErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "PhotosPredictionUpdateBboxXMaxErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "PhotosPredictionUpdateBboxXMaxErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "PhotosPredictionUpdateBboxXMinErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "PhotosPredictionUpdateBboxXMinErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "PhotosPredictionUpdateBboxYMaxErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "PhotosPredictionUpdateBboxYMaxErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "PhotosPredictionUpdateBboxYMinErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "PhotosPredictionUpdateBboxYMinErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "PhotosPredictionUpdateClassifierVersionErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "PhotosPredictionUpdateClassifierVersionErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "PhotosPredictionUpdateInsectConfidenceErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "PhotosPredictionUpdateInsectConfidenceErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "PhotosPredictionUpdateIsDecisiveErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "PhotosPredictionUpdateIsDecisiveErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "PhotosPredictionUpdateNonFieldErrorsErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "PhotosPredictionUpdateNonFieldErrorsErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "PhotosPredictionUpdatePredictedClassErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "PhotosPredictionUpdatePredictedClassErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "PhotosPredictionUpdateScoresAeAegyptiErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "PhotosPredictionUpdateScoresAeAegyptiErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "PhotosPredictionUpdateScoresAeAlbopictusErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "PhotosPredictionUpdateScoresAeAlbopictusErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "PhotosPredictionUpdateScoresAeJaponicusErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "PhotosPredictionUpdateScoresAeJaponicusErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "PhotosPredictionUpdateScoresAeKoreicusErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "PhotosPredictionUpdateScoresAeKoreicusErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "PhotosPredictionUpdateScoresAnophelesErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "PhotosPredictionUpdateScoresAnophelesErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "PhotosPredictionUpdateScoresCulexErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "PhotosPredictionUpdateScoresCulexErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "PhotosPredictionUpdateScoresCulisetaErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "PhotosPredictionUpdateScoresCulisetaErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "PhotosPredictionUpdateScoresNonFieldErrorsErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "PhotosPredictionUpdateScoresNonFieldErrorsErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "PhotosPredictionUpdateScoresNotSureErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "PhotosPredictionUpdateScoresNotSureErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "PhotosPredictionUpdateScoresOtherSpeciesErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "PhotosPredictionUpdateScoresOtherSpeciesErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "PhotosPredictionUpdateThresholdDeviationErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "PhotosPredictionUpdateThresholdDeviationErrorComponent"
      } else {
        stop(paste("Failed to initialize PhotosPredictionUpdateError with oneOf schemas PhotosPredictionUpdateBboxNonFieldErrorsErrorComponent, PhotosPredictionUpdateBboxXMaxErrorComponent, PhotosPredictionUpdateBboxXMinErrorComponent, PhotosPredictionUpdateBboxYMaxErrorComponent, PhotosPredictionUpdateBboxYMinErrorComponent, PhotosPredictionUpdateClassifierVersionErrorComponent, PhotosPredictionUpdateInsectConfidenceErrorComponent, PhotosPredictionUpdateIsDecisiveErrorComponent, PhotosPredictionUpdateNonFieldErrorsErrorComponent, PhotosPredictionUpdatePredictedClassErrorComponent, PhotosPredictionUpdateScoresAeAegyptiErrorComponent, PhotosPredictionUpdateScoresAeAlbopictusErrorComponent, PhotosPredictionUpdateScoresAeJaponicusErrorComponent, PhotosPredictionUpdateScoresAeKoreicusErrorComponent, PhotosPredictionUpdateScoresAnophelesErrorComponent, PhotosPredictionUpdateScoresCulexErrorComponent, PhotosPredictionUpdateScoresCulisetaErrorComponent, PhotosPredictionUpdateScoresNonFieldErrorsErrorComponent, PhotosPredictionUpdateScoresNotSureErrorComponent, PhotosPredictionUpdateScoresOtherSpeciesErrorComponent, PhotosPredictionUpdateThresholdDeviationErrorComponent. Provided class name: ",
                   get(class(instance)[[1]], pos = -1)$classname))
      }
    },

    #' @description
    #' Deserialize JSON string into an instance of PhotosPredictionUpdateError.
    #' An alias to the method `fromJSON` .
    #'
    #' @param input The input JSON.
    #'
    #' @return An instance of PhotosPredictionUpdateError.
    fromJSONString = function(input) {
      self$fromJSON(input)
    },

    #' @description
    #' Deserialize JSON string into an instance of PhotosPredictionUpdateError.
    #'
    #' @param input The input JSON.
    #'
    #' @return An instance of PhotosPredictionUpdateError.
    fromJSON = function(input) {
      matched <- 0 # match counter
      matched_schemas <- list() #names of matched schemas
      error_messages <- list()
      instance <- NULL

      `PhotosPredictionUpdateNonFieldErrorsErrorComponent_result` <- tryCatch({
          `PhotosPredictionUpdateNonFieldErrorsErrorComponent`$public_methods$validateJSON(input)
          `PhotosPredictionUpdateNonFieldErrorsErrorComponent_instance` <- `PhotosPredictionUpdateNonFieldErrorsErrorComponent`$new()
          instance <- `PhotosPredictionUpdateNonFieldErrorsErrorComponent_instance`$fromJSON(input)
          instance_type <- "PhotosPredictionUpdateNonFieldErrorsErrorComponent"
          matched_schemas <- append(matched_schemas, "PhotosPredictionUpdateNonFieldErrorsErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`PhotosPredictionUpdateNonFieldErrorsErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `PhotosPredictionUpdateNonFieldErrorsErrorComponent_result`["message"])
      }

      `PhotosPredictionUpdateBboxNonFieldErrorsErrorComponent_result` <- tryCatch({
          `PhotosPredictionUpdateBboxNonFieldErrorsErrorComponent`$public_methods$validateJSON(input)
          `PhotosPredictionUpdateBboxNonFieldErrorsErrorComponent_instance` <- `PhotosPredictionUpdateBboxNonFieldErrorsErrorComponent`$new()
          instance <- `PhotosPredictionUpdateBboxNonFieldErrorsErrorComponent_instance`$fromJSON(input)
          instance_type <- "PhotosPredictionUpdateBboxNonFieldErrorsErrorComponent"
          matched_schemas <- append(matched_schemas, "PhotosPredictionUpdateBboxNonFieldErrorsErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`PhotosPredictionUpdateBboxNonFieldErrorsErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `PhotosPredictionUpdateBboxNonFieldErrorsErrorComponent_result`["message"])
      }

      `PhotosPredictionUpdateBboxXMinErrorComponent_result` <- tryCatch({
          `PhotosPredictionUpdateBboxXMinErrorComponent`$public_methods$validateJSON(input)
          `PhotosPredictionUpdateBboxXMinErrorComponent_instance` <- `PhotosPredictionUpdateBboxXMinErrorComponent`$new()
          instance <- `PhotosPredictionUpdateBboxXMinErrorComponent_instance`$fromJSON(input)
          instance_type <- "PhotosPredictionUpdateBboxXMinErrorComponent"
          matched_schemas <- append(matched_schemas, "PhotosPredictionUpdateBboxXMinErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`PhotosPredictionUpdateBboxXMinErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `PhotosPredictionUpdateBboxXMinErrorComponent_result`["message"])
      }

      `PhotosPredictionUpdateBboxYMinErrorComponent_result` <- tryCatch({
          `PhotosPredictionUpdateBboxYMinErrorComponent`$public_methods$validateJSON(input)
          `PhotosPredictionUpdateBboxYMinErrorComponent_instance` <- `PhotosPredictionUpdateBboxYMinErrorComponent`$new()
          instance <- `PhotosPredictionUpdateBboxYMinErrorComponent_instance`$fromJSON(input)
          instance_type <- "PhotosPredictionUpdateBboxYMinErrorComponent"
          matched_schemas <- append(matched_schemas, "PhotosPredictionUpdateBboxYMinErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`PhotosPredictionUpdateBboxYMinErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `PhotosPredictionUpdateBboxYMinErrorComponent_result`["message"])
      }

      `PhotosPredictionUpdateBboxXMaxErrorComponent_result` <- tryCatch({
          `PhotosPredictionUpdateBboxXMaxErrorComponent`$public_methods$validateJSON(input)
          `PhotosPredictionUpdateBboxXMaxErrorComponent_instance` <- `PhotosPredictionUpdateBboxXMaxErrorComponent`$new()
          instance <- `PhotosPredictionUpdateBboxXMaxErrorComponent_instance`$fromJSON(input)
          instance_type <- "PhotosPredictionUpdateBboxXMaxErrorComponent"
          matched_schemas <- append(matched_schemas, "PhotosPredictionUpdateBboxXMaxErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`PhotosPredictionUpdateBboxXMaxErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `PhotosPredictionUpdateBboxXMaxErrorComponent_result`["message"])
      }

      `PhotosPredictionUpdateBboxYMaxErrorComponent_result` <- tryCatch({
          `PhotosPredictionUpdateBboxYMaxErrorComponent`$public_methods$validateJSON(input)
          `PhotosPredictionUpdateBboxYMaxErrorComponent_instance` <- `PhotosPredictionUpdateBboxYMaxErrorComponent`$new()
          instance <- `PhotosPredictionUpdateBboxYMaxErrorComponent_instance`$fromJSON(input)
          instance_type <- "PhotosPredictionUpdateBboxYMaxErrorComponent"
          matched_schemas <- append(matched_schemas, "PhotosPredictionUpdateBboxYMaxErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`PhotosPredictionUpdateBboxYMaxErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `PhotosPredictionUpdateBboxYMaxErrorComponent_result`["message"])
      }

      `PhotosPredictionUpdateInsectConfidenceErrorComponent_result` <- tryCatch({
          `PhotosPredictionUpdateInsectConfidenceErrorComponent`$public_methods$validateJSON(input)
          `PhotosPredictionUpdateInsectConfidenceErrorComponent_instance` <- `PhotosPredictionUpdateInsectConfidenceErrorComponent`$new()
          instance <- `PhotosPredictionUpdateInsectConfidenceErrorComponent_instance`$fromJSON(input)
          instance_type <- "PhotosPredictionUpdateInsectConfidenceErrorComponent"
          matched_schemas <- append(matched_schemas, "PhotosPredictionUpdateInsectConfidenceErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`PhotosPredictionUpdateInsectConfidenceErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `PhotosPredictionUpdateInsectConfidenceErrorComponent_result`["message"])
      }

      `PhotosPredictionUpdatePredictedClassErrorComponent_result` <- tryCatch({
          `PhotosPredictionUpdatePredictedClassErrorComponent`$public_methods$validateJSON(input)
          `PhotosPredictionUpdatePredictedClassErrorComponent_instance` <- `PhotosPredictionUpdatePredictedClassErrorComponent`$new()
          instance <- `PhotosPredictionUpdatePredictedClassErrorComponent_instance`$fromJSON(input)
          instance_type <- "PhotosPredictionUpdatePredictedClassErrorComponent"
          matched_schemas <- append(matched_schemas, "PhotosPredictionUpdatePredictedClassErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`PhotosPredictionUpdatePredictedClassErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `PhotosPredictionUpdatePredictedClassErrorComponent_result`["message"])
      }

      `PhotosPredictionUpdateThresholdDeviationErrorComponent_result` <- tryCatch({
          `PhotosPredictionUpdateThresholdDeviationErrorComponent`$public_methods$validateJSON(input)
          `PhotosPredictionUpdateThresholdDeviationErrorComponent_instance` <- `PhotosPredictionUpdateThresholdDeviationErrorComponent`$new()
          instance <- `PhotosPredictionUpdateThresholdDeviationErrorComponent_instance`$fromJSON(input)
          instance_type <- "PhotosPredictionUpdateThresholdDeviationErrorComponent"
          matched_schemas <- append(matched_schemas, "PhotosPredictionUpdateThresholdDeviationErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`PhotosPredictionUpdateThresholdDeviationErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `PhotosPredictionUpdateThresholdDeviationErrorComponent_result`["message"])
      }

      `PhotosPredictionUpdateIsDecisiveErrorComponent_result` <- tryCatch({
          `PhotosPredictionUpdateIsDecisiveErrorComponent`$public_methods$validateJSON(input)
          `PhotosPredictionUpdateIsDecisiveErrorComponent_instance` <- `PhotosPredictionUpdateIsDecisiveErrorComponent`$new()
          instance <- `PhotosPredictionUpdateIsDecisiveErrorComponent_instance`$fromJSON(input)
          instance_type <- "PhotosPredictionUpdateIsDecisiveErrorComponent"
          matched_schemas <- append(matched_schemas, "PhotosPredictionUpdateIsDecisiveErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`PhotosPredictionUpdateIsDecisiveErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `PhotosPredictionUpdateIsDecisiveErrorComponent_result`["message"])
      }

      `PhotosPredictionUpdateScoresNonFieldErrorsErrorComponent_result` <- tryCatch({
          `PhotosPredictionUpdateScoresNonFieldErrorsErrorComponent`$public_methods$validateJSON(input)
          `PhotosPredictionUpdateScoresNonFieldErrorsErrorComponent_instance` <- `PhotosPredictionUpdateScoresNonFieldErrorsErrorComponent`$new()
          instance <- `PhotosPredictionUpdateScoresNonFieldErrorsErrorComponent_instance`$fromJSON(input)
          instance_type <- "PhotosPredictionUpdateScoresNonFieldErrorsErrorComponent"
          matched_schemas <- append(matched_schemas, "PhotosPredictionUpdateScoresNonFieldErrorsErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`PhotosPredictionUpdateScoresNonFieldErrorsErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `PhotosPredictionUpdateScoresNonFieldErrorsErrorComponent_result`["message"])
      }

      `PhotosPredictionUpdateScoresAeAlbopictusErrorComponent_result` <- tryCatch({
          `PhotosPredictionUpdateScoresAeAlbopictusErrorComponent`$public_methods$validateJSON(input)
          `PhotosPredictionUpdateScoresAeAlbopictusErrorComponent_instance` <- `PhotosPredictionUpdateScoresAeAlbopictusErrorComponent`$new()
          instance <- `PhotosPredictionUpdateScoresAeAlbopictusErrorComponent_instance`$fromJSON(input)
          instance_type <- "PhotosPredictionUpdateScoresAeAlbopictusErrorComponent"
          matched_schemas <- append(matched_schemas, "PhotosPredictionUpdateScoresAeAlbopictusErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`PhotosPredictionUpdateScoresAeAlbopictusErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `PhotosPredictionUpdateScoresAeAlbopictusErrorComponent_result`["message"])
      }

      `PhotosPredictionUpdateScoresAeAegyptiErrorComponent_result` <- tryCatch({
          `PhotosPredictionUpdateScoresAeAegyptiErrorComponent`$public_methods$validateJSON(input)
          `PhotosPredictionUpdateScoresAeAegyptiErrorComponent_instance` <- `PhotosPredictionUpdateScoresAeAegyptiErrorComponent`$new()
          instance <- `PhotosPredictionUpdateScoresAeAegyptiErrorComponent_instance`$fromJSON(input)
          instance_type <- "PhotosPredictionUpdateScoresAeAegyptiErrorComponent"
          matched_schemas <- append(matched_schemas, "PhotosPredictionUpdateScoresAeAegyptiErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`PhotosPredictionUpdateScoresAeAegyptiErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `PhotosPredictionUpdateScoresAeAegyptiErrorComponent_result`["message"])
      }

      `PhotosPredictionUpdateScoresAeJaponicusErrorComponent_result` <- tryCatch({
          `PhotosPredictionUpdateScoresAeJaponicusErrorComponent`$public_methods$validateJSON(input)
          `PhotosPredictionUpdateScoresAeJaponicusErrorComponent_instance` <- `PhotosPredictionUpdateScoresAeJaponicusErrorComponent`$new()
          instance <- `PhotosPredictionUpdateScoresAeJaponicusErrorComponent_instance`$fromJSON(input)
          instance_type <- "PhotosPredictionUpdateScoresAeJaponicusErrorComponent"
          matched_schemas <- append(matched_schemas, "PhotosPredictionUpdateScoresAeJaponicusErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`PhotosPredictionUpdateScoresAeJaponicusErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `PhotosPredictionUpdateScoresAeJaponicusErrorComponent_result`["message"])
      }

      `PhotosPredictionUpdateScoresAeKoreicusErrorComponent_result` <- tryCatch({
          `PhotosPredictionUpdateScoresAeKoreicusErrorComponent`$public_methods$validateJSON(input)
          `PhotosPredictionUpdateScoresAeKoreicusErrorComponent_instance` <- `PhotosPredictionUpdateScoresAeKoreicusErrorComponent`$new()
          instance <- `PhotosPredictionUpdateScoresAeKoreicusErrorComponent_instance`$fromJSON(input)
          instance_type <- "PhotosPredictionUpdateScoresAeKoreicusErrorComponent"
          matched_schemas <- append(matched_schemas, "PhotosPredictionUpdateScoresAeKoreicusErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`PhotosPredictionUpdateScoresAeKoreicusErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `PhotosPredictionUpdateScoresAeKoreicusErrorComponent_result`["message"])
      }

      `PhotosPredictionUpdateScoresCulexErrorComponent_result` <- tryCatch({
          `PhotosPredictionUpdateScoresCulexErrorComponent`$public_methods$validateJSON(input)
          `PhotosPredictionUpdateScoresCulexErrorComponent_instance` <- `PhotosPredictionUpdateScoresCulexErrorComponent`$new()
          instance <- `PhotosPredictionUpdateScoresCulexErrorComponent_instance`$fromJSON(input)
          instance_type <- "PhotosPredictionUpdateScoresCulexErrorComponent"
          matched_schemas <- append(matched_schemas, "PhotosPredictionUpdateScoresCulexErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`PhotosPredictionUpdateScoresCulexErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `PhotosPredictionUpdateScoresCulexErrorComponent_result`["message"])
      }

      `PhotosPredictionUpdateScoresAnophelesErrorComponent_result` <- tryCatch({
          `PhotosPredictionUpdateScoresAnophelesErrorComponent`$public_methods$validateJSON(input)
          `PhotosPredictionUpdateScoresAnophelesErrorComponent_instance` <- `PhotosPredictionUpdateScoresAnophelesErrorComponent`$new()
          instance <- `PhotosPredictionUpdateScoresAnophelesErrorComponent_instance`$fromJSON(input)
          instance_type <- "PhotosPredictionUpdateScoresAnophelesErrorComponent"
          matched_schemas <- append(matched_schemas, "PhotosPredictionUpdateScoresAnophelesErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`PhotosPredictionUpdateScoresAnophelesErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `PhotosPredictionUpdateScoresAnophelesErrorComponent_result`["message"])
      }

      `PhotosPredictionUpdateScoresCulisetaErrorComponent_result` <- tryCatch({
          `PhotosPredictionUpdateScoresCulisetaErrorComponent`$public_methods$validateJSON(input)
          `PhotosPredictionUpdateScoresCulisetaErrorComponent_instance` <- `PhotosPredictionUpdateScoresCulisetaErrorComponent`$new()
          instance <- `PhotosPredictionUpdateScoresCulisetaErrorComponent_instance`$fromJSON(input)
          instance_type <- "PhotosPredictionUpdateScoresCulisetaErrorComponent"
          matched_schemas <- append(matched_schemas, "PhotosPredictionUpdateScoresCulisetaErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`PhotosPredictionUpdateScoresCulisetaErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `PhotosPredictionUpdateScoresCulisetaErrorComponent_result`["message"])
      }

      `PhotosPredictionUpdateScoresOtherSpeciesErrorComponent_result` <- tryCatch({
          `PhotosPredictionUpdateScoresOtherSpeciesErrorComponent`$public_methods$validateJSON(input)
          `PhotosPredictionUpdateScoresOtherSpeciesErrorComponent_instance` <- `PhotosPredictionUpdateScoresOtherSpeciesErrorComponent`$new()
          instance <- `PhotosPredictionUpdateScoresOtherSpeciesErrorComponent_instance`$fromJSON(input)
          instance_type <- "PhotosPredictionUpdateScoresOtherSpeciesErrorComponent"
          matched_schemas <- append(matched_schemas, "PhotosPredictionUpdateScoresOtherSpeciesErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`PhotosPredictionUpdateScoresOtherSpeciesErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `PhotosPredictionUpdateScoresOtherSpeciesErrorComponent_result`["message"])
      }

      `PhotosPredictionUpdateScoresNotSureErrorComponent_result` <- tryCatch({
          `PhotosPredictionUpdateScoresNotSureErrorComponent`$public_methods$validateJSON(input)
          `PhotosPredictionUpdateScoresNotSureErrorComponent_instance` <- `PhotosPredictionUpdateScoresNotSureErrorComponent`$new()
          instance <- `PhotosPredictionUpdateScoresNotSureErrorComponent_instance`$fromJSON(input)
          instance_type <- "PhotosPredictionUpdateScoresNotSureErrorComponent"
          matched_schemas <- append(matched_schemas, "PhotosPredictionUpdateScoresNotSureErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`PhotosPredictionUpdateScoresNotSureErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `PhotosPredictionUpdateScoresNotSureErrorComponent_result`["message"])
      }

      `PhotosPredictionUpdateClassifierVersionErrorComponent_result` <- tryCatch({
          `PhotosPredictionUpdateClassifierVersionErrorComponent`$public_methods$validateJSON(input)
          `PhotosPredictionUpdateClassifierVersionErrorComponent_instance` <- `PhotosPredictionUpdateClassifierVersionErrorComponent`$new()
          instance <- `PhotosPredictionUpdateClassifierVersionErrorComponent_instance`$fromJSON(input)
          instance_type <- "PhotosPredictionUpdateClassifierVersionErrorComponent"
          matched_schemas <- append(matched_schemas, "PhotosPredictionUpdateClassifierVersionErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`PhotosPredictionUpdateClassifierVersionErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `PhotosPredictionUpdateClassifierVersionErrorComponent_result`["message"])
      }

      if (matched == 1) {
        # successfully match exactly 1 schema specified in oneOf
        self$actual_instance <- instance
        self$actual_type <- instance_type
      } else if (matched > 1) {
        # more than 1 match
        stop(paste("Multiple matches found when deserializing the input into PhotosPredictionUpdateError with oneOf schemas PhotosPredictionUpdateBboxNonFieldErrorsErrorComponent, PhotosPredictionUpdateBboxXMaxErrorComponent, PhotosPredictionUpdateBboxXMinErrorComponent, PhotosPredictionUpdateBboxYMaxErrorComponent, PhotosPredictionUpdateBboxYMinErrorComponent, PhotosPredictionUpdateClassifierVersionErrorComponent, PhotosPredictionUpdateInsectConfidenceErrorComponent, PhotosPredictionUpdateIsDecisiveErrorComponent, PhotosPredictionUpdateNonFieldErrorsErrorComponent, PhotosPredictionUpdatePredictedClassErrorComponent, PhotosPredictionUpdateScoresAeAegyptiErrorComponent, PhotosPredictionUpdateScoresAeAlbopictusErrorComponent, PhotosPredictionUpdateScoresAeJaponicusErrorComponent, PhotosPredictionUpdateScoresAeKoreicusErrorComponent, PhotosPredictionUpdateScoresAnophelesErrorComponent, PhotosPredictionUpdateScoresCulexErrorComponent, PhotosPredictionUpdateScoresCulisetaErrorComponent, PhotosPredictionUpdateScoresNonFieldErrorsErrorComponent, PhotosPredictionUpdateScoresNotSureErrorComponent, PhotosPredictionUpdateScoresOtherSpeciesErrorComponent, PhotosPredictionUpdateThresholdDeviationErrorComponent. Matched schemas: ",
                   paste(matched_schemas, collapse = ", ")))
      } else {
        # no match
        stop(paste("No match found when deserializing the input into PhotosPredictionUpdateError with oneOf schemas PhotosPredictionUpdateBboxNonFieldErrorsErrorComponent, PhotosPredictionUpdateBboxXMaxErrorComponent, PhotosPredictionUpdateBboxXMinErrorComponent, PhotosPredictionUpdateBboxYMaxErrorComponent, PhotosPredictionUpdateBboxYMinErrorComponent, PhotosPredictionUpdateClassifierVersionErrorComponent, PhotosPredictionUpdateInsectConfidenceErrorComponent, PhotosPredictionUpdateIsDecisiveErrorComponent, PhotosPredictionUpdateNonFieldErrorsErrorComponent, PhotosPredictionUpdatePredictedClassErrorComponent, PhotosPredictionUpdateScoresAeAegyptiErrorComponent, PhotosPredictionUpdateScoresAeAlbopictusErrorComponent, PhotosPredictionUpdateScoresAeJaponicusErrorComponent, PhotosPredictionUpdateScoresAeKoreicusErrorComponent, PhotosPredictionUpdateScoresAnophelesErrorComponent, PhotosPredictionUpdateScoresCulexErrorComponent, PhotosPredictionUpdateScoresCulisetaErrorComponent, PhotosPredictionUpdateScoresNonFieldErrorsErrorComponent, PhotosPredictionUpdateScoresNotSureErrorComponent, PhotosPredictionUpdateScoresOtherSpeciesErrorComponent, PhotosPredictionUpdateThresholdDeviationErrorComponent. Details: >>",
                   paste(error_messages, collapse = " >> ")))
      }

      self
    },

    #' @description
    #' Serialize PhotosPredictionUpdateError to JSON string.
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return JSON string representation of the PhotosPredictionUpdateError.
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
    #' Convert PhotosPredictionUpdateError to a base R type
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
    #' Validate the input JSON with respect to PhotosPredictionUpdateError and
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
#PhotosPredictionUpdateError$unlock()
#
## Below is an example to define the print function
#PhotosPredictionUpdateError$set("public", "print", function(...) {
#  print(jsonlite::prettify(self$toJSONString()))
#  invisible(self)
#})
## Uncomment below to lock the class to prevent modifications to the method or field
#PhotosPredictionUpdateError$lock()

