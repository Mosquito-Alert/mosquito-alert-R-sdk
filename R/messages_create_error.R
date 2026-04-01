#' @docType class
#' @title MessagesCreateError
#'
#' @description MessagesCreateError Class
#'
#' @format An \code{R6Class} generator object
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
MessagesCreateError <- R6::R6Class(
  "MessagesCreateError",
  public = list(
    #' @field actual_instance the object stored in this instance.
    actual_instance = NULL,
    #' @field actual_type the type of the object stored in this instance.
    actual_type = NULL,
    #' @field one_of  a list of types defined in the oneOf schema.
    one_of = list("MessagesCreateContentErrorComponent", "MessagesCreateNonFieldErrorsErrorComponent", "MessagesCreateUserUuidsErrorComponent", "MessagesCreateUserUuidsINDEXErrorComponent"),

    #' @description
    #' Initialize a new MessagesCreateError.
    #'
    #' @param instance an instance of the object defined in the oneOf schemas: "MessagesCreateContentErrorComponent", "MessagesCreateNonFieldErrorsErrorComponent", "MessagesCreateUserUuidsErrorComponent", "MessagesCreateUserUuidsINDEXErrorComponent"
    initialize = function(instance = NULL) {
      if (is.null(instance)) {
        # do nothing
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "MessagesCreateContentErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "MessagesCreateContentErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "MessagesCreateNonFieldErrorsErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "MessagesCreateNonFieldErrorsErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "MessagesCreateUserUuidsErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "MessagesCreateUserUuidsErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "MessagesCreateUserUuidsINDEXErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "MessagesCreateUserUuidsINDEXErrorComponent"
      } else {
        stop(paste("Failed to initialize MessagesCreateError with oneOf schemas MessagesCreateContentErrorComponent, MessagesCreateNonFieldErrorsErrorComponent, MessagesCreateUserUuidsErrorComponent, MessagesCreateUserUuidsINDEXErrorComponent. Provided class name: ",
                   get(class(instance)[[1]], pos = -1)$classname))
      }
    },

    #' @description
    #' Deserialize JSON string into an instance of MessagesCreateError.
    #' An alias to the method `fromJSON` .
    #'
    #' @param input The input JSON.
    #'
    #' @return An instance of MessagesCreateError.
    fromJSONString = function(input) {
      self$fromJSON(input)
    },

    #' @description
    #' Deserialize JSON string into an instance of MessagesCreateError.
    #'
    #' @param input The input JSON.
    #'
    #' @return An instance of MessagesCreateError.
    fromJSON = function(input) {
      matched <- 0 # match counter
      matched_schemas <- list() #names of matched schemas
      error_messages <- list()
      instance <- NULL

      `MessagesCreateNonFieldErrorsErrorComponent_result` <- tryCatch({
          `MessagesCreateNonFieldErrorsErrorComponent`$public_methods$validateJSON(input)
          `MessagesCreateNonFieldErrorsErrorComponent_instance` <- `MessagesCreateNonFieldErrorsErrorComponent`$new()
          instance <- `MessagesCreateNonFieldErrorsErrorComponent_instance`$fromJSON(input)
          instance_type <- "MessagesCreateNonFieldErrorsErrorComponent"
          matched_schemas <- append(matched_schemas, "MessagesCreateNonFieldErrorsErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`MessagesCreateNonFieldErrorsErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `MessagesCreateNonFieldErrorsErrorComponent_result`["message"])
      }

      `MessagesCreateUserUuidsErrorComponent_result` <- tryCatch({
          `MessagesCreateUserUuidsErrorComponent`$public_methods$validateJSON(input)
          `MessagesCreateUserUuidsErrorComponent_instance` <- `MessagesCreateUserUuidsErrorComponent`$new()
          instance <- `MessagesCreateUserUuidsErrorComponent_instance`$fromJSON(input)
          instance_type <- "MessagesCreateUserUuidsErrorComponent"
          matched_schemas <- append(matched_schemas, "MessagesCreateUserUuidsErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`MessagesCreateUserUuidsErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `MessagesCreateUserUuidsErrorComponent_result`["message"])
      }

      `MessagesCreateUserUuidsINDEXErrorComponent_result` <- tryCatch({
          `MessagesCreateUserUuidsINDEXErrorComponent`$public_methods$validateJSON(input)
          `MessagesCreateUserUuidsINDEXErrorComponent_instance` <- `MessagesCreateUserUuidsINDEXErrorComponent`$new()
          instance <- `MessagesCreateUserUuidsINDEXErrorComponent_instance`$fromJSON(input)
          instance_type <- "MessagesCreateUserUuidsINDEXErrorComponent"
          matched_schemas <- append(matched_schemas, "MessagesCreateUserUuidsINDEXErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`MessagesCreateUserUuidsINDEXErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `MessagesCreateUserUuidsINDEXErrorComponent_result`["message"])
      }

      `MessagesCreateContentErrorComponent_result` <- tryCatch({
          `MessagesCreateContentErrorComponent`$public_methods$validateJSON(input)
          `MessagesCreateContentErrorComponent_instance` <- `MessagesCreateContentErrorComponent`$new()
          instance <- `MessagesCreateContentErrorComponent_instance`$fromJSON(input)
          instance_type <- "MessagesCreateContentErrorComponent"
          matched_schemas <- append(matched_schemas, "MessagesCreateContentErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`MessagesCreateContentErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `MessagesCreateContentErrorComponent_result`["message"])
      }

      if (matched == 1) {
        # successfully match exactly 1 schema specified in oneOf
        self$actual_instance <- instance
        self$actual_type <- instance_type
      } else if (matched > 1) {
        # more than 1 match
        stop(paste("Multiple matches found when deserializing the input into MessagesCreateError with oneOf schemas MessagesCreateContentErrorComponent, MessagesCreateNonFieldErrorsErrorComponent, MessagesCreateUserUuidsErrorComponent, MessagesCreateUserUuidsINDEXErrorComponent. Matched schemas: ",
                   paste(matched_schemas, collapse = ", ")))
      } else {
        # no match
        stop(paste("No match found when deserializing the input into MessagesCreateError with oneOf schemas MessagesCreateContentErrorComponent, MessagesCreateNonFieldErrorsErrorComponent, MessagesCreateUserUuidsErrorComponent, MessagesCreateUserUuidsINDEXErrorComponent. Details: >>",
                   paste(error_messages, collapse = " >> ")))
      }

      self
    },

    #' @description
    #' Serialize MessagesCreateError to JSON string.
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return JSON string representation of the MessagesCreateError.
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
    #' Convert MessagesCreateError to a base R type
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
    #' Validate the input JSON with respect to MessagesCreateError and
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
#MessagesCreateError$unlock()
#
## Below is an example to define the print function
#MessagesCreateError$set("public", "print", function(...) {
#  print(jsonlite::prettify(self$toJSONString()))
#  invisible(self)
#})
## Uncomment below to lock the class to prevent modifications to the method or field
#MessagesCreateError$lock()

