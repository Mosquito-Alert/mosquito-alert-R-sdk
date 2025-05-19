#' @docType class
#' @title IdentificationtasksPredictionsCreateError
#'
#' @description IdentificationtasksPredictionsCreateError Class
#'
#' @format An \code{R6Class} generator object
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
IdentificationtasksPredictionsCreateError <- R6::R6Class(
  "IdentificationtasksPredictionsCreateError",
  public = list(
    #' @field actual_instance the object stored in this instance.
    actual_instance = NULL,
    #' @field actual_type the type of the object stored in this instance.
    actual_type = NULL,
    #' @field one_of  a list of types defined in the oneOf schema.
    one_of = list("IdentificationtasksPredictionsCreateBboxNonFieldErrorsErrorComponent", "IdentificationtasksPredictionsCreateBboxXMaxErrorComponent", "IdentificationtasksPredictionsCreateBboxXMinErrorComponent", "IdentificationtasksPredictionsCreateBboxYMaxErrorComponent", "IdentificationtasksPredictionsCreateBboxYMinErrorComponent", "IdentificationtasksPredictionsCreateClassifierVersionErrorComponent", "IdentificationtasksPredictionsCreateInsectConfidenceErrorComponent", "IdentificationtasksPredictionsCreateIsDecisiveErrorComponent", "IdentificationtasksPredictionsCreateNonFieldErrorsErrorComponent", "IdentificationtasksPredictionsCreatePhotoUuidErrorComponent", "IdentificationtasksPredictionsCreatePredictedClassErrorComponent", "IdentificationtasksPredictionsCreateScoresAeAegyptiErrorComponent", "IdentificationtasksPredictionsCreateScoresAeAlbopictusErrorComponent", "IdentificationtasksPredictionsCreateScoresAeJaponicusErrorComponent", "IdentificationtasksPredictionsCreateScoresAeKoreicusErrorComponent", "IdentificationtasksPredictionsCreateScoresAnophelesErrorComponent", "IdentificationtasksPredictionsCreateScoresCulexErrorComponent", "IdentificationtasksPredictionsCreateScoresCulisetaErrorComponent", "IdentificationtasksPredictionsCreateScoresNonFieldErrorsErrorComponent", "IdentificationtasksPredictionsCreateScoresNotSureErrorComponent", "IdentificationtasksPredictionsCreateScoresOtherSpeciesErrorComponent", "IdentificationtasksPredictionsCreateThresholdDeviationErrorComponent"),

    #' @description
    #' Initialize a new IdentificationtasksPredictionsCreateError.
    #'
    #' @param instance an instance of the object defined in the oneOf schemas: "IdentificationtasksPredictionsCreateBboxNonFieldErrorsErrorComponent", "IdentificationtasksPredictionsCreateBboxXMaxErrorComponent", "IdentificationtasksPredictionsCreateBboxXMinErrorComponent", "IdentificationtasksPredictionsCreateBboxYMaxErrorComponent", "IdentificationtasksPredictionsCreateBboxYMinErrorComponent", "IdentificationtasksPredictionsCreateClassifierVersionErrorComponent", "IdentificationtasksPredictionsCreateInsectConfidenceErrorComponent", "IdentificationtasksPredictionsCreateIsDecisiveErrorComponent", "IdentificationtasksPredictionsCreateNonFieldErrorsErrorComponent", "IdentificationtasksPredictionsCreatePhotoUuidErrorComponent", "IdentificationtasksPredictionsCreatePredictedClassErrorComponent", "IdentificationtasksPredictionsCreateScoresAeAegyptiErrorComponent", "IdentificationtasksPredictionsCreateScoresAeAlbopictusErrorComponent", "IdentificationtasksPredictionsCreateScoresAeJaponicusErrorComponent", "IdentificationtasksPredictionsCreateScoresAeKoreicusErrorComponent", "IdentificationtasksPredictionsCreateScoresAnophelesErrorComponent", "IdentificationtasksPredictionsCreateScoresCulexErrorComponent", "IdentificationtasksPredictionsCreateScoresCulisetaErrorComponent", "IdentificationtasksPredictionsCreateScoresNonFieldErrorsErrorComponent", "IdentificationtasksPredictionsCreateScoresNotSureErrorComponent", "IdentificationtasksPredictionsCreateScoresOtherSpeciesErrorComponent", "IdentificationtasksPredictionsCreateThresholdDeviationErrorComponent"
    initialize = function(instance = NULL) {
      if (is.null(instance)) {
        # do nothing
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksPredictionsCreateBboxNonFieldErrorsErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksPredictionsCreateBboxNonFieldErrorsErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksPredictionsCreateBboxXMaxErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksPredictionsCreateBboxXMaxErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksPredictionsCreateBboxXMinErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksPredictionsCreateBboxXMinErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksPredictionsCreateBboxYMaxErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksPredictionsCreateBboxYMaxErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksPredictionsCreateBboxYMinErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksPredictionsCreateBboxYMinErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksPredictionsCreateClassifierVersionErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksPredictionsCreateClassifierVersionErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksPredictionsCreateInsectConfidenceErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksPredictionsCreateInsectConfidenceErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksPredictionsCreateIsDecisiveErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksPredictionsCreateIsDecisiveErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksPredictionsCreateNonFieldErrorsErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksPredictionsCreateNonFieldErrorsErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksPredictionsCreatePhotoUuidErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksPredictionsCreatePhotoUuidErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksPredictionsCreatePredictedClassErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksPredictionsCreatePredictedClassErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksPredictionsCreateScoresAeAegyptiErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksPredictionsCreateScoresAeAegyptiErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksPredictionsCreateScoresAeAlbopictusErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksPredictionsCreateScoresAeAlbopictusErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksPredictionsCreateScoresAeJaponicusErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksPredictionsCreateScoresAeJaponicusErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksPredictionsCreateScoresAeKoreicusErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksPredictionsCreateScoresAeKoreicusErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksPredictionsCreateScoresAnophelesErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksPredictionsCreateScoresAnophelesErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksPredictionsCreateScoresCulexErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksPredictionsCreateScoresCulexErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksPredictionsCreateScoresCulisetaErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksPredictionsCreateScoresCulisetaErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksPredictionsCreateScoresNonFieldErrorsErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksPredictionsCreateScoresNonFieldErrorsErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksPredictionsCreateScoresNotSureErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksPredictionsCreateScoresNotSureErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksPredictionsCreateScoresOtherSpeciesErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksPredictionsCreateScoresOtherSpeciesErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksPredictionsCreateThresholdDeviationErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksPredictionsCreateThresholdDeviationErrorComponent"
      } else {
        stop(paste("Failed to initialize IdentificationtasksPredictionsCreateError with oneOf schemas IdentificationtasksPredictionsCreateBboxNonFieldErrorsErrorComponent, IdentificationtasksPredictionsCreateBboxXMaxErrorComponent, IdentificationtasksPredictionsCreateBboxXMinErrorComponent, IdentificationtasksPredictionsCreateBboxYMaxErrorComponent, IdentificationtasksPredictionsCreateBboxYMinErrorComponent, IdentificationtasksPredictionsCreateClassifierVersionErrorComponent, IdentificationtasksPredictionsCreateInsectConfidenceErrorComponent, IdentificationtasksPredictionsCreateIsDecisiveErrorComponent, IdentificationtasksPredictionsCreateNonFieldErrorsErrorComponent, IdentificationtasksPredictionsCreatePhotoUuidErrorComponent, IdentificationtasksPredictionsCreatePredictedClassErrorComponent, IdentificationtasksPredictionsCreateScoresAeAegyptiErrorComponent, IdentificationtasksPredictionsCreateScoresAeAlbopictusErrorComponent, IdentificationtasksPredictionsCreateScoresAeJaponicusErrorComponent, IdentificationtasksPredictionsCreateScoresAeKoreicusErrorComponent, IdentificationtasksPredictionsCreateScoresAnophelesErrorComponent, IdentificationtasksPredictionsCreateScoresCulexErrorComponent, IdentificationtasksPredictionsCreateScoresCulisetaErrorComponent, IdentificationtasksPredictionsCreateScoresNonFieldErrorsErrorComponent, IdentificationtasksPredictionsCreateScoresNotSureErrorComponent, IdentificationtasksPredictionsCreateScoresOtherSpeciesErrorComponent, IdentificationtasksPredictionsCreateThresholdDeviationErrorComponent. Provided class name: ",
                   get(class(instance)[[1]], pos = -1)$classname))
      }
    },

    #' @description
    #' Deserialize JSON string into an instance of IdentificationtasksPredictionsCreateError.
    #' An alias to the method `fromJSON` .
    #'
    #' @param input The input JSON.
    #'
    #' @return An instance of IdentificationtasksPredictionsCreateError.
    fromJSONString = function(input) {
      self$fromJSON(input)
    },

    #' @description
    #' Deserialize JSON string into an instance of IdentificationtasksPredictionsCreateError.
    #'
    #' @param input The input JSON.
    #'
    #' @return An instance of IdentificationtasksPredictionsCreateError.
    fromJSON = function(input) {
      matched <- 0 # match counter
      matched_schemas <- list() #names of matched schemas
      error_messages <- list()
      instance <- NULL

      `IdentificationtasksPredictionsCreateNonFieldErrorsErrorComponent_result` <- tryCatch({
          `IdentificationtasksPredictionsCreateNonFieldErrorsErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksPredictionsCreateNonFieldErrorsErrorComponent_instance` <- `IdentificationtasksPredictionsCreateNonFieldErrorsErrorComponent`$new()
          instance <- `IdentificationtasksPredictionsCreateNonFieldErrorsErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksPredictionsCreateNonFieldErrorsErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksPredictionsCreateNonFieldErrorsErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksPredictionsCreateNonFieldErrorsErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksPredictionsCreateNonFieldErrorsErrorComponent_result`["message"])
      }

      `IdentificationtasksPredictionsCreatePhotoUuidErrorComponent_result` <- tryCatch({
          `IdentificationtasksPredictionsCreatePhotoUuidErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksPredictionsCreatePhotoUuidErrorComponent_instance` <- `IdentificationtasksPredictionsCreatePhotoUuidErrorComponent`$new()
          instance <- `IdentificationtasksPredictionsCreatePhotoUuidErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksPredictionsCreatePhotoUuidErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksPredictionsCreatePhotoUuidErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksPredictionsCreatePhotoUuidErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksPredictionsCreatePhotoUuidErrorComponent_result`["message"])
      }

      `IdentificationtasksPredictionsCreateBboxNonFieldErrorsErrorComponent_result` <- tryCatch({
          `IdentificationtasksPredictionsCreateBboxNonFieldErrorsErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksPredictionsCreateBboxNonFieldErrorsErrorComponent_instance` <- `IdentificationtasksPredictionsCreateBboxNonFieldErrorsErrorComponent`$new()
          instance <- `IdentificationtasksPredictionsCreateBboxNonFieldErrorsErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksPredictionsCreateBboxNonFieldErrorsErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksPredictionsCreateBboxNonFieldErrorsErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksPredictionsCreateBboxNonFieldErrorsErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksPredictionsCreateBboxNonFieldErrorsErrorComponent_result`["message"])
      }

      `IdentificationtasksPredictionsCreateBboxXMinErrorComponent_result` <- tryCatch({
          `IdentificationtasksPredictionsCreateBboxXMinErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksPredictionsCreateBboxXMinErrorComponent_instance` <- `IdentificationtasksPredictionsCreateBboxXMinErrorComponent`$new()
          instance <- `IdentificationtasksPredictionsCreateBboxXMinErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksPredictionsCreateBboxXMinErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksPredictionsCreateBboxXMinErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksPredictionsCreateBboxXMinErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksPredictionsCreateBboxXMinErrorComponent_result`["message"])
      }

      `IdentificationtasksPredictionsCreateBboxYMinErrorComponent_result` <- tryCatch({
          `IdentificationtasksPredictionsCreateBboxYMinErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksPredictionsCreateBboxYMinErrorComponent_instance` <- `IdentificationtasksPredictionsCreateBboxYMinErrorComponent`$new()
          instance <- `IdentificationtasksPredictionsCreateBboxYMinErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksPredictionsCreateBboxYMinErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksPredictionsCreateBboxYMinErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksPredictionsCreateBboxYMinErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksPredictionsCreateBboxYMinErrorComponent_result`["message"])
      }

      `IdentificationtasksPredictionsCreateBboxXMaxErrorComponent_result` <- tryCatch({
          `IdentificationtasksPredictionsCreateBboxXMaxErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksPredictionsCreateBboxXMaxErrorComponent_instance` <- `IdentificationtasksPredictionsCreateBboxXMaxErrorComponent`$new()
          instance <- `IdentificationtasksPredictionsCreateBboxXMaxErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksPredictionsCreateBboxXMaxErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksPredictionsCreateBboxXMaxErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksPredictionsCreateBboxXMaxErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksPredictionsCreateBboxXMaxErrorComponent_result`["message"])
      }

      `IdentificationtasksPredictionsCreateBboxYMaxErrorComponent_result` <- tryCatch({
          `IdentificationtasksPredictionsCreateBboxYMaxErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksPredictionsCreateBboxYMaxErrorComponent_instance` <- `IdentificationtasksPredictionsCreateBboxYMaxErrorComponent`$new()
          instance <- `IdentificationtasksPredictionsCreateBboxYMaxErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksPredictionsCreateBboxYMaxErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksPredictionsCreateBboxYMaxErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksPredictionsCreateBboxYMaxErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksPredictionsCreateBboxYMaxErrorComponent_result`["message"])
      }

      `IdentificationtasksPredictionsCreateInsectConfidenceErrorComponent_result` <- tryCatch({
          `IdentificationtasksPredictionsCreateInsectConfidenceErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksPredictionsCreateInsectConfidenceErrorComponent_instance` <- `IdentificationtasksPredictionsCreateInsectConfidenceErrorComponent`$new()
          instance <- `IdentificationtasksPredictionsCreateInsectConfidenceErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksPredictionsCreateInsectConfidenceErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksPredictionsCreateInsectConfidenceErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksPredictionsCreateInsectConfidenceErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksPredictionsCreateInsectConfidenceErrorComponent_result`["message"])
      }

      `IdentificationtasksPredictionsCreatePredictedClassErrorComponent_result` <- tryCatch({
          `IdentificationtasksPredictionsCreatePredictedClassErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksPredictionsCreatePredictedClassErrorComponent_instance` <- `IdentificationtasksPredictionsCreatePredictedClassErrorComponent`$new()
          instance <- `IdentificationtasksPredictionsCreatePredictedClassErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksPredictionsCreatePredictedClassErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksPredictionsCreatePredictedClassErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksPredictionsCreatePredictedClassErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksPredictionsCreatePredictedClassErrorComponent_result`["message"])
      }

      `IdentificationtasksPredictionsCreateThresholdDeviationErrorComponent_result` <- tryCatch({
          `IdentificationtasksPredictionsCreateThresholdDeviationErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksPredictionsCreateThresholdDeviationErrorComponent_instance` <- `IdentificationtasksPredictionsCreateThresholdDeviationErrorComponent`$new()
          instance <- `IdentificationtasksPredictionsCreateThresholdDeviationErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksPredictionsCreateThresholdDeviationErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksPredictionsCreateThresholdDeviationErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksPredictionsCreateThresholdDeviationErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksPredictionsCreateThresholdDeviationErrorComponent_result`["message"])
      }

      `IdentificationtasksPredictionsCreateIsDecisiveErrorComponent_result` <- tryCatch({
          `IdentificationtasksPredictionsCreateIsDecisiveErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksPredictionsCreateIsDecisiveErrorComponent_instance` <- `IdentificationtasksPredictionsCreateIsDecisiveErrorComponent`$new()
          instance <- `IdentificationtasksPredictionsCreateIsDecisiveErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksPredictionsCreateIsDecisiveErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksPredictionsCreateIsDecisiveErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksPredictionsCreateIsDecisiveErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksPredictionsCreateIsDecisiveErrorComponent_result`["message"])
      }

      `IdentificationtasksPredictionsCreateScoresNonFieldErrorsErrorComponent_result` <- tryCatch({
          `IdentificationtasksPredictionsCreateScoresNonFieldErrorsErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksPredictionsCreateScoresNonFieldErrorsErrorComponent_instance` <- `IdentificationtasksPredictionsCreateScoresNonFieldErrorsErrorComponent`$new()
          instance <- `IdentificationtasksPredictionsCreateScoresNonFieldErrorsErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksPredictionsCreateScoresNonFieldErrorsErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksPredictionsCreateScoresNonFieldErrorsErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksPredictionsCreateScoresNonFieldErrorsErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksPredictionsCreateScoresNonFieldErrorsErrorComponent_result`["message"])
      }

      `IdentificationtasksPredictionsCreateScoresAeAlbopictusErrorComponent_result` <- tryCatch({
          `IdentificationtasksPredictionsCreateScoresAeAlbopictusErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksPredictionsCreateScoresAeAlbopictusErrorComponent_instance` <- `IdentificationtasksPredictionsCreateScoresAeAlbopictusErrorComponent`$new()
          instance <- `IdentificationtasksPredictionsCreateScoresAeAlbopictusErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksPredictionsCreateScoresAeAlbopictusErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksPredictionsCreateScoresAeAlbopictusErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksPredictionsCreateScoresAeAlbopictusErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksPredictionsCreateScoresAeAlbopictusErrorComponent_result`["message"])
      }

      `IdentificationtasksPredictionsCreateScoresAeAegyptiErrorComponent_result` <- tryCatch({
          `IdentificationtasksPredictionsCreateScoresAeAegyptiErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksPredictionsCreateScoresAeAegyptiErrorComponent_instance` <- `IdentificationtasksPredictionsCreateScoresAeAegyptiErrorComponent`$new()
          instance <- `IdentificationtasksPredictionsCreateScoresAeAegyptiErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksPredictionsCreateScoresAeAegyptiErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksPredictionsCreateScoresAeAegyptiErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksPredictionsCreateScoresAeAegyptiErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksPredictionsCreateScoresAeAegyptiErrorComponent_result`["message"])
      }

      `IdentificationtasksPredictionsCreateScoresAeJaponicusErrorComponent_result` <- tryCatch({
          `IdentificationtasksPredictionsCreateScoresAeJaponicusErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksPredictionsCreateScoresAeJaponicusErrorComponent_instance` <- `IdentificationtasksPredictionsCreateScoresAeJaponicusErrorComponent`$new()
          instance <- `IdentificationtasksPredictionsCreateScoresAeJaponicusErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksPredictionsCreateScoresAeJaponicusErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksPredictionsCreateScoresAeJaponicusErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksPredictionsCreateScoresAeJaponicusErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksPredictionsCreateScoresAeJaponicusErrorComponent_result`["message"])
      }

      `IdentificationtasksPredictionsCreateScoresAeKoreicusErrorComponent_result` <- tryCatch({
          `IdentificationtasksPredictionsCreateScoresAeKoreicusErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksPredictionsCreateScoresAeKoreicusErrorComponent_instance` <- `IdentificationtasksPredictionsCreateScoresAeKoreicusErrorComponent`$new()
          instance <- `IdentificationtasksPredictionsCreateScoresAeKoreicusErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksPredictionsCreateScoresAeKoreicusErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksPredictionsCreateScoresAeKoreicusErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksPredictionsCreateScoresAeKoreicusErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksPredictionsCreateScoresAeKoreicusErrorComponent_result`["message"])
      }

      `IdentificationtasksPredictionsCreateScoresCulexErrorComponent_result` <- tryCatch({
          `IdentificationtasksPredictionsCreateScoresCulexErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksPredictionsCreateScoresCulexErrorComponent_instance` <- `IdentificationtasksPredictionsCreateScoresCulexErrorComponent`$new()
          instance <- `IdentificationtasksPredictionsCreateScoresCulexErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksPredictionsCreateScoresCulexErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksPredictionsCreateScoresCulexErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksPredictionsCreateScoresCulexErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksPredictionsCreateScoresCulexErrorComponent_result`["message"])
      }

      `IdentificationtasksPredictionsCreateScoresAnophelesErrorComponent_result` <- tryCatch({
          `IdentificationtasksPredictionsCreateScoresAnophelesErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksPredictionsCreateScoresAnophelesErrorComponent_instance` <- `IdentificationtasksPredictionsCreateScoresAnophelesErrorComponent`$new()
          instance <- `IdentificationtasksPredictionsCreateScoresAnophelesErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksPredictionsCreateScoresAnophelesErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksPredictionsCreateScoresAnophelesErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksPredictionsCreateScoresAnophelesErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksPredictionsCreateScoresAnophelesErrorComponent_result`["message"])
      }

      `IdentificationtasksPredictionsCreateScoresCulisetaErrorComponent_result` <- tryCatch({
          `IdentificationtasksPredictionsCreateScoresCulisetaErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksPredictionsCreateScoresCulisetaErrorComponent_instance` <- `IdentificationtasksPredictionsCreateScoresCulisetaErrorComponent`$new()
          instance <- `IdentificationtasksPredictionsCreateScoresCulisetaErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksPredictionsCreateScoresCulisetaErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksPredictionsCreateScoresCulisetaErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksPredictionsCreateScoresCulisetaErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksPredictionsCreateScoresCulisetaErrorComponent_result`["message"])
      }

      `IdentificationtasksPredictionsCreateScoresOtherSpeciesErrorComponent_result` <- tryCatch({
          `IdentificationtasksPredictionsCreateScoresOtherSpeciesErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksPredictionsCreateScoresOtherSpeciesErrorComponent_instance` <- `IdentificationtasksPredictionsCreateScoresOtherSpeciesErrorComponent`$new()
          instance <- `IdentificationtasksPredictionsCreateScoresOtherSpeciesErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksPredictionsCreateScoresOtherSpeciesErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksPredictionsCreateScoresOtherSpeciesErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksPredictionsCreateScoresOtherSpeciesErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksPredictionsCreateScoresOtherSpeciesErrorComponent_result`["message"])
      }

      `IdentificationtasksPredictionsCreateScoresNotSureErrorComponent_result` <- tryCatch({
          `IdentificationtasksPredictionsCreateScoresNotSureErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksPredictionsCreateScoresNotSureErrorComponent_instance` <- `IdentificationtasksPredictionsCreateScoresNotSureErrorComponent`$new()
          instance <- `IdentificationtasksPredictionsCreateScoresNotSureErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksPredictionsCreateScoresNotSureErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksPredictionsCreateScoresNotSureErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksPredictionsCreateScoresNotSureErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksPredictionsCreateScoresNotSureErrorComponent_result`["message"])
      }

      `IdentificationtasksPredictionsCreateClassifierVersionErrorComponent_result` <- tryCatch({
          `IdentificationtasksPredictionsCreateClassifierVersionErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksPredictionsCreateClassifierVersionErrorComponent_instance` <- `IdentificationtasksPredictionsCreateClassifierVersionErrorComponent`$new()
          instance <- `IdentificationtasksPredictionsCreateClassifierVersionErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksPredictionsCreateClassifierVersionErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksPredictionsCreateClassifierVersionErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksPredictionsCreateClassifierVersionErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksPredictionsCreateClassifierVersionErrorComponent_result`["message"])
      }

      if (matched == 1) {
        # successfully match exactly 1 schema specified in oneOf
        self$actual_instance <- instance
        self$actual_type <- instance_type
      } else if (matched > 1) {
        # more than 1 match
        stop(paste("Multiple matches found when deserializing the input into IdentificationtasksPredictionsCreateError with oneOf schemas IdentificationtasksPredictionsCreateBboxNonFieldErrorsErrorComponent, IdentificationtasksPredictionsCreateBboxXMaxErrorComponent, IdentificationtasksPredictionsCreateBboxXMinErrorComponent, IdentificationtasksPredictionsCreateBboxYMaxErrorComponent, IdentificationtasksPredictionsCreateBboxYMinErrorComponent, IdentificationtasksPredictionsCreateClassifierVersionErrorComponent, IdentificationtasksPredictionsCreateInsectConfidenceErrorComponent, IdentificationtasksPredictionsCreateIsDecisiveErrorComponent, IdentificationtasksPredictionsCreateNonFieldErrorsErrorComponent, IdentificationtasksPredictionsCreatePhotoUuidErrorComponent, IdentificationtasksPredictionsCreatePredictedClassErrorComponent, IdentificationtasksPredictionsCreateScoresAeAegyptiErrorComponent, IdentificationtasksPredictionsCreateScoresAeAlbopictusErrorComponent, IdentificationtasksPredictionsCreateScoresAeJaponicusErrorComponent, IdentificationtasksPredictionsCreateScoresAeKoreicusErrorComponent, IdentificationtasksPredictionsCreateScoresAnophelesErrorComponent, IdentificationtasksPredictionsCreateScoresCulexErrorComponent, IdentificationtasksPredictionsCreateScoresCulisetaErrorComponent, IdentificationtasksPredictionsCreateScoresNonFieldErrorsErrorComponent, IdentificationtasksPredictionsCreateScoresNotSureErrorComponent, IdentificationtasksPredictionsCreateScoresOtherSpeciesErrorComponent, IdentificationtasksPredictionsCreateThresholdDeviationErrorComponent. Matched schemas: ",
                   paste(matched_schemas, collapse = ", ")))
      } else {
        # no match
        stop(paste("No match found when deserializing the input into IdentificationtasksPredictionsCreateError with oneOf schemas IdentificationtasksPredictionsCreateBboxNonFieldErrorsErrorComponent, IdentificationtasksPredictionsCreateBboxXMaxErrorComponent, IdentificationtasksPredictionsCreateBboxXMinErrorComponent, IdentificationtasksPredictionsCreateBboxYMaxErrorComponent, IdentificationtasksPredictionsCreateBboxYMinErrorComponent, IdentificationtasksPredictionsCreateClassifierVersionErrorComponent, IdentificationtasksPredictionsCreateInsectConfidenceErrorComponent, IdentificationtasksPredictionsCreateIsDecisiveErrorComponent, IdentificationtasksPredictionsCreateNonFieldErrorsErrorComponent, IdentificationtasksPredictionsCreatePhotoUuidErrorComponent, IdentificationtasksPredictionsCreatePredictedClassErrorComponent, IdentificationtasksPredictionsCreateScoresAeAegyptiErrorComponent, IdentificationtasksPredictionsCreateScoresAeAlbopictusErrorComponent, IdentificationtasksPredictionsCreateScoresAeJaponicusErrorComponent, IdentificationtasksPredictionsCreateScoresAeKoreicusErrorComponent, IdentificationtasksPredictionsCreateScoresAnophelesErrorComponent, IdentificationtasksPredictionsCreateScoresCulexErrorComponent, IdentificationtasksPredictionsCreateScoresCulisetaErrorComponent, IdentificationtasksPredictionsCreateScoresNonFieldErrorsErrorComponent, IdentificationtasksPredictionsCreateScoresNotSureErrorComponent, IdentificationtasksPredictionsCreateScoresOtherSpeciesErrorComponent, IdentificationtasksPredictionsCreateThresholdDeviationErrorComponent. Details: >>",
                   paste(error_messages, collapse = " >> ")))
      }

      self
    },

    #' @description
    #' Serialize IdentificationtasksPredictionsCreateError to JSON string.
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return JSON string representation of the IdentificationtasksPredictionsCreateError.
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
    #' Convert IdentificationtasksPredictionsCreateError to a base R type
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
    #' Validate the input JSON with respect to IdentificationtasksPredictionsCreateError and
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
#IdentificationtasksPredictionsCreateError$unlock()
#
## Below is an example to define the print function
#IdentificationtasksPredictionsCreateError$set("public", "print", function(...) {
#  print(jsonlite::prettify(self$toJSONString()))
#  invisible(self)
#})
## Uncomment below to lock the class to prevent modifications to the method or field
#IdentificationtasksPredictionsCreateError$lock()

