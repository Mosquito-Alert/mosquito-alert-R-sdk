#' @docType class
#' @title BreedingSitesCreateError
#'
#' @description BreedingSitesCreateError Class
#'
#' @format An \code{R6Class} generator object
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
BreedingSitesCreateError <- R6::R6Class(
  "BreedingSitesCreateError",
  public = list(
    #' @field actual_instance the object stored in this instance.
    actual_instance = NULL,
    #' @field actual_type the type of the object stored in this instance.
    actual_type = NULL,
    #' @field one_of  a list of types defined in the oneOf schema.
    one_of = list("BreedingSitesCreateCreatedAtErrorComponent", "BreedingSitesCreateHasLarvaeErrorComponent", "BreedingSitesCreateHasNearMosquitoesErrorComponent", "BreedingSitesCreateHasWaterErrorComponent", "BreedingSitesCreateInPublicAreaErrorComponent", "BreedingSitesCreateLocationNonFieldErrorsErrorComponent", "BreedingSitesCreateLocationPointErrorComponent", "BreedingSitesCreateLocationTypeErrorComponent", "BreedingSitesCreateNonFieldErrorsErrorComponent", "BreedingSitesCreateNoteErrorComponent", "BreedingSitesCreatePhotosINDEXFileErrorComponent", "BreedingSitesCreatePhotosINDEXNonFieldErrorsErrorComponent", "BreedingSitesCreatePhotosNonFieldErrorsErrorComponent", "BreedingSitesCreateSentAtErrorComponent", "BreedingSitesCreateSiteTypeErrorComponent", "BreedingSitesCreateTagsErrorComponent", "BreedingSitesCreateTagsINDEXErrorComponent"),

    #' @description
    #' Initialize a new BreedingSitesCreateError.
    #'
    #' @param instance an instance of the object defined in the oneOf schemas: "BreedingSitesCreateCreatedAtErrorComponent", "BreedingSitesCreateHasLarvaeErrorComponent", "BreedingSitesCreateHasNearMosquitoesErrorComponent", "BreedingSitesCreateHasWaterErrorComponent", "BreedingSitesCreateInPublicAreaErrorComponent", "BreedingSitesCreateLocationNonFieldErrorsErrorComponent", "BreedingSitesCreateLocationPointErrorComponent", "BreedingSitesCreateLocationTypeErrorComponent", "BreedingSitesCreateNonFieldErrorsErrorComponent", "BreedingSitesCreateNoteErrorComponent", "BreedingSitesCreatePhotosINDEXFileErrorComponent", "BreedingSitesCreatePhotosINDEXNonFieldErrorsErrorComponent", "BreedingSitesCreatePhotosNonFieldErrorsErrorComponent", "BreedingSitesCreateSentAtErrorComponent", "BreedingSitesCreateSiteTypeErrorComponent", "BreedingSitesCreateTagsErrorComponent", "BreedingSitesCreateTagsINDEXErrorComponent"
    initialize = function(instance = NULL) {
      if (is.null(instance)) {
        # do nothing
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "BreedingSitesCreateCreatedAtErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "BreedingSitesCreateCreatedAtErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "BreedingSitesCreateHasLarvaeErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "BreedingSitesCreateHasLarvaeErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "BreedingSitesCreateHasNearMosquitoesErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "BreedingSitesCreateHasNearMosquitoesErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "BreedingSitesCreateHasWaterErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "BreedingSitesCreateHasWaterErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "BreedingSitesCreateInPublicAreaErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "BreedingSitesCreateInPublicAreaErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "BreedingSitesCreateLocationNonFieldErrorsErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "BreedingSitesCreateLocationNonFieldErrorsErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "BreedingSitesCreateLocationPointErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "BreedingSitesCreateLocationPointErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "BreedingSitesCreateLocationTypeErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "BreedingSitesCreateLocationTypeErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "BreedingSitesCreateNonFieldErrorsErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "BreedingSitesCreateNonFieldErrorsErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "BreedingSitesCreateNoteErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "BreedingSitesCreateNoteErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "BreedingSitesCreatePhotosINDEXFileErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "BreedingSitesCreatePhotosINDEXFileErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "BreedingSitesCreatePhotosINDEXNonFieldErrorsErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "BreedingSitesCreatePhotosINDEXNonFieldErrorsErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "BreedingSitesCreatePhotosNonFieldErrorsErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "BreedingSitesCreatePhotosNonFieldErrorsErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "BreedingSitesCreateSentAtErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "BreedingSitesCreateSentAtErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "BreedingSitesCreateSiteTypeErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "BreedingSitesCreateSiteTypeErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "BreedingSitesCreateTagsErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "BreedingSitesCreateTagsErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "BreedingSitesCreateTagsINDEXErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "BreedingSitesCreateTagsINDEXErrorComponent"
      } else {
        stop(paste("Failed to initialize BreedingSitesCreateError with oneOf schemas BreedingSitesCreateCreatedAtErrorComponent, BreedingSitesCreateHasLarvaeErrorComponent, BreedingSitesCreateHasNearMosquitoesErrorComponent, BreedingSitesCreateHasWaterErrorComponent, BreedingSitesCreateInPublicAreaErrorComponent, BreedingSitesCreateLocationNonFieldErrorsErrorComponent, BreedingSitesCreateLocationPointErrorComponent, BreedingSitesCreateLocationTypeErrorComponent, BreedingSitesCreateNonFieldErrorsErrorComponent, BreedingSitesCreateNoteErrorComponent, BreedingSitesCreatePhotosINDEXFileErrorComponent, BreedingSitesCreatePhotosINDEXNonFieldErrorsErrorComponent, BreedingSitesCreatePhotosNonFieldErrorsErrorComponent, BreedingSitesCreateSentAtErrorComponent, BreedingSitesCreateSiteTypeErrorComponent, BreedingSitesCreateTagsErrorComponent, BreedingSitesCreateTagsINDEXErrorComponent. Provided class name: ",
                   get(class(instance)[[1]], pos = -1)$classname))
      }
    },

    #' @description
    #' Deserialize JSON string into an instance of BreedingSitesCreateError.
    #' An alias to the method `fromJSON` .
    #'
    #' @param input The input JSON.
    #'
    #' @return An instance of BreedingSitesCreateError.
    fromJSONString = function(input) {
      self$fromJSON(input)
    },

    #' @description
    #' Deserialize JSON string into an instance of BreedingSitesCreateError.
    #'
    #' @param input The input JSON.
    #'
    #' @return An instance of BreedingSitesCreateError.
    fromJSON = function(input) {
      matched <- 0 # match counter
      matched_schemas <- list() #names of matched schemas
      error_messages <- list()
      instance <- NULL

      `BreedingSitesCreateNonFieldErrorsErrorComponent_result` <- tryCatch({
          `BreedingSitesCreateNonFieldErrorsErrorComponent`$public_methods$validateJSON(input)
          `BreedingSitesCreateNonFieldErrorsErrorComponent_instance` <- `BreedingSitesCreateNonFieldErrorsErrorComponent`$new()
          instance <- `BreedingSitesCreateNonFieldErrorsErrorComponent_instance`$fromJSON(input)
          instance_type <- "BreedingSitesCreateNonFieldErrorsErrorComponent"
          matched_schemas <- append(matched_schemas, "BreedingSitesCreateNonFieldErrorsErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`BreedingSitesCreateNonFieldErrorsErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `BreedingSitesCreateNonFieldErrorsErrorComponent_result`["message"])
      }

      `BreedingSitesCreateCreatedAtErrorComponent_result` <- tryCatch({
          `BreedingSitesCreateCreatedAtErrorComponent`$public_methods$validateJSON(input)
          `BreedingSitesCreateCreatedAtErrorComponent_instance` <- `BreedingSitesCreateCreatedAtErrorComponent`$new()
          instance <- `BreedingSitesCreateCreatedAtErrorComponent_instance`$fromJSON(input)
          instance_type <- "BreedingSitesCreateCreatedAtErrorComponent"
          matched_schemas <- append(matched_schemas, "BreedingSitesCreateCreatedAtErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`BreedingSitesCreateCreatedAtErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `BreedingSitesCreateCreatedAtErrorComponent_result`["message"])
      }

      `BreedingSitesCreateSentAtErrorComponent_result` <- tryCatch({
          `BreedingSitesCreateSentAtErrorComponent`$public_methods$validateJSON(input)
          `BreedingSitesCreateSentAtErrorComponent_instance` <- `BreedingSitesCreateSentAtErrorComponent`$new()
          instance <- `BreedingSitesCreateSentAtErrorComponent_instance`$fromJSON(input)
          instance_type <- "BreedingSitesCreateSentAtErrorComponent"
          matched_schemas <- append(matched_schemas, "BreedingSitesCreateSentAtErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`BreedingSitesCreateSentAtErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `BreedingSitesCreateSentAtErrorComponent_result`["message"])
      }

      `BreedingSitesCreateLocationNonFieldErrorsErrorComponent_result` <- tryCatch({
          `BreedingSitesCreateLocationNonFieldErrorsErrorComponent`$public_methods$validateJSON(input)
          `BreedingSitesCreateLocationNonFieldErrorsErrorComponent_instance` <- `BreedingSitesCreateLocationNonFieldErrorsErrorComponent`$new()
          instance <- `BreedingSitesCreateLocationNonFieldErrorsErrorComponent_instance`$fromJSON(input)
          instance_type <- "BreedingSitesCreateLocationNonFieldErrorsErrorComponent"
          matched_schemas <- append(matched_schemas, "BreedingSitesCreateLocationNonFieldErrorsErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`BreedingSitesCreateLocationNonFieldErrorsErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `BreedingSitesCreateLocationNonFieldErrorsErrorComponent_result`["message"])
      }

      `BreedingSitesCreateLocationTypeErrorComponent_result` <- tryCatch({
          `BreedingSitesCreateLocationTypeErrorComponent`$public_methods$validateJSON(input)
          `BreedingSitesCreateLocationTypeErrorComponent_instance` <- `BreedingSitesCreateLocationTypeErrorComponent`$new()
          instance <- `BreedingSitesCreateLocationTypeErrorComponent_instance`$fromJSON(input)
          instance_type <- "BreedingSitesCreateLocationTypeErrorComponent"
          matched_schemas <- append(matched_schemas, "BreedingSitesCreateLocationTypeErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`BreedingSitesCreateLocationTypeErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `BreedingSitesCreateLocationTypeErrorComponent_result`["message"])
      }

      `BreedingSitesCreateLocationPointErrorComponent_result` <- tryCatch({
          `BreedingSitesCreateLocationPointErrorComponent`$public_methods$validateJSON(input)
          `BreedingSitesCreateLocationPointErrorComponent_instance` <- `BreedingSitesCreateLocationPointErrorComponent`$new()
          instance <- `BreedingSitesCreateLocationPointErrorComponent_instance`$fromJSON(input)
          instance_type <- "BreedingSitesCreateLocationPointErrorComponent"
          matched_schemas <- append(matched_schemas, "BreedingSitesCreateLocationPointErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`BreedingSitesCreateLocationPointErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `BreedingSitesCreateLocationPointErrorComponent_result`["message"])
      }

      `BreedingSitesCreateNoteErrorComponent_result` <- tryCatch({
          `BreedingSitesCreateNoteErrorComponent`$public_methods$validateJSON(input)
          `BreedingSitesCreateNoteErrorComponent_instance` <- `BreedingSitesCreateNoteErrorComponent`$new()
          instance <- `BreedingSitesCreateNoteErrorComponent_instance`$fromJSON(input)
          instance_type <- "BreedingSitesCreateNoteErrorComponent"
          matched_schemas <- append(matched_schemas, "BreedingSitesCreateNoteErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`BreedingSitesCreateNoteErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `BreedingSitesCreateNoteErrorComponent_result`["message"])
      }

      `BreedingSitesCreateTagsErrorComponent_result` <- tryCatch({
          `BreedingSitesCreateTagsErrorComponent`$public_methods$validateJSON(input)
          `BreedingSitesCreateTagsErrorComponent_instance` <- `BreedingSitesCreateTagsErrorComponent`$new()
          instance <- `BreedingSitesCreateTagsErrorComponent_instance`$fromJSON(input)
          instance_type <- "BreedingSitesCreateTagsErrorComponent"
          matched_schemas <- append(matched_schemas, "BreedingSitesCreateTagsErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`BreedingSitesCreateTagsErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `BreedingSitesCreateTagsErrorComponent_result`["message"])
      }

      `BreedingSitesCreateTagsINDEXErrorComponent_result` <- tryCatch({
          `BreedingSitesCreateTagsINDEXErrorComponent`$public_methods$validateJSON(input)
          `BreedingSitesCreateTagsINDEXErrorComponent_instance` <- `BreedingSitesCreateTagsINDEXErrorComponent`$new()
          instance <- `BreedingSitesCreateTagsINDEXErrorComponent_instance`$fromJSON(input)
          instance_type <- "BreedingSitesCreateTagsINDEXErrorComponent"
          matched_schemas <- append(matched_schemas, "BreedingSitesCreateTagsINDEXErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`BreedingSitesCreateTagsINDEXErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `BreedingSitesCreateTagsINDEXErrorComponent_result`["message"])
      }

      `BreedingSitesCreatePhotosNonFieldErrorsErrorComponent_result` <- tryCatch({
          `BreedingSitesCreatePhotosNonFieldErrorsErrorComponent`$public_methods$validateJSON(input)
          `BreedingSitesCreatePhotosNonFieldErrorsErrorComponent_instance` <- `BreedingSitesCreatePhotosNonFieldErrorsErrorComponent`$new()
          instance <- `BreedingSitesCreatePhotosNonFieldErrorsErrorComponent_instance`$fromJSON(input)
          instance_type <- "BreedingSitesCreatePhotosNonFieldErrorsErrorComponent"
          matched_schemas <- append(matched_schemas, "BreedingSitesCreatePhotosNonFieldErrorsErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`BreedingSitesCreatePhotosNonFieldErrorsErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `BreedingSitesCreatePhotosNonFieldErrorsErrorComponent_result`["message"])
      }

      `BreedingSitesCreatePhotosINDEXNonFieldErrorsErrorComponent_result` <- tryCatch({
          `BreedingSitesCreatePhotosINDEXNonFieldErrorsErrorComponent`$public_methods$validateJSON(input)
          `BreedingSitesCreatePhotosINDEXNonFieldErrorsErrorComponent_instance` <- `BreedingSitesCreatePhotosINDEXNonFieldErrorsErrorComponent`$new()
          instance <- `BreedingSitesCreatePhotosINDEXNonFieldErrorsErrorComponent_instance`$fromJSON(input)
          instance_type <- "BreedingSitesCreatePhotosINDEXNonFieldErrorsErrorComponent"
          matched_schemas <- append(matched_schemas, "BreedingSitesCreatePhotosINDEXNonFieldErrorsErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`BreedingSitesCreatePhotosINDEXNonFieldErrorsErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `BreedingSitesCreatePhotosINDEXNonFieldErrorsErrorComponent_result`["message"])
      }

      `BreedingSitesCreatePhotosINDEXFileErrorComponent_result` <- tryCatch({
          `BreedingSitesCreatePhotosINDEXFileErrorComponent`$public_methods$validateJSON(input)
          `BreedingSitesCreatePhotosINDEXFileErrorComponent_instance` <- `BreedingSitesCreatePhotosINDEXFileErrorComponent`$new()
          instance <- `BreedingSitesCreatePhotosINDEXFileErrorComponent_instance`$fromJSON(input)
          instance_type <- "BreedingSitesCreatePhotosINDEXFileErrorComponent"
          matched_schemas <- append(matched_schemas, "BreedingSitesCreatePhotosINDEXFileErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`BreedingSitesCreatePhotosINDEXFileErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `BreedingSitesCreatePhotosINDEXFileErrorComponent_result`["message"])
      }

      `BreedingSitesCreateSiteTypeErrorComponent_result` <- tryCatch({
          `BreedingSitesCreateSiteTypeErrorComponent`$public_methods$validateJSON(input)
          `BreedingSitesCreateSiteTypeErrorComponent_instance` <- `BreedingSitesCreateSiteTypeErrorComponent`$new()
          instance <- `BreedingSitesCreateSiteTypeErrorComponent_instance`$fromJSON(input)
          instance_type <- "BreedingSitesCreateSiteTypeErrorComponent"
          matched_schemas <- append(matched_schemas, "BreedingSitesCreateSiteTypeErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`BreedingSitesCreateSiteTypeErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `BreedingSitesCreateSiteTypeErrorComponent_result`["message"])
      }

      `BreedingSitesCreateHasWaterErrorComponent_result` <- tryCatch({
          `BreedingSitesCreateHasWaterErrorComponent`$public_methods$validateJSON(input)
          `BreedingSitesCreateHasWaterErrorComponent_instance` <- `BreedingSitesCreateHasWaterErrorComponent`$new()
          instance <- `BreedingSitesCreateHasWaterErrorComponent_instance`$fromJSON(input)
          instance_type <- "BreedingSitesCreateHasWaterErrorComponent"
          matched_schemas <- append(matched_schemas, "BreedingSitesCreateHasWaterErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`BreedingSitesCreateHasWaterErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `BreedingSitesCreateHasWaterErrorComponent_result`["message"])
      }

      `BreedingSitesCreateInPublicAreaErrorComponent_result` <- tryCatch({
          `BreedingSitesCreateInPublicAreaErrorComponent`$public_methods$validateJSON(input)
          `BreedingSitesCreateInPublicAreaErrorComponent_instance` <- `BreedingSitesCreateInPublicAreaErrorComponent`$new()
          instance <- `BreedingSitesCreateInPublicAreaErrorComponent_instance`$fromJSON(input)
          instance_type <- "BreedingSitesCreateInPublicAreaErrorComponent"
          matched_schemas <- append(matched_schemas, "BreedingSitesCreateInPublicAreaErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`BreedingSitesCreateInPublicAreaErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `BreedingSitesCreateInPublicAreaErrorComponent_result`["message"])
      }

      `BreedingSitesCreateHasNearMosquitoesErrorComponent_result` <- tryCatch({
          `BreedingSitesCreateHasNearMosquitoesErrorComponent`$public_methods$validateJSON(input)
          `BreedingSitesCreateHasNearMosquitoesErrorComponent_instance` <- `BreedingSitesCreateHasNearMosquitoesErrorComponent`$new()
          instance <- `BreedingSitesCreateHasNearMosquitoesErrorComponent_instance`$fromJSON(input)
          instance_type <- "BreedingSitesCreateHasNearMosquitoesErrorComponent"
          matched_schemas <- append(matched_schemas, "BreedingSitesCreateHasNearMosquitoesErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`BreedingSitesCreateHasNearMosquitoesErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `BreedingSitesCreateHasNearMosquitoesErrorComponent_result`["message"])
      }

      `BreedingSitesCreateHasLarvaeErrorComponent_result` <- tryCatch({
          `BreedingSitesCreateHasLarvaeErrorComponent`$public_methods$validateJSON(input)
          `BreedingSitesCreateHasLarvaeErrorComponent_instance` <- `BreedingSitesCreateHasLarvaeErrorComponent`$new()
          instance <- `BreedingSitesCreateHasLarvaeErrorComponent_instance`$fromJSON(input)
          instance_type <- "BreedingSitesCreateHasLarvaeErrorComponent"
          matched_schemas <- append(matched_schemas, "BreedingSitesCreateHasLarvaeErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`BreedingSitesCreateHasLarvaeErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `BreedingSitesCreateHasLarvaeErrorComponent_result`["message"])
      }

      if (matched == 1) {
        # successfully match exactly 1 schema specified in oneOf
        self$actual_instance <- instance
        self$actual_type <- instance_type
      } else if (matched > 1) {
        # more than 1 match
        stop(paste("Multiple matches found when deserializing the input into BreedingSitesCreateError with oneOf schemas BreedingSitesCreateCreatedAtErrorComponent, BreedingSitesCreateHasLarvaeErrorComponent, BreedingSitesCreateHasNearMosquitoesErrorComponent, BreedingSitesCreateHasWaterErrorComponent, BreedingSitesCreateInPublicAreaErrorComponent, BreedingSitesCreateLocationNonFieldErrorsErrorComponent, BreedingSitesCreateLocationPointErrorComponent, BreedingSitesCreateLocationTypeErrorComponent, BreedingSitesCreateNonFieldErrorsErrorComponent, BreedingSitesCreateNoteErrorComponent, BreedingSitesCreatePhotosINDEXFileErrorComponent, BreedingSitesCreatePhotosINDEXNonFieldErrorsErrorComponent, BreedingSitesCreatePhotosNonFieldErrorsErrorComponent, BreedingSitesCreateSentAtErrorComponent, BreedingSitesCreateSiteTypeErrorComponent, BreedingSitesCreateTagsErrorComponent, BreedingSitesCreateTagsINDEXErrorComponent. Matched schemas: ",
                   paste(matched_schemas, collapse = ", ")))
      } else {
        # no match
        stop(paste("No match found when deserializing the input into BreedingSitesCreateError with oneOf schemas BreedingSitesCreateCreatedAtErrorComponent, BreedingSitesCreateHasLarvaeErrorComponent, BreedingSitesCreateHasNearMosquitoesErrorComponent, BreedingSitesCreateHasWaterErrorComponent, BreedingSitesCreateInPublicAreaErrorComponent, BreedingSitesCreateLocationNonFieldErrorsErrorComponent, BreedingSitesCreateLocationPointErrorComponent, BreedingSitesCreateLocationTypeErrorComponent, BreedingSitesCreateNonFieldErrorsErrorComponent, BreedingSitesCreateNoteErrorComponent, BreedingSitesCreatePhotosINDEXFileErrorComponent, BreedingSitesCreatePhotosINDEXNonFieldErrorsErrorComponent, BreedingSitesCreatePhotosNonFieldErrorsErrorComponent, BreedingSitesCreateSentAtErrorComponent, BreedingSitesCreateSiteTypeErrorComponent, BreedingSitesCreateTagsErrorComponent, BreedingSitesCreateTagsINDEXErrorComponent. Details: >>",
                   paste(error_messages, collapse = " >> ")))
      }

      self
    },

    #' @description
    #' Serialize BreedingSitesCreateError to JSON string.
    #'
    #' @return JSON string representation of the BreedingSitesCreateError.
    toJSONString = function() {
      if (!is.null(self$actual_instance)) {
        as.character(jsonlite::minify(self$actual_instance$toJSONString()))
      } else {
        NULL
      }
    },

    #' @description
    #' Serialize BreedingSitesCreateError to JSON.
    #'
    #' @return JSON representation of the BreedingSitesCreateError.
    toJSON = function() {
      if (!is.null(self$actual_instance)) {
        self$actual_instance$toJSON()
      } else {
        NULL
      }
    },

    #' @description
    #' Validate the input JSON with respect to BreedingSitesCreateError and
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
#BreedingSitesCreateError$unlock()
#
## Below is an example to define the print function
#BreedingSitesCreateError$set("public", "print", function(...) {
#  print(jsonlite::prettify(self$toJSONString()))
#  invisible(self)
#})
## Uncomment below to lock the class to prevent modifications to the method or field
#BreedingSitesCreateError$lock()

