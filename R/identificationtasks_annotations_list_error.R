#' @docType class
#' @title IdentificationtasksAnnotationsListError
#'
#' @description IdentificationtasksAnnotationsListError Class
#'
#' @format An \code{R6Class} generator object
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
IdentificationtasksAnnotationsListError <- R6::R6Class(
  "IdentificationtasksAnnotationsListError",
  public = list(
    #' @field actual_instance the object stored in this instance.
    actual_instance = NULL,
    #' @field actual_type the type of the object stored in this instance.
    actual_type = NULL,
    #' @field one_of  a list of types defined in the oneOf schema.
    one_of = list("IdentificationtasksAnnotationsListClassificationConfidenceErrorComponent", "IdentificationtasksAnnotationsListClassificationConfidenceLabelErrorComponent", "IdentificationtasksAnnotationsListClassificationTaxonIdsErrorComponent", "IdentificationtasksAnnotationsListCreatedAtErrorComponent", "IdentificationtasksAnnotationsListOrderByErrorComponent", "IdentificationtasksAnnotationsListTypeErrorComponent", "IdentificationtasksAnnotationsListUpdatedAtErrorComponent", "IdentificationtasksAnnotationsListUserIdsErrorComponent"),

    #' @description
    #' Initialize a new IdentificationtasksAnnotationsListError.
    #'
    #' @param instance an instance of the object defined in the oneOf schemas: "IdentificationtasksAnnotationsListClassificationConfidenceErrorComponent", "IdentificationtasksAnnotationsListClassificationConfidenceLabelErrorComponent", "IdentificationtasksAnnotationsListClassificationTaxonIdsErrorComponent", "IdentificationtasksAnnotationsListCreatedAtErrorComponent", "IdentificationtasksAnnotationsListOrderByErrorComponent", "IdentificationtasksAnnotationsListTypeErrorComponent", "IdentificationtasksAnnotationsListUpdatedAtErrorComponent", "IdentificationtasksAnnotationsListUserIdsErrorComponent"
    initialize = function(instance = NULL) {
      if (is.null(instance)) {
        # do nothing
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksAnnotationsListClassificationConfidenceErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksAnnotationsListClassificationConfidenceErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksAnnotationsListClassificationConfidenceLabelErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksAnnotationsListClassificationConfidenceLabelErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksAnnotationsListClassificationTaxonIdsErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksAnnotationsListClassificationTaxonIdsErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksAnnotationsListCreatedAtErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksAnnotationsListCreatedAtErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksAnnotationsListOrderByErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksAnnotationsListOrderByErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksAnnotationsListTypeErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksAnnotationsListTypeErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksAnnotationsListUpdatedAtErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksAnnotationsListUpdatedAtErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksAnnotationsListUserIdsErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksAnnotationsListUserIdsErrorComponent"
      } else {
        stop(paste("Failed to initialize IdentificationtasksAnnotationsListError with oneOf schemas IdentificationtasksAnnotationsListClassificationConfidenceErrorComponent, IdentificationtasksAnnotationsListClassificationConfidenceLabelErrorComponent, IdentificationtasksAnnotationsListClassificationTaxonIdsErrorComponent, IdentificationtasksAnnotationsListCreatedAtErrorComponent, IdentificationtasksAnnotationsListOrderByErrorComponent, IdentificationtasksAnnotationsListTypeErrorComponent, IdentificationtasksAnnotationsListUpdatedAtErrorComponent, IdentificationtasksAnnotationsListUserIdsErrorComponent. Provided class name: ",
                   get(class(instance)[[1]], pos = -1)$classname))
      }
    },

    #' @description
    #' Deserialize JSON string into an instance of IdentificationtasksAnnotationsListError.
    #' An alias to the method `fromJSON` .
    #'
    #' @param input The input JSON.
    #'
    #' @return An instance of IdentificationtasksAnnotationsListError.
    fromJSONString = function(input) {
      self$fromJSON(input)
    },

    #' @description
    #' Deserialize JSON string into an instance of IdentificationtasksAnnotationsListError.
    #'
    #' @param input The input JSON.
    #'
    #' @return An instance of IdentificationtasksAnnotationsListError.
    fromJSON = function(input) {
      matched <- 0 # match counter
      matched_schemas <- list() #names of matched schemas
      error_messages <- list()
      instance <- NULL

      `IdentificationtasksAnnotationsListUserIdsErrorComponent_result` <- tryCatch({
          `IdentificationtasksAnnotationsListUserIdsErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksAnnotationsListUserIdsErrorComponent_instance` <- `IdentificationtasksAnnotationsListUserIdsErrorComponent`$new()
          instance <- `IdentificationtasksAnnotationsListUserIdsErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksAnnotationsListUserIdsErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksAnnotationsListUserIdsErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksAnnotationsListUserIdsErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksAnnotationsListUserIdsErrorComponent_result`["message"])
      }

      `IdentificationtasksAnnotationsListClassificationTaxonIdsErrorComponent_result` <- tryCatch({
          `IdentificationtasksAnnotationsListClassificationTaxonIdsErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksAnnotationsListClassificationTaxonIdsErrorComponent_instance` <- `IdentificationtasksAnnotationsListClassificationTaxonIdsErrorComponent`$new()
          instance <- `IdentificationtasksAnnotationsListClassificationTaxonIdsErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksAnnotationsListClassificationTaxonIdsErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksAnnotationsListClassificationTaxonIdsErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksAnnotationsListClassificationTaxonIdsErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksAnnotationsListClassificationTaxonIdsErrorComponent_result`["message"])
      }

      `IdentificationtasksAnnotationsListClassificationConfidenceErrorComponent_result` <- tryCatch({
          `IdentificationtasksAnnotationsListClassificationConfidenceErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksAnnotationsListClassificationConfidenceErrorComponent_instance` <- `IdentificationtasksAnnotationsListClassificationConfidenceErrorComponent`$new()
          instance <- `IdentificationtasksAnnotationsListClassificationConfidenceErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksAnnotationsListClassificationConfidenceErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksAnnotationsListClassificationConfidenceErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksAnnotationsListClassificationConfidenceErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksAnnotationsListClassificationConfidenceErrorComponent_result`["message"])
      }

      `IdentificationtasksAnnotationsListClassificationConfidenceLabelErrorComponent_result` <- tryCatch({
          `IdentificationtasksAnnotationsListClassificationConfidenceLabelErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksAnnotationsListClassificationConfidenceLabelErrorComponent_instance` <- `IdentificationtasksAnnotationsListClassificationConfidenceLabelErrorComponent`$new()
          instance <- `IdentificationtasksAnnotationsListClassificationConfidenceLabelErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksAnnotationsListClassificationConfidenceLabelErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksAnnotationsListClassificationConfidenceLabelErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksAnnotationsListClassificationConfidenceLabelErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksAnnotationsListClassificationConfidenceLabelErrorComponent_result`["message"])
      }

      `IdentificationtasksAnnotationsListCreatedAtErrorComponent_result` <- tryCatch({
          `IdentificationtasksAnnotationsListCreatedAtErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksAnnotationsListCreatedAtErrorComponent_instance` <- `IdentificationtasksAnnotationsListCreatedAtErrorComponent`$new()
          instance <- `IdentificationtasksAnnotationsListCreatedAtErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksAnnotationsListCreatedAtErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksAnnotationsListCreatedAtErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksAnnotationsListCreatedAtErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksAnnotationsListCreatedAtErrorComponent_result`["message"])
      }

      `IdentificationtasksAnnotationsListUpdatedAtErrorComponent_result` <- tryCatch({
          `IdentificationtasksAnnotationsListUpdatedAtErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksAnnotationsListUpdatedAtErrorComponent_instance` <- `IdentificationtasksAnnotationsListUpdatedAtErrorComponent`$new()
          instance <- `IdentificationtasksAnnotationsListUpdatedAtErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksAnnotationsListUpdatedAtErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksAnnotationsListUpdatedAtErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksAnnotationsListUpdatedAtErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksAnnotationsListUpdatedAtErrorComponent_result`["message"])
      }

      `IdentificationtasksAnnotationsListTypeErrorComponent_result` <- tryCatch({
          `IdentificationtasksAnnotationsListTypeErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksAnnotationsListTypeErrorComponent_instance` <- `IdentificationtasksAnnotationsListTypeErrorComponent`$new()
          instance <- `IdentificationtasksAnnotationsListTypeErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksAnnotationsListTypeErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksAnnotationsListTypeErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksAnnotationsListTypeErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksAnnotationsListTypeErrorComponent_result`["message"])
      }

      `IdentificationtasksAnnotationsListOrderByErrorComponent_result` <- tryCatch({
          `IdentificationtasksAnnotationsListOrderByErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksAnnotationsListOrderByErrorComponent_instance` <- `IdentificationtasksAnnotationsListOrderByErrorComponent`$new()
          instance <- `IdentificationtasksAnnotationsListOrderByErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksAnnotationsListOrderByErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksAnnotationsListOrderByErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksAnnotationsListOrderByErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksAnnotationsListOrderByErrorComponent_result`["message"])
      }

      if (matched == 1) {
        # successfully match exactly 1 schema specified in oneOf
        self$actual_instance <- instance
        self$actual_type <- instance_type
      } else if (matched > 1) {
        # more than 1 match
        stop(paste("Multiple matches found when deserializing the input into IdentificationtasksAnnotationsListError with oneOf schemas IdentificationtasksAnnotationsListClassificationConfidenceErrorComponent, IdentificationtasksAnnotationsListClassificationConfidenceLabelErrorComponent, IdentificationtasksAnnotationsListClassificationTaxonIdsErrorComponent, IdentificationtasksAnnotationsListCreatedAtErrorComponent, IdentificationtasksAnnotationsListOrderByErrorComponent, IdentificationtasksAnnotationsListTypeErrorComponent, IdentificationtasksAnnotationsListUpdatedAtErrorComponent, IdentificationtasksAnnotationsListUserIdsErrorComponent. Matched schemas: ",
                   paste(matched_schemas, collapse = ", ")))
      } else {
        # no match
        stop(paste("No match found when deserializing the input into IdentificationtasksAnnotationsListError with oneOf schemas IdentificationtasksAnnotationsListClassificationConfidenceErrorComponent, IdentificationtasksAnnotationsListClassificationConfidenceLabelErrorComponent, IdentificationtasksAnnotationsListClassificationTaxonIdsErrorComponent, IdentificationtasksAnnotationsListCreatedAtErrorComponent, IdentificationtasksAnnotationsListOrderByErrorComponent, IdentificationtasksAnnotationsListTypeErrorComponent, IdentificationtasksAnnotationsListUpdatedAtErrorComponent, IdentificationtasksAnnotationsListUserIdsErrorComponent. Details: >>",
                   paste(error_messages, collapse = " >> ")))
      }

      self
    },

    #' @description
    #' Serialize IdentificationtasksAnnotationsListError to JSON string.
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return JSON string representation of the IdentificationtasksAnnotationsListError.
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
    #' Convert IdentificationtasksAnnotationsListError to a base R type
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
    #' Validate the input JSON with respect to IdentificationtasksAnnotationsListError and
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
#IdentificationtasksAnnotationsListError$unlock()
#
## Below is an example to define the print function
#IdentificationtasksAnnotationsListError$set("public", "print", function(...) {
#  print(jsonlite::prettify(self$toJSONString()))
#  invisible(self)
#})
## Uncomment below to lock the class to prevent modifications to the method or field
#IdentificationtasksAnnotationsListError$lock()

