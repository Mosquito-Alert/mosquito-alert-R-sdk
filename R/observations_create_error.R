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
    one_of = list("ObservationsCreateCreatedAtErrorComponent", "ObservationsCreateEventEnvironmentErrorComponent", "ObservationsCreateEventMomentErrorComponent", "ObservationsCreateLocationNonFieldErrorsErrorComponent", "ObservationsCreateLocationPointErrorComponent", "ObservationsCreateLocationTypeErrorComponent", "ObservationsCreateNonFieldErrorsErrorComponent", "ObservationsCreateNoteErrorComponent", "ObservationsCreatePhotosINDEXFileErrorComponent", "ObservationsCreatePhotosINDEXNonFieldErrorsErrorComponent", "ObservationsCreatePhotosNonFieldErrorsErrorComponent", "ObservationsCreateSentAtErrorComponent", "ObservationsCreateTagsErrorComponent", "ObservationsCreateTagsINDEXErrorComponent", "ObservationsCreateUserPerceivedMosquitoAbdomenErrorComponent", "ObservationsCreateUserPerceivedMosquitoLegsErrorComponent", "ObservationsCreateUserPerceivedMosquitoSpecieErrorComponent", "ObservationsCreateUserPerceivedMosquitoThoraxErrorComponent"),

    #' @description
    #' Initialize a new ObservationsCreateError.
    #'
    #' @param instance an instance of the object defined in the oneOf schemas: "ObservationsCreateCreatedAtErrorComponent", "ObservationsCreateEventEnvironmentErrorComponent", "ObservationsCreateEventMomentErrorComponent", "ObservationsCreateLocationNonFieldErrorsErrorComponent", "ObservationsCreateLocationPointErrorComponent", "ObservationsCreateLocationTypeErrorComponent", "ObservationsCreateNonFieldErrorsErrorComponent", "ObservationsCreateNoteErrorComponent", "ObservationsCreatePhotosINDEXFileErrorComponent", "ObservationsCreatePhotosINDEXNonFieldErrorsErrorComponent", "ObservationsCreatePhotosNonFieldErrorsErrorComponent", "ObservationsCreateSentAtErrorComponent", "ObservationsCreateTagsErrorComponent", "ObservationsCreateTagsINDEXErrorComponent", "ObservationsCreateUserPerceivedMosquitoAbdomenErrorComponent", "ObservationsCreateUserPerceivedMosquitoLegsErrorComponent", "ObservationsCreateUserPerceivedMosquitoSpecieErrorComponent", "ObservationsCreateUserPerceivedMosquitoThoraxErrorComponent"
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
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "ObservationsCreateLocationPointErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "ObservationsCreateLocationPointErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "ObservationsCreateLocationTypeErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "ObservationsCreateLocationTypeErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "ObservationsCreateNonFieldErrorsErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "ObservationsCreateNonFieldErrorsErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "ObservationsCreateNoteErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "ObservationsCreateNoteErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "ObservationsCreatePhotosINDEXFileErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "ObservationsCreatePhotosINDEXFileErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "ObservationsCreatePhotosINDEXNonFieldErrorsErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "ObservationsCreatePhotosINDEXNonFieldErrorsErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "ObservationsCreatePhotosNonFieldErrorsErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "ObservationsCreatePhotosNonFieldErrorsErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "ObservationsCreateSentAtErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "ObservationsCreateSentAtErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "ObservationsCreateTagsErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "ObservationsCreateTagsErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "ObservationsCreateTagsINDEXErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "ObservationsCreateTagsINDEXErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "ObservationsCreateUserPerceivedMosquitoAbdomenErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "ObservationsCreateUserPerceivedMosquitoAbdomenErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "ObservationsCreateUserPerceivedMosquitoLegsErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "ObservationsCreateUserPerceivedMosquitoLegsErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "ObservationsCreateUserPerceivedMosquitoSpecieErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "ObservationsCreateUserPerceivedMosquitoSpecieErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "ObservationsCreateUserPerceivedMosquitoThoraxErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "ObservationsCreateUserPerceivedMosquitoThoraxErrorComponent"
      } else {
        stop(paste("Failed to initialize ObservationsCreateError with oneOf schemas ObservationsCreateCreatedAtErrorComponent, ObservationsCreateEventEnvironmentErrorComponent, ObservationsCreateEventMomentErrorComponent, ObservationsCreateLocationNonFieldErrorsErrorComponent, ObservationsCreateLocationPointErrorComponent, ObservationsCreateLocationTypeErrorComponent, ObservationsCreateNonFieldErrorsErrorComponent, ObservationsCreateNoteErrorComponent, ObservationsCreatePhotosINDEXFileErrorComponent, ObservationsCreatePhotosINDEXNonFieldErrorsErrorComponent, ObservationsCreatePhotosNonFieldErrorsErrorComponent, ObservationsCreateSentAtErrorComponent, ObservationsCreateTagsErrorComponent, ObservationsCreateTagsINDEXErrorComponent, ObservationsCreateUserPerceivedMosquitoAbdomenErrorComponent, ObservationsCreateUserPerceivedMosquitoLegsErrorComponent, ObservationsCreateUserPerceivedMosquitoSpecieErrorComponent, ObservationsCreateUserPerceivedMosquitoThoraxErrorComponent. Provided class name: ",
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

      `ObservationsCreateLocationTypeErrorComponent_result` <- tryCatch({
          `ObservationsCreateLocationTypeErrorComponent`$public_methods$validateJSON(input)
          `ObservationsCreateLocationTypeErrorComponent_instance` <- `ObservationsCreateLocationTypeErrorComponent`$new()
          instance <- `ObservationsCreateLocationTypeErrorComponent_instance`$fromJSON(input)
          instance_type <- "ObservationsCreateLocationTypeErrorComponent"
          matched_schemas <- append(matched_schemas, "ObservationsCreateLocationTypeErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`ObservationsCreateLocationTypeErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `ObservationsCreateLocationTypeErrorComponent_result`["message"])
      }

      `ObservationsCreateLocationPointErrorComponent_result` <- tryCatch({
          `ObservationsCreateLocationPointErrorComponent`$public_methods$validateJSON(input)
          `ObservationsCreateLocationPointErrorComponent_instance` <- `ObservationsCreateLocationPointErrorComponent`$new()
          instance <- `ObservationsCreateLocationPointErrorComponent_instance`$fromJSON(input)
          instance_type <- "ObservationsCreateLocationPointErrorComponent"
          matched_schemas <- append(matched_schemas, "ObservationsCreateLocationPointErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`ObservationsCreateLocationPointErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `ObservationsCreateLocationPointErrorComponent_result`["message"])
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

      `ObservationsCreatePhotosNonFieldErrorsErrorComponent_result` <- tryCatch({
          `ObservationsCreatePhotosNonFieldErrorsErrorComponent`$public_methods$validateJSON(input)
          `ObservationsCreatePhotosNonFieldErrorsErrorComponent_instance` <- `ObservationsCreatePhotosNonFieldErrorsErrorComponent`$new()
          instance <- `ObservationsCreatePhotosNonFieldErrorsErrorComponent_instance`$fromJSON(input)
          instance_type <- "ObservationsCreatePhotosNonFieldErrorsErrorComponent"
          matched_schemas <- append(matched_schemas, "ObservationsCreatePhotosNonFieldErrorsErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`ObservationsCreatePhotosNonFieldErrorsErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `ObservationsCreatePhotosNonFieldErrorsErrorComponent_result`["message"])
      }

      `ObservationsCreatePhotosINDEXNonFieldErrorsErrorComponent_result` <- tryCatch({
          `ObservationsCreatePhotosINDEXNonFieldErrorsErrorComponent`$public_methods$validateJSON(input)
          `ObservationsCreatePhotosINDEXNonFieldErrorsErrorComponent_instance` <- `ObservationsCreatePhotosINDEXNonFieldErrorsErrorComponent`$new()
          instance <- `ObservationsCreatePhotosINDEXNonFieldErrorsErrorComponent_instance`$fromJSON(input)
          instance_type <- "ObservationsCreatePhotosINDEXNonFieldErrorsErrorComponent"
          matched_schemas <- append(matched_schemas, "ObservationsCreatePhotosINDEXNonFieldErrorsErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`ObservationsCreatePhotosINDEXNonFieldErrorsErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `ObservationsCreatePhotosINDEXNonFieldErrorsErrorComponent_result`["message"])
      }

      `ObservationsCreatePhotosINDEXFileErrorComponent_result` <- tryCatch({
          `ObservationsCreatePhotosINDEXFileErrorComponent`$public_methods$validateJSON(input)
          `ObservationsCreatePhotosINDEXFileErrorComponent_instance` <- `ObservationsCreatePhotosINDEXFileErrorComponent`$new()
          instance <- `ObservationsCreatePhotosINDEXFileErrorComponent_instance`$fromJSON(input)
          instance_type <- "ObservationsCreatePhotosINDEXFileErrorComponent"
          matched_schemas <- append(matched_schemas, "ObservationsCreatePhotosINDEXFileErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`ObservationsCreatePhotosINDEXFileErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `ObservationsCreatePhotosINDEXFileErrorComponent_result`["message"])
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

      `ObservationsCreateUserPerceivedMosquitoSpecieErrorComponent_result` <- tryCatch({
          `ObservationsCreateUserPerceivedMosquitoSpecieErrorComponent`$public_methods$validateJSON(input)
          `ObservationsCreateUserPerceivedMosquitoSpecieErrorComponent_instance` <- `ObservationsCreateUserPerceivedMosquitoSpecieErrorComponent`$new()
          instance <- `ObservationsCreateUserPerceivedMosquitoSpecieErrorComponent_instance`$fromJSON(input)
          instance_type <- "ObservationsCreateUserPerceivedMosquitoSpecieErrorComponent"
          matched_schemas <- append(matched_schemas, "ObservationsCreateUserPerceivedMosquitoSpecieErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`ObservationsCreateUserPerceivedMosquitoSpecieErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `ObservationsCreateUserPerceivedMosquitoSpecieErrorComponent_result`["message"])
      }

      `ObservationsCreateUserPerceivedMosquitoThoraxErrorComponent_result` <- tryCatch({
          `ObservationsCreateUserPerceivedMosquitoThoraxErrorComponent`$public_methods$validateJSON(input)
          `ObservationsCreateUserPerceivedMosquitoThoraxErrorComponent_instance` <- `ObservationsCreateUserPerceivedMosquitoThoraxErrorComponent`$new()
          instance <- `ObservationsCreateUserPerceivedMosquitoThoraxErrorComponent_instance`$fromJSON(input)
          instance_type <- "ObservationsCreateUserPerceivedMosquitoThoraxErrorComponent"
          matched_schemas <- append(matched_schemas, "ObservationsCreateUserPerceivedMosquitoThoraxErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`ObservationsCreateUserPerceivedMosquitoThoraxErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `ObservationsCreateUserPerceivedMosquitoThoraxErrorComponent_result`["message"])
      }

      `ObservationsCreateUserPerceivedMosquitoAbdomenErrorComponent_result` <- tryCatch({
          `ObservationsCreateUserPerceivedMosquitoAbdomenErrorComponent`$public_methods$validateJSON(input)
          `ObservationsCreateUserPerceivedMosquitoAbdomenErrorComponent_instance` <- `ObservationsCreateUserPerceivedMosquitoAbdomenErrorComponent`$new()
          instance <- `ObservationsCreateUserPerceivedMosquitoAbdomenErrorComponent_instance`$fromJSON(input)
          instance_type <- "ObservationsCreateUserPerceivedMosquitoAbdomenErrorComponent"
          matched_schemas <- append(matched_schemas, "ObservationsCreateUserPerceivedMosquitoAbdomenErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`ObservationsCreateUserPerceivedMosquitoAbdomenErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `ObservationsCreateUserPerceivedMosquitoAbdomenErrorComponent_result`["message"])
      }

      `ObservationsCreateUserPerceivedMosquitoLegsErrorComponent_result` <- tryCatch({
          `ObservationsCreateUserPerceivedMosquitoLegsErrorComponent`$public_methods$validateJSON(input)
          `ObservationsCreateUserPerceivedMosquitoLegsErrorComponent_instance` <- `ObservationsCreateUserPerceivedMosquitoLegsErrorComponent`$new()
          instance <- `ObservationsCreateUserPerceivedMosquitoLegsErrorComponent_instance`$fromJSON(input)
          instance_type <- "ObservationsCreateUserPerceivedMosquitoLegsErrorComponent"
          matched_schemas <- append(matched_schemas, "ObservationsCreateUserPerceivedMosquitoLegsErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`ObservationsCreateUserPerceivedMosquitoLegsErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `ObservationsCreateUserPerceivedMosquitoLegsErrorComponent_result`["message"])
      }

      if (matched == 1) {
        # successfully match exactly 1 schema specified in oneOf
        self$actual_instance <- instance
        self$actual_type <- instance_type
      } else if (matched > 1) {
        # more than 1 match
        stop(paste("Multiple matches found when deserializing the input into ObservationsCreateError with oneOf schemas ObservationsCreateCreatedAtErrorComponent, ObservationsCreateEventEnvironmentErrorComponent, ObservationsCreateEventMomentErrorComponent, ObservationsCreateLocationNonFieldErrorsErrorComponent, ObservationsCreateLocationPointErrorComponent, ObservationsCreateLocationTypeErrorComponent, ObservationsCreateNonFieldErrorsErrorComponent, ObservationsCreateNoteErrorComponent, ObservationsCreatePhotosINDEXFileErrorComponent, ObservationsCreatePhotosINDEXNonFieldErrorsErrorComponent, ObservationsCreatePhotosNonFieldErrorsErrorComponent, ObservationsCreateSentAtErrorComponent, ObservationsCreateTagsErrorComponent, ObservationsCreateTagsINDEXErrorComponent, ObservationsCreateUserPerceivedMosquitoAbdomenErrorComponent, ObservationsCreateUserPerceivedMosquitoLegsErrorComponent, ObservationsCreateUserPerceivedMosquitoSpecieErrorComponent, ObservationsCreateUserPerceivedMosquitoThoraxErrorComponent. Matched schemas: ",
                   paste(matched_schemas, collapse = ", ")))
      } else {
        # no match
        stop(paste("No match found when deserializing the input into ObservationsCreateError with oneOf schemas ObservationsCreateCreatedAtErrorComponent, ObservationsCreateEventEnvironmentErrorComponent, ObservationsCreateEventMomentErrorComponent, ObservationsCreateLocationNonFieldErrorsErrorComponent, ObservationsCreateLocationPointErrorComponent, ObservationsCreateLocationTypeErrorComponent, ObservationsCreateNonFieldErrorsErrorComponent, ObservationsCreateNoteErrorComponent, ObservationsCreatePhotosINDEXFileErrorComponent, ObservationsCreatePhotosINDEXNonFieldErrorsErrorComponent, ObservationsCreatePhotosNonFieldErrorsErrorComponent, ObservationsCreateSentAtErrorComponent, ObservationsCreateTagsErrorComponent, ObservationsCreateTagsINDEXErrorComponent, ObservationsCreateUserPerceivedMosquitoAbdomenErrorComponent, ObservationsCreateUserPerceivedMosquitoLegsErrorComponent, ObservationsCreateUserPerceivedMosquitoSpecieErrorComponent, ObservationsCreateUserPerceivedMosquitoThoraxErrorComponent. Details: >>",
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

