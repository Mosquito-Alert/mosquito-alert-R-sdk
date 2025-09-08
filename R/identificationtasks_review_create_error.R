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
    one_of = list("IdentificationtasksReviewCreateActionErrorComponent", "IdentificationtasksReviewCreateIsSafeErrorComponent", "IdentificationtasksReviewCreateNonFieldErrorsErrorComponent", "IdentificationtasksReviewCreatePublicNoteErrorComponent", "IdentificationtasksReviewCreatePublicPhotoUuidErrorComponent", "IdentificationtasksReviewCreateResultConfidenceLabelErrorComponent", "IdentificationtasksReviewCreateResultNonFieldErrorsErrorComponent", "IdentificationtasksReviewCreateResultTaxonIdErrorComponent"),

    #' @description
    #' Initialize a new IdentificationtasksReviewCreateError.
    #'
    #' @param instance an instance of the object defined in the oneOf schemas: "IdentificationtasksReviewCreateActionErrorComponent", "IdentificationtasksReviewCreateIsSafeErrorComponent", "IdentificationtasksReviewCreateNonFieldErrorsErrorComponent", "IdentificationtasksReviewCreatePublicNoteErrorComponent", "IdentificationtasksReviewCreatePublicPhotoUuidErrorComponent", "IdentificationtasksReviewCreateResultConfidenceLabelErrorComponent", "IdentificationtasksReviewCreateResultNonFieldErrorsErrorComponent", "IdentificationtasksReviewCreateResultTaxonIdErrorComponent"
    initialize = function(instance = NULL) {
      if (is.null(instance)) {
        # do nothing
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksReviewCreateActionErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksReviewCreateActionErrorComponent"
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
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksReviewCreateResultConfidenceLabelErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksReviewCreateResultConfidenceLabelErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksReviewCreateResultNonFieldErrorsErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksReviewCreateResultNonFieldErrorsErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksReviewCreateResultTaxonIdErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksReviewCreateResultTaxonIdErrorComponent"
      } else {
        stop(paste("Failed to initialize IdentificationtasksReviewCreateError with oneOf schemas IdentificationtasksReviewCreateActionErrorComponent, IdentificationtasksReviewCreateIsSafeErrorComponent, IdentificationtasksReviewCreateNonFieldErrorsErrorComponent, IdentificationtasksReviewCreatePublicNoteErrorComponent, IdentificationtasksReviewCreatePublicPhotoUuidErrorComponent, IdentificationtasksReviewCreateResultConfidenceLabelErrorComponent, IdentificationtasksReviewCreateResultNonFieldErrorsErrorComponent, IdentificationtasksReviewCreateResultTaxonIdErrorComponent. Provided class name: ",
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

      `IdentificationtasksReviewCreateResultNonFieldErrorsErrorComponent_result` <- tryCatch({
          `IdentificationtasksReviewCreateResultNonFieldErrorsErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksReviewCreateResultNonFieldErrorsErrorComponent_instance` <- `IdentificationtasksReviewCreateResultNonFieldErrorsErrorComponent`$new()
          instance <- `IdentificationtasksReviewCreateResultNonFieldErrorsErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksReviewCreateResultNonFieldErrorsErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksReviewCreateResultNonFieldErrorsErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksReviewCreateResultNonFieldErrorsErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksReviewCreateResultNonFieldErrorsErrorComponent_result`["message"])
      }

      `IdentificationtasksReviewCreateResultTaxonIdErrorComponent_result` <- tryCatch({
          `IdentificationtasksReviewCreateResultTaxonIdErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksReviewCreateResultTaxonIdErrorComponent_instance` <- `IdentificationtasksReviewCreateResultTaxonIdErrorComponent`$new()
          instance <- `IdentificationtasksReviewCreateResultTaxonIdErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksReviewCreateResultTaxonIdErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksReviewCreateResultTaxonIdErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksReviewCreateResultTaxonIdErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksReviewCreateResultTaxonIdErrorComponent_result`["message"])
      }

      `IdentificationtasksReviewCreateResultConfidenceLabelErrorComponent_result` <- tryCatch({
          `IdentificationtasksReviewCreateResultConfidenceLabelErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksReviewCreateResultConfidenceLabelErrorComponent_instance` <- `IdentificationtasksReviewCreateResultConfidenceLabelErrorComponent`$new()
          instance <- `IdentificationtasksReviewCreateResultConfidenceLabelErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksReviewCreateResultConfidenceLabelErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksReviewCreateResultConfidenceLabelErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksReviewCreateResultConfidenceLabelErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksReviewCreateResultConfidenceLabelErrorComponent_result`["message"])
      }

      if (matched == 1) {
        # successfully match exactly 1 schema specified in oneOf
        self$actual_instance <- instance
        self$actual_type <- instance_type
      } else if (matched > 1) {
        # more than 1 match
        stop(paste("Multiple matches found when deserializing the input into IdentificationtasksReviewCreateError with oneOf schemas IdentificationtasksReviewCreateActionErrorComponent, IdentificationtasksReviewCreateIsSafeErrorComponent, IdentificationtasksReviewCreateNonFieldErrorsErrorComponent, IdentificationtasksReviewCreatePublicNoteErrorComponent, IdentificationtasksReviewCreatePublicPhotoUuidErrorComponent, IdentificationtasksReviewCreateResultConfidenceLabelErrorComponent, IdentificationtasksReviewCreateResultNonFieldErrorsErrorComponent, IdentificationtasksReviewCreateResultTaxonIdErrorComponent. Matched schemas: ",
                   paste(matched_schemas, collapse = ", ")))
      } else {
        # no match
        stop(paste("No match found when deserializing the input into IdentificationtasksReviewCreateError with oneOf schemas IdentificationtasksReviewCreateActionErrorComponent, IdentificationtasksReviewCreateIsSafeErrorComponent, IdentificationtasksReviewCreateNonFieldErrorsErrorComponent, IdentificationtasksReviewCreatePublicNoteErrorComponent, IdentificationtasksReviewCreatePublicPhotoUuidErrorComponent, IdentificationtasksReviewCreateResultConfidenceLabelErrorComponent, IdentificationtasksReviewCreateResultNonFieldErrorsErrorComponent, IdentificationtasksReviewCreateResultTaxonIdErrorComponent. Details: >>",
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

