#' @docType class
#' @title BitesCreateError
#'
#' @description BitesCreateError Class
#'
#' @format An \code{R6Class} generator object
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
BitesCreateError <- R6::R6Class(
  "BitesCreateError",
  public = list(
    #' @field actual_instance the object stored in this instance.
    actual_instance = NULL,
    #' @field actual_type the type of the object stored in this instance.
    actual_type = NULL,
    #' @field one_of  a list of types defined in the oneOf schema.
    one_of = list("BitesCreateCountsChestErrorComponent", "BitesCreateCountsHeadErrorComponent", "BitesCreateCountsLeftArmErrorComponent", "BitesCreateCountsLeftLegErrorComponent", "BitesCreateCountsNonFieldErrorsErrorComponent", "BitesCreateCountsRightArmErrorComponent", "BitesCreateCountsRightLegErrorComponent", "BitesCreateCreatedAtErrorComponent", "BitesCreateEventEnvironmentErrorComponent", "BitesCreateEventMomentErrorComponent", "BitesCreateLocationNonFieldErrorsErrorComponent", "BitesCreateLocationPointLatitudeErrorComponent", "BitesCreateLocationPointLongitudeErrorComponent", "BitesCreateLocationPointNonFieldErrorsErrorComponent", "BitesCreateLocationSourceErrorComponent", "BitesCreateNonFieldErrorsErrorComponent", "BitesCreateNoteErrorComponent", "BitesCreateSentAtErrorComponent", "BitesCreateTagsErrorComponent", "BitesCreateTagsINDEXErrorComponent"),

    #' @description
    #' Initialize a new BitesCreateError.
    #'
    #' @param instance an instance of the object defined in the oneOf schemas: "BitesCreateCountsChestErrorComponent", "BitesCreateCountsHeadErrorComponent", "BitesCreateCountsLeftArmErrorComponent", "BitesCreateCountsLeftLegErrorComponent", "BitesCreateCountsNonFieldErrorsErrorComponent", "BitesCreateCountsRightArmErrorComponent", "BitesCreateCountsRightLegErrorComponent", "BitesCreateCreatedAtErrorComponent", "BitesCreateEventEnvironmentErrorComponent", "BitesCreateEventMomentErrorComponent", "BitesCreateLocationNonFieldErrorsErrorComponent", "BitesCreateLocationPointLatitudeErrorComponent", "BitesCreateLocationPointLongitudeErrorComponent", "BitesCreateLocationPointNonFieldErrorsErrorComponent", "BitesCreateLocationSourceErrorComponent", "BitesCreateNonFieldErrorsErrorComponent", "BitesCreateNoteErrorComponent", "BitesCreateSentAtErrorComponent", "BitesCreateTagsErrorComponent", "BitesCreateTagsINDEXErrorComponent"
    initialize = function(instance = NULL) {
      if (is.null(instance)) {
        # do nothing
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "BitesCreateCountsChestErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "BitesCreateCountsChestErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "BitesCreateCountsHeadErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "BitesCreateCountsHeadErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "BitesCreateCountsLeftArmErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "BitesCreateCountsLeftArmErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "BitesCreateCountsLeftLegErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "BitesCreateCountsLeftLegErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "BitesCreateCountsNonFieldErrorsErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "BitesCreateCountsNonFieldErrorsErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "BitesCreateCountsRightArmErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "BitesCreateCountsRightArmErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "BitesCreateCountsRightLegErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "BitesCreateCountsRightLegErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "BitesCreateCreatedAtErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "BitesCreateCreatedAtErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "BitesCreateEventEnvironmentErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "BitesCreateEventEnvironmentErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "BitesCreateEventMomentErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "BitesCreateEventMomentErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "BitesCreateLocationNonFieldErrorsErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "BitesCreateLocationNonFieldErrorsErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "BitesCreateLocationPointLatitudeErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "BitesCreateLocationPointLatitudeErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "BitesCreateLocationPointLongitudeErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "BitesCreateLocationPointLongitudeErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "BitesCreateLocationPointNonFieldErrorsErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "BitesCreateLocationPointNonFieldErrorsErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "BitesCreateLocationSourceErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "BitesCreateLocationSourceErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "BitesCreateNonFieldErrorsErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "BitesCreateNonFieldErrorsErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "BitesCreateNoteErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "BitesCreateNoteErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "BitesCreateSentAtErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "BitesCreateSentAtErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "BitesCreateTagsErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "BitesCreateTagsErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "BitesCreateTagsINDEXErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "BitesCreateTagsINDEXErrorComponent"
      } else {
        stop(paste("Failed to initialize BitesCreateError with oneOf schemas BitesCreateCountsChestErrorComponent, BitesCreateCountsHeadErrorComponent, BitesCreateCountsLeftArmErrorComponent, BitesCreateCountsLeftLegErrorComponent, BitesCreateCountsNonFieldErrorsErrorComponent, BitesCreateCountsRightArmErrorComponent, BitesCreateCountsRightLegErrorComponent, BitesCreateCreatedAtErrorComponent, BitesCreateEventEnvironmentErrorComponent, BitesCreateEventMomentErrorComponent, BitesCreateLocationNonFieldErrorsErrorComponent, BitesCreateLocationPointLatitudeErrorComponent, BitesCreateLocationPointLongitudeErrorComponent, BitesCreateLocationPointNonFieldErrorsErrorComponent, BitesCreateLocationSourceErrorComponent, BitesCreateNonFieldErrorsErrorComponent, BitesCreateNoteErrorComponent, BitesCreateSentAtErrorComponent, BitesCreateTagsErrorComponent, BitesCreateTagsINDEXErrorComponent. Provided class name: ",
                   get(class(instance)[[1]], pos = -1)$classname))
      }
    },

    #' @description
    #' Deserialize JSON string into an instance of BitesCreateError.
    #' An alias to the method `fromJSON` .
    #'
    #' @param input The input JSON.
    #'
    #' @return An instance of BitesCreateError.
    fromJSONString = function(input) {
      self$fromJSON(input)
    },

    #' @description
    #' Deserialize JSON string into an instance of BitesCreateError.
    #'
    #' @param input The input JSON.
    #'
    #' @return An instance of BitesCreateError.
    fromJSON = function(input) {
      matched <- 0 # match counter
      matched_schemas <- list() #names of matched schemas
      error_messages <- list()
      instance <- NULL

      `BitesCreateNonFieldErrorsErrorComponent_result` <- tryCatch({
          `BitesCreateNonFieldErrorsErrorComponent`$public_methods$validateJSON(input)
          `BitesCreateNonFieldErrorsErrorComponent_instance` <- `BitesCreateNonFieldErrorsErrorComponent`$new()
          instance <- `BitesCreateNonFieldErrorsErrorComponent_instance`$fromJSON(input)
          instance_type <- "BitesCreateNonFieldErrorsErrorComponent"
          matched_schemas <- append(matched_schemas, "BitesCreateNonFieldErrorsErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`BitesCreateNonFieldErrorsErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `BitesCreateNonFieldErrorsErrorComponent_result`["message"])
      }

      `BitesCreateCreatedAtErrorComponent_result` <- tryCatch({
          `BitesCreateCreatedAtErrorComponent`$public_methods$validateJSON(input)
          `BitesCreateCreatedAtErrorComponent_instance` <- `BitesCreateCreatedAtErrorComponent`$new()
          instance <- `BitesCreateCreatedAtErrorComponent_instance`$fromJSON(input)
          instance_type <- "BitesCreateCreatedAtErrorComponent"
          matched_schemas <- append(matched_schemas, "BitesCreateCreatedAtErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`BitesCreateCreatedAtErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `BitesCreateCreatedAtErrorComponent_result`["message"])
      }

      `BitesCreateSentAtErrorComponent_result` <- tryCatch({
          `BitesCreateSentAtErrorComponent`$public_methods$validateJSON(input)
          `BitesCreateSentAtErrorComponent_instance` <- `BitesCreateSentAtErrorComponent`$new()
          instance <- `BitesCreateSentAtErrorComponent_instance`$fromJSON(input)
          instance_type <- "BitesCreateSentAtErrorComponent"
          matched_schemas <- append(matched_schemas, "BitesCreateSentAtErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`BitesCreateSentAtErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `BitesCreateSentAtErrorComponent_result`["message"])
      }

      `BitesCreateLocationNonFieldErrorsErrorComponent_result` <- tryCatch({
          `BitesCreateLocationNonFieldErrorsErrorComponent`$public_methods$validateJSON(input)
          `BitesCreateLocationNonFieldErrorsErrorComponent_instance` <- `BitesCreateLocationNonFieldErrorsErrorComponent`$new()
          instance <- `BitesCreateLocationNonFieldErrorsErrorComponent_instance`$fromJSON(input)
          instance_type <- "BitesCreateLocationNonFieldErrorsErrorComponent"
          matched_schemas <- append(matched_schemas, "BitesCreateLocationNonFieldErrorsErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`BitesCreateLocationNonFieldErrorsErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `BitesCreateLocationNonFieldErrorsErrorComponent_result`["message"])
      }

      `BitesCreateLocationSourceErrorComponent_result` <- tryCatch({
          `BitesCreateLocationSourceErrorComponent`$public_methods$validateJSON(input)
          `BitesCreateLocationSourceErrorComponent_instance` <- `BitesCreateLocationSourceErrorComponent`$new()
          instance <- `BitesCreateLocationSourceErrorComponent_instance`$fromJSON(input)
          instance_type <- "BitesCreateLocationSourceErrorComponent"
          matched_schemas <- append(matched_schemas, "BitesCreateLocationSourceErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`BitesCreateLocationSourceErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `BitesCreateLocationSourceErrorComponent_result`["message"])
      }

      `BitesCreateLocationPointNonFieldErrorsErrorComponent_result` <- tryCatch({
          `BitesCreateLocationPointNonFieldErrorsErrorComponent`$public_methods$validateJSON(input)
          `BitesCreateLocationPointNonFieldErrorsErrorComponent_instance` <- `BitesCreateLocationPointNonFieldErrorsErrorComponent`$new()
          instance <- `BitesCreateLocationPointNonFieldErrorsErrorComponent_instance`$fromJSON(input)
          instance_type <- "BitesCreateLocationPointNonFieldErrorsErrorComponent"
          matched_schemas <- append(matched_schemas, "BitesCreateLocationPointNonFieldErrorsErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`BitesCreateLocationPointNonFieldErrorsErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `BitesCreateLocationPointNonFieldErrorsErrorComponent_result`["message"])
      }

      `BitesCreateLocationPointLatitudeErrorComponent_result` <- tryCatch({
          `BitesCreateLocationPointLatitudeErrorComponent`$public_methods$validateJSON(input)
          `BitesCreateLocationPointLatitudeErrorComponent_instance` <- `BitesCreateLocationPointLatitudeErrorComponent`$new()
          instance <- `BitesCreateLocationPointLatitudeErrorComponent_instance`$fromJSON(input)
          instance_type <- "BitesCreateLocationPointLatitudeErrorComponent"
          matched_schemas <- append(matched_schemas, "BitesCreateLocationPointLatitudeErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`BitesCreateLocationPointLatitudeErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `BitesCreateLocationPointLatitudeErrorComponent_result`["message"])
      }

      `BitesCreateLocationPointLongitudeErrorComponent_result` <- tryCatch({
          `BitesCreateLocationPointLongitudeErrorComponent`$public_methods$validateJSON(input)
          `BitesCreateLocationPointLongitudeErrorComponent_instance` <- `BitesCreateLocationPointLongitudeErrorComponent`$new()
          instance <- `BitesCreateLocationPointLongitudeErrorComponent_instance`$fromJSON(input)
          instance_type <- "BitesCreateLocationPointLongitudeErrorComponent"
          matched_schemas <- append(matched_schemas, "BitesCreateLocationPointLongitudeErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`BitesCreateLocationPointLongitudeErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `BitesCreateLocationPointLongitudeErrorComponent_result`["message"])
      }

      `BitesCreateNoteErrorComponent_result` <- tryCatch({
          `BitesCreateNoteErrorComponent`$public_methods$validateJSON(input)
          `BitesCreateNoteErrorComponent_instance` <- `BitesCreateNoteErrorComponent`$new()
          instance <- `BitesCreateNoteErrorComponent_instance`$fromJSON(input)
          instance_type <- "BitesCreateNoteErrorComponent"
          matched_schemas <- append(matched_schemas, "BitesCreateNoteErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`BitesCreateNoteErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `BitesCreateNoteErrorComponent_result`["message"])
      }

      `BitesCreateTagsErrorComponent_result` <- tryCatch({
          `BitesCreateTagsErrorComponent`$public_methods$validateJSON(input)
          `BitesCreateTagsErrorComponent_instance` <- `BitesCreateTagsErrorComponent`$new()
          instance <- `BitesCreateTagsErrorComponent_instance`$fromJSON(input)
          instance_type <- "BitesCreateTagsErrorComponent"
          matched_schemas <- append(matched_schemas, "BitesCreateTagsErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`BitesCreateTagsErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `BitesCreateTagsErrorComponent_result`["message"])
      }

      `BitesCreateTagsINDEXErrorComponent_result` <- tryCatch({
          `BitesCreateTagsINDEXErrorComponent`$public_methods$validateJSON(input)
          `BitesCreateTagsINDEXErrorComponent_instance` <- `BitesCreateTagsINDEXErrorComponent`$new()
          instance <- `BitesCreateTagsINDEXErrorComponent_instance`$fromJSON(input)
          instance_type <- "BitesCreateTagsINDEXErrorComponent"
          matched_schemas <- append(matched_schemas, "BitesCreateTagsINDEXErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`BitesCreateTagsINDEXErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `BitesCreateTagsINDEXErrorComponent_result`["message"])
      }

      `BitesCreateEventEnvironmentErrorComponent_result` <- tryCatch({
          `BitesCreateEventEnvironmentErrorComponent`$public_methods$validateJSON(input)
          `BitesCreateEventEnvironmentErrorComponent_instance` <- `BitesCreateEventEnvironmentErrorComponent`$new()
          instance <- `BitesCreateEventEnvironmentErrorComponent_instance`$fromJSON(input)
          instance_type <- "BitesCreateEventEnvironmentErrorComponent"
          matched_schemas <- append(matched_schemas, "BitesCreateEventEnvironmentErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`BitesCreateEventEnvironmentErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `BitesCreateEventEnvironmentErrorComponent_result`["message"])
      }

      `BitesCreateEventMomentErrorComponent_result` <- tryCatch({
          `BitesCreateEventMomentErrorComponent`$public_methods$validateJSON(input)
          `BitesCreateEventMomentErrorComponent_instance` <- `BitesCreateEventMomentErrorComponent`$new()
          instance <- `BitesCreateEventMomentErrorComponent_instance`$fromJSON(input)
          instance_type <- "BitesCreateEventMomentErrorComponent"
          matched_schemas <- append(matched_schemas, "BitesCreateEventMomentErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`BitesCreateEventMomentErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `BitesCreateEventMomentErrorComponent_result`["message"])
      }

      `BitesCreateCountsNonFieldErrorsErrorComponent_result` <- tryCatch({
          `BitesCreateCountsNonFieldErrorsErrorComponent`$public_methods$validateJSON(input)
          `BitesCreateCountsNonFieldErrorsErrorComponent_instance` <- `BitesCreateCountsNonFieldErrorsErrorComponent`$new()
          instance <- `BitesCreateCountsNonFieldErrorsErrorComponent_instance`$fromJSON(input)
          instance_type <- "BitesCreateCountsNonFieldErrorsErrorComponent"
          matched_schemas <- append(matched_schemas, "BitesCreateCountsNonFieldErrorsErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`BitesCreateCountsNonFieldErrorsErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `BitesCreateCountsNonFieldErrorsErrorComponent_result`["message"])
      }

      `BitesCreateCountsHeadErrorComponent_result` <- tryCatch({
          `BitesCreateCountsHeadErrorComponent`$public_methods$validateJSON(input)
          `BitesCreateCountsHeadErrorComponent_instance` <- `BitesCreateCountsHeadErrorComponent`$new()
          instance <- `BitesCreateCountsHeadErrorComponent_instance`$fromJSON(input)
          instance_type <- "BitesCreateCountsHeadErrorComponent"
          matched_schemas <- append(matched_schemas, "BitesCreateCountsHeadErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`BitesCreateCountsHeadErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `BitesCreateCountsHeadErrorComponent_result`["message"])
      }

      `BitesCreateCountsLeftArmErrorComponent_result` <- tryCatch({
          `BitesCreateCountsLeftArmErrorComponent`$public_methods$validateJSON(input)
          `BitesCreateCountsLeftArmErrorComponent_instance` <- `BitesCreateCountsLeftArmErrorComponent`$new()
          instance <- `BitesCreateCountsLeftArmErrorComponent_instance`$fromJSON(input)
          instance_type <- "BitesCreateCountsLeftArmErrorComponent"
          matched_schemas <- append(matched_schemas, "BitesCreateCountsLeftArmErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`BitesCreateCountsLeftArmErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `BitesCreateCountsLeftArmErrorComponent_result`["message"])
      }

      `BitesCreateCountsRightArmErrorComponent_result` <- tryCatch({
          `BitesCreateCountsRightArmErrorComponent`$public_methods$validateJSON(input)
          `BitesCreateCountsRightArmErrorComponent_instance` <- `BitesCreateCountsRightArmErrorComponent`$new()
          instance <- `BitesCreateCountsRightArmErrorComponent_instance`$fromJSON(input)
          instance_type <- "BitesCreateCountsRightArmErrorComponent"
          matched_schemas <- append(matched_schemas, "BitesCreateCountsRightArmErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`BitesCreateCountsRightArmErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `BitesCreateCountsRightArmErrorComponent_result`["message"])
      }

      `BitesCreateCountsChestErrorComponent_result` <- tryCatch({
          `BitesCreateCountsChestErrorComponent`$public_methods$validateJSON(input)
          `BitesCreateCountsChestErrorComponent_instance` <- `BitesCreateCountsChestErrorComponent`$new()
          instance <- `BitesCreateCountsChestErrorComponent_instance`$fromJSON(input)
          instance_type <- "BitesCreateCountsChestErrorComponent"
          matched_schemas <- append(matched_schemas, "BitesCreateCountsChestErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`BitesCreateCountsChestErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `BitesCreateCountsChestErrorComponent_result`["message"])
      }

      `BitesCreateCountsLeftLegErrorComponent_result` <- tryCatch({
          `BitesCreateCountsLeftLegErrorComponent`$public_methods$validateJSON(input)
          `BitesCreateCountsLeftLegErrorComponent_instance` <- `BitesCreateCountsLeftLegErrorComponent`$new()
          instance <- `BitesCreateCountsLeftLegErrorComponent_instance`$fromJSON(input)
          instance_type <- "BitesCreateCountsLeftLegErrorComponent"
          matched_schemas <- append(matched_schemas, "BitesCreateCountsLeftLegErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`BitesCreateCountsLeftLegErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `BitesCreateCountsLeftLegErrorComponent_result`["message"])
      }

      `BitesCreateCountsRightLegErrorComponent_result` <- tryCatch({
          `BitesCreateCountsRightLegErrorComponent`$public_methods$validateJSON(input)
          `BitesCreateCountsRightLegErrorComponent_instance` <- `BitesCreateCountsRightLegErrorComponent`$new()
          instance <- `BitesCreateCountsRightLegErrorComponent_instance`$fromJSON(input)
          instance_type <- "BitesCreateCountsRightLegErrorComponent"
          matched_schemas <- append(matched_schemas, "BitesCreateCountsRightLegErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`BitesCreateCountsRightLegErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `BitesCreateCountsRightLegErrorComponent_result`["message"])
      }

      if (matched == 1) {
        # successfully match exactly 1 schema specified in oneOf
        self$actual_instance <- instance
        self$actual_type <- instance_type
      } else if (matched > 1) {
        # more than 1 match
        stop(paste("Multiple matches found when deserializing the input into BitesCreateError with oneOf schemas BitesCreateCountsChestErrorComponent, BitesCreateCountsHeadErrorComponent, BitesCreateCountsLeftArmErrorComponent, BitesCreateCountsLeftLegErrorComponent, BitesCreateCountsNonFieldErrorsErrorComponent, BitesCreateCountsRightArmErrorComponent, BitesCreateCountsRightLegErrorComponent, BitesCreateCreatedAtErrorComponent, BitesCreateEventEnvironmentErrorComponent, BitesCreateEventMomentErrorComponent, BitesCreateLocationNonFieldErrorsErrorComponent, BitesCreateLocationPointLatitudeErrorComponent, BitesCreateLocationPointLongitudeErrorComponent, BitesCreateLocationPointNonFieldErrorsErrorComponent, BitesCreateLocationSourceErrorComponent, BitesCreateNonFieldErrorsErrorComponent, BitesCreateNoteErrorComponent, BitesCreateSentAtErrorComponent, BitesCreateTagsErrorComponent, BitesCreateTagsINDEXErrorComponent. Matched schemas: ",
                   paste(matched_schemas, collapse = ", ")))
      } else {
        # no match
        stop(paste("No match found when deserializing the input into BitesCreateError with oneOf schemas BitesCreateCountsChestErrorComponent, BitesCreateCountsHeadErrorComponent, BitesCreateCountsLeftArmErrorComponent, BitesCreateCountsLeftLegErrorComponent, BitesCreateCountsNonFieldErrorsErrorComponent, BitesCreateCountsRightArmErrorComponent, BitesCreateCountsRightLegErrorComponent, BitesCreateCreatedAtErrorComponent, BitesCreateEventEnvironmentErrorComponent, BitesCreateEventMomentErrorComponent, BitesCreateLocationNonFieldErrorsErrorComponent, BitesCreateLocationPointLatitudeErrorComponent, BitesCreateLocationPointLongitudeErrorComponent, BitesCreateLocationPointNonFieldErrorsErrorComponent, BitesCreateLocationSourceErrorComponent, BitesCreateNonFieldErrorsErrorComponent, BitesCreateNoteErrorComponent, BitesCreateSentAtErrorComponent, BitesCreateTagsErrorComponent, BitesCreateTagsINDEXErrorComponent. Details: >>",
                   paste(error_messages, collapse = " >> ")))
      }

      self
    },

    #' @description
    #' Serialize BitesCreateError to JSON string.
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return JSON string representation of the BitesCreateError.
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
    #' Convert BitesCreateError to a base R type
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
    #' Validate the input JSON with respect to BitesCreateError and
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
#BitesCreateError$unlock()
#
## Below is an example to define the print function
#BitesCreateError$set("public", "print", function(...) {
#  print(jsonlite::prettify(self$toJSONString()))
#  invisible(self)
#})
## Uncomment below to lock the class to prevent modifications to the method or field
#BitesCreateError$lock()

