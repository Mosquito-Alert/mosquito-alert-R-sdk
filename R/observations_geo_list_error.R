#' @docType class
#' @title ObservationsGeoListError
#'
#' @description ObservationsGeoListError Class
#'
#' @format An \code{R6Class} generator object
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ObservationsGeoListError <- R6::R6Class(
  "ObservationsGeoListError",
  public = list(
    #' @field actual_instance the object stored in this instance.
    actual_instance = NULL,
    #' @field actual_type the type of the object stored in this instance.
    actual_type = NULL,
    #' @field one_of  a list of types defined in the oneOf schema.
    one_of = list("ObservationsGeoListBoundaryUuidErrorComponent", "ObservationsGeoListCountryIdErrorComponent", "ObservationsGeoListCreatedAtErrorComponent", "ObservationsGeoListGeoPrecisionErrorComponent", "ObservationsGeoListIdentificationTaxonIdsErrorComponent", "ObservationsGeoListIdentificationTaxonIdsLookupErrorComponent", "ObservationsGeoListOrderByErrorComponent", "ObservationsGeoListReceivedAtErrorComponent", "ObservationsGeoListShortIdErrorComponent", "ObservationsGeoListTagsErrorComponent", "ObservationsGeoListUpdatedAtErrorComponent", "ObservationsGeoListUserUuidErrorComponent"),

    #' @description
    #' Initialize a new ObservationsGeoListError.
    #'
    #' @param instance an instance of the object defined in the oneOf schemas: "ObservationsGeoListBoundaryUuidErrorComponent", "ObservationsGeoListCountryIdErrorComponent", "ObservationsGeoListCreatedAtErrorComponent", "ObservationsGeoListGeoPrecisionErrorComponent", "ObservationsGeoListIdentificationTaxonIdsErrorComponent", "ObservationsGeoListIdentificationTaxonIdsLookupErrorComponent", "ObservationsGeoListOrderByErrorComponent", "ObservationsGeoListReceivedAtErrorComponent", "ObservationsGeoListShortIdErrorComponent", "ObservationsGeoListTagsErrorComponent", "ObservationsGeoListUpdatedAtErrorComponent", "ObservationsGeoListUserUuidErrorComponent"
    initialize = function(instance = NULL) {
      if (is.null(instance)) {
        # do nothing
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "ObservationsGeoListBoundaryUuidErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "ObservationsGeoListBoundaryUuidErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "ObservationsGeoListCountryIdErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "ObservationsGeoListCountryIdErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "ObservationsGeoListCreatedAtErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "ObservationsGeoListCreatedAtErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "ObservationsGeoListGeoPrecisionErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "ObservationsGeoListGeoPrecisionErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "ObservationsGeoListIdentificationTaxonIdsErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "ObservationsGeoListIdentificationTaxonIdsErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "ObservationsGeoListIdentificationTaxonIdsLookupErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "ObservationsGeoListIdentificationTaxonIdsLookupErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "ObservationsGeoListOrderByErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "ObservationsGeoListOrderByErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "ObservationsGeoListReceivedAtErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "ObservationsGeoListReceivedAtErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "ObservationsGeoListShortIdErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "ObservationsGeoListShortIdErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "ObservationsGeoListTagsErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "ObservationsGeoListTagsErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "ObservationsGeoListUpdatedAtErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "ObservationsGeoListUpdatedAtErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "ObservationsGeoListUserUuidErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "ObservationsGeoListUserUuidErrorComponent"
      } else {
        stop(paste("Failed to initialize ObservationsGeoListError with oneOf schemas ObservationsGeoListBoundaryUuidErrorComponent, ObservationsGeoListCountryIdErrorComponent, ObservationsGeoListCreatedAtErrorComponent, ObservationsGeoListGeoPrecisionErrorComponent, ObservationsGeoListIdentificationTaxonIdsErrorComponent, ObservationsGeoListIdentificationTaxonIdsLookupErrorComponent, ObservationsGeoListOrderByErrorComponent, ObservationsGeoListReceivedAtErrorComponent, ObservationsGeoListShortIdErrorComponent, ObservationsGeoListTagsErrorComponent, ObservationsGeoListUpdatedAtErrorComponent, ObservationsGeoListUserUuidErrorComponent. Provided class name: ",
                   get(class(instance)[[1]], pos = -1)$classname))
      }
    },

    #' @description
    #' Deserialize JSON string into an instance of ObservationsGeoListError.
    #' An alias to the method `fromJSON` .
    #'
    #' @param input The input JSON.
    #'
    #' @return An instance of ObservationsGeoListError.
    fromJSONString = function(input) {
      self$fromJSON(input)
    },

    #' @description
    #' Deserialize JSON string into an instance of ObservationsGeoListError.
    #'
    #' @param input The input JSON.
    #'
    #' @return An instance of ObservationsGeoListError.
    fromJSON = function(input) {
      matched <- 0 # match counter
      matched_schemas <- list() #names of matched schemas
      error_messages <- list()
      instance <- NULL

      `ObservationsGeoListShortIdErrorComponent_result` <- tryCatch({
          `ObservationsGeoListShortIdErrorComponent`$public_methods$validateJSON(input)
          `ObservationsGeoListShortIdErrorComponent_instance` <- `ObservationsGeoListShortIdErrorComponent`$new()
          instance <- `ObservationsGeoListShortIdErrorComponent_instance`$fromJSON(input)
          instance_type <- "ObservationsGeoListShortIdErrorComponent"
          matched_schemas <- append(matched_schemas, "ObservationsGeoListShortIdErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`ObservationsGeoListShortIdErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `ObservationsGeoListShortIdErrorComponent_result`["message"])
      }

      `ObservationsGeoListCreatedAtErrorComponent_result` <- tryCatch({
          `ObservationsGeoListCreatedAtErrorComponent`$public_methods$validateJSON(input)
          `ObservationsGeoListCreatedAtErrorComponent_instance` <- `ObservationsGeoListCreatedAtErrorComponent`$new()
          instance <- `ObservationsGeoListCreatedAtErrorComponent_instance`$fromJSON(input)
          instance_type <- "ObservationsGeoListCreatedAtErrorComponent"
          matched_schemas <- append(matched_schemas, "ObservationsGeoListCreatedAtErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`ObservationsGeoListCreatedAtErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `ObservationsGeoListCreatedAtErrorComponent_result`["message"])
      }

      `ObservationsGeoListReceivedAtErrorComponent_result` <- tryCatch({
          `ObservationsGeoListReceivedAtErrorComponent`$public_methods$validateJSON(input)
          `ObservationsGeoListReceivedAtErrorComponent_instance` <- `ObservationsGeoListReceivedAtErrorComponent`$new()
          instance <- `ObservationsGeoListReceivedAtErrorComponent_instance`$fromJSON(input)
          instance_type <- "ObservationsGeoListReceivedAtErrorComponent"
          matched_schemas <- append(matched_schemas, "ObservationsGeoListReceivedAtErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`ObservationsGeoListReceivedAtErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `ObservationsGeoListReceivedAtErrorComponent_result`["message"])
      }

      `ObservationsGeoListUpdatedAtErrorComponent_result` <- tryCatch({
          `ObservationsGeoListUpdatedAtErrorComponent`$public_methods$validateJSON(input)
          `ObservationsGeoListUpdatedAtErrorComponent_instance` <- `ObservationsGeoListUpdatedAtErrorComponent`$new()
          instance <- `ObservationsGeoListUpdatedAtErrorComponent_instance`$fromJSON(input)
          instance_type <- "ObservationsGeoListUpdatedAtErrorComponent"
          matched_schemas <- append(matched_schemas, "ObservationsGeoListUpdatedAtErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`ObservationsGeoListUpdatedAtErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `ObservationsGeoListUpdatedAtErrorComponent_result`["message"])
      }

      `ObservationsGeoListCountryIdErrorComponent_result` <- tryCatch({
          `ObservationsGeoListCountryIdErrorComponent`$public_methods$validateJSON(input)
          `ObservationsGeoListCountryIdErrorComponent_instance` <- `ObservationsGeoListCountryIdErrorComponent`$new()
          instance <- `ObservationsGeoListCountryIdErrorComponent_instance`$fromJSON(input)
          instance_type <- "ObservationsGeoListCountryIdErrorComponent"
          matched_schemas <- append(matched_schemas, "ObservationsGeoListCountryIdErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`ObservationsGeoListCountryIdErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `ObservationsGeoListCountryIdErrorComponent_result`["message"])
      }

      `ObservationsGeoListUserUuidErrorComponent_result` <- tryCatch({
          `ObservationsGeoListUserUuidErrorComponent`$public_methods$validateJSON(input)
          `ObservationsGeoListUserUuidErrorComponent_instance` <- `ObservationsGeoListUserUuidErrorComponent`$new()
          instance <- `ObservationsGeoListUserUuidErrorComponent_instance`$fromJSON(input)
          instance_type <- "ObservationsGeoListUserUuidErrorComponent"
          matched_schemas <- append(matched_schemas, "ObservationsGeoListUserUuidErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`ObservationsGeoListUserUuidErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `ObservationsGeoListUserUuidErrorComponent_result`["message"])
      }

      `ObservationsGeoListOrderByErrorComponent_result` <- tryCatch({
          `ObservationsGeoListOrderByErrorComponent`$public_methods$validateJSON(input)
          `ObservationsGeoListOrderByErrorComponent_instance` <- `ObservationsGeoListOrderByErrorComponent`$new()
          instance <- `ObservationsGeoListOrderByErrorComponent_instance`$fromJSON(input)
          instance_type <- "ObservationsGeoListOrderByErrorComponent"
          matched_schemas <- append(matched_schemas, "ObservationsGeoListOrderByErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`ObservationsGeoListOrderByErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `ObservationsGeoListOrderByErrorComponent_result`["message"])
      }

      `ObservationsGeoListTagsErrorComponent_result` <- tryCatch({
          `ObservationsGeoListTagsErrorComponent`$public_methods$validateJSON(input)
          `ObservationsGeoListTagsErrorComponent_instance` <- `ObservationsGeoListTagsErrorComponent`$new()
          instance <- `ObservationsGeoListTagsErrorComponent_instance`$fromJSON(input)
          instance_type <- "ObservationsGeoListTagsErrorComponent"
          matched_schemas <- append(matched_schemas, "ObservationsGeoListTagsErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`ObservationsGeoListTagsErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `ObservationsGeoListTagsErrorComponent_result`["message"])
      }

      `ObservationsGeoListGeoPrecisionErrorComponent_result` <- tryCatch({
          `ObservationsGeoListGeoPrecisionErrorComponent`$public_methods$validateJSON(input)
          `ObservationsGeoListGeoPrecisionErrorComponent_instance` <- `ObservationsGeoListGeoPrecisionErrorComponent`$new()
          instance <- `ObservationsGeoListGeoPrecisionErrorComponent_instance`$fromJSON(input)
          instance_type <- "ObservationsGeoListGeoPrecisionErrorComponent"
          matched_schemas <- append(matched_schemas, "ObservationsGeoListGeoPrecisionErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`ObservationsGeoListGeoPrecisionErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `ObservationsGeoListGeoPrecisionErrorComponent_result`["message"])
      }

      `ObservationsGeoListBoundaryUuidErrorComponent_result` <- tryCatch({
          `ObservationsGeoListBoundaryUuidErrorComponent`$public_methods$validateJSON(input)
          `ObservationsGeoListBoundaryUuidErrorComponent_instance` <- `ObservationsGeoListBoundaryUuidErrorComponent`$new()
          instance <- `ObservationsGeoListBoundaryUuidErrorComponent_instance`$fromJSON(input)
          instance_type <- "ObservationsGeoListBoundaryUuidErrorComponent"
          matched_schemas <- append(matched_schemas, "ObservationsGeoListBoundaryUuidErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`ObservationsGeoListBoundaryUuidErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `ObservationsGeoListBoundaryUuidErrorComponent_result`["message"])
      }

      `ObservationsGeoListIdentificationTaxonIdsErrorComponent_result` <- tryCatch({
          `ObservationsGeoListIdentificationTaxonIdsErrorComponent`$public_methods$validateJSON(input)
          `ObservationsGeoListIdentificationTaxonIdsErrorComponent_instance` <- `ObservationsGeoListIdentificationTaxonIdsErrorComponent`$new()
          instance <- `ObservationsGeoListIdentificationTaxonIdsErrorComponent_instance`$fromJSON(input)
          instance_type <- "ObservationsGeoListIdentificationTaxonIdsErrorComponent"
          matched_schemas <- append(matched_schemas, "ObservationsGeoListIdentificationTaxonIdsErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`ObservationsGeoListIdentificationTaxonIdsErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `ObservationsGeoListIdentificationTaxonIdsErrorComponent_result`["message"])
      }

      `ObservationsGeoListIdentificationTaxonIdsLookupErrorComponent_result` <- tryCatch({
          `ObservationsGeoListIdentificationTaxonIdsLookupErrorComponent`$public_methods$validateJSON(input)
          `ObservationsGeoListIdentificationTaxonIdsLookupErrorComponent_instance` <- `ObservationsGeoListIdentificationTaxonIdsLookupErrorComponent`$new()
          instance <- `ObservationsGeoListIdentificationTaxonIdsLookupErrorComponent_instance`$fromJSON(input)
          instance_type <- "ObservationsGeoListIdentificationTaxonIdsLookupErrorComponent"
          matched_schemas <- append(matched_schemas, "ObservationsGeoListIdentificationTaxonIdsLookupErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`ObservationsGeoListIdentificationTaxonIdsLookupErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `ObservationsGeoListIdentificationTaxonIdsLookupErrorComponent_result`["message"])
      }

      if (matched == 1) {
        # successfully match exactly 1 schema specified in oneOf
        self$actual_instance <- instance
        self$actual_type <- instance_type
      } else if (matched > 1) {
        # more than 1 match
        stop(paste("Multiple matches found when deserializing the input into ObservationsGeoListError with oneOf schemas ObservationsGeoListBoundaryUuidErrorComponent, ObservationsGeoListCountryIdErrorComponent, ObservationsGeoListCreatedAtErrorComponent, ObservationsGeoListGeoPrecisionErrorComponent, ObservationsGeoListIdentificationTaxonIdsErrorComponent, ObservationsGeoListIdentificationTaxonIdsLookupErrorComponent, ObservationsGeoListOrderByErrorComponent, ObservationsGeoListReceivedAtErrorComponent, ObservationsGeoListShortIdErrorComponent, ObservationsGeoListTagsErrorComponent, ObservationsGeoListUpdatedAtErrorComponent, ObservationsGeoListUserUuidErrorComponent. Matched schemas: ",
                   paste(matched_schemas, collapse = ", ")))
      } else {
        # no match
        stop(paste("No match found when deserializing the input into ObservationsGeoListError with oneOf schemas ObservationsGeoListBoundaryUuidErrorComponent, ObservationsGeoListCountryIdErrorComponent, ObservationsGeoListCreatedAtErrorComponent, ObservationsGeoListGeoPrecisionErrorComponent, ObservationsGeoListIdentificationTaxonIdsErrorComponent, ObservationsGeoListIdentificationTaxonIdsLookupErrorComponent, ObservationsGeoListOrderByErrorComponent, ObservationsGeoListReceivedAtErrorComponent, ObservationsGeoListShortIdErrorComponent, ObservationsGeoListTagsErrorComponent, ObservationsGeoListUpdatedAtErrorComponent, ObservationsGeoListUserUuidErrorComponent. Details: >>",
                   paste(error_messages, collapse = " >> ")))
      }

      self
    },

    #' @description
    #' Serialize ObservationsGeoListError to JSON string.
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return JSON string representation of the ObservationsGeoListError.
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
    #' Convert ObservationsGeoListError to a base R type
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
    #' Validate the input JSON with respect to ObservationsGeoListError and
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
#ObservationsGeoListError$unlock()
#
## Below is an example to define the print function
#ObservationsGeoListError$set("public", "print", function(...) {
#  print(jsonlite::prettify(self$toJSONString()))
#  invisible(self)
#})
## Uncomment below to lock the class to prevent modifications to the method or field
#ObservationsGeoListError$lock()

