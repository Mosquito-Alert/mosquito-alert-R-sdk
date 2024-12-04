#' @docType class
#' @title UsersCreateError
#'
#' @description UsersCreateError Class
#'
#' @format An \code{R6Class} generator object
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
UsersCreateError <- R6::R6Class(
  "UsersCreateError",
  public = list(
    #' @field actual_instance the object stored in this instance.
    actual_instance = NULL,
    #' @field actual_type the type of the object stored in this instance.
    actual_type = NULL,
    #' @field one_of  a list of types defined in the oneOf schema.
    one_of = list("UsersCreateLocaleErrorComponent", "UsersCreateNonFieldErrorsErrorComponent", "UsersCreatePasswordErrorComponent"),

    #' @description
    #' Initialize a new UsersCreateError.
    #'
    #' @param instance an instance of the object defined in the oneOf schemas: "UsersCreateLocaleErrorComponent", "UsersCreateNonFieldErrorsErrorComponent", "UsersCreatePasswordErrorComponent"
    initialize = function(instance = NULL) {
      if (is.null(instance)) {
        # do nothing
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "UsersCreateLocaleErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "UsersCreateLocaleErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "UsersCreateNonFieldErrorsErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "UsersCreateNonFieldErrorsErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "UsersCreatePasswordErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "UsersCreatePasswordErrorComponent"
      } else {
        stop(paste("Failed to initialize UsersCreateError with oneOf schemas UsersCreateLocaleErrorComponent, UsersCreateNonFieldErrorsErrorComponent, UsersCreatePasswordErrorComponent. Provided class name: ",
                   get(class(instance)[[1]], pos = -1)$classname))
      }
    },

    #' @description
    #' Deserialize JSON string into an instance of UsersCreateError.
    #' An alias to the method `fromJSON` .
    #'
    #' @param input The input JSON.
    #'
    #' @return An instance of UsersCreateError.
    fromJSONString = function(input) {
      self$fromJSON(input)
    },

    #' @description
    #' Deserialize JSON string into an instance of UsersCreateError.
    #'
    #' @param input The input JSON.
    #'
    #' @return An instance of UsersCreateError.
    fromJSON = function(input) {
      matched <- 0 # match counter
      matched_schemas <- list() #names of matched schemas
      error_messages <- list()
      instance <- NULL

      `UsersCreateNonFieldErrorsErrorComponent_result` <- tryCatch({
          `UsersCreateNonFieldErrorsErrorComponent`$public_methods$validateJSON(input)
          `UsersCreateNonFieldErrorsErrorComponent_instance` <- `UsersCreateNonFieldErrorsErrorComponent`$new()
          instance <- `UsersCreateNonFieldErrorsErrorComponent_instance`$fromJSON(input)
          instance_type <- "UsersCreateNonFieldErrorsErrorComponent"
          matched_schemas <- append(matched_schemas, "UsersCreateNonFieldErrorsErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`UsersCreateNonFieldErrorsErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `UsersCreateNonFieldErrorsErrorComponent_result`["message"])
      }

      `UsersCreateLocaleErrorComponent_result` <- tryCatch({
          `UsersCreateLocaleErrorComponent`$public_methods$validateJSON(input)
          `UsersCreateLocaleErrorComponent_instance` <- `UsersCreateLocaleErrorComponent`$new()
          instance <- `UsersCreateLocaleErrorComponent_instance`$fromJSON(input)
          instance_type <- "UsersCreateLocaleErrorComponent"
          matched_schemas <- append(matched_schemas, "UsersCreateLocaleErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`UsersCreateLocaleErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `UsersCreateLocaleErrorComponent_result`["message"])
      }

      `UsersCreatePasswordErrorComponent_result` <- tryCatch({
          `UsersCreatePasswordErrorComponent`$public_methods$validateJSON(input)
          `UsersCreatePasswordErrorComponent_instance` <- `UsersCreatePasswordErrorComponent`$new()
          instance <- `UsersCreatePasswordErrorComponent_instance`$fromJSON(input)
          instance_type <- "UsersCreatePasswordErrorComponent"
          matched_schemas <- append(matched_schemas, "UsersCreatePasswordErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`UsersCreatePasswordErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `UsersCreatePasswordErrorComponent_result`["message"])
      }

      if (matched == 1) {
        # successfully match exactly 1 schema specified in oneOf
        self$actual_instance <- instance
        self$actual_type <- instance_type
      } else if (matched > 1) {
        # more than 1 match
        stop(paste("Multiple matches found when deserializing the input into UsersCreateError with oneOf schemas UsersCreateLocaleErrorComponent, UsersCreateNonFieldErrorsErrorComponent, UsersCreatePasswordErrorComponent. Matched schemas: ",
                   paste(matched_schemas, collapse = ", ")))
      } else {
        # no match
        stop(paste("No match found when deserializing the input into UsersCreateError with oneOf schemas UsersCreateLocaleErrorComponent, UsersCreateNonFieldErrorsErrorComponent, UsersCreatePasswordErrorComponent. Details: >>",
                   paste(error_messages, collapse = " >> ")))
      }

      self
    },

    #' @description
    #' Serialize UsersCreateError to JSON string.
    #'
    #' @return JSON string representation of the UsersCreateError.
    toJSONString = function() {
      if (!is.null(self$actual_instance)) {
        as.character(jsonlite::minify(self$actual_instance$toJSONString()))
      } else {
        NULL
      }
    },

    #' @description
    #' Serialize UsersCreateError to JSON.
    #'
    #' @return JSON representation of the UsersCreateError.
    toJSON = function() {
      if (!is.null(self$actual_instance)) {
        self$actual_instance$toJSON()
      } else {
        NULL
      }
    },

    #' @description
    #' Validate the input JSON with respect to UsersCreateError and
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
#UsersCreateError$unlock()
#
## Below is an example to define the print function
#UsersCreateError$set("public", "print", function(...) {
#  print(jsonlite::prettify(self$toJSONString()))
#  invisible(self)
#})
## Uncomment below to lock the class to prevent modifications to the method or field
#UsersCreateError$lock()

