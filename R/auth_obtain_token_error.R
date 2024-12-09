#' @docType class
#' @title AuthObtainTokenError
#'
#' @description AuthObtainTokenError Class
#'
#' @format An \code{R6Class} generator object
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AuthObtainTokenError <- R6::R6Class(
  "AuthObtainTokenError",
  public = list(
    #' @field actual_instance the object stored in this instance.
    actual_instance = NULL,
    #' @field actual_type the type of the object stored in this instance.
    actual_type = NULL,
    #' @field one_of  a list of types defined in the oneOf schema.
    one_of = list("AuthObtainTokenDeviceIdErrorComponent", "AuthObtainTokenNonFieldErrorsErrorComponent", "AuthObtainTokenPasswordErrorComponent", "AuthObtainTokenUsernameErrorComponent"),

    #' @description
    #' Initialize a new AuthObtainTokenError.
    #'
    #' @param instance an instance of the object defined in the oneOf schemas: "AuthObtainTokenDeviceIdErrorComponent", "AuthObtainTokenNonFieldErrorsErrorComponent", "AuthObtainTokenPasswordErrorComponent", "AuthObtainTokenUsernameErrorComponent"
    initialize = function(instance = NULL) {
      if (is.null(instance)) {
        # do nothing
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "AuthObtainTokenDeviceIdErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "AuthObtainTokenDeviceIdErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "AuthObtainTokenNonFieldErrorsErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "AuthObtainTokenNonFieldErrorsErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "AuthObtainTokenPasswordErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "AuthObtainTokenPasswordErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "AuthObtainTokenUsernameErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "AuthObtainTokenUsernameErrorComponent"
      } else {
        stop(paste("Failed to initialize AuthObtainTokenError with oneOf schemas AuthObtainTokenDeviceIdErrorComponent, AuthObtainTokenNonFieldErrorsErrorComponent, AuthObtainTokenPasswordErrorComponent, AuthObtainTokenUsernameErrorComponent. Provided class name: ",
                   get(class(instance)[[1]], pos = -1)$classname))
      }
    },

    #' @description
    #' Deserialize JSON string into an instance of AuthObtainTokenError.
    #' An alias to the method `fromJSON` .
    #'
    #' @param input The input JSON.
    #'
    #' @return An instance of AuthObtainTokenError.
    fromJSONString = function(input) {
      self$fromJSON(input)
    },

    #' @description
    #' Deserialize JSON string into an instance of AuthObtainTokenError.
    #'
    #' @param input The input JSON.
    #'
    #' @return An instance of AuthObtainTokenError.
    fromJSON = function(input) {
      matched <- 0 # match counter
      matched_schemas <- list() #names of matched schemas
      error_messages <- list()
      instance <- NULL

      `AuthObtainTokenNonFieldErrorsErrorComponent_result` <- tryCatch({
          `AuthObtainTokenNonFieldErrorsErrorComponent`$public_methods$validateJSON(input)
          `AuthObtainTokenNonFieldErrorsErrorComponent_instance` <- `AuthObtainTokenNonFieldErrorsErrorComponent`$new()
          instance <- `AuthObtainTokenNonFieldErrorsErrorComponent_instance`$fromJSON(input)
          instance_type <- "AuthObtainTokenNonFieldErrorsErrorComponent"
          matched_schemas <- append(matched_schemas, "AuthObtainTokenNonFieldErrorsErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`AuthObtainTokenNonFieldErrorsErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `AuthObtainTokenNonFieldErrorsErrorComponent_result`["message"])
      }

      `AuthObtainTokenUsernameErrorComponent_result` <- tryCatch({
          `AuthObtainTokenUsernameErrorComponent`$public_methods$validateJSON(input)
          `AuthObtainTokenUsernameErrorComponent_instance` <- `AuthObtainTokenUsernameErrorComponent`$new()
          instance <- `AuthObtainTokenUsernameErrorComponent_instance`$fromJSON(input)
          instance_type <- "AuthObtainTokenUsernameErrorComponent"
          matched_schemas <- append(matched_schemas, "AuthObtainTokenUsernameErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`AuthObtainTokenUsernameErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `AuthObtainTokenUsernameErrorComponent_result`["message"])
      }

      `AuthObtainTokenPasswordErrorComponent_result` <- tryCatch({
          `AuthObtainTokenPasswordErrorComponent`$public_methods$validateJSON(input)
          `AuthObtainTokenPasswordErrorComponent_instance` <- `AuthObtainTokenPasswordErrorComponent`$new()
          instance <- `AuthObtainTokenPasswordErrorComponent_instance`$fromJSON(input)
          instance_type <- "AuthObtainTokenPasswordErrorComponent"
          matched_schemas <- append(matched_schemas, "AuthObtainTokenPasswordErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`AuthObtainTokenPasswordErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `AuthObtainTokenPasswordErrorComponent_result`["message"])
      }

      `AuthObtainTokenDeviceIdErrorComponent_result` <- tryCatch({
          `AuthObtainTokenDeviceIdErrorComponent`$public_methods$validateJSON(input)
          `AuthObtainTokenDeviceIdErrorComponent_instance` <- `AuthObtainTokenDeviceIdErrorComponent`$new()
          instance <- `AuthObtainTokenDeviceIdErrorComponent_instance`$fromJSON(input)
          instance_type <- "AuthObtainTokenDeviceIdErrorComponent"
          matched_schemas <- append(matched_schemas, "AuthObtainTokenDeviceIdErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`AuthObtainTokenDeviceIdErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `AuthObtainTokenDeviceIdErrorComponent_result`["message"])
      }

      if (matched == 1) {
        # successfully match exactly 1 schema specified in oneOf
        self$actual_instance <- instance
        self$actual_type <- instance_type
      } else if (matched > 1) {
        # more than 1 match
        stop(paste("Multiple matches found when deserializing the input into AuthObtainTokenError with oneOf schemas AuthObtainTokenDeviceIdErrorComponent, AuthObtainTokenNonFieldErrorsErrorComponent, AuthObtainTokenPasswordErrorComponent, AuthObtainTokenUsernameErrorComponent. Matched schemas: ",
                   paste(matched_schemas, collapse = ", ")))
      } else {
        # no match
        stop(paste("No match found when deserializing the input into AuthObtainTokenError with oneOf schemas AuthObtainTokenDeviceIdErrorComponent, AuthObtainTokenNonFieldErrorsErrorComponent, AuthObtainTokenPasswordErrorComponent, AuthObtainTokenUsernameErrorComponent. Details: >>",
                   paste(error_messages, collapse = " >> ")))
      }

      self
    },

    #' @description
    #' Serialize AuthObtainTokenError to JSON string.
    #'
    #' @return JSON string representation of the AuthObtainTokenError.
    toJSONString = function() {
      if (!is.null(self$actual_instance)) {
        as.character(jsonlite::minify(self$actual_instance$toJSONString()))
      } else {
        NULL
      }
    },

    #' @description
    #' Serialize AuthObtainTokenError to JSON.
    #'
    #' @return JSON representation of the AuthObtainTokenError.
    toJSON = function() {
      if (!is.null(self$actual_instance)) {
        self$actual_instance$toJSON()
      } else {
        NULL
      }
    },

    #' @description
    #' Validate the input JSON with respect to AuthObtainTokenError and
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
#AuthObtainTokenError$unlock()
#
## Below is an example to define the print function
#AuthObtainTokenError$set("public", "print", function(...) {
#  print(jsonlite::prettify(self$toJSONString()))
#  invisible(self)
#})
## Uncomment below to lock the class to prevent modifications to the method or field
#AuthObtainTokenError$lock()

