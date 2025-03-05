#' @docType class
#' @title PhotosPredictionCreateError
#'
#' @description PhotosPredictionCreateError Class
#'
#' @format An \code{R6Class} generator object
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PhotosPredictionCreateError <- R6::R6Class(
  "PhotosPredictionCreateError",
  public = list(
    #' @field actual_instance the object stored in this instance.
    actual_instance = NULL,
    #' @field actual_type the type of the object stored in this instance.
    actual_type = NULL,
    #' @field one_of  a list of types defined in the oneOf schema.
    one_of = list("PhotosPredictionCreateBboxNonFieldErrorsErrorComponent", "PhotosPredictionCreateBboxXMaxErrorComponent", "PhotosPredictionCreateBboxXMinErrorComponent", "PhotosPredictionCreateBboxYMaxErrorComponent", "PhotosPredictionCreateBboxYMinErrorComponent", "PhotosPredictionCreateClassifierVersionErrorComponent", "PhotosPredictionCreateInsectConfidenceErrorComponent", "PhotosPredictionCreateNonFieldErrorsErrorComponent", "PhotosPredictionCreatePredictedClassErrorComponent", "PhotosPredictionCreateScoresAeAegyptiErrorComponent", "PhotosPredictionCreateScoresAeAlbopictusErrorComponent", "PhotosPredictionCreateScoresAeJaponicusErrorComponent", "PhotosPredictionCreateScoresAeKoreicusErrorComponent", "PhotosPredictionCreateScoresAnophelesErrorComponent", "PhotosPredictionCreateScoresCulexErrorComponent", "PhotosPredictionCreateScoresCulisetaErrorComponent", "PhotosPredictionCreateScoresNonFieldErrorsErrorComponent", "PhotosPredictionCreateScoresNotSureErrorComponent", "PhotosPredictionCreateScoresOtherSpeciesErrorComponent", "PhotosPredictionCreateThresholdDeviationErrorComponent"),

    #' @description
    #' Initialize a new PhotosPredictionCreateError.
    #'
    #' @param instance an instance of the object defined in the oneOf schemas: "PhotosPredictionCreateBboxNonFieldErrorsErrorComponent", "PhotosPredictionCreateBboxXMaxErrorComponent", "PhotosPredictionCreateBboxXMinErrorComponent", "PhotosPredictionCreateBboxYMaxErrorComponent", "PhotosPredictionCreateBboxYMinErrorComponent", "PhotosPredictionCreateClassifierVersionErrorComponent", "PhotosPredictionCreateInsectConfidenceErrorComponent", "PhotosPredictionCreateNonFieldErrorsErrorComponent", "PhotosPredictionCreatePredictedClassErrorComponent", "PhotosPredictionCreateScoresAeAegyptiErrorComponent", "PhotosPredictionCreateScoresAeAlbopictusErrorComponent", "PhotosPredictionCreateScoresAeJaponicusErrorComponent", "PhotosPredictionCreateScoresAeKoreicusErrorComponent", "PhotosPredictionCreateScoresAnophelesErrorComponent", "PhotosPredictionCreateScoresCulexErrorComponent", "PhotosPredictionCreateScoresCulisetaErrorComponent", "PhotosPredictionCreateScoresNonFieldErrorsErrorComponent", "PhotosPredictionCreateScoresNotSureErrorComponent", "PhotosPredictionCreateScoresOtherSpeciesErrorComponent", "PhotosPredictionCreateThresholdDeviationErrorComponent"
    initialize = function(instance = NULL) {
      if (is.null(instance)) {
        # do nothing
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "PhotosPredictionCreateBboxNonFieldErrorsErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "PhotosPredictionCreateBboxNonFieldErrorsErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "PhotosPredictionCreateBboxXMaxErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "PhotosPredictionCreateBboxXMaxErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "PhotosPredictionCreateBboxXMinErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "PhotosPredictionCreateBboxXMinErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "PhotosPredictionCreateBboxYMaxErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "PhotosPredictionCreateBboxYMaxErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "PhotosPredictionCreateBboxYMinErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "PhotosPredictionCreateBboxYMinErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "PhotosPredictionCreateClassifierVersionErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "PhotosPredictionCreateClassifierVersionErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "PhotosPredictionCreateInsectConfidenceErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "PhotosPredictionCreateInsectConfidenceErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "PhotosPredictionCreateNonFieldErrorsErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "PhotosPredictionCreateNonFieldErrorsErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "PhotosPredictionCreatePredictedClassErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "PhotosPredictionCreatePredictedClassErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "PhotosPredictionCreateScoresAeAegyptiErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "PhotosPredictionCreateScoresAeAegyptiErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "PhotosPredictionCreateScoresAeAlbopictusErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "PhotosPredictionCreateScoresAeAlbopictusErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "PhotosPredictionCreateScoresAeJaponicusErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "PhotosPredictionCreateScoresAeJaponicusErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "PhotosPredictionCreateScoresAeKoreicusErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "PhotosPredictionCreateScoresAeKoreicusErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "PhotosPredictionCreateScoresAnophelesErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "PhotosPredictionCreateScoresAnophelesErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "PhotosPredictionCreateScoresCulexErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "PhotosPredictionCreateScoresCulexErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "PhotosPredictionCreateScoresCulisetaErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "PhotosPredictionCreateScoresCulisetaErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "PhotosPredictionCreateScoresNonFieldErrorsErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "PhotosPredictionCreateScoresNonFieldErrorsErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "PhotosPredictionCreateScoresNotSureErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "PhotosPredictionCreateScoresNotSureErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "PhotosPredictionCreateScoresOtherSpeciesErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "PhotosPredictionCreateScoresOtherSpeciesErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "PhotosPredictionCreateThresholdDeviationErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "PhotosPredictionCreateThresholdDeviationErrorComponent"
      } else {
        stop(paste("Failed to initialize PhotosPredictionCreateError with oneOf schemas PhotosPredictionCreateBboxNonFieldErrorsErrorComponent, PhotosPredictionCreateBboxXMaxErrorComponent, PhotosPredictionCreateBboxXMinErrorComponent, PhotosPredictionCreateBboxYMaxErrorComponent, PhotosPredictionCreateBboxYMinErrorComponent, PhotosPredictionCreateClassifierVersionErrorComponent, PhotosPredictionCreateInsectConfidenceErrorComponent, PhotosPredictionCreateNonFieldErrorsErrorComponent, PhotosPredictionCreatePredictedClassErrorComponent, PhotosPredictionCreateScoresAeAegyptiErrorComponent, PhotosPredictionCreateScoresAeAlbopictusErrorComponent, PhotosPredictionCreateScoresAeJaponicusErrorComponent, PhotosPredictionCreateScoresAeKoreicusErrorComponent, PhotosPredictionCreateScoresAnophelesErrorComponent, PhotosPredictionCreateScoresCulexErrorComponent, PhotosPredictionCreateScoresCulisetaErrorComponent, PhotosPredictionCreateScoresNonFieldErrorsErrorComponent, PhotosPredictionCreateScoresNotSureErrorComponent, PhotosPredictionCreateScoresOtherSpeciesErrorComponent, PhotosPredictionCreateThresholdDeviationErrorComponent. Provided class name: ",
                   get(class(instance)[[1]], pos = -1)$classname))
      }
    },

    #' @description
    #' Deserialize JSON string into an instance of PhotosPredictionCreateError.
    #' An alias to the method `fromJSON` .
    #'
    #' @param input The input JSON.
    #'
    #' @return An instance of PhotosPredictionCreateError.
    fromJSONString = function(input) {
      self$fromJSON(input)
    },

    #' @description
    #' Deserialize JSON string into an instance of PhotosPredictionCreateError.
    #'
    #' @param input The input JSON.
    #'
    #' @return An instance of PhotosPredictionCreateError.
    fromJSON = function(input) {
      matched <- 0 # match counter
      matched_schemas <- list() #names of matched schemas
      error_messages <- list()
      instance <- NULL

      `PhotosPredictionCreateNonFieldErrorsErrorComponent_result` <- tryCatch({
          `PhotosPredictionCreateNonFieldErrorsErrorComponent`$public_methods$validateJSON(input)
          `PhotosPredictionCreateNonFieldErrorsErrorComponent_instance` <- `PhotosPredictionCreateNonFieldErrorsErrorComponent`$new()
          instance <- `PhotosPredictionCreateNonFieldErrorsErrorComponent_instance`$fromJSON(input)
          instance_type <- "PhotosPredictionCreateNonFieldErrorsErrorComponent"
          matched_schemas <- append(matched_schemas, "PhotosPredictionCreateNonFieldErrorsErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`PhotosPredictionCreateNonFieldErrorsErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `PhotosPredictionCreateNonFieldErrorsErrorComponent_result`["message"])
      }

      `PhotosPredictionCreateBboxNonFieldErrorsErrorComponent_result` <- tryCatch({
          `PhotosPredictionCreateBboxNonFieldErrorsErrorComponent`$public_methods$validateJSON(input)
          `PhotosPredictionCreateBboxNonFieldErrorsErrorComponent_instance` <- `PhotosPredictionCreateBboxNonFieldErrorsErrorComponent`$new()
          instance <- `PhotosPredictionCreateBboxNonFieldErrorsErrorComponent_instance`$fromJSON(input)
          instance_type <- "PhotosPredictionCreateBboxNonFieldErrorsErrorComponent"
          matched_schemas <- append(matched_schemas, "PhotosPredictionCreateBboxNonFieldErrorsErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`PhotosPredictionCreateBboxNonFieldErrorsErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `PhotosPredictionCreateBboxNonFieldErrorsErrorComponent_result`["message"])
      }

      `PhotosPredictionCreateBboxXMinErrorComponent_result` <- tryCatch({
          `PhotosPredictionCreateBboxXMinErrorComponent`$public_methods$validateJSON(input)
          `PhotosPredictionCreateBboxXMinErrorComponent_instance` <- `PhotosPredictionCreateBboxXMinErrorComponent`$new()
          instance <- `PhotosPredictionCreateBboxXMinErrorComponent_instance`$fromJSON(input)
          instance_type <- "PhotosPredictionCreateBboxXMinErrorComponent"
          matched_schemas <- append(matched_schemas, "PhotosPredictionCreateBboxXMinErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`PhotosPredictionCreateBboxXMinErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `PhotosPredictionCreateBboxXMinErrorComponent_result`["message"])
      }

      `PhotosPredictionCreateBboxYMinErrorComponent_result` <- tryCatch({
          `PhotosPredictionCreateBboxYMinErrorComponent`$public_methods$validateJSON(input)
          `PhotosPredictionCreateBboxYMinErrorComponent_instance` <- `PhotosPredictionCreateBboxYMinErrorComponent`$new()
          instance <- `PhotosPredictionCreateBboxYMinErrorComponent_instance`$fromJSON(input)
          instance_type <- "PhotosPredictionCreateBboxYMinErrorComponent"
          matched_schemas <- append(matched_schemas, "PhotosPredictionCreateBboxYMinErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`PhotosPredictionCreateBboxYMinErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `PhotosPredictionCreateBboxYMinErrorComponent_result`["message"])
      }

      `PhotosPredictionCreateBboxXMaxErrorComponent_result` <- tryCatch({
          `PhotosPredictionCreateBboxXMaxErrorComponent`$public_methods$validateJSON(input)
          `PhotosPredictionCreateBboxXMaxErrorComponent_instance` <- `PhotosPredictionCreateBboxXMaxErrorComponent`$new()
          instance <- `PhotosPredictionCreateBboxXMaxErrorComponent_instance`$fromJSON(input)
          instance_type <- "PhotosPredictionCreateBboxXMaxErrorComponent"
          matched_schemas <- append(matched_schemas, "PhotosPredictionCreateBboxXMaxErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`PhotosPredictionCreateBboxXMaxErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `PhotosPredictionCreateBboxXMaxErrorComponent_result`["message"])
      }

      `PhotosPredictionCreateBboxYMaxErrorComponent_result` <- tryCatch({
          `PhotosPredictionCreateBboxYMaxErrorComponent`$public_methods$validateJSON(input)
          `PhotosPredictionCreateBboxYMaxErrorComponent_instance` <- `PhotosPredictionCreateBboxYMaxErrorComponent`$new()
          instance <- `PhotosPredictionCreateBboxYMaxErrorComponent_instance`$fromJSON(input)
          instance_type <- "PhotosPredictionCreateBboxYMaxErrorComponent"
          matched_schemas <- append(matched_schemas, "PhotosPredictionCreateBboxYMaxErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`PhotosPredictionCreateBboxYMaxErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `PhotosPredictionCreateBboxYMaxErrorComponent_result`["message"])
      }

      `PhotosPredictionCreateInsectConfidenceErrorComponent_result` <- tryCatch({
          `PhotosPredictionCreateInsectConfidenceErrorComponent`$public_methods$validateJSON(input)
          `PhotosPredictionCreateInsectConfidenceErrorComponent_instance` <- `PhotosPredictionCreateInsectConfidenceErrorComponent`$new()
          instance <- `PhotosPredictionCreateInsectConfidenceErrorComponent_instance`$fromJSON(input)
          instance_type <- "PhotosPredictionCreateInsectConfidenceErrorComponent"
          matched_schemas <- append(matched_schemas, "PhotosPredictionCreateInsectConfidenceErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`PhotosPredictionCreateInsectConfidenceErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `PhotosPredictionCreateInsectConfidenceErrorComponent_result`["message"])
      }

      `PhotosPredictionCreatePredictedClassErrorComponent_result` <- tryCatch({
          `PhotosPredictionCreatePredictedClassErrorComponent`$public_methods$validateJSON(input)
          `PhotosPredictionCreatePredictedClassErrorComponent_instance` <- `PhotosPredictionCreatePredictedClassErrorComponent`$new()
          instance <- `PhotosPredictionCreatePredictedClassErrorComponent_instance`$fromJSON(input)
          instance_type <- "PhotosPredictionCreatePredictedClassErrorComponent"
          matched_schemas <- append(matched_schemas, "PhotosPredictionCreatePredictedClassErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`PhotosPredictionCreatePredictedClassErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `PhotosPredictionCreatePredictedClassErrorComponent_result`["message"])
      }

      `PhotosPredictionCreateThresholdDeviationErrorComponent_result` <- tryCatch({
          `PhotosPredictionCreateThresholdDeviationErrorComponent`$public_methods$validateJSON(input)
          `PhotosPredictionCreateThresholdDeviationErrorComponent_instance` <- `PhotosPredictionCreateThresholdDeviationErrorComponent`$new()
          instance <- `PhotosPredictionCreateThresholdDeviationErrorComponent_instance`$fromJSON(input)
          instance_type <- "PhotosPredictionCreateThresholdDeviationErrorComponent"
          matched_schemas <- append(matched_schemas, "PhotosPredictionCreateThresholdDeviationErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`PhotosPredictionCreateThresholdDeviationErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `PhotosPredictionCreateThresholdDeviationErrorComponent_result`["message"])
      }

      `PhotosPredictionCreateScoresNonFieldErrorsErrorComponent_result` <- tryCatch({
          `PhotosPredictionCreateScoresNonFieldErrorsErrorComponent`$public_methods$validateJSON(input)
          `PhotosPredictionCreateScoresNonFieldErrorsErrorComponent_instance` <- `PhotosPredictionCreateScoresNonFieldErrorsErrorComponent`$new()
          instance <- `PhotosPredictionCreateScoresNonFieldErrorsErrorComponent_instance`$fromJSON(input)
          instance_type <- "PhotosPredictionCreateScoresNonFieldErrorsErrorComponent"
          matched_schemas <- append(matched_schemas, "PhotosPredictionCreateScoresNonFieldErrorsErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`PhotosPredictionCreateScoresNonFieldErrorsErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `PhotosPredictionCreateScoresNonFieldErrorsErrorComponent_result`["message"])
      }

      `PhotosPredictionCreateScoresAeAlbopictusErrorComponent_result` <- tryCatch({
          `PhotosPredictionCreateScoresAeAlbopictusErrorComponent`$public_methods$validateJSON(input)
          `PhotosPredictionCreateScoresAeAlbopictusErrorComponent_instance` <- `PhotosPredictionCreateScoresAeAlbopictusErrorComponent`$new()
          instance <- `PhotosPredictionCreateScoresAeAlbopictusErrorComponent_instance`$fromJSON(input)
          instance_type <- "PhotosPredictionCreateScoresAeAlbopictusErrorComponent"
          matched_schemas <- append(matched_schemas, "PhotosPredictionCreateScoresAeAlbopictusErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`PhotosPredictionCreateScoresAeAlbopictusErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `PhotosPredictionCreateScoresAeAlbopictusErrorComponent_result`["message"])
      }

      `PhotosPredictionCreateScoresAeAegyptiErrorComponent_result` <- tryCatch({
          `PhotosPredictionCreateScoresAeAegyptiErrorComponent`$public_methods$validateJSON(input)
          `PhotosPredictionCreateScoresAeAegyptiErrorComponent_instance` <- `PhotosPredictionCreateScoresAeAegyptiErrorComponent`$new()
          instance <- `PhotosPredictionCreateScoresAeAegyptiErrorComponent_instance`$fromJSON(input)
          instance_type <- "PhotosPredictionCreateScoresAeAegyptiErrorComponent"
          matched_schemas <- append(matched_schemas, "PhotosPredictionCreateScoresAeAegyptiErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`PhotosPredictionCreateScoresAeAegyptiErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `PhotosPredictionCreateScoresAeAegyptiErrorComponent_result`["message"])
      }

      `PhotosPredictionCreateScoresAeJaponicusErrorComponent_result` <- tryCatch({
          `PhotosPredictionCreateScoresAeJaponicusErrorComponent`$public_methods$validateJSON(input)
          `PhotosPredictionCreateScoresAeJaponicusErrorComponent_instance` <- `PhotosPredictionCreateScoresAeJaponicusErrorComponent`$new()
          instance <- `PhotosPredictionCreateScoresAeJaponicusErrorComponent_instance`$fromJSON(input)
          instance_type <- "PhotosPredictionCreateScoresAeJaponicusErrorComponent"
          matched_schemas <- append(matched_schemas, "PhotosPredictionCreateScoresAeJaponicusErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`PhotosPredictionCreateScoresAeJaponicusErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `PhotosPredictionCreateScoresAeJaponicusErrorComponent_result`["message"])
      }

      `PhotosPredictionCreateScoresAeKoreicusErrorComponent_result` <- tryCatch({
          `PhotosPredictionCreateScoresAeKoreicusErrorComponent`$public_methods$validateJSON(input)
          `PhotosPredictionCreateScoresAeKoreicusErrorComponent_instance` <- `PhotosPredictionCreateScoresAeKoreicusErrorComponent`$new()
          instance <- `PhotosPredictionCreateScoresAeKoreicusErrorComponent_instance`$fromJSON(input)
          instance_type <- "PhotosPredictionCreateScoresAeKoreicusErrorComponent"
          matched_schemas <- append(matched_schemas, "PhotosPredictionCreateScoresAeKoreicusErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`PhotosPredictionCreateScoresAeKoreicusErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `PhotosPredictionCreateScoresAeKoreicusErrorComponent_result`["message"])
      }

      `PhotosPredictionCreateScoresCulexErrorComponent_result` <- tryCatch({
          `PhotosPredictionCreateScoresCulexErrorComponent`$public_methods$validateJSON(input)
          `PhotosPredictionCreateScoresCulexErrorComponent_instance` <- `PhotosPredictionCreateScoresCulexErrorComponent`$new()
          instance <- `PhotosPredictionCreateScoresCulexErrorComponent_instance`$fromJSON(input)
          instance_type <- "PhotosPredictionCreateScoresCulexErrorComponent"
          matched_schemas <- append(matched_schemas, "PhotosPredictionCreateScoresCulexErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`PhotosPredictionCreateScoresCulexErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `PhotosPredictionCreateScoresCulexErrorComponent_result`["message"])
      }

      `PhotosPredictionCreateScoresAnophelesErrorComponent_result` <- tryCatch({
          `PhotosPredictionCreateScoresAnophelesErrorComponent`$public_methods$validateJSON(input)
          `PhotosPredictionCreateScoresAnophelesErrorComponent_instance` <- `PhotosPredictionCreateScoresAnophelesErrorComponent`$new()
          instance <- `PhotosPredictionCreateScoresAnophelesErrorComponent_instance`$fromJSON(input)
          instance_type <- "PhotosPredictionCreateScoresAnophelesErrorComponent"
          matched_schemas <- append(matched_schemas, "PhotosPredictionCreateScoresAnophelesErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`PhotosPredictionCreateScoresAnophelesErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `PhotosPredictionCreateScoresAnophelesErrorComponent_result`["message"])
      }

      `PhotosPredictionCreateScoresCulisetaErrorComponent_result` <- tryCatch({
          `PhotosPredictionCreateScoresCulisetaErrorComponent`$public_methods$validateJSON(input)
          `PhotosPredictionCreateScoresCulisetaErrorComponent_instance` <- `PhotosPredictionCreateScoresCulisetaErrorComponent`$new()
          instance <- `PhotosPredictionCreateScoresCulisetaErrorComponent_instance`$fromJSON(input)
          instance_type <- "PhotosPredictionCreateScoresCulisetaErrorComponent"
          matched_schemas <- append(matched_schemas, "PhotosPredictionCreateScoresCulisetaErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`PhotosPredictionCreateScoresCulisetaErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `PhotosPredictionCreateScoresCulisetaErrorComponent_result`["message"])
      }

      `PhotosPredictionCreateScoresOtherSpeciesErrorComponent_result` <- tryCatch({
          `PhotosPredictionCreateScoresOtherSpeciesErrorComponent`$public_methods$validateJSON(input)
          `PhotosPredictionCreateScoresOtherSpeciesErrorComponent_instance` <- `PhotosPredictionCreateScoresOtherSpeciesErrorComponent`$new()
          instance <- `PhotosPredictionCreateScoresOtherSpeciesErrorComponent_instance`$fromJSON(input)
          instance_type <- "PhotosPredictionCreateScoresOtherSpeciesErrorComponent"
          matched_schemas <- append(matched_schemas, "PhotosPredictionCreateScoresOtherSpeciesErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`PhotosPredictionCreateScoresOtherSpeciesErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `PhotosPredictionCreateScoresOtherSpeciesErrorComponent_result`["message"])
      }

      `PhotosPredictionCreateScoresNotSureErrorComponent_result` <- tryCatch({
          `PhotosPredictionCreateScoresNotSureErrorComponent`$public_methods$validateJSON(input)
          `PhotosPredictionCreateScoresNotSureErrorComponent_instance` <- `PhotosPredictionCreateScoresNotSureErrorComponent`$new()
          instance <- `PhotosPredictionCreateScoresNotSureErrorComponent_instance`$fromJSON(input)
          instance_type <- "PhotosPredictionCreateScoresNotSureErrorComponent"
          matched_schemas <- append(matched_schemas, "PhotosPredictionCreateScoresNotSureErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`PhotosPredictionCreateScoresNotSureErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `PhotosPredictionCreateScoresNotSureErrorComponent_result`["message"])
      }

      `PhotosPredictionCreateClassifierVersionErrorComponent_result` <- tryCatch({
          `PhotosPredictionCreateClassifierVersionErrorComponent`$public_methods$validateJSON(input)
          `PhotosPredictionCreateClassifierVersionErrorComponent_instance` <- `PhotosPredictionCreateClassifierVersionErrorComponent`$new()
          instance <- `PhotosPredictionCreateClassifierVersionErrorComponent_instance`$fromJSON(input)
          instance_type <- "PhotosPredictionCreateClassifierVersionErrorComponent"
          matched_schemas <- append(matched_schemas, "PhotosPredictionCreateClassifierVersionErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`PhotosPredictionCreateClassifierVersionErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `PhotosPredictionCreateClassifierVersionErrorComponent_result`["message"])
      }

      if (matched == 1) {
        # successfully match exactly 1 schema specified in oneOf
        self$actual_instance <- instance
        self$actual_type <- instance_type
      } else if (matched > 1) {
        # more than 1 match
        stop(paste("Multiple matches found when deserializing the input into PhotosPredictionCreateError with oneOf schemas PhotosPredictionCreateBboxNonFieldErrorsErrorComponent, PhotosPredictionCreateBboxXMaxErrorComponent, PhotosPredictionCreateBboxXMinErrorComponent, PhotosPredictionCreateBboxYMaxErrorComponent, PhotosPredictionCreateBboxYMinErrorComponent, PhotosPredictionCreateClassifierVersionErrorComponent, PhotosPredictionCreateInsectConfidenceErrorComponent, PhotosPredictionCreateNonFieldErrorsErrorComponent, PhotosPredictionCreatePredictedClassErrorComponent, PhotosPredictionCreateScoresAeAegyptiErrorComponent, PhotosPredictionCreateScoresAeAlbopictusErrorComponent, PhotosPredictionCreateScoresAeJaponicusErrorComponent, PhotosPredictionCreateScoresAeKoreicusErrorComponent, PhotosPredictionCreateScoresAnophelesErrorComponent, PhotosPredictionCreateScoresCulexErrorComponent, PhotosPredictionCreateScoresCulisetaErrorComponent, PhotosPredictionCreateScoresNonFieldErrorsErrorComponent, PhotosPredictionCreateScoresNotSureErrorComponent, PhotosPredictionCreateScoresOtherSpeciesErrorComponent, PhotosPredictionCreateThresholdDeviationErrorComponent. Matched schemas: ",
                   paste(matched_schemas, collapse = ", ")))
      } else {
        # no match
        stop(paste("No match found when deserializing the input into PhotosPredictionCreateError with oneOf schemas PhotosPredictionCreateBboxNonFieldErrorsErrorComponent, PhotosPredictionCreateBboxXMaxErrorComponent, PhotosPredictionCreateBboxXMinErrorComponent, PhotosPredictionCreateBboxYMaxErrorComponent, PhotosPredictionCreateBboxYMinErrorComponent, PhotosPredictionCreateClassifierVersionErrorComponent, PhotosPredictionCreateInsectConfidenceErrorComponent, PhotosPredictionCreateNonFieldErrorsErrorComponent, PhotosPredictionCreatePredictedClassErrorComponent, PhotosPredictionCreateScoresAeAegyptiErrorComponent, PhotosPredictionCreateScoresAeAlbopictusErrorComponent, PhotosPredictionCreateScoresAeJaponicusErrorComponent, PhotosPredictionCreateScoresAeKoreicusErrorComponent, PhotosPredictionCreateScoresAnophelesErrorComponent, PhotosPredictionCreateScoresCulexErrorComponent, PhotosPredictionCreateScoresCulisetaErrorComponent, PhotosPredictionCreateScoresNonFieldErrorsErrorComponent, PhotosPredictionCreateScoresNotSureErrorComponent, PhotosPredictionCreateScoresOtherSpeciesErrorComponent, PhotosPredictionCreateThresholdDeviationErrorComponent. Details: >>",
                   paste(error_messages, collapse = " >> ")))
      }

      self
    },

    #' @description
    #' Serialize PhotosPredictionCreateError to JSON string.
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return JSON string representation of the PhotosPredictionCreateError.
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
    #' Convert PhotosPredictionCreateError to a base R type
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
    #' Validate the input JSON with respect to PhotosPredictionCreateError and
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
#PhotosPredictionCreateError$unlock()
#
## Below is an example to define the print function
#PhotosPredictionCreateError$set("public", "print", function(...) {
#  print(jsonlite::prettify(self$toJSONString()))
#  invisible(self)
#})
## Uncomment below to lock the class to prevent modifications to the method or field
#PhotosPredictionCreateError$lock()

