#' @docType class
#' @title BreedingsitesCreateError
#'
#' @description BreedingsitesCreateError Class
#'
#' @format An \code{R6Class} generator object
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
BreedingsitesCreateError <- R6::R6Class(
  "BreedingsitesCreateError",
  public = list(
    #' @field actual_instance the object stored in this instance.
    actual_instance = NULL,
    #' @field actual_type the type of the object stored in this instance.
    actual_type = NULL,
    #' @field one_of  a list of types defined in the oneOf schema.
    one_of = list("BreedingsitesCreateCreatedAtErrorComponent", "BreedingsitesCreateHasLarvaeErrorComponent", "BreedingsitesCreateHasNearMosquitoesErrorComponent", "BreedingsitesCreateHasWaterErrorComponent", "BreedingsitesCreateInPublicAreaErrorComponent", "BreedingsitesCreateLocationNonFieldErrorsErrorComponent", "BreedingsitesCreateLocationPointErrorComponent", "BreedingsitesCreateLocationTypeErrorComponent", "BreedingsitesCreateNonFieldErrorsErrorComponent", "BreedingsitesCreateNoteErrorComponent", "BreedingsitesCreatePhotosINDEXFileErrorComponent", "BreedingsitesCreatePhotosINDEXNonFieldErrorsErrorComponent", "BreedingsitesCreatePhotosNonFieldErrorsErrorComponent", "BreedingsitesCreateSentAtErrorComponent", "BreedingsitesCreateSiteTypeErrorComponent", "BreedingsitesCreateTagsErrorComponent", "BreedingsitesCreateTagsINDEXErrorComponent"),

    #' @description
    #' Initialize a new BreedingsitesCreateError.
    #'
    #' @param instance an instance of the object defined in the oneOf schemas: "BreedingsitesCreateCreatedAtErrorComponent", "BreedingsitesCreateHasLarvaeErrorComponent", "BreedingsitesCreateHasNearMosquitoesErrorComponent", "BreedingsitesCreateHasWaterErrorComponent", "BreedingsitesCreateInPublicAreaErrorComponent", "BreedingsitesCreateLocationNonFieldErrorsErrorComponent", "BreedingsitesCreateLocationPointErrorComponent", "BreedingsitesCreateLocationTypeErrorComponent", "BreedingsitesCreateNonFieldErrorsErrorComponent", "BreedingsitesCreateNoteErrorComponent", "BreedingsitesCreatePhotosINDEXFileErrorComponent", "BreedingsitesCreatePhotosINDEXNonFieldErrorsErrorComponent", "BreedingsitesCreatePhotosNonFieldErrorsErrorComponent", "BreedingsitesCreateSentAtErrorComponent", "BreedingsitesCreateSiteTypeErrorComponent", "BreedingsitesCreateTagsErrorComponent", "BreedingsitesCreateTagsINDEXErrorComponent"
    initialize = function(instance = NULL) {
      if (is.null(instance)) {
        # do nothing
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "BreedingsitesCreateCreatedAtErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "BreedingsitesCreateCreatedAtErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "BreedingsitesCreateHasLarvaeErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "BreedingsitesCreateHasLarvaeErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "BreedingsitesCreateHasNearMosquitoesErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "BreedingsitesCreateHasNearMosquitoesErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "BreedingsitesCreateHasWaterErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "BreedingsitesCreateHasWaterErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "BreedingsitesCreateInPublicAreaErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "BreedingsitesCreateInPublicAreaErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "BreedingsitesCreateLocationNonFieldErrorsErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "BreedingsitesCreateLocationNonFieldErrorsErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "BreedingsitesCreateLocationPointErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "BreedingsitesCreateLocationPointErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "BreedingsitesCreateLocationTypeErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "BreedingsitesCreateLocationTypeErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "BreedingsitesCreateNonFieldErrorsErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "BreedingsitesCreateNonFieldErrorsErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "BreedingsitesCreateNoteErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "BreedingsitesCreateNoteErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "BreedingsitesCreatePhotosINDEXFileErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "BreedingsitesCreatePhotosINDEXFileErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "BreedingsitesCreatePhotosINDEXNonFieldErrorsErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "BreedingsitesCreatePhotosINDEXNonFieldErrorsErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "BreedingsitesCreatePhotosNonFieldErrorsErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "BreedingsitesCreatePhotosNonFieldErrorsErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "BreedingsitesCreateSentAtErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "BreedingsitesCreateSentAtErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "BreedingsitesCreateSiteTypeErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "BreedingsitesCreateSiteTypeErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "BreedingsitesCreateTagsErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "BreedingsitesCreateTagsErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "BreedingsitesCreateTagsINDEXErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "BreedingsitesCreateTagsINDEXErrorComponent"
      } else {
        stop(paste("Failed to initialize BreedingsitesCreateError with oneOf schemas BreedingsitesCreateCreatedAtErrorComponent, BreedingsitesCreateHasLarvaeErrorComponent, BreedingsitesCreateHasNearMosquitoesErrorComponent, BreedingsitesCreateHasWaterErrorComponent, BreedingsitesCreateInPublicAreaErrorComponent, BreedingsitesCreateLocationNonFieldErrorsErrorComponent, BreedingsitesCreateLocationPointErrorComponent, BreedingsitesCreateLocationTypeErrorComponent, BreedingsitesCreateNonFieldErrorsErrorComponent, BreedingsitesCreateNoteErrorComponent, BreedingsitesCreatePhotosINDEXFileErrorComponent, BreedingsitesCreatePhotosINDEXNonFieldErrorsErrorComponent, BreedingsitesCreatePhotosNonFieldErrorsErrorComponent, BreedingsitesCreateSentAtErrorComponent, BreedingsitesCreateSiteTypeErrorComponent, BreedingsitesCreateTagsErrorComponent, BreedingsitesCreateTagsINDEXErrorComponent. Provided class name: ",
                   get(class(instance)[[1]], pos = -1)$classname))
      }
    },

    #' @description
    #' Deserialize JSON string into an instance of BreedingsitesCreateError.
    #' An alias to the method `fromJSON` .
    #'
    #' @param input The input JSON.
    #'
    #' @return An instance of BreedingsitesCreateError.
    fromJSONString = function(input) {
      self$fromJSON(input)
    },

    #' @description
    #' Deserialize JSON string into an instance of BreedingsitesCreateError.
    #'
    #' @param input The input JSON.
    #'
    #' @return An instance of BreedingsitesCreateError.
    fromJSON = function(input) {
      matched <- 0 # match counter
      matched_schemas <- list() #names of matched schemas
      error_messages <- list()
      instance <- NULL

      `BreedingsitesCreateNonFieldErrorsErrorComponent_result` <- tryCatch({
          `BreedingsitesCreateNonFieldErrorsErrorComponent`$public_methods$validateJSON(input)
          `BreedingsitesCreateNonFieldErrorsErrorComponent_instance` <- `BreedingsitesCreateNonFieldErrorsErrorComponent`$new()
          instance <- `BreedingsitesCreateNonFieldErrorsErrorComponent_instance`$fromJSON(input)
          instance_type <- "BreedingsitesCreateNonFieldErrorsErrorComponent"
          matched_schemas <- append(matched_schemas, "BreedingsitesCreateNonFieldErrorsErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`BreedingsitesCreateNonFieldErrorsErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `BreedingsitesCreateNonFieldErrorsErrorComponent_result`["message"])
      }

      `BreedingsitesCreateCreatedAtErrorComponent_result` <- tryCatch({
          `BreedingsitesCreateCreatedAtErrorComponent`$public_methods$validateJSON(input)
          `BreedingsitesCreateCreatedAtErrorComponent_instance` <- `BreedingsitesCreateCreatedAtErrorComponent`$new()
          instance <- `BreedingsitesCreateCreatedAtErrorComponent_instance`$fromJSON(input)
          instance_type <- "BreedingsitesCreateCreatedAtErrorComponent"
          matched_schemas <- append(matched_schemas, "BreedingsitesCreateCreatedAtErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`BreedingsitesCreateCreatedAtErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `BreedingsitesCreateCreatedAtErrorComponent_result`["message"])
      }

      `BreedingsitesCreateSentAtErrorComponent_result` <- tryCatch({
          `BreedingsitesCreateSentAtErrorComponent`$public_methods$validateJSON(input)
          `BreedingsitesCreateSentAtErrorComponent_instance` <- `BreedingsitesCreateSentAtErrorComponent`$new()
          instance <- `BreedingsitesCreateSentAtErrorComponent_instance`$fromJSON(input)
          instance_type <- "BreedingsitesCreateSentAtErrorComponent"
          matched_schemas <- append(matched_schemas, "BreedingsitesCreateSentAtErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`BreedingsitesCreateSentAtErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `BreedingsitesCreateSentAtErrorComponent_result`["message"])
      }

      `BreedingsitesCreateLocationNonFieldErrorsErrorComponent_result` <- tryCatch({
          `BreedingsitesCreateLocationNonFieldErrorsErrorComponent`$public_methods$validateJSON(input)
          `BreedingsitesCreateLocationNonFieldErrorsErrorComponent_instance` <- `BreedingsitesCreateLocationNonFieldErrorsErrorComponent`$new()
          instance <- `BreedingsitesCreateLocationNonFieldErrorsErrorComponent_instance`$fromJSON(input)
          instance_type <- "BreedingsitesCreateLocationNonFieldErrorsErrorComponent"
          matched_schemas <- append(matched_schemas, "BreedingsitesCreateLocationNonFieldErrorsErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`BreedingsitesCreateLocationNonFieldErrorsErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `BreedingsitesCreateLocationNonFieldErrorsErrorComponent_result`["message"])
      }

      `BreedingsitesCreateLocationTypeErrorComponent_result` <- tryCatch({
          `BreedingsitesCreateLocationTypeErrorComponent`$public_methods$validateJSON(input)
          `BreedingsitesCreateLocationTypeErrorComponent_instance` <- `BreedingsitesCreateLocationTypeErrorComponent`$new()
          instance <- `BreedingsitesCreateLocationTypeErrorComponent_instance`$fromJSON(input)
          instance_type <- "BreedingsitesCreateLocationTypeErrorComponent"
          matched_schemas <- append(matched_schemas, "BreedingsitesCreateLocationTypeErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`BreedingsitesCreateLocationTypeErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `BreedingsitesCreateLocationTypeErrorComponent_result`["message"])
      }

      `BreedingsitesCreateLocationPointErrorComponent_result` <- tryCatch({
          `BreedingsitesCreateLocationPointErrorComponent`$public_methods$validateJSON(input)
          `BreedingsitesCreateLocationPointErrorComponent_instance` <- `BreedingsitesCreateLocationPointErrorComponent`$new()
          instance <- `BreedingsitesCreateLocationPointErrorComponent_instance`$fromJSON(input)
          instance_type <- "BreedingsitesCreateLocationPointErrorComponent"
          matched_schemas <- append(matched_schemas, "BreedingsitesCreateLocationPointErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`BreedingsitesCreateLocationPointErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `BreedingsitesCreateLocationPointErrorComponent_result`["message"])
      }

      `BreedingsitesCreateNoteErrorComponent_result` <- tryCatch({
          `BreedingsitesCreateNoteErrorComponent`$public_methods$validateJSON(input)
          `BreedingsitesCreateNoteErrorComponent_instance` <- `BreedingsitesCreateNoteErrorComponent`$new()
          instance <- `BreedingsitesCreateNoteErrorComponent_instance`$fromJSON(input)
          instance_type <- "BreedingsitesCreateNoteErrorComponent"
          matched_schemas <- append(matched_schemas, "BreedingsitesCreateNoteErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`BreedingsitesCreateNoteErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `BreedingsitesCreateNoteErrorComponent_result`["message"])
      }

      `BreedingsitesCreateTagsErrorComponent_result` <- tryCatch({
          `BreedingsitesCreateTagsErrorComponent`$public_methods$validateJSON(input)
          `BreedingsitesCreateTagsErrorComponent_instance` <- `BreedingsitesCreateTagsErrorComponent`$new()
          instance <- `BreedingsitesCreateTagsErrorComponent_instance`$fromJSON(input)
          instance_type <- "BreedingsitesCreateTagsErrorComponent"
          matched_schemas <- append(matched_schemas, "BreedingsitesCreateTagsErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`BreedingsitesCreateTagsErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `BreedingsitesCreateTagsErrorComponent_result`["message"])
      }

      `BreedingsitesCreateTagsINDEXErrorComponent_result` <- tryCatch({
          `BreedingsitesCreateTagsINDEXErrorComponent`$public_methods$validateJSON(input)
          `BreedingsitesCreateTagsINDEXErrorComponent_instance` <- `BreedingsitesCreateTagsINDEXErrorComponent`$new()
          instance <- `BreedingsitesCreateTagsINDEXErrorComponent_instance`$fromJSON(input)
          instance_type <- "BreedingsitesCreateTagsINDEXErrorComponent"
          matched_schemas <- append(matched_schemas, "BreedingsitesCreateTagsINDEXErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`BreedingsitesCreateTagsINDEXErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `BreedingsitesCreateTagsINDEXErrorComponent_result`["message"])
      }

      `BreedingsitesCreatePhotosNonFieldErrorsErrorComponent_result` <- tryCatch({
          `BreedingsitesCreatePhotosNonFieldErrorsErrorComponent`$public_methods$validateJSON(input)
          `BreedingsitesCreatePhotosNonFieldErrorsErrorComponent_instance` <- `BreedingsitesCreatePhotosNonFieldErrorsErrorComponent`$new()
          instance <- `BreedingsitesCreatePhotosNonFieldErrorsErrorComponent_instance`$fromJSON(input)
          instance_type <- "BreedingsitesCreatePhotosNonFieldErrorsErrorComponent"
          matched_schemas <- append(matched_schemas, "BreedingsitesCreatePhotosNonFieldErrorsErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`BreedingsitesCreatePhotosNonFieldErrorsErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `BreedingsitesCreatePhotosNonFieldErrorsErrorComponent_result`["message"])
      }

      `BreedingsitesCreatePhotosINDEXNonFieldErrorsErrorComponent_result` <- tryCatch({
          `BreedingsitesCreatePhotosINDEXNonFieldErrorsErrorComponent`$public_methods$validateJSON(input)
          `BreedingsitesCreatePhotosINDEXNonFieldErrorsErrorComponent_instance` <- `BreedingsitesCreatePhotosINDEXNonFieldErrorsErrorComponent`$new()
          instance <- `BreedingsitesCreatePhotosINDEXNonFieldErrorsErrorComponent_instance`$fromJSON(input)
          instance_type <- "BreedingsitesCreatePhotosINDEXNonFieldErrorsErrorComponent"
          matched_schemas <- append(matched_schemas, "BreedingsitesCreatePhotosINDEXNonFieldErrorsErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`BreedingsitesCreatePhotosINDEXNonFieldErrorsErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `BreedingsitesCreatePhotosINDEXNonFieldErrorsErrorComponent_result`["message"])
      }

      `BreedingsitesCreatePhotosINDEXFileErrorComponent_result` <- tryCatch({
          `BreedingsitesCreatePhotosINDEXFileErrorComponent`$public_methods$validateJSON(input)
          `BreedingsitesCreatePhotosINDEXFileErrorComponent_instance` <- `BreedingsitesCreatePhotosINDEXFileErrorComponent`$new()
          instance <- `BreedingsitesCreatePhotosINDEXFileErrorComponent_instance`$fromJSON(input)
          instance_type <- "BreedingsitesCreatePhotosINDEXFileErrorComponent"
          matched_schemas <- append(matched_schemas, "BreedingsitesCreatePhotosINDEXFileErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`BreedingsitesCreatePhotosINDEXFileErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `BreedingsitesCreatePhotosINDEXFileErrorComponent_result`["message"])
      }

      `BreedingsitesCreateSiteTypeErrorComponent_result` <- tryCatch({
          `BreedingsitesCreateSiteTypeErrorComponent`$public_methods$validateJSON(input)
          `BreedingsitesCreateSiteTypeErrorComponent_instance` <- `BreedingsitesCreateSiteTypeErrorComponent`$new()
          instance <- `BreedingsitesCreateSiteTypeErrorComponent_instance`$fromJSON(input)
          instance_type <- "BreedingsitesCreateSiteTypeErrorComponent"
          matched_schemas <- append(matched_schemas, "BreedingsitesCreateSiteTypeErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`BreedingsitesCreateSiteTypeErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `BreedingsitesCreateSiteTypeErrorComponent_result`["message"])
      }

      `BreedingsitesCreateHasWaterErrorComponent_result` <- tryCatch({
          `BreedingsitesCreateHasWaterErrorComponent`$public_methods$validateJSON(input)
          `BreedingsitesCreateHasWaterErrorComponent_instance` <- `BreedingsitesCreateHasWaterErrorComponent`$new()
          instance <- `BreedingsitesCreateHasWaterErrorComponent_instance`$fromJSON(input)
          instance_type <- "BreedingsitesCreateHasWaterErrorComponent"
          matched_schemas <- append(matched_schemas, "BreedingsitesCreateHasWaterErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`BreedingsitesCreateHasWaterErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `BreedingsitesCreateHasWaterErrorComponent_result`["message"])
      }

      `BreedingsitesCreateInPublicAreaErrorComponent_result` <- tryCatch({
          `BreedingsitesCreateInPublicAreaErrorComponent`$public_methods$validateJSON(input)
          `BreedingsitesCreateInPublicAreaErrorComponent_instance` <- `BreedingsitesCreateInPublicAreaErrorComponent`$new()
          instance <- `BreedingsitesCreateInPublicAreaErrorComponent_instance`$fromJSON(input)
          instance_type <- "BreedingsitesCreateInPublicAreaErrorComponent"
          matched_schemas <- append(matched_schemas, "BreedingsitesCreateInPublicAreaErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`BreedingsitesCreateInPublicAreaErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `BreedingsitesCreateInPublicAreaErrorComponent_result`["message"])
      }

      `BreedingsitesCreateHasNearMosquitoesErrorComponent_result` <- tryCatch({
          `BreedingsitesCreateHasNearMosquitoesErrorComponent`$public_methods$validateJSON(input)
          `BreedingsitesCreateHasNearMosquitoesErrorComponent_instance` <- `BreedingsitesCreateHasNearMosquitoesErrorComponent`$new()
          instance <- `BreedingsitesCreateHasNearMosquitoesErrorComponent_instance`$fromJSON(input)
          instance_type <- "BreedingsitesCreateHasNearMosquitoesErrorComponent"
          matched_schemas <- append(matched_schemas, "BreedingsitesCreateHasNearMosquitoesErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`BreedingsitesCreateHasNearMosquitoesErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `BreedingsitesCreateHasNearMosquitoesErrorComponent_result`["message"])
      }

      `BreedingsitesCreateHasLarvaeErrorComponent_result` <- tryCatch({
          `BreedingsitesCreateHasLarvaeErrorComponent`$public_methods$validateJSON(input)
          `BreedingsitesCreateHasLarvaeErrorComponent_instance` <- `BreedingsitesCreateHasLarvaeErrorComponent`$new()
          instance <- `BreedingsitesCreateHasLarvaeErrorComponent_instance`$fromJSON(input)
          instance_type <- "BreedingsitesCreateHasLarvaeErrorComponent"
          matched_schemas <- append(matched_schemas, "BreedingsitesCreateHasLarvaeErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`BreedingsitesCreateHasLarvaeErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `BreedingsitesCreateHasLarvaeErrorComponent_result`["message"])
      }

      if (matched == 1) {
        # successfully match exactly 1 schema specified in oneOf
        self$actual_instance <- instance
        self$actual_type <- instance_type
      } else if (matched > 1) {
        # more than 1 match
        stop(paste("Multiple matches found when deserializing the input into BreedingsitesCreateError with oneOf schemas BreedingsitesCreateCreatedAtErrorComponent, BreedingsitesCreateHasLarvaeErrorComponent, BreedingsitesCreateHasNearMosquitoesErrorComponent, BreedingsitesCreateHasWaterErrorComponent, BreedingsitesCreateInPublicAreaErrorComponent, BreedingsitesCreateLocationNonFieldErrorsErrorComponent, BreedingsitesCreateLocationPointErrorComponent, BreedingsitesCreateLocationTypeErrorComponent, BreedingsitesCreateNonFieldErrorsErrorComponent, BreedingsitesCreateNoteErrorComponent, BreedingsitesCreatePhotosINDEXFileErrorComponent, BreedingsitesCreatePhotosINDEXNonFieldErrorsErrorComponent, BreedingsitesCreatePhotosNonFieldErrorsErrorComponent, BreedingsitesCreateSentAtErrorComponent, BreedingsitesCreateSiteTypeErrorComponent, BreedingsitesCreateTagsErrorComponent, BreedingsitesCreateTagsINDEXErrorComponent. Matched schemas: ",
                   paste(matched_schemas, collapse = ", ")))
      } else {
        # no match
        stop(paste("No match found when deserializing the input into BreedingsitesCreateError with oneOf schemas BreedingsitesCreateCreatedAtErrorComponent, BreedingsitesCreateHasLarvaeErrorComponent, BreedingsitesCreateHasNearMosquitoesErrorComponent, BreedingsitesCreateHasWaterErrorComponent, BreedingsitesCreateInPublicAreaErrorComponent, BreedingsitesCreateLocationNonFieldErrorsErrorComponent, BreedingsitesCreateLocationPointErrorComponent, BreedingsitesCreateLocationTypeErrorComponent, BreedingsitesCreateNonFieldErrorsErrorComponent, BreedingsitesCreateNoteErrorComponent, BreedingsitesCreatePhotosINDEXFileErrorComponent, BreedingsitesCreatePhotosINDEXNonFieldErrorsErrorComponent, BreedingsitesCreatePhotosNonFieldErrorsErrorComponent, BreedingsitesCreateSentAtErrorComponent, BreedingsitesCreateSiteTypeErrorComponent, BreedingsitesCreateTagsErrorComponent, BreedingsitesCreateTagsINDEXErrorComponent. Details: >>",
                   paste(error_messages, collapse = " >> ")))
      }

      self
    },

    #' @description
    #' Serialize BreedingsitesCreateError to JSON string.
    #'
    #' @return JSON string representation of the BreedingsitesCreateError.
    toJSONString = function() {
      if (!is.null(self$actual_instance)) {
        as.character(jsonlite::minify(self$actual_instance$toJSONString()))
      } else {
        NULL
      }
    },

    #' @description
    #' Serialize BreedingsitesCreateError to JSON.
    #'
    #' @return JSON representation of the BreedingsitesCreateError.
    toJSON = function() {
      if (!is.null(self$actual_instance)) {
        self$actual_instance$toJSON()
      } else {
        NULL
      }
    },

    #' @description
    #' Validate the input JSON with respect to BreedingsitesCreateError and
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
#BreedingsitesCreateError$unlock()
#
## Below is an example to define the print function
#BreedingsitesCreateError$set("public", "print", function(...) {
#  print(jsonlite::prettify(self$toJSONString()))
#  invisible(self)
#})
## Uncomment below to lock the class to prevent modifications to the method or field
#BreedingsitesCreateError$lock()

