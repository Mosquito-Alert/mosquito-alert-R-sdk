#' @docType class
#' @title DevicesUpdateError
#'
#' @description DevicesUpdateError Class
#'
#' @format An \code{R6Class} generator object
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
DevicesUpdateError <- R6::R6Class(
  "DevicesUpdateError",
  public = list(
    #' @field actual_instance the object stored in this instance.
    actual_instance = NULL,
    #' @field actual_type the type of the object stored in this instance.
    actual_type = NULL,
    #' @field one_of  a list of types defined in the oneOf schema.
    one_of = list("DevicesUpdateFcmTokenErrorComponent", "DevicesUpdateMobileAppNonFieldErrorsErrorComponent", "DevicesUpdateMobileAppPackageNameErrorComponent", "DevicesUpdateMobileAppPackageVersionErrorComponent", "DevicesUpdateNameErrorComponent", "DevicesUpdateNonFieldErrorsErrorComponent", "DevicesUpdateOsLocaleErrorComponent", "DevicesUpdateOsNameErrorComponent", "DevicesUpdateOsNonFieldErrorsErrorComponent", "DevicesUpdateOsVersionErrorComponent"),

    #' @description
    #' Initialize a new DevicesUpdateError.
    #'
    #' @param instance an instance of the object defined in the oneOf schemas: "DevicesUpdateFcmTokenErrorComponent", "DevicesUpdateMobileAppNonFieldErrorsErrorComponent", "DevicesUpdateMobileAppPackageNameErrorComponent", "DevicesUpdateMobileAppPackageVersionErrorComponent", "DevicesUpdateNameErrorComponent", "DevicesUpdateNonFieldErrorsErrorComponent", "DevicesUpdateOsLocaleErrorComponent", "DevicesUpdateOsNameErrorComponent", "DevicesUpdateOsNonFieldErrorsErrorComponent", "DevicesUpdateOsVersionErrorComponent"
    initialize = function(instance = NULL) {
      if (is.null(instance)) {
        # do nothing
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "DevicesUpdateFcmTokenErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "DevicesUpdateFcmTokenErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "DevicesUpdateMobileAppNonFieldErrorsErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "DevicesUpdateMobileAppNonFieldErrorsErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "DevicesUpdateMobileAppPackageNameErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "DevicesUpdateMobileAppPackageNameErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "DevicesUpdateMobileAppPackageVersionErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "DevicesUpdateMobileAppPackageVersionErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "DevicesUpdateNameErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "DevicesUpdateNameErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "DevicesUpdateNonFieldErrorsErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "DevicesUpdateNonFieldErrorsErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "DevicesUpdateOsLocaleErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "DevicesUpdateOsLocaleErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "DevicesUpdateOsNameErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "DevicesUpdateOsNameErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "DevicesUpdateOsNonFieldErrorsErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "DevicesUpdateOsNonFieldErrorsErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "DevicesUpdateOsVersionErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "DevicesUpdateOsVersionErrorComponent"
      } else {
        stop(paste("Failed to initialize DevicesUpdateError with oneOf schemas DevicesUpdateFcmTokenErrorComponent, DevicesUpdateMobileAppNonFieldErrorsErrorComponent, DevicesUpdateMobileAppPackageNameErrorComponent, DevicesUpdateMobileAppPackageVersionErrorComponent, DevicesUpdateNameErrorComponent, DevicesUpdateNonFieldErrorsErrorComponent, DevicesUpdateOsLocaleErrorComponent, DevicesUpdateOsNameErrorComponent, DevicesUpdateOsNonFieldErrorsErrorComponent, DevicesUpdateOsVersionErrorComponent. Provided class name: ",
                   get(class(instance)[[1]], pos = -1)$classname))
      }
    },

    #' @description
    #' Deserialize JSON string into an instance of DevicesUpdateError.
    #' An alias to the method `fromJSON` .
    #'
    #' @param input The input JSON.
    #'
    #' @return An instance of DevicesUpdateError.
    fromJSONString = function(input) {
      self$fromJSON(input)
    },

    #' @description
    #' Deserialize JSON string into an instance of DevicesUpdateError.
    #'
    #' @param input The input JSON.
    #'
    #' @return An instance of DevicesUpdateError.
    fromJSON = function(input) {
      matched <- 0 # match counter
      matched_schemas <- list() #names of matched schemas
      error_messages <- list()
      instance <- NULL

      `DevicesUpdateNonFieldErrorsErrorComponent_result` <- tryCatch({
          `DevicesUpdateNonFieldErrorsErrorComponent`$public_methods$validateJSON(input)
          `DevicesUpdateNonFieldErrorsErrorComponent_instance` <- `DevicesUpdateNonFieldErrorsErrorComponent`$new()
          instance <- `DevicesUpdateNonFieldErrorsErrorComponent_instance`$fromJSON(input)
          instance_type <- "DevicesUpdateNonFieldErrorsErrorComponent"
          matched_schemas <- append(matched_schemas, "DevicesUpdateNonFieldErrorsErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`DevicesUpdateNonFieldErrorsErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `DevicesUpdateNonFieldErrorsErrorComponent_result`["message"])
      }

      `DevicesUpdateNameErrorComponent_result` <- tryCatch({
          `DevicesUpdateNameErrorComponent`$public_methods$validateJSON(input)
          `DevicesUpdateNameErrorComponent_instance` <- `DevicesUpdateNameErrorComponent`$new()
          instance <- `DevicesUpdateNameErrorComponent_instance`$fromJSON(input)
          instance_type <- "DevicesUpdateNameErrorComponent"
          matched_schemas <- append(matched_schemas, "DevicesUpdateNameErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`DevicesUpdateNameErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `DevicesUpdateNameErrorComponent_result`["message"])
      }

      `DevicesUpdateFcmTokenErrorComponent_result` <- tryCatch({
          `DevicesUpdateFcmTokenErrorComponent`$public_methods$validateJSON(input)
          `DevicesUpdateFcmTokenErrorComponent_instance` <- `DevicesUpdateFcmTokenErrorComponent`$new()
          instance <- `DevicesUpdateFcmTokenErrorComponent_instance`$fromJSON(input)
          instance_type <- "DevicesUpdateFcmTokenErrorComponent"
          matched_schemas <- append(matched_schemas, "DevicesUpdateFcmTokenErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`DevicesUpdateFcmTokenErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `DevicesUpdateFcmTokenErrorComponent_result`["message"])
      }

      `DevicesUpdateOsNonFieldErrorsErrorComponent_result` <- tryCatch({
          `DevicesUpdateOsNonFieldErrorsErrorComponent`$public_methods$validateJSON(input)
          `DevicesUpdateOsNonFieldErrorsErrorComponent_instance` <- `DevicesUpdateOsNonFieldErrorsErrorComponent`$new()
          instance <- `DevicesUpdateOsNonFieldErrorsErrorComponent_instance`$fromJSON(input)
          instance_type <- "DevicesUpdateOsNonFieldErrorsErrorComponent"
          matched_schemas <- append(matched_schemas, "DevicesUpdateOsNonFieldErrorsErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`DevicesUpdateOsNonFieldErrorsErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `DevicesUpdateOsNonFieldErrorsErrorComponent_result`["message"])
      }

      `DevicesUpdateOsNameErrorComponent_result` <- tryCatch({
          `DevicesUpdateOsNameErrorComponent`$public_methods$validateJSON(input)
          `DevicesUpdateOsNameErrorComponent_instance` <- `DevicesUpdateOsNameErrorComponent`$new()
          instance <- `DevicesUpdateOsNameErrorComponent_instance`$fromJSON(input)
          instance_type <- "DevicesUpdateOsNameErrorComponent"
          matched_schemas <- append(matched_schemas, "DevicesUpdateOsNameErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`DevicesUpdateOsNameErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `DevicesUpdateOsNameErrorComponent_result`["message"])
      }

      `DevicesUpdateOsVersionErrorComponent_result` <- tryCatch({
          `DevicesUpdateOsVersionErrorComponent`$public_methods$validateJSON(input)
          `DevicesUpdateOsVersionErrorComponent_instance` <- `DevicesUpdateOsVersionErrorComponent`$new()
          instance <- `DevicesUpdateOsVersionErrorComponent_instance`$fromJSON(input)
          instance_type <- "DevicesUpdateOsVersionErrorComponent"
          matched_schemas <- append(matched_schemas, "DevicesUpdateOsVersionErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`DevicesUpdateOsVersionErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `DevicesUpdateOsVersionErrorComponent_result`["message"])
      }

      `DevicesUpdateOsLocaleErrorComponent_result` <- tryCatch({
          `DevicesUpdateOsLocaleErrorComponent`$public_methods$validateJSON(input)
          `DevicesUpdateOsLocaleErrorComponent_instance` <- `DevicesUpdateOsLocaleErrorComponent`$new()
          instance <- `DevicesUpdateOsLocaleErrorComponent_instance`$fromJSON(input)
          instance_type <- "DevicesUpdateOsLocaleErrorComponent"
          matched_schemas <- append(matched_schemas, "DevicesUpdateOsLocaleErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`DevicesUpdateOsLocaleErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `DevicesUpdateOsLocaleErrorComponent_result`["message"])
      }

      `DevicesUpdateMobileAppNonFieldErrorsErrorComponent_result` <- tryCatch({
          `DevicesUpdateMobileAppNonFieldErrorsErrorComponent`$public_methods$validateJSON(input)
          `DevicesUpdateMobileAppNonFieldErrorsErrorComponent_instance` <- `DevicesUpdateMobileAppNonFieldErrorsErrorComponent`$new()
          instance <- `DevicesUpdateMobileAppNonFieldErrorsErrorComponent_instance`$fromJSON(input)
          instance_type <- "DevicesUpdateMobileAppNonFieldErrorsErrorComponent"
          matched_schemas <- append(matched_schemas, "DevicesUpdateMobileAppNonFieldErrorsErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`DevicesUpdateMobileAppNonFieldErrorsErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `DevicesUpdateMobileAppNonFieldErrorsErrorComponent_result`["message"])
      }

      `DevicesUpdateMobileAppPackageNameErrorComponent_result` <- tryCatch({
          `DevicesUpdateMobileAppPackageNameErrorComponent`$public_methods$validateJSON(input)
          `DevicesUpdateMobileAppPackageNameErrorComponent_instance` <- `DevicesUpdateMobileAppPackageNameErrorComponent`$new()
          instance <- `DevicesUpdateMobileAppPackageNameErrorComponent_instance`$fromJSON(input)
          instance_type <- "DevicesUpdateMobileAppPackageNameErrorComponent"
          matched_schemas <- append(matched_schemas, "DevicesUpdateMobileAppPackageNameErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`DevicesUpdateMobileAppPackageNameErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `DevicesUpdateMobileAppPackageNameErrorComponent_result`["message"])
      }

      `DevicesUpdateMobileAppPackageVersionErrorComponent_result` <- tryCatch({
          `DevicesUpdateMobileAppPackageVersionErrorComponent`$public_methods$validateJSON(input)
          `DevicesUpdateMobileAppPackageVersionErrorComponent_instance` <- `DevicesUpdateMobileAppPackageVersionErrorComponent`$new()
          instance <- `DevicesUpdateMobileAppPackageVersionErrorComponent_instance`$fromJSON(input)
          instance_type <- "DevicesUpdateMobileAppPackageVersionErrorComponent"
          matched_schemas <- append(matched_schemas, "DevicesUpdateMobileAppPackageVersionErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`DevicesUpdateMobileAppPackageVersionErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `DevicesUpdateMobileAppPackageVersionErrorComponent_result`["message"])
      }

      if (matched == 1) {
        # successfully match exactly 1 schema specified in oneOf
        self$actual_instance <- instance
        self$actual_type <- instance_type
      } else if (matched > 1) {
        # more than 1 match
        stop(paste("Multiple matches found when deserializing the input into DevicesUpdateError with oneOf schemas DevicesUpdateFcmTokenErrorComponent, DevicesUpdateMobileAppNonFieldErrorsErrorComponent, DevicesUpdateMobileAppPackageNameErrorComponent, DevicesUpdateMobileAppPackageVersionErrorComponent, DevicesUpdateNameErrorComponent, DevicesUpdateNonFieldErrorsErrorComponent, DevicesUpdateOsLocaleErrorComponent, DevicesUpdateOsNameErrorComponent, DevicesUpdateOsNonFieldErrorsErrorComponent, DevicesUpdateOsVersionErrorComponent. Matched schemas: ",
                   paste(matched_schemas, collapse = ", ")))
      } else {
        # no match
        stop(paste("No match found when deserializing the input into DevicesUpdateError with oneOf schemas DevicesUpdateFcmTokenErrorComponent, DevicesUpdateMobileAppNonFieldErrorsErrorComponent, DevicesUpdateMobileAppPackageNameErrorComponent, DevicesUpdateMobileAppPackageVersionErrorComponent, DevicesUpdateNameErrorComponent, DevicesUpdateNonFieldErrorsErrorComponent, DevicesUpdateOsLocaleErrorComponent, DevicesUpdateOsNameErrorComponent, DevicesUpdateOsNonFieldErrorsErrorComponent, DevicesUpdateOsVersionErrorComponent. Details: >>",
                   paste(error_messages, collapse = " >> ")))
      }

      self
    },

    #' @description
    #' Serialize DevicesUpdateError to JSON string.
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return JSON string representation of the DevicesUpdateError.
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
    #' Convert DevicesUpdateError to a base R type
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
    #' Validate the input JSON with respect to DevicesUpdateError and
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
#DevicesUpdateError$unlock()
#
## Below is an example to define the print function
#DevicesUpdateError$set("public", "print", function(...) {
#  print(jsonlite::prettify(self$toJSONString()))
#  invisible(self)
#})
## Uncomment below to lock the class to prevent modifications to the method or field
#DevicesUpdateError$lock()

