#' @docType class
#' @title IdentificationtasksReviewCreateError
#'
#' @description IdentificationtasksReviewCreateError Class
#'
#' @format An \code{R6Class} generator object
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
IdentificationtasksReviewCreateError <- R6::R6Class(
  "IdentificationtasksReviewCreateError",
  public = list(
    #' @field actual_instance the object stored in this instance.
    actual_instance = NULL,
    #' @field actual_type the type of the object stored in this instance.
    actual_type = NULL,
    #' @field one_of  a list of types defined in the oneOf schema.
    one_of = list("IdentificationtasksReviewCreateActionErrorComponent", "IdentificationtasksReviewCreateCharacteristicsIsBloodFedErrorComponent", "IdentificationtasksReviewCreateCharacteristicsIsGravidErrorComponent", "IdentificationtasksReviewCreateCharacteristicsNonFieldErrorsErrorComponent", "IdentificationtasksReviewCreateCharacteristicsSexErrorComponent", "IdentificationtasksReviewCreateClassificationConfidenceLabelErrorComponent", "IdentificationtasksReviewCreateClassificationNonFieldErrorsErrorComponent", "IdentificationtasksReviewCreateClassificationTaxonIdErrorComponent", "IdentificationtasksReviewCreateIsSafeErrorComponent", "IdentificationtasksReviewCreateNonFieldErrorsErrorComponent", "IdentificationtasksReviewCreatePublicNoteErrorComponent", "IdentificationtasksReviewCreatePublicPhotoUuidErrorComponent"),

    #' @description
    #' Initialize a new IdentificationtasksReviewCreateError.
    #'
    #' @param instance an instance of the object defined in the oneOf schemas: "IdentificationtasksReviewCreateActionErrorComponent", "IdentificationtasksReviewCreateCharacteristicsIsBloodFedErrorComponent", "IdentificationtasksReviewCreateCharacteristicsIsGravidErrorComponent", "IdentificationtasksReviewCreateCharacteristicsNonFieldErrorsErrorComponent", "IdentificationtasksReviewCreateCharacteristicsSexErrorComponent", "IdentificationtasksReviewCreateClassificationConfidenceLabelErrorComponent", "IdentificationtasksReviewCreateClassificationNonFieldErrorsErrorComponent", "IdentificationtasksReviewCreateClassificationTaxonIdErrorComponent", "IdentificationtasksReviewCreateIsSafeErrorComponent", "IdentificationtasksReviewCreateNonFieldErrorsErrorComponent", "IdentificationtasksReviewCreatePublicNoteErrorComponent", "IdentificationtasksReviewCreatePublicPhotoUuidErrorComponent"
    initialize = function(instance = NULL) {
      if (is.null(instance)) {
        # do nothing
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksReviewCreateActionErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksReviewCreateActionErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksReviewCreateCharacteristicsIsBloodFedErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksReviewCreateCharacteristicsIsBloodFedErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksReviewCreateCharacteristicsIsGravidErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksReviewCreateCharacteristicsIsGravidErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksReviewCreateCharacteristicsNonFieldErrorsErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksReviewCreateCharacteristicsNonFieldErrorsErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksReviewCreateCharacteristicsSexErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksReviewCreateCharacteristicsSexErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksReviewCreateClassificationConfidenceLabelErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksReviewCreateClassificationConfidenceLabelErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksReviewCreateClassificationNonFieldErrorsErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksReviewCreateClassificationNonFieldErrorsErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksReviewCreateClassificationTaxonIdErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksReviewCreateClassificationTaxonIdErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksReviewCreateIsSafeErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksReviewCreateIsSafeErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksReviewCreateNonFieldErrorsErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksReviewCreateNonFieldErrorsErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksReviewCreatePublicNoteErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksReviewCreatePublicNoteErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksReviewCreatePublicPhotoUuidErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksReviewCreatePublicPhotoUuidErrorComponent"
      } else {
        stop(paste("Failed to initialize IdentificationtasksReviewCreateError with oneOf schemas IdentificationtasksReviewCreateActionErrorComponent, IdentificationtasksReviewCreateCharacteristicsIsBloodFedErrorComponent, IdentificationtasksReviewCreateCharacteristicsIsGravidErrorComponent, IdentificationtasksReviewCreateCharacteristicsNonFieldErrorsErrorComponent, IdentificationtasksReviewCreateCharacteristicsSexErrorComponent, IdentificationtasksReviewCreateClassificationConfidenceLabelErrorComponent, IdentificationtasksReviewCreateClassificationNonFieldErrorsErrorComponent, IdentificationtasksReviewCreateClassificationTaxonIdErrorComponent, IdentificationtasksReviewCreateIsSafeErrorComponent, IdentificationtasksReviewCreateNonFieldErrorsErrorComponent, IdentificationtasksReviewCreatePublicNoteErrorComponent, IdentificationtasksReviewCreatePublicPhotoUuidErrorComponent. Provided class name: ",
                   get(class(instance)[[1]], pos = -1)$classname))
      }
    },

    #' @description
    #' Deserialize JSON string into an instance of IdentificationtasksReviewCreateError.
    #' An alias to the method `fromJSON` .
    #'
    #' @param input The input JSON.
    #'
    #' @return An instance of IdentificationtasksReviewCreateError.
    fromJSONString = function(input) {
      self$fromJSON(input)
    },

    #' @description
    #' Deserialize JSON string into an instance of IdentificationtasksReviewCreateError.
    #'
    #' @param input The input JSON.
    #'
    #' @return An instance of IdentificationtasksReviewCreateError.
    fromJSON = function(input) {
      matched <- 0 # match counter
      matched_schemas <- list() #names of matched schemas
      error_messages <- list()
      instance <- NULL

      `IdentificationtasksReviewCreateNonFieldErrorsErrorComponent_result` <- tryCatch({
          `IdentificationtasksReviewCreateNonFieldErrorsErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksReviewCreateNonFieldErrorsErrorComponent_instance` <- `IdentificationtasksReviewCreateNonFieldErrorsErrorComponent`$new()
          instance <- `IdentificationtasksReviewCreateNonFieldErrorsErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksReviewCreateNonFieldErrorsErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksReviewCreateNonFieldErrorsErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksReviewCreateNonFieldErrorsErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksReviewCreateNonFieldErrorsErrorComponent_result`["message"])
      }

      `IdentificationtasksReviewCreateActionErrorComponent_result` <- tryCatch({
          `IdentificationtasksReviewCreateActionErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksReviewCreateActionErrorComponent_instance` <- `IdentificationtasksReviewCreateActionErrorComponent`$new()
          instance <- `IdentificationtasksReviewCreateActionErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksReviewCreateActionErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksReviewCreateActionErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksReviewCreateActionErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksReviewCreateActionErrorComponent_result`["message"])
      }

      `IdentificationtasksReviewCreatePublicPhotoUuidErrorComponent_result` <- tryCatch({
          `IdentificationtasksReviewCreatePublicPhotoUuidErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksReviewCreatePublicPhotoUuidErrorComponent_instance` <- `IdentificationtasksReviewCreatePublicPhotoUuidErrorComponent`$new()
          instance <- `IdentificationtasksReviewCreatePublicPhotoUuidErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksReviewCreatePublicPhotoUuidErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksReviewCreatePublicPhotoUuidErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksReviewCreatePublicPhotoUuidErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksReviewCreatePublicPhotoUuidErrorComponent_result`["message"])
      }

      `IdentificationtasksReviewCreateIsSafeErrorComponent_result` <- tryCatch({
          `IdentificationtasksReviewCreateIsSafeErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksReviewCreateIsSafeErrorComponent_instance` <- `IdentificationtasksReviewCreateIsSafeErrorComponent`$new()
          instance <- `IdentificationtasksReviewCreateIsSafeErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksReviewCreateIsSafeErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksReviewCreateIsSafeErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksReviewCreateIsSafeErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksReviewCreateIsSafeErrorComponent_result`["message"])
      }

      `IdentificationtasksReviewCreatePublicNoteErrorComponent_result` <- tryCatch({
          `IdentificationtasksReviewCreatePublicNoteErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksReviewCreatePublicNoteErrorComponent_instance` <- `IdentificationtasksReviewCreatePublicNoteErrorComponent`$new()
          instance <- `IdentificationtasksReviewCreatePublicNoteErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksReviewCreatePublicNoteErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksReviewCreatePublicNoteErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksReviewCreatePublicNoteErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksReviewCreatePublicNoteErrorComponent_result`["message"])
      }

      `IdentificationtasksReviewCreateClassificationNonFieldErrorsErrorComponent_result` <- tryCatch({
          `IdentificationtasksReviewCreateClassificationNonFieldErrorsErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksReviewCreateClassificationNonFieldErrorsErrorComponent_instance` <- `IdentificationtasksReviewCreateClassificationNonFieldErrorsErrorComponent`$new()
          instance <- `IdentificationtasksReviewCreateClassificationNonFieldErrorsErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksReviewCreateClassificationNonFieldErrorsErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksReviewCreateClassificationNonFieldErrorsErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksReviewCreateClassificationNonFieldErrorsErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksReviewCreateClassificationNonFieldErrorsErrorComponent_result`["message"])
      }

      `IdentificationtasksReviewCreateClassificationTaxonIdErrorComponent_result` <- tryCatch({
          `IdentificationtasksReviewCreateClassificationTaxonIdErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksReviewCreateClassificationTaxonIdErrorComponent_instance` <- `IdentificationtasksReviewCreateClassificationTaxonIdErrorComponent`$new()
          instance <- `IdentificationtasksReviewCreateClassificationTaxonIdErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksReviewCreateClassificationTaxonIdErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksReviewCreateClassificationTaxonIdErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksReviewCreateClassificationTaxonIdErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksReviewCreateClassificationTaxonIdErrorComponent_result`["message"])
      }

      `IdentificationtasksReviewCreateClassificationConfidenceLabelErrorComponent_result` <- tryCatch({
          `IdentificationtasksReviewCreateClassificationConfidenceLabelErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksReviewCreateClassificationConfidenceLabelErrorComponent_instance` <- `IdentificationtasksReviewCreateClassificationConfidenceLabelErrorComponent`$new()
          instance <- `IdentificationtasksReviewCreateClassificationConfidenceLabelErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksReviewCreateClassificationConfidenceLabelErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksReviewCreateClassificationConfidenceLabelErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksReviewCreateClassificationConfidenceLabelErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksReviewCreateClassificationConfidenceLabelErrorComponent_result`["message"])
      }

      `IdentificationtasksReviewCreateCharacteristicsNonFieldErrorsErrorComponent_result` <- tryCatch({
          `IdentificationtasksReviewCreateCharacteristicsNonFieldErrorsErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksReviewCreateCharacteristicsNonFieldErrorsErrorComponent_instance` <- `IdentificationtasksReviewCreateCharacteristicsNonFieldErrorsErrorComponent`$new()
          instance <- `IdentificationtasksReviewCreateCharacteristicsNonFieldErrorsErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksReviewCreateCharacteristicsNonFieldErrorsErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksReviewCreateCharacteristicsNonFieldErrorsErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksReviewCreateCharacteristicsNonFieldErrorsErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksReviewCreateCharacteristicsNonFieldErrorsErrorComponent_result`["message"])
      }

      `IdentificationtasksReviewCreateCharacteristicsSexErrorComponent_result` <- tryCatch({
          `IdentificationtasksReviewCreateCharacteristicsSexErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksReviewCreateCharacteristicsSexErrorComponent_instance` <- `IdentificationtasksReviewCreateCharacteristicsSexErrorComponent`$new()
          instance <- `IdentificationtasksReviewCreateCharacteristicsSexErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksReviewCreateCharacteristicsSexErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksReviewCreateCharacteristicsSexErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksReviewCreateCharacteristicsSexErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksReviewCreateCharacteristicsSexErrorComponent_result`["message"])
      }

      `IdentificationtasksReviewCreateCharacteristicsIsBloodFedErrorComponent_result` <- tryCatch({
          `IdentificationtasksReviewCreateCharacteristicsIsBloodFedErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksReviewCreateCharacteristicsIsBloodFedErrorComponent_instance` <- `IdentificationtasksReviewCreateCharacteristicsIsBloodFedErrorComponent`$new()
          instance <- `IdentificationtasksReviewCreateCharacteristicsIsBloodFedErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksReviewCreateCharacteristicsIsBloodFedErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksReviewCreateCharacteristicsIsBloodFedErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksReviewCreateCharacteristicsIsBloodFedErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksReviewCreateCharacteristicsIsBloodFedErrorComponent_result`["message"])
      }

      `IdentificationtasksReviewCreateCharacteristicsIsGravidErrorComponent_result` <- tryCatch({
          `IdentificationtasksReviewCreateCharacteristicsIsGravidErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksReviewCreateCharacteristicsIsGravidErrorComponent_instance` <- `IdentificationtasksReviewCreateCharacteristicsIsGravidErrorComponent`$new()
          instance <- `IdentificationtasksReviewCreateCharacteristicsIsGravidErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksReviewCreateCharacteristicsIsGravidErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksReviewCreateCharacteristicsIsGravidErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksReviewCreateCharacteristicsIsGravidErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksReviewCreateCharacteristicsIsGravidErrorComponent_result`["message"])
      }

      if (matched == 1) {
        # successfully match exactly 1 schema specified in oneOf
        self$actual_instance <- instance
        self$actual_type <- instance_type
      } else if (matched > 1) {
        # more than 1 match
        stop(paste("Multiple matches found when deserializing the input into IdentificationtasksReviewCreateError with oneOf schemas IdentificationtasksReviewCreateActionErrorComponent, IdentificationtasksReviewCreateCharacteristicsIsBloodFedErrorComponent, IdentificationtasksReviewCreateCharacteristicsIsGravidErrorComponent, IdentificationtasksReviewCreateCharacteristicsNonFieldErrorsErrorComponent, IdentificationtasksReviewCreateCharacteristicsSexErrorComponent, IdentificationtasksReviewCreateClassificationConfidenceLabelErrorComponent, IdentificationtasksReviewCreateClassificationNonFieldErrorsErrorComponent, IdentificationtasksReviewCreateClassificationTaxonIdErrorComponent, IdentificationtasksReviewCreateIsSafeErrorComponent, IdentificationtasksReviewCreateNonFieldErrorsErrorComponent, IdentificationtasksReviewCreatePublicNoteErrorComponent, IdentificationtasksReviewCreatePublicPhotoUuidErrorComponent. Matched schemas: ",
                   paste(matched_schemas, collapse = ", ")))
      } else {
        # no match
        stop(paste("No match found when deserializing the input into IdentificationtasksReviewCreateError with oneOf schemas IdentificationtasksReviewCreateActionErrorComponent, IdentificationtasksReviewCreateCharacteristicsIsBloodFedErrorComponent, IdentificationtasksReviewCreateCharacteristicsIsGravidErrorComponent, IdentificationtasksReviewCreateCharacteristicsNonFieldErrorsErrorComponent, IdentificationtasksReviewCreateCharacteristicsSexErrorComponent, IdentificationtasksReviewCreateClassificationConfidenceLabelErrorComponent, IdentificationtasksReviewCreateClassificationNonFieldErrorsErrorComponent, IdentificationtasksReviewCreateClassificationTaxonIdErrorComponent, IdentificationtasksReviewCreateIsSafeErrorComponent, IdentificationtasksReviewCreateNonFieldErrorsErrorComponent, IdentificationtasksReviewCreatePublicNoteErrorComponent, IdentificationtasksReviewCreatePublicPhotoUuidErrorComponent. Details: >>",
                   paste(error_messages, collapse = " >> ")))
      }

      self
    },

    #' @description
    #' Serialize IdentificationtasksReviewCreateError to JSON string.
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return JSON string representation of the IdentificationtasksReviewCreateError.
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
    #' Convert IdentificationtasksReviewCreateError to a base R type
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
    #' Validate the input JSON with respect to IdentificationtasksReviewCreateError and
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
#IdentificationtasksReviewCreateError$unlock()
#
## Below is an example to define the print function
#IdentificationtasksReviewCreateError$set("public", "print", function(...) {
#  print(jsonlite::prettify(self$toJSONString()))
#  invisible(self)
#})
## Uncomment below to lock the class to prevent modifications to the method or field
#IdentificationtasksReviewCreateError$lock()

