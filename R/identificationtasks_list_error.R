#' @docType class
#' @title IdentificationtasksListError
#'
#' @description IdentificationtasksListError Class
#'
#' @format An \code{R6Class} generator object
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
IdentificationtasksListError <- R6::R6Class(
  "IdentificationtasksListError",
  public = list(
    #' @field actual_instance the object stored in this instance.
    actual_instance = NULL,
    #' @field actual_type the type of the object stored in this instance.
    actual_type = NULL,
    #' @field one_of  a list of types defined in the oneOf schema.
    one_of = list("IdentificationtasksListAnnotatorIdsErrorComponent", "IdentificationtasksListAssigneeIdsErrorComponent", "IdentificationtasksListCreatedAtErrorComponent", "IdentificationtasksListNumAnnotationsErrorComponent", "IdentificationtasksListObservationCountryIdsErrorComponent", "IdentificationtasksListOrderByErrorComponent", "IdentificationtasksListResultAgreementErrorComponent", "IdentificationtasksListResultConfidenceErrorComponent", "IdentificationtasksListResultSourceErrorComponent", "IdentificationtasksListResultTaxonIdsErrorComponent", "IdentificationtasksListResultUncertaintyErrorComponent", "IdentificationtasksListReviewActionErrorComponent", "IdentificationtasksListStatusErrorComponent", "IdentificationtasksListUpdatedAtErrorComponent"),

    #' @description
    #' Initialize a new IdentificationtasksListError.
    #'
    #' @param instance an instance of the object defined in the oneOf schemas: "IdentificationtasksListAnnotatorIdsErrorComponent", "IdentificationtasksListAssigneeIdsErrorComponent", "IdentificationtasksListCreatedAtErrorComponent", "IdentificationtasksListNumAnnotationsErrorComponent", "IdentificationtasksListObservationCountryIdsErrorComponent", "IdentificationtasksListOrderByErrorComponent", "IdentificationtasksListResultAgreementErrorComponent", "IdentificationtasksListResultConfidenceErrorComponent", "IdentificationtasksListResultSourceErrorComponent", "IdentificationtasksListResultTaxonIdsErrorComponent", "IdentificationtasksListResultUncertaintyErrorComponent", "IdentificationtasksListReviewActionErrorComponent", "IdentificationtasksListStatusErrorComponent", "IdentificationtasksListUpdatedAtErrorComponent"
    initialize = function(instance = NULL) {
      if (is.null(instance)) {
        # do nothing
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksListAnnotatorIdsErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksListAnnotatorIdsErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksListAssigneeIdsErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksListAssigneeIdsErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksListCreatedAtErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksListCreatedAtErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksListNumAnnotationsErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksListNumAnnotationsErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksListObservationCountryIdsErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksListObservationCountryIdsErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksListOrderByErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksListOrderByErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksListResultAgreementErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksListResultAgreementErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksListResultConfidenceErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksListResultConfidenceErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksListResultSourceErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksListResultSourceErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksListResultTaxonIdsErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksListResultTaxonIdsErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksListResultUncertaintyErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksListResultUncertaintyErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksListReviewActionErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksListReviewActionErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksListStatusErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksListStatusErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksListUpdatedAtErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksListUpdatedAtErrorComponent"
      } else {
        stop(paste("Failed to initialize IdentificationtasksListError with oneOf schemas IdentificationtasksListAnnotatorIdsErrorComponent, IdentificationtasksListAssigneeIdsErrorComponent, IdentificationtasksListCreatedAtErrorComponent, IdentificationtasksListNumAnnotationsErrorComponent, IdentificationtasksListObservationCountryIdsErrorComponent, IdentificationtasksListOrderByErrorComponent, IdentificationtasksListResultAgreementErrorComponent, IdentificationtasksListResultConfidenceErrorComponent, IdentificationtasksListResultSourceErrorComponent, IdentificationtasksListResultTaxonIdsErrorComponent, IdentificationtasksListResultUncertaintyErrorComponent, IdentificationtasksListReviewActionErrorComponent, IdentificationtasksListStatusErrorComponent, IdentificationtasksListUpdatedAtErrorComponent. Provided class name: ",
                   get(class(instance)[[1]], pos = -1)$classname))
      }
    },

    #' @description
    #' Deserialize JSON string into an instance of IdentificationtasksListError.
    #' An alias to the method `fromJSON` .
    #'
    #' @param input The input JSON.
    #'
    #' @return An instance of IdentificationtasksListError.
    fromJSONString = function(input) {
      self$fromJSON(input)
    },

    #' @description
    #' Deserialize JSON string into an instance of IdentificationtasksListError.
    #'
    #' @param input The input JSON.
    #'
    #' @return An instance of IdentificationtasksListError.
    fromJSON = function(input) {
      matched <- 0 # match counter
      matched_schemas <- list() #names of matched schemas
      error_messages <- list()
      instance <- NULL

      `IdentificationtasksListAnnotatorIdsErrorComponent_result` <- tryCatch({
          `IdentificationtasksListAnnotatorIdsErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksListAnnotatorIdsErrorComponent_instance` <- `IdentificationtasksListAnnotatorIdsErrorComponent`$new()
          instance <- `IdentificationtasksListAnnotatorIdsErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksListAnnotatorIdsErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksListAnnotatorIdsErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksListAnnotatorIdsErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksListAnnotatorIdsErrorComponent_result`["message"])
      }

      `IdentificationtasksListAssigneeIdsErrorComponent_result` <- tryCatch({
          `IdentificationtasksListAssigneeIdsErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksListAssigneeIdsErrorComponent_instance` <- `IdentificationtasksListAssigneeIdsErrorComponent`$new()
          instance <- `IdentificationtasksListAssigneeIdsErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksListAssigneeIdsErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksListAssigneeIdsErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksListAssigneeIdsErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksListAssigneeIdsErrorComponent_result`["message"])
      }

      `IdentificationtasksListNumAnnotationsErrorComponent_result` <- tryCatch({
          `IdentificationtasksListNumAnnotationsErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksListNumAnnotationsErrorComponent_instance` <- `IdentificationtasksListNumAnnotationsErrorComponent`$new()
          instance <- `IdentificationtasksListNumAnnotationsErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksListNumAnnotationsErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksListNumAnnotationsErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksListNumAnnotationsErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksListNumAnnotationsErrorComponent_result`["message"])
      }

      `IdentificationtasksListCreatedAtErrorComponent_result` <- tryCatch({
          `IdentificationtasksListCreatedAtErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksListCreatedAtErrorComponent_instance` <- `IdentificationtasksListCreatedAtErrorComponent`$new()
          instance <- `IdentificationtasksListCreatedAtErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksListCreatedAtErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksListCreatedAtErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksListCreatedAtErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksListCreatedAtErrorComponent_result`["message"])
      }

      `IdentificationtasksListUpdatedAtErrorComponent_result` <- tryCatch({
          `IdentificationtasksListUpdatedAtErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksListUpdatedAtErrorComponent_instance` <- `IdentificationtasksListUpdatedAtErrorComponent`$new()
          instance <- `IdentificationtasksListUpdatedAtErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksListUpdatedAtErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksListUpdatedAtErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksListUpdatedAtErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksListUpdatedAtErrorComponent_result`["message"])
      }

      `IdentificationtasksListOrderByErrorComponent_result` <- tryCatch({
          `IdentificationtasksListOrderByErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksListOrderByErrorComponent_instance` <- `IdentificationtasksListOrderByErrorComponent`$new()
          instance <- `IdentificationtasksListOrderByErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksListOrderByErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksListOrderByErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksListOrderByErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksListOrderByErrorComponent_result`["message"])
      }

      `IdentificationtasksListStatusErrorComponent_result` <- tryCatch({
          `IdentificationtasksListStatusErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksListStatusErrorComponent_instance` <- `IdentificationtasksListStatusErrorComponent`$new()
          instance <- `IdentificationtasksListStatusErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksListStatusErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksListStatusErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksListStatusErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksListStatusErrorComponent_result`["message"])
      }

      `IdentificationtasksListObservationCountryIdsErrorComponent_result` <- tryCatch({
          `IdentificationtasksListObservationCountryIdsErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksListObservationCountryIdsErrorComponent_instance` <- `IdentificationtasksListObservationCountryIdsErrorComponent`$new()
          instance <- `IdentificationtasksListObservationCountryIdsErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksListObservationCountryIdsErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksListObservationCountryIdsErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksListObservationCountryIdsErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksListObservationCountryIdsErrorComponent_result`["message"])
      }

      `IdentificationtasksListResultTaxonIdsErrorComponent_result` <- tryCatch({
          `IdentificationtasksListResultTaxonIdsErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksListResultTaxonIdsErrorComponent_instance` <- `IdentificationtasksListResultTaxonIdsErrorComponent`$new()
          instance <- `IdentificationtasksListResultTaxonIdsErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksListResultTaxonIdsErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksListResultTaxonIdsErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksListResultTaxonIdsErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksListResultTaxonIdsErrorComponent_result`["message"])
      }

      `IdentificationtasksListResultConfidenceErrorComponent_result` <- tryCatch({
          `IdentificationtasksListResultConfidenceErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksListResultConfidenceErrorComponent_instance` <- `IdentificationtasksListResultConfidenceErrorComponent`$new()
          instance <- `IdentificationtasksListResultConfidenceErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksListResultConfidenceErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksListResultConfidenceErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksListResultConfidenceErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksListResultConfidenceErrorComponent_result`["message"])
      }

      `IdentificationtasksListResultUncertaintyErrorComponent_result` <- tryCatch({
          `IdentificationtasksListResultUncertaintyErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksListResultUncertaintyErrorComponent_instance` <- `IdentificationtasksListResultUncertaintyErrorComponent`$new()
          instance <- `IdentificationtasksListResultUncertaintyErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksListResultUncertaintyErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksListResultUncertaintyErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksListResultUncertaintyErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksListResultUncertaintyErrorComponent_result`["message"])
      }

      `IdentificationtasksListResultAgreementErrorComponent_result` <- tryCatch({
          `IdentificationtasksListResultAgreementErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksListResultAgreementErrorComponent_instance` <- `IdentificationtasksListResultAgreementErrorComponent`$new()
          instance <- `IdentificationtasksListResultAgreementErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksListResultAgreementErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksListResultAgreementErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksListResultAgreementErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksListResultAgreementErrorComponent_result`["message"])
      }

      `IdentificationtasksListResultSourceErrorComponent_result` <- tryCatch({
          `IdentificationtasksListResultSourceErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksListResultSourceErrorComponent_instance` <- `IdentificationtasksListResultSourceErrorComponent`$new()
          instance <- `IdentificationtasksListResultSourceErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksListResultSourceErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksListResultSourceErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksListResultSourceErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksListResultSourceErrorComponent_result`["message"])
      }

      `IdentificationtasksListReviewActionErrorComponent_result` <- tryCatch({
          `IdentificationtasksListReviewActionErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksListReviewActionErrorComponent_instance` <- `IdentificationtasksListReviewActionErrorComponent`$new()
          instance <- `IdentificationtasksListReviewActionErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksListReviewActionErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksListReviewActionErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksListReviewActionErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksListReviewActionErrorComponent_result`["message"])
      }

      if (matched == 1) {
        # successfully match exactly 1 schema specified in oneOf
        self$actual_instance <- instance
        self$actual_type <- instance_type
      } else if (matched > 1) {
        # more than 1 match
        stop(paste("Multiple matches found when deserializing the input into IdentificationtasksListError with oneOf schemas IdentificationtasksListAnnotatorIdsErrorComponent, IdentificationtasksListAssigneeIdsErrorComponent, IdentificationtasksListCreatedAtErrorComponent, IdentificationtasksListNumAnnotationsErrorComponent, IdentificationtasksListObservationCountryIdsErrorComponent, IdentificationtasksListOrderByErrorComponent, IdentificationtasksListResultAgreementErrorComponent, IdentificationtasksListResultConfidenceErrorComponent, IdentificationtasksListResultSourceErrorComponent, IdentificationtasksListResultTaxonIdsErrorComponent, IdentificationtasksListResultUncertaintyErrorComponent, IdentificationtasksListReviewActionErrorComponent, IdentificationtasksListStatusErrorComponent, IdentificationtasksListUpdatedAtErrorComponent. Matched schemas: ",
                   paste(matched_schemas, collapse = ", ")))
      } else {
        # no match
        stop(paste("No match found when deserializing the input into IdentificationtasksListError with oneOf schemas IdentificationtasksListAnnotatorIdsErrorComponent, IdentificationtasksListAssigneeIdsErrorComponent, IdentificationtasksListCreatedAtErrorComponent, IdentificationtasksListNumAnnotationsErrorComponent, IdentificationtasksListObservationCountryIdsErrorComponent, IdentificationtasksListOrderByErrorComponent, IdentificationtasksListResultAgreementErrorComponent, IdentificationtasksListResultConfidenceErrorComponent, IdentificationtasksListResultSourceErrorComponent, IdentificationtasksListResultTaxonIdsErrorComponent, IdentificationtasksListResultUncertaintyErrorComponent, IdentificationtasksListReviewActionErrorComponent, IdentificationtasksListStatusErrorComponent, IdentificationtasksListUpdatedAtErrorComponent. Details: >>",
                   paste(error_messages, collapse = " >> ")))
      }

      self
    },

    #' @description
    #' Serialize IdentificationtasksListError to JSON string.
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return JSON string representation of the IdentificationtasksListError.
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
    #' Convert IdentificationtasksListError to a base R type
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
    #' Validate the input JSON with respect to IdentificationtasksListError and
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
#IdentificationtasksListError$unlock()
#
## Below is an example to define the print function
#IdentificationtasksListError$set("public", "print", function(...) {
#  print(jsonlite::prettify(self$toJSONString()))
#  invisible(self)
#})
## Uncomment below to lock the class to prevent modifications to the method or field
#IdentificationtasksListError$lock()

