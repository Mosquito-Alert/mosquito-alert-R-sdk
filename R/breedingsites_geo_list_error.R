#' @docType class
#' @title BreedingsitesGeoListError
#'
#' @description BreedingsitesGeoListError Class
#'
#' @format An \code{R6Class} generator object
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
BreedingsitesGeoListError <- R6::R6Class(
  "BreedingsitesGeoListError",
  public = list(
    #' @field actual_instance the object stored in this instance.
    actual_instance = NULL,
    #' @field actual_type the type of the object stored in this instance.
    actual_type = NULL,
    #' @field one_of  a list of types defined in the oneOf schema.
    one_of = list("BreedingsitesGeoListBoundaryUuidErrorComponent", "BreedingsitesGeoListCountryIdErrorComponent", "BreedingsitesGeoListCreatedAtErrorComponent", "BreedingsitesGeoListGeoPrecisionErrorComponent", "BreedingsitesGeoListOrderByErrorComponent", "BreedingsitesGeoListReceivedAtErrorComponent", "BreedingsitesGeoListShortIdErrorComponent", "BreedingsitesGeoListSiteTypeErrorComponent", "BreedingsitesGeoListTagsErrorComponent", "BreedingsitesGeoListUpdatedAtErrorComponent", "BreedingsitesGeoListUserUuidErrorComponent"),

    #' @description
    #' Initialize a new BreedingsitesGeoListError.
    #'
    #' @param instance an instance of the object defined in the oneOf schemas: "BreedingsitesGeoListBoundaryUuidErrorComponent", "BreedingsitesGeoListCountryIdErrorComponent", "BreedingsitesGeoListCreatedAtErrorComponent", "BreedingsitesGeoListGeoPrecisionErrorComponent", "BreedingsitesGeoListOrderByErrorComponent", "BreedingsitesGeoListReceivedAtErrorComponent", "BreedingsitesGeoListShortIdErrorComponent", "BreedingsitesGeoListSiteTypeErrorComponent", "BreedingsitesGeoListTagsErrorComponent", "BreedingsitesGeoListUpdatedAtErrorComponent", "BreedingsitesGeoListUserUuidErrorComponent"
    initialize = function(instance = NULL) {
      if (is.null(instance)) {
        # do nothing
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "BreedingsitesGeoListBoundaryUuidErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "BreedingsitesGeoListBoundaryUuidErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "BreedingsitesGeoListCountryIdErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "BreedingsitesGeoListCountryIdErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "BreedingsitesGeoListCreatedAtErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "BreedingsitesGeoListCreatedAtErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "BreedingsitesGeoListGeoPrecisionErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "BreedingsitesGeoListGeoPrecisionErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "BreedingsitesGeoListOrderByErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "BreedingsitesGeoListOrderByErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "BreedingsitesGeoListReceivedAtErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "BreedingsitesGeoListReceivedAtErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "BreedingsitesGeoListShortIdErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "BreedingsitesGeoListShortIdErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "BreedingsitesGeoListSiteTypeErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "BreedingsitesGeoListSiteTypeErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "BreedingsitesGeoListTagsErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "BreedingsitesGeoListTagsErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "BreedingsitesGeoListUpdatedAtErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "BreedingsitesGeoListUpdatedAtErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "BreedingsitesGeoListUserUuidErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "BreedingsitesGeoListUserUuidErrorComponent"
      } else {
        stop(paste("Failed to initialize BreedingsitesGeoListError with oneOf schemas BreedingsitesGeoListBoundaryUuidErrorComponent, BreedingsitesGeoListCountryIdErrorComponent, BreedingsitesGeoListCreatedAtErrorComponent, BreedingsitesGeoListGeoPrecisionErrorComponent, BreedingsitesGeoListOrderByErrorComponent, BreedingsitesGeoListReceivedAtErrorComponent, BreedingsitesGeoListShortIdErrorComponent, BreedingsitesGeoListSiteTypeErrorComponent, BreedingsitesGeoListTagsErrorComponent, BreedingsitesGeoListUpdatedAtErrorComponent, BreedingsitesGeoListUserUuidErrorComponent. Provided class name: ",
                   get(class(instance)[[1]], pos = -1)$classname))
      }
    },

    #' @description
    #' Deserialize JSON string into an instance of BreedingsitesGeoListError.
    #' An alias to the method `fromJSON` .
    #'
    #' @param input The input JSON.
    #'
    #' @return An instance of BreedingsitesGeoListError.
    fromJSONString = function(input) {
      self$fromJSON(input)
    },

    #' @description
    #' Deserialize JSON string into an instance of BreedingsitesGeoListError.
    #'
    #' @param input The input JSON.
    #'
    #' @return An instance of BreedingsitesGeoListError.
    fromJSON = function(input) {
      matched <- 0 # match counter
      matched_schemas <- list() #names of matched schemas
      error_messages <- list()
      instance <- NULL

      `BreedingsitesGeoListShortIdErrorComponent_result` <- tryCatch({
          `BreedingsitesGeoListShortIdErrorComponent`$public_methods$validateJSON(input)
          `BreedingsitesGeoListShortIdErrorComponent_instance` <- `BreedingsitesGeoListShortIdErrorComponent`$new()
          instance <- `BreedingsitesGeoListShortIdErrorComponent_instance`$fromJSON(input)
          instance_type <- "BreedingsitesGeoListShortIdErrorComponent"
          matched_schemas <- append(matched_schemas, "BreedingsitesGeoListShortIdErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`BreedingsitesGeoListShortIdErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `BreedingsitesGeoListShortIdErrorComponent_result`["message"])
      }

      `BreedingsitesGeoListCreatedAtErrorComponent_result` <- tryCatch({
          `BreedingsitesGeoListCreatedAtErrorComponent`$public_methods$validateJSON(input)
          `BreedingsitesGeoListCreatedAtErrorComponent_instance` <- `BreedingsitesGeoListCreatedAtErrorComponent`$new()
          instance <- `BreedingsitesGeoListCreatedAtErrorComponent_instance`$fromJSON(input)
          instance_type <- "BreedingsitesGeoListCreatedAtErrorComponent"
          matched_schemas <- append(matched_schemas, "BreedingsitesGeoListCreatedAtErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`BreedingsitesGeoListCreatedAtErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `BreedingsitesGeoListCreatedAtErrorComponent_result`["message"])
      }

      `BreedingsitesGeoListReceivedAtErrorComponent_result` <- tryCatch({
          `BreedingsitesGeoListReceivedAtErrorComponent`$public_methods$validateJSON(input)
          `BreedingsitesGeoListReceivedAtErrorComponent_instance` <- `BreedingsitesGeoListReceivedAtErrorComponent`$new()
          instance <- `BreedingsitesGeoListReceivedAtErrorComponent_instance`$fromJSON(input)
          instance_type <- "BreedingsitesGeoListReceivedAtErrorComponent"
          matched_schemas <- append(matched_schemas, "BreedingsitesGeoListReceivedAtErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`BreedingsitesGeoListReceivedAtErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `BreedingsitesGeoListReceivedAtErrorComponent_result`["message"])
      }

      `BreedingsitesGeoListUpdatedAtErrorComponent_result` <- tryCatch({
          `BreedingsitesGeoListUpdatedAtErrorComponent`$public_methods$validateJSON(input)
          `BreedingsitesGeoListUpdatedAtErrorComponent_instance` <- `BreedingsitesGeoListUpdatedAtErrorComponent`$new()
          instance <- `BreedingsitesGeoListUpdatedAtErrorComponent_instance`$fromJSON(input)
          instance_type <- "BreedingsitesGeoListUpdatedAtErrorComponent"
          matched_schemas <- append(matched_schemas, "BreedingsitesGeoListUpdatedAtErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`BreedingsitesGeoListUpdatedAtErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `BreedingsitesGeoListUpdatedAtErrorComponent_result`["message"])
      }

      `BreedingsitesGeoListCountryIdErrorComponent_result` <- tryCatch({
          `BreedingsitesGeoListCountryIdErrorComponent`$public_methods$validateJSON(input)
          `BreedingsitesGeoListCountryIdErrorComponent_instance` <- `BreedingsitesGeoListCountryIdErrorComponent`$new()
          instance <- `BreedingsitesGeoListCountryIdErrorComponent_instance`$fromJSON(input)
          instance_type <- "BreedingsitesGeoListCountryIdErrorComponent"
          matched_schemas <- append(matched_schemas, "BreedingsitesGeoListCountryIdErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`BreedingsitesGeoListCountryIdErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `BreedingsitesGeoListCountryIdErrorComponent_result`["message"])
      }

      `BreedingsitesGeoListUserUuidErrorComponent_result` <- tryCatch({
          `BreedingsitesGeoListUserUuidErrorComponent`$public_methods$validateJSON(input)
          `BreedingsitesGeoListUserUuidErrorComponent_instance` <- `BreedingsitesGeoListUserUuidErrorComponent`$new()
          instance <- `BreedingsitesGeoListUserUuidErrorComponent_instance`$fromJSON(input)
          instance_type <- "BreedingsitesGeoListUserUuidErrorComponent"
          matched_schemas <- append(matched_schemas, "BreedingsitesGeoListUserUuidErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`BreedingsitesGeoListUserUuidErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `BreedingsitesGeoListUserUuidErrorComponent_result`["message"])
      }

      `BreedingsitesGeoListOrderByErrorComponent_result` <- tryCatch({
          `BreedingsitesGeoListOrderByErrorComponent`$public_methods$validateJSON(input)
          `BreedingsitesGeoListOrderByErrorComponent_instance` <- `BreedingsitesGeoListOrderByErrorComponent`$new()
          instance <- `BreedingsitesGeoListOrderByErrorComponent_instance`$fromJSON(input)
          instance_type <- "BreedingsitesGeoListOrderByErrorComponent"
          matched_schemas <- append(matched_schemas, "BreedingsitesGeoListOrderByErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`BreedingsitesGeoListOrderByErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `BreedingsitesGeoListOrderByErrorComponent_result`["message"])
      }

      `BreedingsitesGeoListTagsErrorComponent_result` <- tryCatch({
          `BreedingsitesGeoListTagsErrorComponent`$public_methods$validateJSON(input)
          `BreedingsitesGeoListTagsErrorComponent_instance` <- `BreedingsitesGeoListTagsErrorComponent`$new()
          instance <- `BreedingsitesGeoListTagsErrorComponent_instance`$fromJSON(input)
          instance_type <- "BreedingsitesGeoListTagsErrorComponent"
          matched_schemas <- append(matched_schemas, "BreedingsitesGeoListTagsErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`BreedingsitesGeoListTagsErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `BreedingsitesGeoListTagsErrorComponent_result`["message"])
      }

      `BreedingsitesGeoListGeoPrecisionErrorComponent_result` <- tryCatch({
          `BreedingsitesGeoListGeoPrecisionErrorComponent`$public_methods$validateJSON(input)
          `BreedingsitesGeoListGeoPrecisionErrorComponent_instance` <- `BreedingsitesGeoListGeoPrecisionErrorComponent`$new()
          instance <- `BreedingsitesGeoListGeoPrecisionErrorComponent_instance`$fromJSON(input)
          instance_type <- "BreedingsitesGeoListGeoPrecisionErrorComponent"
          matched_schemas <- append(matched_schemas, "BreedingsitesGeoListGeoPrecisionErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`BreedingsitesGeoListGeoPrecisionErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `BreedingsitesGeoListGeoPrecisionErrorComponent_result`["message"])
      }

      `BreedingsitesGeoListBoundaryUuidErrorComponent_result` <- tryCatch({
          `BreedingsitesGeoListBoundaryUuidErrorComponent`$public_methods$validateJSON(input)
          `BreedingsitesGeoListBoundaryUuidErrorComponent_instance` <- `BreedingsitesGeoListBoundaryUuidErrorComponent`$new()
          instance <- `BreedingsitesGeoListBoundaryUuidErrorComponent_instance`$fromJSON(input)
          instance_type <- "BreedingsitesGeoListBoundaryUuidErrorComponent"
          matched_schemas <- append(matched_schemas, "BreedingsitesGeoListBoundaryUuidErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`BreedingsitesGeoListBoundaryUuidErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `BreedingsitesGeoListBoundaryUuidErrorComponent_result`["message"])
      }

      `BreedingsitesGeoListSiteTypeErrorComponent_result` <- tryCatch({
          `BreedingsitesGeoListSiteTypeErrorComponent`$public_methods$validateJSON(input)
          `BreedingsitesGeoListSiteTypeErrorComponent_instance` <- `BreedingsitesGeoListSiteTypeErrorComponent`$new()
          instance <- `BreedingsitesGeoListSiteTypeErrorComponent_instance`$fromJSON(input)
          instance_type <- "BreedingsitesGeoListSiteTypeErrorComponent"
          matched_schemas <- append(matched_schemas, "BreedingsitesGeoListSiteTypeErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`BreedingsitesGeoListSiteTypeErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `BreedingsitesGeoListSiteTypeErrorComponent_result`["message"])
      }

      if (matched == 1) {
        # successfully match exactly 1 schema specified in oneOf
        self$actual_instance <- instance
        self$actual_type <- instance_type
      } else if (matched > 1) {
        # more than 1 match
        stop(paste("Multiple matches found when deserializing the input into BreedingsitesGeoListError with oneOf schemas BreedingsitesGeoListBoundaryUuidErrorComponent, BreedingsitesGeoListCountryIdErrorComponent, BreedingsitesGeoListCreatedAtErrorComponent, BreedingsitesGeoListGeoPrecisionErrorComponent, BreedingsitesGeoListOrderByErrorComponent, BreedingsitesGeoListReceivedAtErrorComponent, BreedingsitesGeoListShortIdErrorComponent, BreedingsitesGeoListSiteTypeErrorComponent, BreedingsitesGeoListTagsErrorComponent, BreedingsitesGeoListUpdatedAtErrorComponent, BreedingsitesGeoListUserUuidErrorComponent. Matched schemas: ",
                   paste(matched_schemas, collapse = ", ")))
      } else {
        # no match
        stop(paste("No match found when deserializing the input into BreedingsitesGeoListError with oneOf schemas BreedingsitesGeoListBoundaryUuidErrorComponent, BreedingsitesGeoListCountryIdErrorComponent, BreedingsitesGeoListCreatedAtErrorComponent, BreedingsitesGeoListGeoPrecisionErrorComponent, BreedingsitesGeoListOrderByErrorComponent, BreedingsitesGeoListReceivedAtErrorComponent, BreedingsitesGeoListShortIdErrorComponent, BreedingsitesGeoListSiteTypeErrorComponent, BreedingsitesGeoListTagsErrorComponent, BreedingsitesGeoListUpdatedAtErrorComponent, BreedingsitesGeoListUserUuidErrorComponent. Details: >>",
                   paste(error_messages, collapse = " >> ")))
      }

      self
    },

    #' @description
    #' Serialize BreedingsitesGeoListError to JSON string.
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return JSON string representation of the BreedingsitesGeoListError.
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
    #' Convert BreedingsitesGeoListError to a base R type
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
    #' Validate the input JSON with respect to BreedingsitesGeoListError and
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
#BreedingsitesGeoListError$unlock()
#
## Below is an example to define the print function
#BreedingsitesGeoListError$set("public", "print", function(...) {
#  print(jsonlite::prettify(self$toJSONString()))
#  invisible(self)
#})
## Uncomment below to lock the class to prevent modifications to the method or field
#BreedingsitesGeoListError$lock()

