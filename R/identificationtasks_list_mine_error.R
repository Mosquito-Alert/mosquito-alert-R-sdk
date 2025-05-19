#' @docType class
#' @title IdentificationtasksListMineError
#'
#' @description IdentificationtasksListMineError Class
#'
#' @format An \code{R6Class} generator object
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
IdentificationtasksListMineError <- R6::R6Class(
  "IdentificationtasksListMineError",
  public = list(
    #' @field actual_instance the object stored in this instance.
    actual_instance = NULL,
    #' @field actual_type the type of the object stored in this instance.
    actual_type = NULL,
    #' @field one_of  a list of types defined in the oneOf schema.
    one_of = list("IdentificationtasksListMineAnnotatorIdsErrorComponent", "IdentificationtasksListMineAssigneeIdsErrorComponent", "IdentificationtasksListMineCreatedAtErrorComponent", "IdentificationtasksListMineNumAnnotationsErrorComponent", "IdentificationtasksListMineObservationCountryIdsErrorComponent", "IdentificationtasksListMineOrderByErrorComponent", "IdentificationtasksListMineResultAgreementErrorComponent", "IdentificationtasksListMineResultConfidenceErrorComponent", "IdentificationtasksListMineResultSourceErrorComponent", "IdentificationtasksListMineResultTaxonIdsErrorComponent", "IdentificationtasksListMineResultUncertaintyErrorComponent", "IdentificationtasksListMineReviewTypeErrorComponent", "IdentificationtasksListMineStatusErrorComponent", "IdentificationtasksListMineUpdatedAtErrorComponent"),

    #' @description
    #' Initialize a new IdentificationtasksListMineError.
    #'
    #' @param instance an instance of the object defined in the oneOf schemas: "IdentificationtasksListMineAnnotatorIdsErrorComponent", "IdentificationtasksListMineAssigneeIdsErrorComponent", "IdentificationtasksListMineCreatedAtErrorComponent", "IdentificationtasksListMineNumAnnotationsErrorComponent", "IdentificationtasksListMineObservationCountryIdsErrorComponent", "IdentificationtasksListMineOrderByErrorComponent", "IdentificationtasksListMineResultAgreementErrorComponent", "IdentificationtasksListMineResultConfidenceErrorComponent", "IdentificationtasksListMineResultSourceErrorComponent", "IdentificationtasksListMineResultTaxonIdsErrorComponent", "IdentificationtasksListMineResultUncertaintyErrorComponent", "IdentificationtasksListMineReviewTypeErrorComponent", "IdentificationtasksListMineStatusErrorComponent", "IdentificationtasksListMineUpdatedAtErrorComponent"
    initialize = function(instance = NULL) {
      if (is.null(instance)) {
        # do nothing
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksListMineAnnotatorIdsErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksListMineAnnotatorIdsErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksListMineAssigneeIdsErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksListMineAssigneeIdsErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksListMineCreatedAtErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksListMineCreatedAtErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksListMineNumAnnotationsErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksListMineNumAnnotationsErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksListMineObservationCountryIdsErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksListMineObservationCountryIdsErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksListMineOrderByErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksListMineOrderByErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksListMineResultAgreementErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksListMineResultAgreementErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksListMineResultConfidenceErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksListMineResultConfidenceErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksListMineResultSourceErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksListMineResultSourceErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksListMineResultTaxonIdsErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksListMineResultTaxonIdsErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksListMineResultUncertaintyErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksListMineResultUncertaintyErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksListMineReviewTypeErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksListMineReviewTypeErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksListMineStatusErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksListMineStatusErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksListMineUpdatedAtErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksListMineUpdatedAtErrorComponent"
      } else {
        stop(paste("Failed to initialize IdentificationtasksListMineError with oneOf schemas IdentificationtasksListMineAnnotatorIdsErrorComponent, IdentificationtasksListMineAssigneeIdsErrorComponent, IdentificationtasksListMineCreatedAtErrorComponent, IdentificationtasksListMineNumAnnotationsErrorComponent, IdentificationtasksListMineObservationCountryIdsErrorComponent, IdentificationtasksListMineOrderByErrorComponent, IdentificationtasksListMineResultAgreementErrorComponent, IdentificationtasksListMineResultConfidenceErrorComponent, IdentificationtasksListMineResultSourceErrorComponent, IdentificationtasksListMineResultTaxonIdsErrorComponent, IdentificationtasksListMineResultUncertaintyErrorComponent, IdentificationtasksListMineReviewTypeErrorComponent, IdentificationtasksListMineStatusErrorComponent, IdentificationtasksListMineUpdatedAtErrorComponent. Provided class name: ",
                   get(class(instance)[[1]], pos = -1)$classname))
      }
    },

    #' @description
    #' Deserialize JSON string into an instance of IdentificationtasksListMineError.
    #' An alias to the method `fromJSON` .
    #'
    #' @param input The input JSON.
    #'
    #' @return An instance of IdentificationtasksListMineError.
    fromJSONString = function(input) {
      self$fromJSON(input)
    },

    #' @description
    #' Deserialize JSON string into an instance of IdentificationtasksListMineError.
    #'
    #' @param input The input JSON.
    #'
    #' @return An instance of IdentificationtasksListMineError.
    fromJSON = function(input) {
      matched <- 0 # match counter
      matched_schemas <- list() #names of matched schemas
      error_messages <- list()
      instance <- NULL

      `IdentificationtasksListMineReviewTypeErrorComponent_result` <- tryCatch({
          `IdentificationtasksListMineReviewTypeErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksListMineReviewTypeErrorComponent_instance` <- `IdentificationtasksListMineReviewTypeErrorComponent`$new()
          instance <- `IdentificationtasksListMineReviewTypeErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksListMineReviewTypeErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksListMineReviewTypeErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksListMineReviewTypeErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksListMineReviewTypeErrorComponent_result`["message"])
      }

      `IdentificationtasksListMineAnnotatorIdsErrorComponent_result` <- tryCatch({
          `IdentificationtasksListMineAnnotatorIdsErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksListMineAnnotatorIdsErrorComponent_instance` <- `IdentificationtasksListMineAnnotatorIdsErrorComponent`$new()
          instance <- `IdentificationtasksListMineAnnotatorIdsErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksListMineAnnotatorIdsErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksListMineAnnotatorIdsErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksListMineAnnotatorIdsErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksListMineAnnotatorIdsErrorComponent_result`["message"])
      }

      `IdentificationtasksListMineAssigneeIdsErrorComponent_result` <- tryCatch({
          `IdentificationtasksListMineAssigneeIdsErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksListMineAssigneeIdsErrorComponent_instance` <- `IdentificationtasksListMineAssigneeIdsErrorComponent`$new()
          instance <- `IdentificationtasksListMineAssigneeIdsErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksListMineAssigneeIdsErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksListMineAssigneeIdsErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksListMineAssigneeIdsErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksListMineAssigneeIdsErrorComponent_result`["message"])
      }

      `IdentificationtasksListMineNumAnnotationsErrorComponent_result` <- tryCatch({
          `IdentificationtasksListMineNumAnnotationsErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksListMineNumAnnotationsErrorComponent_instance` <- `IdentificationtasksListMineNumAnnotationsErrorComponent`$new()
          instance <- `IdentificationtasksListMineNumAnnotationsErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksListMineNumAnnotationsErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksListMineNumAnnotationsErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksListMineNumAnnotationsErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksListMineNumAnnotationsErrorComponent_result`["message"])
      }

      `IdentificationtasksListMineCreatedAtErrorComponent_result` <- tryCatch({
          `IdentificationtasksListMineCreatedAtErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksListMineCreatedAtErrorComponent_instance` <- `IdentificationtasksListMineCreatedAtErrorComponent`$new()
          instance <- `IdentificationtasksListMineCreatedAtErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksListMineCreatedAtErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksListMineCreatedAtErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksListMineCreatedAtErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksListMineCreatedAtErrorComponent_result`["message"])
      }

      `IdentificationtasksListMineUpdatedAtErrorComponent_result` <- tryCatch({
          `IdentificationtasksListMineUpdatedAtErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksListMineUpdatedAtErrorComponent_instance` <- `IdentificationtasksListMineUpdatedAtErrorComponent`$new()
          instance <- `IdentificationtasksListMineUpdatedAtErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksListMineUpdatedAtErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksListMineUpdatedAtErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksListMineUpdatedAtErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksListMineUpdatedAtErrorComponent_result`["message"])
      }

      `IdentificationtasksListMineOrderByErrorComponent_result` <- tryCatch({
          `IdentificationtasksListMineOrderByErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksListMineOrderByErrorComponent_instance` <- `IdentificationtasksListMineOrderByErrorComponent`$new()
          instance <- `IdentificationtasksListMineOrderByErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksListMineOrderByErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksListMineOrderByErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksListMineOrderByErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksListMineOrderByErrorComponent_result`["message"])
      }

      `IdentificationtasksListMineStatusErrorComponent_result` <- tryCatch({
          `IdentificationtasksListMineStatusErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksListMineStatusErrorComponent_instance` <- `IdentificationtasksListMineStatusErrorComponent`$new()
          instance <- `IdentificationtasksListMineStatusErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksListMineStatusErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksListMineStatusErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksListMineStatusErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksListMineStatusErrorComponent_result`["message"])
      }

      `IdentificationtasksListMineObservationCountryIdsErrorComponent_result` <- tryCatch({
          `IdentificationtasksListMineObservationCountryIdsErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksListMineObservationCountryIdsErrorComponent_instance` <- `IdentificationtasksListMineObservationCountryIdsErrorComponent`$new()
          instance <- `IdentificationtasksListMineObservationCountryIdsErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksListMineObservationCountryIdsErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksListMineObservationCountryIdsErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksListMineObservationCountryIdsErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksListMineObservationCountryIdsErrorComponent_result`["message"])
      }

      `IdentificationtasksListMineResultTaxonIdsErrorComponent_result` <- tryCatch({
          `IdentificationtasksListMineResultTaxonIdsErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksListMineResultTaxonIdsErrorComponent_instance` <- `IdentificationtasksListMineResultTaxonIdsErrorComponent`$new()
          instance <- `IdentificationtasksListMineResultTaxonIdsErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksListMineResultTaxonIdsErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksListMineResultTaxonIdsErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksListMineResultTaxonIdsErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksListMineResultTaxonIdsErrorComponent_result`["message"])
      }

      `IdentificationtasksListMineResultConfidenceErrorComponent_result` <- tryCatch({
          `IdentificationtasksListMineResultConfidenceErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksListMineResultConfidenceErrorComponent_instance` <- `IdentificationtasksListMineResultConfidenceErrorComponent`$new()
          instance <- `IdentificationtasksListMineResultConfidenceErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksListMineResultConfidenceErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksListMineResultConfidenceErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksListMineResultConfidenceErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksListMineResultConfidenceErrorComponent_result`["message"])
      }

      `IdentificationtasksListMineResultUncertaintyErrorComponent_result` <- tryCatch({
          `IdentificationtasksListMineResultUncertaintyErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksListMineResultUncertaintyErrorComponent_instance` <- `IdentificationtasksListMineResultUncertaintyErrorComponent`$new()
          instance <- `IdentificationtasksListMineResultUncertaintyErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksListMineResultUncertaintyErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksListMineResultUncertaintyErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksListMineResultUncertaintyErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksListMineResultUncertaintyErrorComponent_result`["message"])
      }

      `IdentificationtasksListMineResultAgreementErrorComponent_result` <- tryCatch({
          `IdentificationtasksListMineResultAgreementErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksListMineResultAgreementErrorComponent_instance` <- `IdentificationtasksListMineResultAgreementErrorComponent`$new()
          instance <- `IdentificationtasksListMineResultAgreementErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksListMineResultAgreementErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksListMineResultAgreementErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksListMineResultAgreementErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksListMineResultAgreementErrorComponent_result`["message"])
      }

      `IdentificationtasksListMineResultSourceErrorComponent_result` <- tryCatch({
          `IdentificationtasksListMineResultSourceErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksListMineResultSourceErrorComponent_instance` <- `IdentificationtasksListMineResultSourceErrorComponent`$new()
          instance <- `IdentificationtasksListMineResultSourceErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksListMineResultSourceErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksListMineResultSourceErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksListMineResultSourceErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksListMineResultSourceErrorComponent_result`["message"])
      }

      if (matched == 1) {
        # successfully match exactly 1 schema specified in oneOf
        self$actual_instance <- instance
        self$actual_type <- instance_type
      } else if (matched > 1) {
        # more than 1 match
        stop(paste("Multiple matches found when deserializing the input into IdentificationtasksListMineError with oneOf schemas IdentificationtasksListMineAnnotatorIdsErrorComponent, IdentificationtasksListMineAssigneeIdsErrorComponent, IdentificationtasksListMineCreatedAtErrorComponent, IdentificationtasksListMineNumAnnotationsErrorComponent, IdentificationtasksListMineObservationCountryIdsErrorComponent, IdentificationtasksListMineOrderByErrorComponent, IdentificationtasksListMineResultAgreementErrorComponent, IdentificationtasksListMineResultConfidenceErrorComponent, IdentificationtasksListMineResultSourceErrorComponent, IdentificationtasksListMineResultTaxonIdsErrorComponent, IdentificationtasksListMineResultUncertaintyErrorComponent, IdentificationtasksListMineReviewTypeErrorComponent, IdentificationtasksListMineStatusErrorComponent, IdentificationtasksListMineUpdatedAtErrorComponent. Matched schemas: ",
                   paste(matched_schemas, collapse = ", ")))
      } else {
        # no match
        stop(paste("No match found when deserializing the input into IdentificationtasksListMineError with oneOf schemas IdentificationtasksListMineAnnotatorIdsErrorComponent, IdentificationtasksListMineAssigneeIdsErrorComponent, IdentificationtasksListMineCreatedAtErrorComponent, IdentificationtasksListMineNumAnnotationsErrorComponent, IdentificationtasksListMineObservationCountryIdsErrorComponent, IdentificationtasksListMineOrderByErrorComponent, IdentificationtasksListMineResultAgreementErrorComponent, IdentificationtasksListMineResultConfidenceErrorComponent, IdentificationtasksListMineResultSourceErrorComponent, IdentificationtasksListMineResultTaxonIdsErrorComponent, IdentificationtasksListMineResultUncertaintyErrorComponent, IdentificationtasksListMineReviewTypeErrorComponent, IdentificationtasksListMineStatusErrorComponent, IdentificationtasksListMineUpdatedAtErrorComponent. Details: >>",
                   paste(error_messages, collapse = " >> ")))
      }

      self
    },

    #' @description
    #' Serialize IdentificationtasksListMineError to JSON string.
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return JSON string representation of the IdentificationtasksListMineError.
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
    #' Convert IdentificationtasksListMineError to a base R type
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
    #' Validate the input JSON with respect to IdentificationtasksListMineError and
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
#IdentificationtasksListMineError$unlock()
#
## Below is an example to define the print function
#IdentificationtasksListMineError$set("public", "print", function(...) {
#  print(jsonlite::prettify(self$toJSONString()))
#  invisible(self)
#})
## Uncomment below to lock the class to prevent modifications to the method or field
#IdentificationtasksListMineError$lock()

