#' @docType class
#' @title FixesCreateError
#'
#' @description FixesCreateError Class
#'
#' @format An \code{R6Class} generator object
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
FixesCreateError <- R6::R6Class(
  "FixesCreateError",
  public = list(
    #' @field actual_instance the object stored in this instance.
    actual_instance = NULL,
    #' @field actual_type the type of the object stored in this instance.
    actual_type = NULL,
    #' @field one_of  a list of types defined in the oneOf schema.
    one_of = list("FixesCreateCoverageUuidErrorComponent", "FixesCreateCreatedAtErrorComponent", "FixesCreateNonFieldErrorsErrorComponent", "FixesCreatePointLatitudeErrorComponent", "FixesCreatePointLongitudeErrorComponent", "FixesCreatePointNonFieldErrorsErrorComponent", "FixesCreatePowerErrorComponent", "FixesCreateSentAtErrorComponent"),

    #' @description
    #' Initialize a new FixesCreateError.
    #'
    #' @param instance an instance of the object defined in the oneOf schemas: "FixesCreateCoverageUuidErrorComponent", "FixesCreateCreatedAtErrorComponent", "FixesCreateNonFieldErrorsErrorComponent", "FixesCreatePointLatitudeErrorComponent", "FixesCreatePointLongitudeErrorComponent", "FixesCreatePointNonFieldErrorsErrorComponent", "FixesCreatePowerErrorComponent", "FixesCreateSentAtErrorComponent"
    initialize = function(instance = NULL) {
      if (is.null(instance)) {
        # do nothing
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "FixesCreateCoverageUuidErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "FixesCreateCoverageUuidErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "FixesCreateCreatedAtErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "FixesCreateCreatedAtErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "FixesCreateNonFieldErrorsErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "FixesCreateNonFieldErrorsErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "FixesCreatePointLatitudeErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "FixesCreatePointLatitudeErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "FixesCreatePointLongitudeErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "FixesCreatePointLongitudeErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "FixesCreatePointNonFieldErrorsErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "FixesCreatePointNonFieldErrorsErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "FixesCreatePowerErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "FixesCreatePowerErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "FixesCreateSentAtErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "FixesCreateSentAtErrorComponent"
      } else {
        stop(paste("Failed to initialize FixesCreateError with oneOf schemas FixesCreateCoverageUuidErrorComponent, FixesCreateCreatedAtErrorComponent, FixesCreateNonFieldErrorsErrorComponent, FixesCreatePointLatitudeErrorComponent, FixesCreatePointLongitudeErrorComponent, FixesCreatePointNonFieldErrorsErrorComponent, FixesCreatePowerErrorComponent, FixesCreateSentAtErrorComponent. Provided class name: ",
                   get(class(instance)[[1]], pos = -1)$classname))
      }
    },

    #' @description
    #' Deserialize JSON string into an instance of FixesCreateError.
    #' An alias to the method `fromJSON` .
    #'
    #' @param input The input JSON.
    #'
    #' @return An instance of FixesCreateError.
    fromJSONString = function(input) {
      self$fromJSON(input)
    },

    #' @description
    #' Deserialize JSON string into an instance of FixesCreateError.
    #'
    #' @param input The input JSON.
    #'
    #' @return An instance of FixesCreateError.
    fromJSON = function(input) {
      matched <- 0 # match counter
      matched_schemas <- list() #names of matched schemas
      error_messages <- list()
      instance <- NULL

      `FixesCreateNonFieldErrorsErrorComponent_result` <- tryCatch({
          `FixesCreateNonFieldErrorsErrorComponent`$public_methods$validateJSON(input)
          `FixesCreateNonFieldErrorsErrorComponent_instance` <- `FixesCreateNonFieldErrorsErrorComponent`$new()
          instance <- `FixesCreateNonFieldErrorsErrorComponent_instance`$fromJSON(input)
          instance_type <- "FixesCreateNonFieldErrorsErrorComponent"
          matched_schemas <- append(matched_schemas, "FixesCreateNonFieldErrorsErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`FixesCreateNonFieldErrorsErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `FixesCreateNonFieldErrorsErrorComponent_result`["message"])
      }

      `FixesCreateCoverageUuidErrorComponent_result` <- tryCatch({
          `FixesCreateCoverageUuidErrorComponent`$public_methods$validateJSON(input)
          `FixesCreateCoverageUuidErrorComponent_instance` <- `FixesCreateCoverageUuidErrorComponent`$new()
          instance <- `FixesCreateCoverageUuidErrorComponent_instance`$fromJSON(input)
          instance_type <- "FixesCreateCoverageUuidErrorComponent"
          matched_schemas <- append(matched_schemas, "FixesCreateCoverageUuidErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`FixesCreateCoverageUuidErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `FixesCreateCoverageUuidErrorComponent_result`["message"])
      }

      `FixesCreateCreatedAtErrorComponent_result` <- tryCatch({
          `FixesCreateCreatedAtErrorComponent`$public_methods$validateJSON(input)
          `FixesCreateCreatedAtErrorComponent_instance` <- `FixesCreateCreatedAtErrorComponent`$new()
          instance <- `FixesCreateCreatedAtErrorComponent_instance`$fromJSON(input)
          instance_type <- "FixesCreateCreatedAtErrorComponent"
          matched_schemas <- append(matched_schemas, "FixesCreateCreatedAtErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`FixesCreateCreatedAtErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `FixesCreateCreatedAtErrorComponent_result`["message"])
      }

      `FixesCreateSentAtErrorComponent_result` <- tryCatch({
          `FixesCreateSentAtErrorComponent`$public_methods$validateJSON(input)
          `FixesCreateSentAtErrorComponent_instance` <- `FixesCreateSentAtErrorComponent`$new()
          instance <- `FixesCreateSentAtErrorComponent_instance`$fromJSON(input)
          instance_type <- "FixesCreateSentAtErrorComponent"
          matched_schemas <- append(matched_schemas, "FixesCreateSentAtErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`FixesCreateSentAtErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `FixesCreateSentAtErrorComponent_result`["message"])
      }

      `FixesCreatePointNonFieldErrorsErrorComponent_result` <- tryCatch({
          `FixesCreatePointNonFieldErrorsErrorComponent`$public_methods$validateJSON(input)
          `FixesCreatePointNonFieldErrorsErrorComponent_instance` <- `FixesCreatePointNonFieldErrorsErrorComponent`$new()
          instance <- `FixesCreatePointNonFieldErrorsErrorComponent_instance`$fromJSON(input)
          instance_type <- "FixesCreatePointNonFieldErrorsErrorComponent"
          matched_schemas <- append(matched_schemas, "FixesCreatePointNonFieldErrorsErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`FixesCreatePointNonFieldErrorsErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `FixesCreatePointNonFieldErrorsErrorComponent_result`["message"])
      }

      `FixesCreatePointLatitudeErrorComponent_result` <- tryCatch({
          `FixesCreatePointLatitudeErrorComponent`$public_methods$validateJSON(input)
          `FixesCreatePointLatitudeErrorComponent_instance` <- `FixesCreatePointLatitudeErrorComponent`$new()
          instance <- `FixesCreatePointLatitudeErrorComponent_instance`$fromJSON(input)
          instance_type <- "FixesCreatePointLatitudeErrorComponent"
          matched_schemas <- append(matched_schemas, "FixesCreatePointLatitudeErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`FixesCreatePointLatitudeErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `FixesCreatePointLatitudeErrorComponent_result`["message"])
      }

      `FixesCreatePointLongitudeErrorComponent_result` <- tryCatch({
          `FixesCreatePointLongitudeErrorComponent`$public_methods$validateJSON(input)
          `FixesCreatePointLongitudeErrorComponent_instance` <- `FixesCreatePointLongitudeErrorComponent`$new()
          instance <- `FixesCreatePointLongitudeErrorComponent_instance`$fromJSON(input)
          instance_type <- "FixesCreatePointLongitudeErrorComponent"
          matched_schemas <- append(matched_schemas, "FixesCreatePointLongitudeErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`FixesCreatePointLongitudeErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `FixesCreatePointLongitudeErrorComponent_result`["message"])
      }

      `FixesCreatePowerErrorComponent_result` <- tryCatch({
          `FixesCreatePowerErrorComponent`$public_methods$validateJSON(input)
          `FixesCreatePowerErrorComponent_instance` <- `FixesCreatePowerErrorComponent`$new()
          instance <- `FixesCreatePowerErrorComponent_instance`$fromJSON(input)
          instance_type <- "FixesCreatePowerErrorComponent"
          matched_schemas <- append(matched_schemas, "FixesCreatePowerErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`FixesCreatePowerErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `FixesCreatePowerErrorComponent_result`["message"])
      }

      if (matched == 1) {
        # successfully match exactly 1 schema specified in oneOf
        self$actual_instance <- instance
        self$actual_type <- instance_type
      } else if (matched > 1) {
        # more than 1 match
        stop(paste("Multiple matches found when deserializing the input into FixesCreateError with oneOf schemas FixesCreateCoverageUuidErrorComponent, FixesCreateCreatedAtErrorComponent, FixesCreateNonFieldErrorsErrorComponent, FixesCreatePointLatitudeErrorComponent, FixesCreatePointLongitudeErrorComponent, FixesCreatePointNonFieldErrorsErrorComponent, FixesCreatePowerErrorComponent, FixesCreateSentAtErrorComponent. Matched schemas: ",
                   paste(matched_schemas, collapse = ", ")))
      } else {
        # no match
        stop(paste("No match found when deserializing the input into FixesCreateError with oneOf schemas FixesCreateCoverageUuidErrorComponent, FixesCreateCreatedAtErrorComponent, FixesCreateNonFieldErrorsErrorComponent, FixesCreatePointLatitudeErrorComponent, FixesCreatePointLongitudeErrorComponent, FixesCreatePointNonFieldErrorsErrorComponent, FixesCreatePowerErrorComponent, FixesCreateSentAtErrorComponent. Details: >>",
                   paste(error_messages, collapse = " >> ")))
      }

      self
    },

    #' @description
    #' Serialize FixesCreateError to JSON string.
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return JSON string representation of the FixesCreateError.
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
    #' Convert FixesCreateError to a base R type
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
    #' Validate the input JSON with respect to FixesCreateError and
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
#FixesCreateError$unlock()
#
## Below is an example to define the print function
#FixesCreateError$set("public", "print", function(...) {
#  print(jsonlite::prettify(self$toJSONString()))
#  invisible(self)
#})
## Uncomment below to lock the class to prevent modifications to the method or field
#FixesCreateError$lock()

