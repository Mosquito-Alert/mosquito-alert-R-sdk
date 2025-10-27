#' @docType class
#' @title ObservationsCreateError
#'
#' @description ObservationsCreateError Class
#'
#' @format An \code{R6Class} generator object
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ObservationsCreateError <- R6::R6Class(
  "ObservationsCreateError",
  public = list(
    #' @field actual_instance the object stored in this instance.
    actual_instance = NULL,
    #' @field actual_type the type of the object stored in this instance.
    actual_type = NULL,
    #' @field one_of  a list of types defined in the oneOf schema.
    one_of = list("ObservationsCreateCreatedAtErrorComponent", "ObservationsCreateEventEnvironmentErrorComponent", "ObservationsCreateEventMomentErrorComponent", "ObservationsCreateLocationNonFieldErrorsErrorComponent", "ObservationsCreateLocationPointLatitudeErrorComponent", "ObservationsCreateLocationPointLongitudeErrorComponent", "ObservationsCreateLocationPointNonFieldErrorsErrorComponent", "ObservationsCreateLocationSourceErrorComponent", "ObservationsCreateMosquitoAppearanceAbdomenErrorComponent", "ObservationsCreateMosquitoAppearanceLegsErrorComponent", "ObservationsCreateMosquitoAppearanceNonFieldErrorsErrorComponent", "ObservationsCreateMosquitoAppearanceSpecieErrorComponent", "ObservationsCreateMosquitoAppearanceThoraxErrorComponent", "ObservationsCreateNonFieldErrorsErrorComponent", "ObservationsCreateNoteErrorComponent", "ObservationsCreatePhotosErrorComponent", "ObservationsCreatePhotosINDEXErrorComponent", "ObservationsCreateSentAtErrorComponent", "ObservationsCreateTagsErrorComponent", "ObservationsCreateTagsINDEXErrorComponent"),

    #' @description
    #' Initialize a new ObservationsCreateError.
    #'
    #' @param instance an instance of the object defined in the oneOf schemas: "ObservationsCreateCreatedAtErrorComponent", "ObservationsCreateEventEnvironmentErrorComponent", "ObservationsCreateEventMomentErrorComponent", "ObservationsCreateLocationNonFieldErrorsErrorComponent", "ObservationsCreateLocationPointLatitudeErrorComponent", "ObservationsCreateLocationPointLongitudeErrorComponent", "ObservationsCreateLocationPointNonFieldErrorsErrorComponent", "ObservationsCreateLocationSourceErrorComponent", "ObservationsCreateMosquitoAppearanceAbdomenErrorComponent", "ObservationsCreateMosquitoAppearanceLegsErrorComponent", "ObservationsCreateMosquitoAppearanceNonFieldErrorsErrorComponent", "ObservationsCreateMosquitoAppearanceSpecieErrorComponent", "ObservationsCreateMosquitoAppearanceThoraxErrorComponent", "ObservationsCreateNonFieldErrorsErrorComponent", "ObservationsCreateNoteErrorComponent", "ObservationsCreatePhotosErrorComponent", "ObservationsCreatePhotosINDEXErrorComponent", "ObservationsCreateSentAtErrorComponent", "ObservationsCreateTagsErrorComponent", "ObservationsCreateTagsINDEXErrorComponent"
    initialize = function(instance = NULL) {
      if (is.null(instance)) {
        # do nothing
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "ObservationsCreateCreatedAtErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "ObservationsCreateCreatedAtErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "ObservationsCreateEventEnvironmentErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "ObservationsCreateEventEnvironmentErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "ObservationsCreateEventMomentErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "ObservationsCreateEventMomentErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "ObservationsCreateLocationNonFieldErrorsErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "ObservationsCreateLocationNonFieldErrorsErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "ObservationsCreateLocationPointLatitudeErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "ObservationsCreateLocationPointLatitudeErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "ObservationsCreateLocationPointLongitudeErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "ObservationsCreateLocationPointLongitudeErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "ObservationsCreateLocationPointNonFieldErrorsErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "ObservationsCreateLocationPointNonFieldErrorsErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "ObservationsCreateLocationSourceErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "ObservationsCreateLocationSourceErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "ObservationsCreateMosquitoAppearanceAbdomenErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "ObservationsCreateMosquitoAppearanceAbdomenErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "ObservationsCreateMosquitoAppearanceLegsErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "ObservationsCreateMosquitoAppearanceLegsErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "ObservationsCreateMosquitoAppearanceNonFieldErrorsErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "ObservationsCreateMosquitoAppearanceNonFieldErrorsErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "ObservationsCreateMosquitoAppearanceSpecieErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "ObservationsCreateMosquitoAppearanceSpecieErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "ObservationsCreateMosquitoAppearanceThoraxErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "ObservationsCreateMosquitoAppearanceThoraxErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "ObservationsCreateNonFieldErrorsErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "ObservationsCreateNonFieldErrorsErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "ObservationsCreateNoteErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "ObservationsCreateNoteErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "ObservationsCreatePhotosErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "ObservationsCreatePhotosErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "ObservationsCreatePhotosINDEXErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "ObservationsCreatePhotosINDEXErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "ObservationsCreateSentAtErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "ObservationsCreateSentAtErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "ObservationsCreateTagsErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "ObservationsCreateTagsErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "ObservationsCreateTagsINDEXErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "ObservationsCreateTagsINDEXErrorComponent"
      } else {
        stop(paste("Failed to initialize ObservationsCreateError with oneOf schemas ObservationsCreateCreatedAtErrorComponent, ObservationsCreateEventEnvironmentErrorComponent, ObservationsCreateEventMomentErrorComponent, ObservationsCreateLocationNonFieldErrorsErrorComponent, ObservationsCreateLocationPointLatitudeErrorComponent, ObservationsCreateLocationPointLongitudeErrorComponent, ObservationsCreateLocationPointNonFieldErrorsErrorComponent, ObservationsCreateLocationSourceErrorComponent, ObservationsCreateMosquitoAppearanceAbdomenErrorComponent, ObservationsCreateMosquitoAppearanceLegsErrorComponent, ObservationsCreateMosquitoAppearanceNonFieldErrorsErrorComponent, ObservationsCreateMosquitoAppearanceSpecieErrorComponent, ObservationsCreateMosquitoAppearanceThoraxErrorComponent, ObservationsCreateNonFieldErrorsErrorComponent, ObservationsCreateNoteErrorComponent, ObservationsCreatePhotosErrorComponent, ObservationsCreatePhotosINDEXErrorComponent, ObservationsCreateSentAtErrorComponent, ObservationsCreateTagsErrorComponent, ObservationsCreateTagsINDEXErrorComponent. Provided class name: ",
                   get(class(instance)[[1]], pos = -1)$classname))
      }
    },

    #' @description
    #' Deserialize JSON string into an instance of ObservationsCreateError.
    #' An alias to the method `fromJSON` .
    #'
    #' @param input The input JSON.
    #'
    #' @return An instance of ObservationsCreateError.
    fromJSONString = function(input) {
      self$fromJSON(input)
    },

    #' @description
    #' Deserialize JSON string into an instance of ObservationsCreateError.
    #'
    #' @param input The input JSON.
    #'
    #' @return An instance of ObservationsCreateError.
    fromJSON = function(input) {
      matched <- 0 # match counter
      matched_schemas <- list() #names of matched schemas
      error_messages <- list()
      instance <- NULL

      `ObservationsCreateNonFieldErrorsErrorComponent_result` <- tryCatch({
          `ObservationsCreateNonFieldErrorsErrorComponent`$public_methods$validateJSON(input)
          `ObservationsCreateNonFieldErrorsErrorComponent_instance` <- `ObservationsCreateNonFieldErrorsErrorComponent`$new()
          instance <- `ObservationsCreateNonFieldErrorsErrorComponent_instance`$fromJSON(input)
          instance_type <- "ObservationsCreateNonFieldErrorsErrorComponent"
          matched_schemas <- append(matched_schemas, "ObservationsCreateNonFieldErrorsErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`ObservationsCreateNonFieldErrorsErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `ObservationsCreateNonFieldErrorsErrorComponent_result`["message"])
      }

      `ObservationsCreateCreatedAtErrorComponent_result` <- tryCatch({
          `ObservationsCreateCreatedAtErrorComponent`$public_methods$validateJSON(input)
          `ObservationsCreateCreatedAtErrorComponent_instance` <- `ObservationsCreateCreatedAtErrorComponent`$new()
          instance <- `ObservationsCreateCreatedAtErrorComponent_instance`$fromJSON(input)
          instance_type <- "ObservationsCreateCreatedAtErrorComponent"
          matched_schemas <- append(matched_schemas, "ObservationsCreateCreatedAtErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`ObservationsCreateCreatedAtErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `ObservationsCreateCreatedAtErrorComponent_result`["message"])
      }

      `ObservationsCreateSentAtErrorComponent_result` <- tryCatch({
          `ObservationsCreateSentAtErrorComponent`$public_methods$validateJSON(input)
          `ObservationsCreateSentAtErrorComponent_instance` <- `ObservationsCreateSentAtErrorComponent`$new()
          instance <- `ObservationsCreateSentAtErrorComponent_instance`$fromJSON(input)
          instance_type <- "ObservationsCreateSentAtErrorComponent"
          matched_schemas <- append(matched_schemas, "ObservationsCreateSentAtErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`ObservationsCreateSentAtErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `ObservationsCreateSentAtErrorComponent_result`["message"])
      }

      `ObservationsCreateLocationNonFieldErrorsErrorComponent_result` <- tryCatch({
          `ObservationsCreateLocationNonFieldErrorsErrorComponent`$public_methods$validateJSON(input)
          `ObservationsCreateLocationNonFieldErrorsErrorComponent_instance` <- `ObservationsCreateLocationNonFieldErrorsErrorComponent`$new()
          instance <- `ObservationsCreateLocationNonFieldErrorsErrorComponent_instance`$fromJSON(input)
          instance_type <- "ObservationsCreateLocationNonFieldErrorsErrorComponent"
          matched_schemas <- append(matched_schemas, "ObservationsCreateLocationNonFieldErrorsErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`ObservationsCreateLocationNonFieldErrorsErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `ObservationsCreateLocationNonFieldErrorsErrorComponent_result`["message"])
      }

      `ObservationsCreateLocationSourceErrorComponent_result` <- tryCatch({
          `ObservationsCreateLocationSourceErrorComponent`$public_methods$validateJSON(input)
          `ObservationsCreateLocationSourceErrorComponent_instance` <- `ObservationsCreateLocationSourceErrorComponent`$new()
          instance <- `ObservationsCreateLocationSourceErrorComponent_instance`$fromJSON(input)
          instance_type <- "ObservationsCreateLocationSourceErrorComponent"
          matched_schemas <- append(matched_schemas, "ObservationsCreateLocationSourceErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`ObservationsCreateLocationSourceErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `ObservationsCreateLocationSourceErrorComponent_result`["message"])
      }

      `ObservationsCreateLocationPointNonFieldErrorsErrorComponent_result` <- tryCatch({
          `ObservationsCreateLocationPointNonFieldErrorsErrorComponent`$public_methods$validateJSON(input)
          `ObservationsCreateLocationPointNonFieldErrorsErrorComponent_instance` <- `ObservationsCreateLocationPointNonFieldErrorsErrorComponent`$new()
          instance <- `ObservationsCreateLocationPointNonFieldErrorsErrorComponent_instance`$fromJSON(input)
          instance_type <- "ObservationsCreateLocationPointNonFieldErrorsErrorComponent"
          matched_schemas <- append(matched_schemas, "ObservationsCreateLocationPointNonFieldErrorsErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`ObservationsCreateLocationPointNonFieldErrorsErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `ObservationsCreateLocationPointNonFieldErrorsErrorComponent_result`["message"])
      }

      `ObservationsCreateLocationPointLatitudeErrorComponent_result` <- tryCatch({
          `ObservationsCreateLocationPointLatitudeErrorComponent`$public_methods$validateJSON(input)
          `ObservationsCreateLocationPointLatitudeErrorComponent_instance` <- `ObservationsCreateLocationPointLatitudeErrorComponent`$new()
          instance <- `ObservationsCreateLocationPointLatitudeErrorComponent_instance`$fromJSON(input)
          instance_type <- "ObservationsCreateLocationPointLatitudeErrorComponent"
          matched_schemas <- append(matched_schemas, "ObservationsCreateLocationPointLatitudeErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`ObservationsCreateLocationPointLatitudeErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `ObservationsCreateLocationPointLatitudeErrorComponent_result`["message"])
      }

      `ObservationsCreateLocationPointLongitudeErrorComponent_result` <- tryCatch({
          `ObservationsCreateLocationPointLongitudeErrorComponent`$public_methods$validateJSON(input)
          `ObservationsCreateLocationPointLongitudeErrorComponent_instance` <- `ObservationsCreateLocationPointLongitudeErrorComponent`$new()
          instance <- `ObservationsCreateLocationPointLongitudeErrorComponent_instance`$fromJSON(input)
          instance_type <- "ObservationsCreateLocationPointLongitudeErrorComponent"
          matched_schemas <- append(matched_schemas, "ObservationsCreateLocationPointLongitudeErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`ObservationsCreateLocationPointLongitudeErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `ObservationsCreateLocationPointLongitudeErrorComponent_result`["message"])
      }

      `ObservationsCreateNoteErrorComponent_result` <- tryCatch({
          `ObservationsCreateNoteErrorComponent`$public_methods$validateJSON(input)
          `ObservationsCreateNoteErrorComponent_instance` <- `ObservationsCreateNoteErrorComponent`$new()
          instance <- `ObservationsCreateNoteErrorComponent_instance`$fromJSON(input)
          instance_type <- "ObservationsCreateNoteErrorComponent"
          matched_schemas <- append(matched_schemas, "ObservationsCreateNoteErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`ObservationsCreateNoteErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `ObservationsCreateNoteErrorComponent_result`["message"])
      }

      `ObservationsCreateTagsErrorComponent_result` <- tryCatch({
          `ObservationsCreateTagsErrorComponent`$public_methods$validateJSON(input)
          `ObservationsCreateTagsErrorComponent_instance` <- `ObservationsCreateTagsErrorComponent`$new()
          instance <- `ObservationsCreateTagsErrorComponent_instance`$fromJSON(input)
          instance_type <- "ObservationsCreateTagsErrorComponent"
          matched_schemas <- append(matched_schemas, "ObservationsCreateTagsErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`ObservationsCreateTagsErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `ObservationsCreateTagsErrorComponent_result`["message"])
      }

      `ObservationsCreateTagsINDEXErrorComponent_result` <- tryCatch({
          `ObservationsCreateTagsINDEXErrorComponent`$public_methods$validateJSON(input)
          `ObservationsCreateTagsINDEXErrorComponent_instance` <- `ObservationsCreateTagsINDEXErrorComponent`$new()
          instance <- `ObservationsCreateTagsINDEXErrorComponent_instance`$fromJSON(input)
          instance_type <- "ObservationsCreateTagsINDEXErrorComponent"
          matched_schemas <- append(matched_schemas, "ObservationsCreateTagsINDEXErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`ObservationsCreateTagsINDEXErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `ObservationsCreateTagsINDEXErrorComponent_result`["message"])
      }

      `ObservationsCreatePhotosErrorComponent_result` <- tryCatch({
          `ObservationsCreatePhotosErrorComponent`$public_methods$validateJSON(input)
          `ObservationsCreatePhotosErrorComponent_instance` <- `ObservationsCreatePhotosErrorComponent`$new()
          instance <- `ObservationsCreatePhotosErrorComponent_instance`$fromJSON(input)
          instance_type <- "ObservationsCreatePhotosErrorComponent"
          matched_schemas <- append(matched_schemas, "ObservationsCreatePhotosErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`ObservationsCreatePhotosErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `ObservationsCreatePhotosErrorComponent_result`["message"])
      }

      `ObservationsCreatePhotosINDEXErrorComponent_result` <- tryCatch({
          `ObservationsCreatePhotosINDEXErrorComponent`$public_methods$validateJSON(input)
          `ObservationsCreatePhotosINDEXErrorComponent_instance` <- `ObservationsCreatePhotosINDEXErrorComponent`$new()
          instance <- `ObservationsCreatePhotosINDEXErrorComponent_instance`$fromJSON(input)
          instance_type <- "ObservationsCreatePhotosINDEXErrorComponent"
          matched_schemas <- append(matched_schemas, "ObservationsCreatePhotosINDEXErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`ObservationsCreatePhotosINDEXErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `ObservationsCreatePhotosINDEXErrorComponent_result`["message"])
      }

      `ObservationsCreateEventEnvironmentErrorComponent_result` <- tryCatch({
          `ObservationsCreateEventEnvironmentErrorComponent`$public_methods$validateJSON(input)
          `ObservationsCreateEventEnvironmentErrorComponent_instance` <- `ObservationsCreateEventEnvironmentErrorComponent`$new()
          instance <- `ObservationsCreateEventEnvironmentErrorComponent_instance`$fromJSON(input)
          instance_type <- "ObservationsCreateEventEnvironmentErrorComponent"
          matched_schemas <- append(matched_schemas, "ObservationsCreateEventEnvironmentErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`ObservationsCreateEventEnvironmentErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `ObservationsCreateEventEnvironmentErrorComponent_result`["message"])
      }

      `ObservationsCreateEventMomentErrorComponent_result` <- tryCatch({
          `ObservationsCreateEventMomentErrorComponent`$public_methods$validateJSON(input)
          `ObservationsCreateEventMomentErrorComponent_instance` <- `ObservationsCreateEventMomentErrorComponent`$new()
          instance <- `ObservationsCreateEventMomentErrorComponent_instance`$fromJSON(input)
          instance_type <- "ObservationsCreateEventMomentErrorComponent"
          matched_schemas <- append(matched_schemas, "ObservationsCreateEventMomentErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`ObservationsCreateEventMomentErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `ObservationsCreateEventMomentErrorComponent_result`["message"])
      }

      `ObservationsCreateMosquitoAppearanceNonFieldErrorsErrorComponent_result` <- tryCatch({
          `ObservationsCreateMosquitoAppearanceNonFieldErrorsErrorComponent`$public_methods$validateJSON(input)
          `ObservationsCreateMosquitoAppearanceNonFieldErrorsErrorComponent_instance` <- `ObservationsCreateMosquitoAppearanceNonFieldErrorsErrorComponent`$new()
          instance <- `ObservationsCreateMosquitoAppearanceNonFieldErrorsErrorComponent_instance`$fromJSON(input)
          instance_type <- "ObservationsCreateMosquitoAppearanceNonFieldErrorsErrorComponent"
          matched_schemas <- append(matched_schemas, "ObservationsCreateMosquitoAppearanceNonFieldErrorsErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`ObservationsCreateMosquitoAppearanceNonFieldErrorsErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `ObservationsCreateMosquitoAppearanceNonFieldErrorsErrorComponent_result`["message"])
      }

      `ObservationsCreateMosquitoAppearanceSpecieErrorComponent_result` <- tryCatch({
          `ObservationsCreateMosquitoAppearanceSpecieErrorComponent`$public_methods$validateJSON(input)
          `ObservationsCreateMosquitoAppearanceSpecieErrorComponent_instance` <- `ObservationsCreateMosquitoAppearanceSpecieErrorComponent`$new()
          instance <- `ObservationsCreateMosquitoAppearanceSpecieErrorComponent_instance`$fromJSON(input)
          instance_type <- "ObservationsCreateMosquitoAppearanceSpecieErrorComponent"
          matched_schemas <- append(matched_schemas, "ObservationsCreateMosquitoAppearanceSpecieErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`ObservationsCreateMosquitoAppearanceSpecieErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `ObservationsCreateMosquitoAppearanceSpecieErrorComponent_result`["message"])
      }

      `ObservationsCreateMosquitoAppearanceThoraxErrorComponent_result` <- tryCatch({
          `ObservationsCreateMosquitoAppearanceThoraxErrorComponent`$public_methods$validateJSON(input)
          `ObservationsCreateMosquitoAppearanceThoraxErrorComponent_instance` <- `ObservationsCreateMosquitoAppearanceThoraxErrorComponent`$new()
          instance <- `ObservationsCreateMosquitoAppearanceThoraxErrorComponent_instance`$fromJSON(input)
          instance_type <- "ObservationsCreateMosquitoAppearanceThoraxErrorComponent"
          matched_schemas <- append(matched_schemas, "ObservationsCreateMosquitoAppearanceThoraxErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`ObservationsCreateMosquitoAppearanceThoraxErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `ObservationsCreateMosquitoAppearanceThoraxErrorComponent_result`["message"])
      }

      `ObservationsCreateMosquitoAppearanceAbdomenErrorComponent_result` <- tryCatch({
          `ObservationsCreateMosquitoAppearanceAbdomenErrorComponent`$public_methods$validateJSON(input)
          `ObservationsCreateMosquitoAppearanceAbdomenErrorComponent_instance` <- `ObservationsCreateMosquitoAppearanceAbdomenErrorComponent`$new()
          instance <- `ObservationsCreateMosquitoAppearanceAbdomenErrorComponent_instance`$fromJSON(input)
          instance_type <- "ObservationsCreateMosquitoAppearanceAbdomenErrorComponent"
          matched_schemas <- append(matched_schemas, "ObservationsCreateMosquitoAppearanceAbdomenErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`ObservationsCreateMosquitoAppearanceAbdomenErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `ObservationsCreateMosquitoAppearanceAbdomenErrorComponent_result`["message"])
      }

      `ObservationsCreateMosquitoAppearanceLegsErrorComponent_result` <- tryCatch({
          `ObservationsCreateMosquitoAppearanceLegsErrorComponent`$public_methods$validateJSON(input)
          `ObservationsCreateMosquitoAppearanceLegsErrorComponent_instance` <- `ObservationsCreateMosquitoAppearanceLegsErrorComponent`$new()
          instance <- `ObservationsCreateMosquitoAppearanceLegsErrorComponent_instance`$fromJSON(input)
          instance_type <- "ObservationsCreateMosquitoAppearanceLegsErrorComponent"
          matched_schemas <- append(matched_schemas, "ObservationsCreateMosquitoAppearanceLegsErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`ObservationsCreateMosquitoAppearanceLegsErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `ObservationsCreateMosquitoAppearanceLegsErrorComponent_result`["message"])
      }

      if (matched == 1) {
        # successfully match exactly 1 schema specified in oneOf
        self$actual_instance <- instance
        self$actual_type <- instance_type
      } else if (matched > 1) {
        # more than 1 match
        stop(paste("Multiple matches found when deserializing the input into ObservationsCreateError with oneOf schemas ObservationsCreateCreatedAtErrorComponent, ObservationsCreateEventEnvironmentErrorComponent, ObservationsCreateEventMomentErrorComponent, ObservationsCreateLocationNonFieldErrorsErrorComponent, ObservationsCreateLocationPointLatitudeErrorComponent, ObservationsCreateLocationPointLongitudeErrorComponent, ObservationsCreateLocationPointNonFieldErrorsErrorComponent, ObservationsCreateLocationSourceErrorComponent, ObservationsCreateMosquitoAppearanceAbdomenErrorComponent, ObservationsCreateMosquitoAppearanceLegsErrorComponent, ObservationsCreateMosquitoAppearanceNonFieldErrorsErrorComponent, ObservationsCreateMosquitoAppearanceSpecieErrorComponent, ObservationsCreateMosquitoAppearanceThoraxErrorComponent, ObservationsCreateNonFieldErrorsErrorComponent, ObservationsCreateNoteErrorComponent, ObservationsCreatePhotosErrorComponent, ObservationsCreatePhotosINDEXErrorComponent, ObservationsCreateSentAtErrorComponent, ObservationsCreateTagsErrorComponent, ObservationsCreateTagsINDEXErrorComponent. Matched schemas: ",
                   paste(matched_schemas, collapse = ", ")))
      } else {
        # no match
        stop(paste("No match found when deserializing the input into ObservationsCreateError with oneOf schemas ObservationsCreateCreatedAtErrorComponent, ObservationsCreateEventEnvironmentErrorComponent, ObservationsCreateEventMomentErrorComponent, ObservationsCreateLocationNonFieldErrorsErrorComponent, ObservationsCreateLocationPointLatitudeErrorComponent, ObservationsCreateLocationPointLongitudeErrorComponent, ObservationsCreateLocationPointNonFieldErrorsErrorComponent, ObservationsCreateLocationSourceErrorComponent, ObservationsCreateMosquitoAppearanceAbdomenErrorComponent, ObservationsCreateMosquitoAppearanceLegsErrorComponent, ObservationsCreateMosquitoAppearanceNonFieldErrorsErrorComponent, ObservationsCreateMosquitoAppearanceSpecieErrorComponent, ObservationsCreateMosquitoAppearanceThoraxErrorComponent, ObservationsCreateNonFieldErrorsErrorComponent, ObservationsCreateNoteErrorComponent, ObservationsCreatePhotosErrorComponent, ObservationsCreatePhotosINDEXErrorComponent, ObservationsCreateSentAtErrorComponent, ObservationsCreateTagsErrorComponent, ObservationsCreateTagsINDEXErrorComponent. Details: >>",
                   paste(error_messages, collapse = " >> ")))
      }

      self
    },

    #' @description
    #' Serialize ObservationsCreateError to JSON string.
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return JSON string representation of the ObservationsCreateError.
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
    #' Convert ObservationsCreateError to a base R type
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
    #' Validate the input JSON with respect to ObservationsCreateError and
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
#ObservationsCreateError$unlock()
#
## Below is an example to define the print function
#ObservationsCreateError$set("public", "print", function(...) {
#  print(jsonlite::prettify(self$toJSONString()))
#  invisible(self)
#})
## Uncomment below to lock the class to prevent modifications to the method or field
#ObservationsCreateError$lock()

