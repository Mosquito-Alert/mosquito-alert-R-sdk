#' @docType class
#' @title DevicesCreateError
#'
#' @description DevicesCreateError Class
#'
#' @format An \code{R6Class} generator object
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
DevicesCreateError <- R6::R6Class(
  "DevicesCreateError",
  public = list(
    #' @field actual_instance the object stored in this instance.
    actual_instance = NULL,
    #' @field actual_type the type of the object stored in this instance.
    actual_type = NULL,
    #' @field one_of  a list of types defined in the oneOf schema.
    one_of = list("DevicesCreateDeviceIdErrorComponent", "DevicesCreateFcmTokenErrorComponent", "DevicesCreateManufacturerErrorComponent", "DevicesCreateMobileAppNonFieldErrorsErrorComponent", "DevicesCreateMobileAppPackageNameErrorComponent", "DevicesCreateMobileAppPackageVersionErrorComponent", "DevicesCreateModelErrorComponent", "DevicesCreateNameErrorComponent", "DevicesCreateNonFieldErrorsErrorComponent", "DevicesCreateOsLocaleErrorComponent", "DevicesCreateOsNameErrorComponent", "DevicesCreateOsNonFieldErrorsErrorComponent", "DevicesCreateOsVersionErrorComponent", "DevicesCreateTypeErrorComponent"),

    #' @description
    #' Initialize a new DevicesCreateError.
    #'
    #' @param instance an instance of the object defined in the oneOf schemas: "DevicesCreateDeviceIdErrorComponent", "DevicesCreateFcmTokenErrorComponent", "DevicesCreateManufacturerErrorComponent", "DevicesCreateMobileAppNonFieldErrorsErrorComponent", "DevicesCreateMobileAppPackageNameErrorComponent", "DevicesCreateMobileAppPackageVersionErrorComponent", "DevicesCreateModelErrorComponent", "DevicesCreateNameErrorComponent", "DevicesCreateNonFieldErrorsErrorComponent", "DevicesCreateOsLocaleErrorComponent", "DevicesCreateOsNameErrorComponent", "DevicesCreateOsNonFieldErrorsErrorComponent", "DevicesCreateOsVersionErrorComponent", "DevicesCreateTypeErrorComponent"
    initialize = function(instance = NULL) {
      if (is.null(instance)) {
        # do nothing
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "DevicesCreateDeviceIdErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "DevicesCreateDeviceIdErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "DevicesCreateFcmTokenErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "DevicesCreateFcmTokenErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "DevicesCreateManufacturerErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "DevicesCreateManufacturerErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "DevicesCreateMobileAppNonFieldErrorsErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "DevicesCreateMobileAppNonFieldErrorsErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "DevicesCreateMobileAppPackageNameErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "DevicesCreateMobileAppPackageNameErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "DevicesCreateMobileAppPackageVersionErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "DevicesCreateMobileAppPackageVersionErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "DevicesCreateModelErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "DevicesCreateModelErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "DevicesCreateNameErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "DevicesCreateNameErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "DevicesCreateNonFieldErrorsErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "DevicesCreateNonFieldErrorsErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "DevicesCreateOsLocaleErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "DevicesCreateOsLocaleErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "DevicesCreateOsNameErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "DevicesCreateOsNameErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "DevicesCreateOsNonFieldErrorsErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "DevicesCreateOsNonFieldErrorsErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "DevicesCreateOsVersionErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "DevicesCreateOsVersionErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "DevicesCreateTypeErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "DevicesCreateTypeErrorComponent"
      } else {
        stop(paste("Failed to initialize DevicesCreateError with oneOf schemas DevicesCreateDeviceIdErrorComponent, DevicesCreateFcmTokenErrorComponent, DevicesCreateManufacturerErrorComponent, DevicesCreateMobileAppNonFieldErrorsErrorComponent, DevicesCreateMobileAppPackageNameErrorComponent, DevicesCreateMobileAppPackageVersionErrorComponent, DevicesCreateModelErrorComponent, DevicesCreateNameErrorComponent, DevicesCreateNonFieldErrorsErrorComponent, DevicesCreateOsLocaleErrorComponent, DevicesCreateOsNameErrorComponent, DevicesCreateOsNonFieldErrorsErrorComponent, DevicesCreateOsVersionErrorComponent, DevicesCreateTypeErrorComponent. Provided class name: ",
                   get(class(instance)[[1]], pos = -1)$classname))
      }
    },

    #' @description
    #' Deserialize JSON string into an instance of DevicesCreateError.
    #' An alias to the method `fromJSON` .
    #'
    #' @param input The input JSON.
    #'
    #' @return An instance of DevicesCreateError.
    fromJSONString = function(input) {
      self$fromJSON(input)
    },

    #' @description
    #' Deserialize JSON string into an instance of DevicesCreateError.
    #'
    #' @param input The input JSON.
    #'
    #' @return An instance of DevicesCreateError.
    fromJSON = function(input) {
      matched <- 0 # match counter
      matched_schemas <- list() #names of matched schemas
      error_messages <- list()
      instance <- NULL

      `DevicesCreateNonFieldErrorsErrorComponent_result` <- tryCatch({
          `DevicesCreateNonFieldErrorsErrorComponent`$public_methods$validateJSON(input)
          `DevicesCreateNonFieldErrorsErrorComponent_instance` <- `DevicesCreateNonFieldErrorsErrorComponent`$new()
          instance <- `DevicesCreateNonFieldErrorsErrorComponent_instance`$fromJSON(input)
          instance_type <- "DevicesCreateNonFieldErrorsErrorComponent"
          matched_schemas <- append(matched_schemas, "DevicesCreateNonFieldErrorsErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`DevicesCreateNonFieldErrorsErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `DevicesCreateNonFieldErrorsErrorComponent_result`["message"])
      }

      `DevicesCreateDeviceIdErrorComponent_result` <- tryCatch({
          `DevicesCreateDeviceIdErrorComponent`$public_methods$validateJSON(input)
          `DevicesCreateDeviceIdErrorComponent_instance` <- `DevicesCreateDeviceIdErrorComponent`$new()
          instance <- `DevicesCreateDeviceIdErrorComponent_instance`$fromJSON(input)
          instance_type <- "DevicesCreateDeviceIdErrorComponent"
          matched_schemas <- append(matched_schemas, "DevicesCreateDeviceIdErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`DevicesCreateDeviceIdErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `DevicesCreateDeviceIdErrorComponent_result`["message"])
      }

      `DevicesCreateNameErrorComponent_result` <- tryCatch({
          `DevicesCreateNameErrorComponent`$public_methods$validateJSON(input)
          `DevicesCreateNameErrorComponent_instance` <- `DevicesCreateNameErrorComponent`$new()
          instance <- `DevicesCreateNameErrorComponent_instance`$fromJSON(input)
          instance_type <- "DevicesCreateNameErrorComponent"
          matched_schemas <- append(matched_schemas, "DevicesCreateNameErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`DevicesCreateNameErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `DevicesCreateNameErrorComponent_result`["message"])
      }

      `DevicesCreateFcmTokenErrorComponent_result` <- tryCatch({
          `DevicesCreateFcmTokenErrorComponent`$public_methods$validateJSON(input)
          `DevicesCreateFcmTokenErrorComponent_instance` <- `DevicesCreateFcmTokenErrorComponent`$new()
          instance <- `DevicesCreateFcmTokenErrorComponent_instance`$fromJSON(input)
          instance_type <- "DevicesCreateFcmTokenErrorComponent"
          matched_schemas <- append(matched_schemas, "DevicesCreateFcmTokenErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`DevicesCreateFcmTokenErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `DevicesCreateFcmTokenErrorComponent_result`["message"])
      }

      `DevicesCreateTypeErrorComponent_result` <- tryCatch({
          `DevicesCreateTypeErrorComponent`$public_methods$validateJSON(input)
          `DevicesCreateTypeErrorComponent_instance` <- `DevicesCreateTypeErrorComponent`$new()
          instance <- `DevicesCreateTypeErrorComponent_instance`$fromJSON(input)
          instance_type <- "DevicesCreateTypeErrorComponent"
          matched_schemas <- append(matched_schemas, "DevicesCreateTypeErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`DevicesCreateTypeErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `DevicesCreateTypeErrorComponent_result`["message"])
      }

      `DevicesCreateManufacturerErrorComponent_result` <- tryCatch({
          `DevicesCreateManufacturerErrorComponent`$public_methods$validateJSON(input)
          `DevicesCreateManufacturerErrorComponent_instance` <- `DevicesCreateManufacturerErrorComponent`$new()
          instance <- `DevicesCreateManufacturerErrorComponent_instance`$fromJSON(input)
          instance_type <- "DevicesCreateManufacturerErrorComponent"
          matched_schemas <- append(matched_schemas, "DevicesCreateManufacturerErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`DevicesCreateManufacturerErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `DevicesCreateManufacturerErrorComponent_result`["message"])
      }

      `DevicesCreateModelErrorComponent_result` <- tryCatch({
          `DevicesCreateModelErrorComponent`$public_methods$validateJSON(input)
          `DevicesCreateModelErrorComponent_instance` <- `DevicesCreateModelErrorComponent`$new()
          instance <- `DevicesCreateModelErrorComponent_instance`$fromJSON(input)
          instance_type <- "DevicesCreateModelErrorComponent"
          matched_schemas <- append(matched_schemas, "DevicesCreateModelErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`DevicesCreateModelErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `DevicesCreateModelErrorComponent_result`["message"])
      }

      `DevicesCreateOsNonFieldErrorsErrorComponent_result` <- tryCatch({
          `DevicesCreateOsNonFieldErrorsErrorComponent`$public_methods$validateJSON(input)
          `DevicesCreateOsNonFieldErrorsErrorComponent_instance` <- `DevicesCreateOsNonFieldErrorsErrorComponent`$new()
          instance <- `DevicesCreateOsNonFieldErrorsErrorComponent_instance`$fromJSON(input)
          instance_type <- "DevicesCreateOsNonFieldErrorsErrorComponent"
          matched_schemas <- append(matched_schemas, "DevicesCreateOsNonFieldErrorsErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`DevicesCreateOsNonFieldErrorsErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `DevicesCreateOsNonFieldErrorsErrorComponent_result`["message"])
      }

      `DevicesCreateOsNameErrorComponent_result` <- tryCatch({
          `DevicesCreateOsNameErrorComponent`$public_methods$validateJSON(input)
          `DevicesCreateOsNameErrorComponent_instance` <- `DevicesCreateOsNameErrorComponent`$new()
          instance <- `DevicesCreateOsNameErrorComponent_instance`$fromJSON(input)
          instance_type <- "DevicesCreateOsNameErrorComponent"
          matched_schemas <- append(matched_schemas, "DevicesCreateOsNameErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`DevicesCreateOsNameErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `DevicesCreateOsNameErrorComponent_result`["message"])
      }

      `DevicesCreateOsVersionErrorComponent_result` <- tryCatch({
          `DevicesCreateOsVersionErrorComponent`$public_methods$validateJSON(input)
          `DevicesCreateOsVersionErrorComponent_instance` <- `DevicesCreateOsVersionErrorComponent`$new()
          instance <- `DevicesCreateOsVersionErrorComponent_instance`$fromJSON(input)
          instance_type <- "DevicesCreateOsVersionErrorComponent"
          matched_schemas <- append(matched_schemas, "DevicesCreateOsVersionErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`DevicesCreateOsVersionErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `DevicesCreateOsVersionErrorComponent_result`["message"])
      }

      `DevicesCreateOsLocaleErrorComponent_result` <- tryCatch({
          `DevicesCreateOsLocaleErrorComponent`$public_methods$validateJSON(input)
          `DevicesCreateOsLocaleErrorComponent_instance` <- `DevicesCreateOsLocaleErrorComponent`$new()
          instance <- `DevicesCreateOsLocaleErrorComponent_instance`$fromJSON(input)
          instance_type <- "DevicesCreateOsLocaleErrorComponent"
          matched_schemas <- append(matched_schemas, "DevicesCreateOsLocaleErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`DevicesCreateOsLocaleErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `DevicesCreateOsLocaleErrorComponent_result`["message"])
      }

      `DevicesCreateMobileAppNonFieldErrorsErrorComponent_result` <- tryCatch({
          `DevicesCreateMobileAppNonFieldErrorsErrorComponent`$public_methods$validateJSON(input)
          `DevicesCreateMobileAppNonFieldErrorsErrorComponent_instance` <- `DevicesCreateMobileAppNonFieldErrorsErrorComponent`$new()
          instance <- `DevicesCreateMobileAppNonFieldErrorsErrorComponent_instance`$fromJSON(input)
          instance_type <- "DevicesCreateMobileAppNonFieldErrorsErrorComponent"
          matched_schemas <- append(matched_schemas, "DevicesCreateMobileAppNonFieldErrorsErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`DevicesCreateMobileAppNonFieldErrorsErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `DevicesCreateMobileAppNonFieldErrorsErrorComponent_result`["message"])
      }

      `DevicesCreateMobileAppPackageNameErrorComponent_result` <- tryCatch({
          `DevicesCreateMobileAppPackageNameErrorComponent`$public_methods$validateJSON(input)
          `DevicesCreateMobileAppPackageNameErrorComponent_instance` <- `DevicesCreateMobileAppPackageNameErrorComponent`$new()
          instance <- `DevicesCreateMobileAppPackageNameErrorComponent_instance`$fromJSON(input)
          instance_type <- "DevicesCreateMobileAppPackageNameErrorComponent"
          matched_schemas <- append(matched_schemas, "DevicesCreateMobileAppPackageNameErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`DevicesCreateMobileAppPackageNameErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `DevicesCreateMobileAppPackageNameErrorComponent_result`["message"])
      }

      `DevicesCreateMobileAppPackageVersionErrorComponent_result` <- tryCatch({
          `DevicesCreateMobileAppPackageVersionErrorComponent`$public_methods$validateJSON(input)
          `DevicesCreateMobileAppPackageVersionErrorComponent_instance` <- `DevicesCreateMobileAppPackageVersionErrorComponent`$new()
          instance <- `DevicesCreateMobileAppPackageVersionErrorComponent_instance`$fromJSON(input)
          instance_type <- "DevicesCreateMobileAppPackageVersionErrorComponent"
          matched_schemas <- append(matched_schemas, "DevicesCreateMobileAppPackageVersionErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`DevicesCreateMobileAppPackageVersionErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `DevicesCreateMobileAppPackageVersionErrorComponent_result`["message"])
      }

      if (matched == 1) {
        # successfully match exactly 1 schema specified in oneOf
        self$actual_instance <- instance
        self$actual_type <- instance_type
      } else if (matched > 1) {
        # more than 1 match
        stop(paste("Multiple matches found when deserializing the input into DevicesCreateError with oneOf schemas DevicesCreateDeviceIdErrorComponent, DevicesCreateFcmTokenErrorComponent, DevicesCreateManufacturerErrorComponent, DevicesCreateMobileAppNonFieldErrorsErrorComponent, DevicesCreateMobileAppPackageNameErrorComponent, DevicesCreateMobileAppPackageVersionErrorComponent, DevicesCreateModelErrorComponent, DevicesCreateNameErrorComponent, DevicesCreateNonFieldErrorsErrorComponent, DevicesCreateOsLocaleErrorComponent, DevicesCreateOsNameErrorComponent, DevicesCreateOsNonFieldErrorsErrorComponent, DevicesCreateOsVersionErrorComponent, DevicesCreateTypeErrorComponent. Matched schemas: ",
                   paste(matched_schemas, collapse = ", ")))
      } else {
        # no match
        stop(paste("No match found when deserializing the input into DevicesCreateError with oneOf schemas DevicesCreateDeviceIdErrorComponent, DevicesCreateFcmTokenErrorComponent, DevicesCreateManufacturerErrorComponent, DevicesCreateMobileAppNonFieldErrorsErrorComponent, DevicesCreateMobileAppPackageNameErrorComponent, DevicesCreateMobileAppPackageVersionErrorComponent, DevicesCreateModelErrorComponent, DevicesCreateNameErrorComponent, DevicesCreateNonFieldErrorsErrorComponent, DevicesCreateOsLocaleErrorComponent, DevicesCreateOsNameErrorComponent, DevicesCreateOsNonFieldErrorsErrorComponent, DevicesCreateOsVersionErrorComponent, DevicesCreateTypeErrorComponent. Details: >>",
                   paste(error_messages, collapse = " >> ")))
      }

      self
    },

    #' @description
    #' Serialize DevicesCreateError to JSON string.
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return JSON string representation of the DevicesCreateError.
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
    #' Convert DevicesCreateError to a base R type
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
    #' Validate the input JSON with respect to DevicesCreateError and
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
#DevicesCreateError$unlock()
#
## Below is an example to define the print function
#DevicesCreateError$set("public", "print", function(...) {
#  print(jsonlite::prettify(self$toJSONString()))
#  invisible(self)
#})
## Uncomment below to lock the class to prevent modifications to the method or field
#DevicesCreateError$lock()

