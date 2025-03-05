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
    one_of = list("BitesCreateChestBiteCountErrorComponent", "BitesCreateCreatedAtErrorComponent", "BitesCreateEventEnvironmentErrorComponent", "BitesCreateEventMomentErrorComponent", "BitesCreateHeadBiteCountErrorComponent", "BitesCreateLeftArmBiteCountErrorComponent", "BitesCreateLeftLegBiteCountErrorComponent", "BitesCreateLocationNonFieldErrorsErrorComponent", "BitesCreateLocationPointErrorComponent", "BitesCreateLocationTypeErrorComponent", "BitesCreateNonFieldErrorsErrorComponent", "BitesCreateNoteErrorComponent", "BitesCreateRightArmBiteCountErrorComponent", "BitesCreateRightLegBiteCountErrorComponent", "BitesCreateSentAtErrorComponent", "BitesCreateTagsErrorComponent", "BitesCreateTagsINDEXErrorComponent"),

    #' @description
    #' Initialize a new BitesCreateError.
    #'
    #' @param instance an instance of the object defined in the oneOf schemas: "BitesCreateChestBiteCountErrorComponent", "BitesCreateCreatedAtErrorComponent", "BitesCreateEventEnvironmentErrorComponent", "BitesCreateEventMomentErrorComponent", "BitesCreateHeadBiteCountErrorComponent", "BitesCreateLeftArmBiteCountErrorComponent", "BitesCreateLeftLegBiteCountErrorComponent", "BitesCreateLocationNonFieldErrorsErrorComponent", "BitesCreateLocationPointErrorComponent", "BitesCreateLocationTypeErrorComponent", "BitesCreateNonFieldErrorsErrorComponent", "BitesCreateNoteErrorComponent", "BitesCreateRightArmBiteCountErrorComponent", "BitesCreateRightLegBiteCountErrorComponent", "BitesCreateSentAtErrorComponent", "BitesCreateTagsErrorComponent", "BitesCreateTagsINDEXErrorComponent"
    initialize = function(instance = NULL) {
      if (is.null(instance)) {
        # do nothing
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "BitesCreateChestBiteCountErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "BitesCreateChestBiteCountErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "BitesCreateCreatedAtErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "BitesCreateCreatedAtErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "BitesCreateEventEnvironmentErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "BitesCreateEventEnvironmentErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "BitesCreateEventMomentErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "BitesCreateEventMomentErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "BitesCreateHeadBiteCountErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "BitesCreateHeadBiteCountErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "BitesCreateLeftArmBiteCountErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "BitesCreateLeftArmBiteCountErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "BitesCreateLeftLegBiteCountErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "BitesCreateLeftLegBiteCountErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "BitesCreateLocationNonFieldErrorsErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "BitesCreateLocationNonFieldErrorsErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "BitesCreateLocationPointErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "BitesCreateLocationPointErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "BitesCreateLocationTypeErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "BitesCreateLocationTypeErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "BitesCreateNonFieldErrorsErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "BitesCreateNonFieldErrorsErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "BitesCreateNoteErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "BitesCreateNoteErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "BitesCreateRightArmBiteCountErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "BitesCreateRightArmBiteCountErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "BitesCreateRightLegBiteCountErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "BitesCreateRightLegBiteCountErrorComponent"
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
        stop(paste("Failed to initialize BitesCreateError with oneOf schemas BitesCreateChestBiteCountErrorComponent, BitesCreateCreatedAtErrorComponent, BitesCreateEventEnvironmentErrorComponent, BitesCreateEventMomentErrorComponent, BitesCreateHeadBiteCountErrorComponent, BitesCreateLeftArmBiteCountErrorComponent, BitesCreateLeftLegBiteCountErrorComponent, BitesCreateLocationNonFieldErrorsErrorComponent, BitesCreateLocationPointErrorComponent, BitesCreateLocationTypeErrorComponent, BitesCreateNonFieldErrorsErrorComponent, BitesCreateNoteErrorComponent, BitesCreateRightArmBiteCountErrorComponent, BitesCreateRightLegBiteCountErrorComponent, BitesCreateSentAtErrorComponent, BitesCreateTagsErrorComponent, BitesCreateTagsINDEXErrorComponent. Provided class name: ",
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

      `BitesCreateLocationTypeErrorComponent_result` <- tryCatch({
          `BitesCreateLocationTypeErrorComponent`$public_methods$validateJSON(input)
          `BitesCreateLocationTypeErrorComponent_instance` <- `BitesCreateLocationTypeErrorComponent`$new()
          instance <- `BitesCreateLocationTypeErrorComponent_instance`$fromJSON(input)
          instance_type <- "BitesCreateLocationTypeErrorComponent"
          matched_schemas <- append(matched_schemas, "BitesCreateLocationTypeErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`BitesCreateLocationTypeErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `BitesCreateLocationTypeErrorComponent_result`["message"])
      }

      `BitesCreateLocationPointErrorComponent_result` <- tryCatch({
          `BitesCreateLocationPointErrorComponent`$public_methods$validateJSON(input)
          `BitesCreateLocationPointErrorComponent_instance` <- `BitesCreateLocationPointErrorComponent`$new()
          instance <- `BitesCreateLocationPointErrorComponent_instance`$fromJSON(input)
          instance_type <- "BitesCreateLocationPointErrorComponent"
          matched_schemas <- append(matched_schemas, "BitesCreateLocationPointErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`BitesCreateLocationPointErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `BitesCreateLocationPointErrorComponent_result`["message"])
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

      `BitesCreateHeadBiteCountErrorComponent_result` <- tryCatch({
          `BitesCreateHeadBiteCountErrorComponent`$public_methods$validateJSON(input)
          `BitesCreateHeadBiteCountErrorComponent_instance` <- `BitesCreateHeadBiteCountErrorComponent`$new()
          instance <- `BitesCreateHeadBiteCountErrorComponent_instance`$fromJSON(input)
          instance_type <- "BitesCreateHeadBiteCountErrorComponent"
          matched_schemas <- append(matched_schemas, "BitesCreateHeadBiteCountErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`BitesCreateHeadBiteCountErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `BitesCreateHeadBiteCountErrorComponent_result`["message"])
      }

      `BitesCreateLeftArmBiteCountErrorComponent_result` <- tryCatch({
          `BitesCreateLeftArmBiteCountErrorComponent`$public_methods$validateJSON(input)
          `BitesCreateLeftArmBiteCountErrorComponent_instance` <- `BitesCreateLeftArmBiteCountErrorComponent`$new()
          instance <- `BitesCreateLeftArmBiteCountErrorComponent_instance`$fromJSON(input)
          instance_type <- "BitesCreateLeftArmBiteCountErrorComponent"
          matched_schemas <- append(matched_schemas, "BitesCreateLeftArmBiteCountErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`BitesCreateLeftArmBiteCountErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `BitesCreateLeftArmBiteCountErrorComponent_result`["message"])
      }

      `BitesCreateRightArmBiteCountErrorComponent_result` <- tryCatch({
          `BitesCreateRightArmBiteCountErrorComponent`$public_methods$validateJSON(input)
          `BitesCreateRightArmBiteCountErrorComponent_instance` <- `BitesCreateRightArmBiteCountErrorComponent`$new()
          instance <- `BitesCreateRightArmBiteCountErrorComponent_instance`$fromJSON(input)
          instance_type <- "BitesCreateRightArmBiteCountErrorComponent"
          matched_schemas <- append(matched_schemas, "BitesCreateRightArmBiteCountErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`BitesCreateRightArmBiteCountErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `BitesCreateRightArmBiteCountErrorComponent_result`["message"])
      }

      `BitesCreateChestBiteCountErrorComponent_result` <- tryCatch({
          `BitesCreateChestBiteCountErrorComponent`$public_methods$validateJSON(input)
          `BitesCreateChestBiteCountErrorComponent_instance` <- `BitesCreateChestBiteCountErrorComponent`$new()
          instance <- `BitesCreateChestBiteCountErrorComponent_instance`$fromJSON(input)
          instance_type <- "BitesCreateChestBiteCountErrorComponent"
          matched_schemas <- append(matched_schemas, "BitesCreateChestBiteCountErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`BitesCreateChestBiteCountErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `BitesCreateChestBiteCountErrorComponent_result`["message"])
      }

      `BitesCreateLeftLegBiteCountErrorComponent_result` <- tryCatch({
          `BitesCreateLeftLegBiteCountErrorComponent`$public_methods$validateJSON(input)
          `BitesCreateLeftLegBiteCountErrorComponent_instance` <- `BitesCreateLeftLegBiteCountErrorComponent`$new()
          instance <- `BitesCreateLeftLegBiteCountErrorComponent_instance`$fromJSON(input)
          instance_type <- "BitesCreateLeftLegBiteCountErrorComponent"
          matched_schemas <- append(matched_schemas, "BitesCreateLeftLegBiteCountErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`BitesCreateLeftLegBiteCountErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `BitesCreateLeftLegBiteCountErrorComponent_result`["message"])
      }

      `BitesCreateRightLegBiteCountErrorComponent_result` <- tryCatch({
          `BitesCreateRightLegBiteCountErrorComponent`$public_methods$validateJSON(input)
          `BitesCreateRightLegBiteCountErrorComponent_instance` <- `BitesCreateRightLegBiteCountErrorComponent`$new()
          instance <- `BitesCreateRightLegBiteCountErrorComponent_instance`$fromJSON(input)
          instance_type <- "BitesCreateRightLegBiteCountErrorComponent"
          matched_schemas <- append(matched_schemas, "BitesCreateRightLegBiteCountErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`BitesCreateRightLegBiteCountErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `BitesCreateRightLegBiteCountErrorComponent_result`["message"])
      }

      if (matched == 1) {
        # successfully match exactly 1 schema specified in oneOf
        self$actual_instance <- instance
        self$actual_type <- instance_type
      } else if (matched > 1) {
        # more than 1 match
        stop(paste("Multiple matches found when deserializing the input into BitesCreateError with oneOf schemas BitesCreateChestBiteCountErrorComponent, BitesCreateCreatedAtErrorComponent, BitesCreateEventEnvironmentErrorComponent, BitesCreateEventMomentErrorComponent, BitesCreateHeadBiteCountErrorComponent, BitesCreateLeftArmBiteCountErrorComponent, BitesCreateLeftLegBiteCountErrorComponent, BitesCreateLocationNonFieldErrorsErrorComponent, BitesCreateLocationPointErrorComponent, BitesCreateLocationTypeErrorComponent, BitesCreateNonFieldErrorsErrorComponent, BitesCreateNoteErrorComponent, BitesCreateRightArmBiteCountErrorComponent, BitesCreateRightLegBiteCountErrorComponent, BitesCreateSentAtErrorComponent, BitesCreateTagsErrorComponent, BitesCreateTagsINDEXErrorComponent. Matched schemas: ",
                   paste(matched_schemas, collapse = ", ")))
      } else {
        # no match
        stop(paste("No match found when deserializing the input into BitesCreateError with oneOf schemas BitesCreateChestBiteCountErrorComponent, BitesCreateCreatedAtErrorComponent, BitesCreateEventEnvironmentErrorComponent, BitesCreateEventMomentErrorComponent, BitesCreateHeadBiteCountErrorComponent, BitesCreateLeftArmBiteCountErrorComponent, BitesCreateLeftLegBiteCountErrorComponent, BitesCreateLocationNonFieldErrorsErrorComponent, BitesCreateLocationPointErrorComponent, BitesCreateLocationTypeErrorComponent, BitesCreateNonFieldErrorsErrorComponent, BitesCreateNoteErrorComponent, BitesCreateRightArmBiteCountErrorComponent, BitesCreateRightLegBiteCountErrorComponent, BitesCreateSentAtErrorComponent, BitesCreateTagsErrorComponent, BitesCreateTagsINDEXErrorComponent. Details: >>",
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

