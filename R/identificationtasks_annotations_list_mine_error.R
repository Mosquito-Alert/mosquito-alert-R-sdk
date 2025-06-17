#' @docType class
#' @title IdentificationtasksAnnotationsListMineError
#'
#' @description IdentificationtasksAnnotationsListMineError Class
#'
#' @format An \code{R6Class} generator object
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
IdentificationtasksAnnotationsListMineError <- R6::R6Class(
  "IdentificationtasksAnnotationsListMineError",
  public = list(
    #' @field actual_instance the object stored in this instance.
    actual_instance = NULL,
    #' @field actual_type the type of the object stored in this instance.
    actual_type = NULL,
    #' @field one_of  a list of types defined in the oneOf schema.
    one_of = list("IdentificationtasksAnnotationsListMineClassificationConfidenceErrorComponent", "IdentificationtasksAnnotationsListMineClassificationConfidenceLabelErrorComponent", "IdentificationtasksAnnotationsListMineClassificationTaxonIdsErrorComponent", "IdentificationtasksAnnotationsListMineCreatedAtErrorComponent", "IdentificationtasksAnnotationsListMineOrderByErrorComponent", "IdentificationtasksAnnotationsListMineTypeErrorComponent", "IdentificationtasksAnnotationsListMineUpdatedAtErrorComponent", "IdentificationtasksAnnotationsListMineUserIdsErrorComponent"),

    #' @description
    #' Initialize a new IdentificationtasksAnnotationsListMineError.
    #'
    #' @param instance an instance of the object defined in the oneOf schemas: "IdentificationtasksAnnotationsListMineClassificationConfidenceErrorComponent", "IdentificationtasksAnnotationsListMineClassificationConfidenceLabelErrorComponent", "IdentificationtasksAnnotationsListMineClassificationTaxonIdsErrorComponent", "IdentificationtasksAnnotationsListMineCreatedAtErrorComponent", "IdentificationtasksAnnotationsListMineOrderByErrorComponent", "IdentificationtasksAnnotationsListMineTypeErrorComponent", "IdentificationtasksAnnotationsListMineUpdatedAtErrorComponent", "IdentificationtasksAnnotationsListMineUserIdsErrorComponent"
    initialize = function(instance = NULL) {
      if (is.null(instance)) {
        # do nothing
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksAnnotationsListMineClassificationConfidenceErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksAnnotationsListMineClassificationConfidenceErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksAnnotationsListMineClassificationConfidenceLabelErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksAnnotationsListMineClassificationConfidenceLabelErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksAnnotationsListMineClassificationTaxonIdsErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksAnnotationsListMineClassificationTaxonIdsErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksAnnotationsListMineCreatedAtErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksAnnotationsListMineCreatedAtErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksAnnotationsListMineOrderByErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksAnnotationsListMineOrderByErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksAnnotationsListMineTypeErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksAnnotationsListMineTypeErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksAnnotationsListMineUpdatedAtErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksAnnotationsListMineUpdatedAtErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "IdentificationtasksAnnotationsListMineUserIdsErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "IdentificationtasksAnnotationsListMineUserIdsErrorComponent"
      } else {
        stop(paste("Failed to initialize IdentificationtasksAnnotationsListMineError with oneOf schemas IdentificationtasksAnnotationsListMineClassificationConfidenceErrorComponent, IdentificationtasksAnnotationsListMineClassificationConfidenceLabelErrorComponent, IdentificationtasksAnnotationsListMineClassificationTaxonIdsErrorComponent, IdentificationtasksAnnotationsListMineCreatedAtErrorComponent, IdentificationtasksAnnotationsListMineOrderByErrorComponent, IdentificationtasksAnnotationsListMineTypeErrorComponent, IdentificationtasksAnnotationsListMineUpdatedAtErrorComponent, IdentificationtasksAnnotationsListMineUserIdsErrorComponent. Provided class name: ",
                   get(class(instance)[[1]], pos = -1)$classname))
      }
    },

    #' @description
    #' Deserialize JSON string into an instance of IdentificationtasksAnnotationsListMineError.
    #' An alias to the method `fromJSON` .
    #'
    #' @param input The input JSON.
    #'
    #' @return An instance of IdentificationtasksAnnotationsListMineError.
    fromJSONString = function(input) {
      self$fromJSON(input)
    },

    #' @description
    #' Deserialize JSON string into an instance of IdentificationtasksAnnotationsListMineError.
    #'
    #' @param input The input JSON.
    #'
    #' @return An instance of IdentificationtasksAnnotationsListMineError.
    fromJSON = function(input) {
      matched <- 0 # match counter
      matched_schemas <- list() #names of matched schemas
      error_messages <- list()
      instance <- NULL

      `IdentificationtasksAnnotationsListMineUserIdsErrorComponent_result` <- tryCatch({
          `IdentificationtasksAnnotationsListMineUserIdsErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksAnnotationsListMineUserIdsErrorComponent_instance` <- `IdentificationtasksAnnotationsListMineUserIdsErrorComponent`$new()
          instance <- `IdentificationtasksAnnotationsListMineUserIdsErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksAnnotationsListMineUserIdsErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksAnnotationsListMineUserIdsErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksAnnotationsListMineUserIdsErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksAnnotationsListMineUserIdsErrorComponent_result`["message"])
      }

      `IdentificationtasksAnnotationsListMineClassificationTaxonIdsErrorComponent_result` <- tryCatch({
          `IdentificationtasksAnnotationsListMineClassificationTaxonIdsErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksAnnotationsListMineClassificationTaxonIdsErrorComponent_instance` <- `IdentificationtasksAnnotationsListMineClassificationTaxonIdsErrorComponent`$new()
          instance <- `IdentificationtasksAnnotationsListMineClassificationTaxonIdsErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksAnnotationsListMineClassificationTaxonIdsErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksAnnotationsListMineClassificationTaxonIdsErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksAnnotationsListMineClassificationTaxonIdsErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksAnnotationsListMineClassificationTaxonIdsErrorComponent_result`["message"])
      }

      `IdentificationtasksAnnotationsListMineClassificationConfidenceErrorComponent_result` <- tryCatch({
          `IdentificationtasksAnnotationsListMineClassificationConfidenceErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksAnnotationsListMineClassificationConfidenceErrorComponent_instance` <- `IdentificationtasksAnnotationsListMineClassificationConfidenceErrorComponent`$new()
          instance <- `IdentificationtasksAnnotationsListMineClassificationConfidenceErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksAnnotationsListMineClassificationConfidenceErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksAnnotationsListMineClassificationConfidenceErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksAnnotationsListMineClassificationConfidenceErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksAnnotationsListMineClassificationConfidenceErrorComponent_result`["message"])
      }

      `IdentificationtasksAnnotationsListMineClassificationConfidenceLabelErrorComponent_result` <- tryCatch({
          `IdentificationtasksAnnotationsListMineClassificationConfidenceLabelErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksAnnotationsListMineClassificationConfidenceLabelErrorComponent_instance` <- `IdentificationtasksAnnotationsListMineClassificationConfidenceLabelErrorComponent`$new()
          instance <- `IdentificationtasksAnnotationsListMineClassificationConfidenceLabelErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksAnnotationsListMineClassificationConfidenceLabelErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksAnnotationsListMineClassificationConfidenceLabelErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksAnnotationsListMineClassificationConfidenceLabelErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksAnnotationsListMineClassificationConfidenceLabelErrorComponent_result`["message"])
      }

      `IdentificationtasksAnnotationsListMineCreatedAtErrorComponent_result` <- tryCatch({
          `IdentificationtasksAnnotationsListMineCreatedAtErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksAnnotationsListMineCreatedAtErrorComponent_instance` <- `IdentificationtasksAnnotationsListMineCreatedAtErrorComponent`$new()
          instance <- `IdentificationtasksAnnotationsListMineCreatedAtErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksAnnotationsListMineCreatedAtErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksAnnotationsListMineCreatedAtErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksAnnotationsListMineCreatedAtErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksAnnotationsListMineCreatedAtErrorComponent_result`["message"])
      }

      `IdentificationtasksAnnotationsListMineUpdatedAtErrorComponent_result` <- tryCatch({
          `IdentificationtasksAnnotationsListMineUpdatedAtErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksAnnotationsListMineUpdatedAtErrorComponent_instance` <- `IdentificationtasksAnnotationsListMineUpdatedAtErrorComponent`$new()
          instance <- `IdentificationtasksAnnotationsListMineUpdatedAtErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksAnnotationsListMineUpdatedAtErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksAnnotationsListMineUpdatedAtErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksAnnotationsListMineUpdatedAtErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksAnnotationsListMineUpdatedAtErrorComponent_result`["message"])
      }

      `IdentificationtasksAnnotationsListMineTypeErrorComponent_result` <- tryCatch({
          `IdentificationtasksAnnotationsListMineTypeErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksAnnotationsListMineTypeErrorComponent_instance` <- `IdentificationtasksAnnotationsListMineTypeErrorComponent`$new()
          instance <- `IdentificationtasksAnnotationsListMineTypeErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksAnnotationsListMineTypeErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksAnnotationsListMineTypeErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksAnnotationsListMineTypeErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksAnnotationsListMineTypeErrorComponent_result`["message"])
      }

      `IdentificationtasksAnnotationsListMineOrderByErrorComponent_result` <- tryCatch({
          `IdentificationtasksAnnotationsListMineOrderByErrorComponent`$public_methods$validateJSON(input)
          `IdentificationtasksAnnotationsListMineOrderByErrorComponent_instance` <- `IdentificationtasksAnnotationsListMineOrderByErrorComponent`$new()
          instance <- `IdentificationtasksAnnotationsListMineOrderByErrorComponent_instance`$fromJSON(input)
          instance_type <- "IdentificationtasksAnnotationsListMineOrderByErrorComponent"
          matched_schemas <- append(matched_schemas, "IdentificationtasksAnnotationsListMineOrderByErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`IdentificationtasksAnnotationsListMineOrderByErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `IdentificationtasksAnnotationsListMineOrderByErrorComponent_result`["message"])
      }

      if (matched == 1) {
        # successfully match exactly 1 schema specified in oneOf
        self$actual_instance <- instance
        self$actual_type <- instance_type
      } else if (matched > 1) {
        # more than 1 match
        stop(paste("Multiple matches found when deserializing the input into IdentificationtasksAnnotationsListMineError with oneOf schemas IdentificationtasksAnnotationsListMineClassificationConfidenceErrorComponent, IdentificationtasksAnnotationsListMineClassificationConfidenceLabelErrorComponent, IdentificationtasksAnnotationsListMineClassificationTaxonIdsErrorComponent, IdentificationtasksAnnotationsListMineCreatedAtErrorComponent, IdentificationtasksAnnotationsListMineOrderByErrorComponent, IdentificationtasksAnnotationsListMineTypeErrorComponent, IdentificationtasksAnnotationsListMineUpdatedAtErrorComponent, IdentificationtasksAnnotationsListMineUserIdsErrorComponent. Matched schemas: ",
                   paste(matched_schemas, collapse = ", ")))
      } else {
        # no match
        stop(paste("No match found when deserializing the input into IdentificationtasksAnnotationsListMineError with oneOf schemas IdentificationtasksAnnotationsListMineClassificationConfidenceErrorComponent, IdentificationtasksAnnotationsListMineClassificationConfidenceLabelErrorComponent, IdentificationtasksAnnotationsListMineClassificationTaxonIdsErrorComponent, IdentificationtasksAnnotationsListMineCreatedAtErrorComponent, IdentificationtasksAnnotationsListMineOrderByErrorComponent, IdentificationtasksAnnotationsListMineTypeErrorComponent, IdentificationtasksAnnotationsListMineUpdatedAtErrorComponent, IdentificationtasksAnnotationsListMineUserIdsErrorComponent. Details: >>",
                   paste(error_messages, collapse = " >> ")))
      }

      self
    },

    #' @description
    #' Serialize IdentificationtasksAnnotationsListMineError to JSON string.
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return JSON string representation of the IdentificationtasksAnnotationsListMineError.
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
    #' Convert IdentificationtasksAnnotationsListMineError to a base R type
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
    #' Validate the input JSON with respect to IdentificationtasksAnnotationsListMineError and
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
#IdentificationtasksAnnotationsListMineError$unlock()
#
## Below is an example to define the print function
#IdentificationtasksAnnotationsListMineError$set("public", "print", function(...) {
#  print(jsonlite::prettify(self$toJSONString()))
#  invisible(self)
#})
## Uncomment below to lock the class to prevent modifications to the method or field
#IdentificationtasksAnnotationsListMineError$lock()

