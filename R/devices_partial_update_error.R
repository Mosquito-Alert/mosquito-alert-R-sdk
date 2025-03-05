#' @docType class
#' @title DevicesPartialUpdateError
#'
#' @description DevicesPartialUpdateError Class
#'
#' @format An \code{R6Class} generator object
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
DevicesPartialUpdateError <- R6::R6Class(
  "DevicesPartialUpdateError",
  public = list(
    #' @field actual_instance the object stored in this instance.
    actual_instance = NULL,
    #' @field actual_type the type of the object stored in this instance.
    actual_type = NULL,
    #' @field one_of  a list of types defined in the oneOf schema.
    one_of = list("DevicesPartialUpdateFcmTokenErrorComponent", "DevicesPartialUpdateMobileAppNonFieldErrorsErrorComponent", "DevicesPartialUpdateMobileAppPackageNameErrorComponent", "DevicesPartialUpdateMobileAppPackageVersionErrorComponent", "DevicesPartialUpdateNameErrorComponent", "DevicesPartialUpdateNonFieldErrorsErrorComponent", "DevicesPartialUpdateOsLocaleErrorComponent", "DevicesPartialUpdateOsNameErrorComponent", "DevicesPartialUpdateOsNonFieldErrorsErrorComponent", "DevicesPartialUpdateOsVersionErrorComponent"),

    #' @description
    #' Initialize a new DevicesPartialUpdateError.
    #'
    #' @param instance an instance of the object defined in the oneOf schemas: "DevicesPartialUpdateFcmTokenErrorComponent", "DevicesPartialUpdateMobileAppNonFieldErrorsErrorComponent", "DevicesPartialUpdateMobileAppPackageNameErrorComponent", "DevicesPartialUpdateMobileAppPackageVersionErrorComponent", "DevicesPartialUpdateNameErrorComponent", "DevicesPartialUpdateNonFieldErrorsErrorComponent", "DevicesPartialUpdateOsLocaleErrorComponent", "DevicesPartialUpdateOsNameErrorComponent", "DevicesPartialUpdateOsNonFieldErrorsErrorComponent", "DevicesPartialUpdateOsVersionErrorComponent"
    initialize = function(instance = NULL) {
      if (is.null(instance)) {
        # do nothing
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "DevicesPartialUpdateFcmTokenErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "DevicesPartialUpdateFcmTokenErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "DevicesPartialUpdateMobileAppNonFieldErrorsErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "DevicesPartialUpdateMobileAppNonFieldErrorsErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "DevicesPartialUpdateMobileAppPackageNameErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "DevicesPartialUpdateMobileAppPackageNameErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "DevicesPartialUpdateMobileAppPackageVersionErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "DevicesPartialUpdateMobileAppPackageVersionErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "DevicesPartialUpdateNameErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "DevicesPartialUpdateNameErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "DevicesPartialUpdateNonFieldErrorsErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "DevicesPartialUpdateNonFieldErrorsErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "DevicesPartialUpdateOsLocaleErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "DevicesPartialUpdateOsLocaleErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "DevicesPartialUpdateOsNameErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "DevicesPartialUpdateOsNameErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "DevicesPartialUpdateOsNonFieldErrorsErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "DevicesPartialUpdateOsNonFieldErrorsErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "DevicesPartialUpdateOsVersionErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "DevicesPartialUpdateOsVersionErrorComponent"
      } else {
        stop(paste("Failed to initialize DevicesPartialUpdateError with oneOf schemas DevicesPartialUpdateFcmTokenErrorComponent, DevicesPartialUpdateMobileAppNonFieldErrorsErrorComponent, DevicesPartialUpdateMobileAppPackageNameErrorComponent, DevicesPartialUpdateMobileAppPackageVersionErrorComponent, DevicesPartialUpdateNameErrorComponent, DevicesPartialUpdateNonFieldErrorsErrorComponent, DevicesPartialUpdateOsLocaleErrorComponent, DevicesPartialUpdateOsNameErrorComponent, DevicesPartialUpdateOsNonFieldErrorsErrorComponent, DevicesPartialUpdateOsVersionErrorComponent. Provided class name: ",
                   get(class(instance)[[1]], pos = -1)$classname))
      }
    },

    #' @description
    #' Deserialize JSON string into an instance of DevicesPartialUpdateError.
    #' An alias to the method `fromJSON` .
    #'
    #' @param input The input JSON.
    #'
    #' @return An instance of DevicesPartialUpdateError.
    fromJSONString = function(input) {
      self$fromJSON(input)
    },

    #' @description
    #' Deserialize JSON string into an instance of DevicesPartialUpdateError.
    #'
    #' @param input The input JSON.
    #'
    #' @return An instance of DevicesPartialUpdateError.
    fromJSON = function(input) {
      matched <- 0 # match counter
      matched_schemas <- list() #names of matched schemas
      error_messages <- list()
      instance <- NULL

      `DevicesPartialUpdateNonFieldErrorsErrorComponent_result` <- tryCatch({
          `DevicesPartialUpdateNonFieldErrorsErrorComponent`$public_methods$validateJSON(input)
          `DevicesPartialUpdateNonFieldErrorsErrorComponent_instance` <- `DevicesPartialUpdateNonFieldErrorsErrorComponent`$new()
          instance <- `DevicesPartialUpdateNonFieldErrorsErrorComponent_instance`$fromJSON(input)
          instance_type <- "DevicesPartialUpdateNonFieldErrorsErrorComponent"
          matched_schemas <- append(matched_schemas, "DevicesPartialUpdateNonFieldErrorsErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`DevicesPartialUpdateNonFieldErrorsErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `DevicesPartialUpdateNonFieldErrorsErrorComponent_result`["message"])
      }

      `DevicesPartialUpdateNameErrorComponent_result` <- tryCatch({
          `DevicesPartialUpdateNameErrorComponent`$public_methods$validateJSON(input)
          `DevicesPartialUpdateNameErrorComponent_instance` <- `DevicesPartialUpdateNameErrorComponent`$new()
          instance <- `DevicesPartialUpdateNameErrorComponent_instance`$fromJSON(input)
          instance_type <- "DevicesPartialUpdateNameErrorComponent"
          matched_schemas <- append(matched_schemas, "DevicesPartialUpdateNameErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`DevicesPartialUpdateNameErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `DevicesPartialUpdateNameErrorComponent_result`["message"])
      }

      `DevicesPartialUpdateFcmTokenErrorComponent_result` <- tryCatch({
          `DevicesPartialUpdateFcmTokenErrorComponent`$public_methods$validateJSON(input)
          `DevicesPartialUpdateFcmTokenErrorComponent_instance` <- `DevicesPartialUpdateFcmTokenErrorComponent`$new()
          instance <- `DevicesPartialUpdateFcmTokenErrorComponent_instance`$fromJSON(input)
          instance_type <- "DevicesPartialUpdateFcmTokenErrorComponent"
          matched_schemas <- append(matched_schemas, "DevicesPartialUpdateFcmTokenErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`DevicesPartialUpdateFcmTokenErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `DevicesPartialUpdateFcmTokenErrorComponent_result`["message"])
      }

      `DevicesPartialUpdateOsNonFieldErrorsErrorComponent_result` <- tryCatch({
          `DevicesPartialUpdateOsNonFieldErrorsErrorComponent`$public_methods$validateJSON(input)
          `DevicesPartialUpdateOsNonFieldErrorsErrorComponent_instance` <- `DevicesPartialUpdateOsNonFieldErrorsErrorComponent`$new()
          instance <- `DevicesPartialUpdateOsNonFieldErrorsErrorComponent_instance`$fromJSON(input)
          instance_type <- "DevicesPartialUpdateOsNonFieldErrorsErrorComponent"
          matched_schemas <- append(matched_schemas, "DevicesPartialUpdateOsNonFieldErrorsErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`DevicesPartialUpdateOsNonFieldErrorsErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `DevicesPartialUpdateOsNonFieldErrorsErrorComponent_result`["message"])
      }

      `DevicesPartialUpdateOsNameErrorComponent_result` <- tryCatch({
          `DevicesPartialUpdateOsNameErrorComponent`$public_methods$validateJSON(input)
          `DevicesPartialUpdateOsNameErrorComponent_instance` <- `DevicesPartialUpdateOsNameErrorComponent`$new()
          instance <- `DevicesPartialUpdateOsNameErrorComponent_instance`$fromJSON(input)
          instance_type <- "DevicesPartialUpdateOsNameErrorComponent"
          matched_schemas <- append(matched_schemas, "DevicesPartialUpdateOsNameErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`DevicesPartialUpdateOsNameErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `DevicesPartialUpdateOsNameErrorComponent_result`["message"])
      }

      `DevicesPartialUpdateOsVersionErrorComponent_result` <- tryCatch({
          `DevicesPartialUpdateOsVersionErrorComponent`$public_methods$validateJSON(input)
          `DevicesPartialUpdateOsVersionErrorComponent_instance` <- `DevicesPartialUpdateOsVersionErrorComponent`$new()
          instance <- `DevicesPartialUpdateOsVersionErrorComponent_instance`$fromJSON(input)
          instance_type <- "DevicesPartialUpdateOsVersionErrorComponent"
          matched_schemas <- append(matched_schemas, "DevicesPartialUpdateOsVersionErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`DevicesPartialUpdateOsVersionErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `DevicesPartialUpdateOsVersionErrorComponent_result`["message"])
      }

      `DevicesPartialUpdateOsLocaleErrorComponent_result` <- tryCatch({
          `DevicesPartialUpdateOsLocaleErrorComponent`$public_methods$validateJSON(input)
          `DevicesPartialUpdateOsLocaleErrorComponent_instance` <- `DevicesPartialUpdateOsLocaleErrorComponent`$new()
          instance <- `DevicesPartialUpdateOsLocaleErrorComponent_instance`$fromJSON(input)
          instance_type <- "DevicesPartialUpdateOsLocaleErrorComponent"
          matched_schemas <- append(matched_schemas, "DevicesPartialUpdateOsLocaleErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`DevicesPartialUpdateOsLocaleErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `DevicesPartialUpdateOsLocaleErrorComponent_result`["message"])
      }

      `DevicesPartialUpdateMobileAppNonFieldErrorsErrorComponent_result` <- tryCatch({
          `DevicesPartialUpdateMobileAppNonFieldErrorsErrorComponent`$public_methods$validateJSON(input)
          `DevicesPartialUpdateMobileAppNonFieldErrorsErrorComponent_instance` <- `DevicesPartialUpdateMobileAppNonFieldErrorsErrorComponent`$new()
          instance <- `DevicesPartialUpdateMobileAppNonFieldErrorsErrorComponent_instance`$fromJSON(input)
          instance_type <- "DevicesPartialUpdateMobileAppNonFieldErrorsErrorComponent"
          matched_schemas <- append(matched_schemas, "DevicesPartialUpdateMobileAppNonFieldErrorsErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`DevicesPartialUpdateMobileAppNonFieldErrorsErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `DevicesPartialUpdateMobileAppNonFieldErrorsErrorComponent_result`["message"])
      }

      `DevicesPartialUpdateMobileAppPackageNameErrorComponent_result` <- tryCatch({
          `DevicesPartialUpdateMobileAppPackageNameErrorComponent`$public_methods$validateJSON(input)
          `DevicesPartialUpdateMobileAppPackageNameErrorComponent_instance` <- `DevicesPartialUpdateMobileAppPackageNameErrorComponent`$new()
          instance <- `DevicesPartialUpdateMobileAppPackageNameErrorComponent_instance`$fromJSON(input)
          instance_type <- "DevicesPartialUpdateMobileAppPackageNameErrorComponent"
          matched_schemas <- append(matched_schemas, "DevicesPartialUpdateMobileAppPackageNameErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`DevicesPartialUpdateMobileAppPackageNameErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `DevicesPartialUpdateMobileAppPackageNameErrorComponent_result`["message"])
      }

      `DevicesPartialUpdateMobileAppPackageVersionErrorComponent_result` <- tryCatch({
          `DevicesPartialUpdateMobileAppPackageVersionErrorComponent`$public_methods$validateJSON(input)
          `DevicesPartialUpdateMobileAppPackageVersionErrorComponent_instance` <- `DevicesPartialUpdateMobileAppPackageVersionErrorComponent`$new()
          instance <- `DevicesPartialUpdateMobileAppPackageVersionErrorComponent_instance`$fromJSON(input)
          instance_type <- "DevicesPartialUpdateMobileAppPackageVersionErrorComponent"
          matched_schemas <- append(matched_schemas, "DevicesPartialUpdateMobileAppPackageVersionErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`DevicesPartialUpdateMobileAppPackageVersionErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `DevicesPartialUpdateMobileAppPackageVersionErrorComponent_result`["message"])
      }

      if (matched == 1) {
        # successfully match exactly 1 schema specified in oneOf
        self$actual_instance <- instance
        self$actual_type <- instance_type
      } else if (matched > 1) {
        # more than 1 match
        stop(paste("Multiple matches found when deserializing the input into DevicesPartialUpdateError with oneOf schemas DevicesPartialUpdateFcmTokenErrorComponent, DevicesPartialUpdateMobileAppNonFieldErrorsErrorComponent, DevicesPartialUpdateMobileAppPackageNameErrorComponent, DevicesPartialUpdateMobileAppPackageVersionErrorComponent, DevicesPartialUpdateNameErrorComponent, DevicesPartialUpdateNonFieldErrorsErrorComponent, DevicesPartialUpdateOsLocaleErrorComponent, DevicesPartialUpdateOsNameErrorComponent, DevicesPartialUpdateOsNonFieldErrorsErrorComponent, DevicesPartialUpdateOsVersionErrorComponent. Matched schemas: ",
                   paste(matched_schemas, collapse = ", ")))
      } else {
        # no match
        stop(paste("No match found when deserializing the input into DevicesPartialUpdateError with oneOf schemas DevicesPartialUpdateFcmTokenErrorComponent, DevicesPartialUpdateMobileAppNonFieldErrorsErrorComponent, DevicesPartialUpdateMobileAppPackageNameErrorComponent, DevicesPartialUpdateMobileAppPackageVersionErrorComponent, DevicesPartialUpdateNameErrorComponent, DevicesPartialUpdateNonFieldErrorsErrorComponent, DevicesPartialUpdateOsLocaleErrorComponent, DevicesPartialUpdateOsNameErrorComponent, DevicesPartialUpdateOsNonFieldErrorsErrorComponent, DevicesPartialUpdateOsVersionErrorComponent. Details: >>",
                   paste(error_messages, collapse = " >> ")))
      }

      self
    },

    #' @description
    #' Serialize DevicesPartialUpdateError to JSON string.
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return JSON string representation of the DevicesPartialUpdateError.
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
    #' Convert DevicesPartialUpdateError to a base R type
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
    #' Validate the input JSON with respect to DevicesPartialUpdateError and
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
#DevicesPartialUpdateError$unlock()
#
## Below is an example to define the print function
#DevicesPartialUpdateError$set("public", "print", function(...) {
#  print(jsonlite::prettify(self$toJSONString()))
#  invisible(self)
#})
## Uncomment below to lock the class to prevent modifications to the method or field
#DevicesPartialUpdateError$lock()

