#' @docType class
#' @title BitesGeoListError
#'
#' @description BitesGeoListError Class
#'
#' @format An \code{R6Class} generator object
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
BitesGeoListError <- R6::R6Class(
  "BitesGeoListError",
  public = list(
    #' @field actual_instance the object stored in this instance.
    actual_instance = NULL,
    #' @field actual_type the type of the object stored in this instance.
    actual_type = NULL,
    #' @field one_of  a list of types defined in the oneOf schema.
    one_of = list("BitesGeoListBoundaryUuidErrorComponent", "BitesGeoListCountryIdErrorComponent", "BitesGeoListCreatedAtErrorComponent", "BitesGeoListGeoPrecisionErrorComponent", "BitesGeoListOrderByErrorComponent", "BitesGeoListReceivedAtErrorComponent", "BitesGeoListShortIdErrorComponent", "BitesGeoListTagsErrorComponent", "BitesGeoListUpdatedAtErrorComponent", "BitesGeoListUserUuidErrorComponent"),

    #' @description
    #' Initialize a new BitesGeoListError.
    #'
    #' @param instance an instance of the object defined in the oneOf schemas: "BitesGeoListBoundaryUuidErrorComponent", "BitesGeoListCountryIdErrorComponent", "BitesGeoListCreatedAtErrorComponent", "BitesGeoListGeoPrecisionErrorComponent", "BitesGeoListOrderByErrorComponent", "BitesGeoListReceivedAtErrorComponent", "BitesGeoListShortIdErrorComponent", "BitesGeoListTagsErrorComponent", "BitesGeoListUpdatedAtErrorComponent", "BitesGeoListUserUuidErrorComponent"
    initialize = function(instance = NULL) {
      if (is.null(instance)) {
        # do nothing
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "BitesGeoListBoundaryUuidErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "BitesGeoListBoundaryUuidErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "BitesGeoListCountryIdErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "BitesGeoListCountryIdErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "BitesGeoListCreatedAtErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "BitesGeoListCreatedAtErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "BitesGeoListGeoPrecisionErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "BitesGeoListGeoPrecisionErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "BitesGeoListOrderByErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "BitesGeoListOrderByErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "BitesGeoListReceivedAtErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "BitesGeoListReceivedAtErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "BitesGeoListShortIdErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "BitesGeoListShortIdErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "BitesGeoListTagsErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "BitesGeoListTagsErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "BitesGeoListUpdatedAtErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "BitesGeoListUpdatedAtErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "BitesGeoListUserUuidErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "BitesGeoListUserUuidErrorComponent"
      } else {
        stop(paste("Failed to initialize BitesGeoListError with oneOf schemas BitesGeoListBoundaryUuidErrorComponent, BitesGeoListCountryIdErrorComponent, BitesGeoListCreatedAtErrorComponent, BitesGeoListGeoPrecisionErrorComponent, BitesGeoListOrderByErrorComponent, BitesGeoListReceivedAtErrorComponent, BitesGeoListShortIdErrorComponent, BitesGeoListTagsErrorComponent, BitesGeoListUpdatedAtErrorComponent, BitesGeoListUserUuidErrorComponent. Provided class name: ",
                   get(class(instance)[[1]], pos = -1)$classname))
      }
    },

    #' @description
    #' Deserialize JSON string into an instance of BitesGeoListError.
    #' An alias to the method `fromJSON` .
    #'
    #' @param input The input JSON.
    #'
    #' @return An instance of BitesGeoListError.
    fromJSONString = function(input) {
      self$fromJSON(input)
    },

    #' @description
    #' Deserialize JSON string into an instance of BitesGeoListError.
    #'
    #' @param input The input JSON.
    #'
    #' @return An instance of BitesGeoListError.
    fromJSON = function(input) {
      matched <- 0 # match counter
      matched_schemas <- list() #names of matched schemas
      error_messages <- list()
      instance <- NULL

      `BitesGeoListShortIdErrorComponent_result` <- tryCatch({
          `BitesGeoListShortIdErrorComponent`$public_methods$validateJSON(input)
          `BitesGeoListShortIdErrorComponent_instance` <- `BitesGeoListShortIdErrorComponent`$new()
          instance <- `BitesGeoListShortIdErrorComponent_instance`$fromJSON(input)
          instance_type <- "BitesGeoListShortIdErrorComponent"
          matched_schemas <- append(matched_schemas, "BitesGeoListShortIdErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`BitesGeoListShortIdErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `BitesGeoListShortIdErrorComponent_result`["message"])
      }

      `BitesGeoListCreatedAtErrorComponent_result` <- tryCatch({
          `BitesGeoListCreatedAtErrorComponent`$public_methods$validateJSON(input)
          `BitesGeoListCreatedAtErrorComponent_instance` <- `BitesGeoListCreatedAtErrorComponent`$new()
          instance <- `BitesGeoListCreatedAtErrorComponent_instance`$fromJSON(input)
          instance_type <- "BitesGeoListCreatedAtErrorComponent"
          matched_schemas <- append(matched_schemas, "BitesGeoListCreatedAtErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`BitesGeoListCreatedAtErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `BitesGeoListCreatedAtErrorComponent_result`["message"])
      }

      `BitesGeoListReceivedAtErrorComponent_result` <- tryCatch({
          `BitesGeoListReceivedAtErrorComponent`$public_methods$validateJSON(input)
          `BitesGeoListReceivedAtErrorComponent_instance` <- `BitesGeoListReceivedAtErrorComponent`$new()
          instance <- `BitesGeoListReceivedAtErrorComponent_instance`$fromJSON(input)
          instance_type <- "BitesGeoListReceivedAtErrorComponent"
          matched_schemas <- append(matched_schemas, "BitesGeoListReceivedAtErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`BitesGeoListReceivedAtErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `BitesGeoListReceivedAtErrorComponent_result`["message"])
      }

      `BitesGeoListUpdatedAtErrorComponent_result` <- tryCatch({
          `BitesGeoListUpdatedAtErrorComponent`$public_methods$validateJSON(input)
          `BitesGeoListUpdatedAtErrorComponent_instance` <- `BitesGeoListUpdatedAtErrorComponent`$new()
          instance <- `BitesGeoListUpdatedAtErrorComponent_instance`$fromJSON(input)
          instance_type <- "BitesGeoListUpdatedAtErrorComponent"
          matched_schemas <- append(matched_schemas, "BitesGeoListUpdatedAtErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`BitesGeoListUpdatedAtErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `BitesGeoListUpdatedAtErrorComponent_result`["message"])
      }

      `BitesGeoListCountryIdErrorComponent_result` <- tryCatch({
          `BitesGeoListCountryIdErrorComponent`$public_methods$validateJSON(input)
          `BitesGeoListCountryIdErrorComponent_instance` <- `BitesGeoListCountryIdErrorComponent`$new()
          instance <- `BitesGeoListCountryIdErrorComponent_instance`$fromJSON(input)
          instance_type <- "BitesGeoListCountryIdErrorComponent"
          matched_schemas <- append(matched_schemas, "BitesGeoListCountryIdErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`BitesGeoListCountryIdErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `BitesGeoListCountryIdErrorComponent_result`["message"])
      }

      `BitesGeoListUserUuidErrorComponent_result` <- tryCatch({
          `BitesGeoListUserUuidErrorComponent`$public_methods$validateJSON(input)
          `BitesGeoListUserUuidErrorComponent_instance` <- `BitesGeoListUserUuidErrorComponent`$new()
          instance <- `BitesGeoListUserUuidErrorComponent_instance`$fromJSON(input)
          instance_type <- "BitesGeoListUserUuidErrorComponent"
          matched_schemas <- append(matched_schemas, "BitesGeoListUserUuidErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`BitesGeoListUserUuidErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `BitesGeoListUserUuidErrorComponent_result`["message"])
      }

      `BitesGeoListOrderByErrorComponent_result` <- tryCatch({
          `BitesGeoListOrderByErrorComponent`$public_methods$validateJSON(input)
          `BitesGeoListOrderByErrorComponent_instance` <- `BitesGeoListOrderByErrorComponent`$new()
          instance <- `BitesGeoListOrderByErrorComponent_instance`$fromJSON(input)
          instance_type <- "BitesGeoListOrderByErrorComponent"
          matched_schemas <- append(matched_schemas, "BitesGeoListOrderByErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`BitesGeoListOrderByErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `BitesGeoListOrderByErrorComponent_result`["message"])
      }

      `BitesGeoListTagsErrorComponent_result` <- tryCatch({
          `BitesGeoListTagsErrorComponent`$public_methods$validateJSON(input)
          `BitesGeoListTagsErrorComponent_instance` <- `BitesGeoListTagsErrorComponent`$new()
          instance <- `BitesGeoListTagsErrorComponent_instance`$fromJSON(input)
          instance_type <- "BitesGeoListTagsErrorComponent"
          matched_schemas <- append(matched_schemas, "BitesGeoListTagsErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`BitesGeoListTagsErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `BitesGeoListTagsErrorComponent_result`["message"])
      }

      `BitesGeoListGeoPrecisionErrorComponent_result` <- tryCatch({
          `BitesGeoListGeoPrecisionErrorComponent`$public_methods$validateJSON(input)
          `BitesGeoListGeoPrecisionErrorComponent_instance` <- `BitesGeoListGeoPrecisionErrorComponent`$new()
          instance <- `BitesGeoListGeoPrecisionErrorComponent_instance`$fromJSON(input)
          instance_type <- "BitesGeoListGeoPrecisionErrorComponent"
          matched_schemas <- append(matched_schemas, "BitesGeoListGeoPrecisionErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`BitesGeoListGeoPrecisionErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `BitesGeoListGeoPrecisionErrorComponent_result`["message"])
      }

      `BitesGeoListBoundaryUuidErrorComponent_result` <- tryCatch({
          `BitesGeoListBoundaryUuidErrorComponent`$public_methods$validateJSON(input)
          `BitesGeoListBoundaryUuidErrorComponent_instance` <- `BitesGeoListBoundaryUuidErrorComponent`$new()
          instance <- `BitesGeoListBoundaryUuidErrorComponent_instance`$fromJSON(input)
          instance_type <- "BitesGeoListBoundaryUuidErrorComponent"
          matched_schemas <- append(matched_schemas, "BitesGeoListBoundaryUuidErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`BitesGeoListBoundaryUuidErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `BitesGeoListBoundaryUuidErrorComponent_result`["message"])
      }

      if (matched == 1) {
        # successfully match exactly 1 schema specified in oneOf
        self$actual_instance <- instance
        self$actual_type <- instance_type
      } else if (matched > 1) {
        # more than 1 match
        stop(paste("Multiple matches found when deserializing the input into BitesGeoListError with oneOf schemas BitesGeoListBoundaryUuidErrorComponent, BitesGeoListCountryIdErrorComponent, BitesGeoListCreatedAtErrorComponent, BitesGeoListGeoPrecisionErrorComponent, BitesGeoListOrderByErrorComponent, BitesGeoListReceivedAtErrorComponent, BitesGeoListShortIdErrorComponent, BitesGeoListTagsErrorComponent, BitesGeoListUpdatedAtErrorComponent, BitesGeoListUserUuidErrorComponent. Matched schemas: ",
                   paste(matched_schemas, collapse = ", ")))
      } else {
        # no match
        stop(paste("No match found when deserializing the input into BitesGeoListError with oneOf schemas BitesGeoListBoundaryUuidErrorComponent, BitesGeoListCountryIdErrorComponent, BitesGeoListCreatedAtErrorComponent, BitesGeoListGeoPrecisionErrorComponent, BitesGeoListOrderByErrorComponent, BitesGeoListReceivedAtErrorComponent, BitesGeoListShortIdErrorComponent, BitesGeoListTagsErrorComponent, BitesGeoListUpdatedAtErrorComponent, BitesGeoListUserUuidErrorComponent. Details: >>",
                   paste(error_messages, collapse = " >> ")))
      }

      self
    },

    #' @description
    #' Serialize BitesGeoListError to JSON string.
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return JSON string representation of the BitesGeoListError.
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
    #' Convert BitesGeoListError to a base R type
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
    #' Validate the input JSON with respect to BitesGeoListError and
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
#BitesGeoListError$unlock()
#
## Below is an example to define the print function
#BitesGeoListError$set("public", "print", function(...) {
#  print(jsonlite::prettify(self$toJSONString()))
#  invisible(self)
#})
## Uncomment below to lock the class to prevent modifications to the method or field
#BitesGeoListError$lock()

