#' @docType class
#' @title UsersUpdateError
#'
#' @description UsersUpdateError Class
#'
#' @format An \code{R6Class} generator object
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
UsersUpdateError <- R6::R6Class(
  "UsersUpdateError",
  public = list(
    #' @field actual_instance the object stored in this instance.
    actual_instance = NULL,
    #' @field actual_type the type of the object stored in this instance.
    actual_type = NULL,
    #' @field one_of  a list of types defined in the oneOf schema.
    one_of = list("UsersUpdateLocaleErrorComponent", "UsersUpdateNonFieldErrorsErrorComponent"),

    #' @description
    #' Initialize a new UsersUpdateError.
    #'
    #' @param instance an instance of the object defined in the oneOf schemas: "UsersUpdateLocaleErrorComponent", "UsersUpdateNonFieldErrorsErrorComponent"
    initialize = function(instance = NULL) {
      if (is.null(instance)) {
        # do nothing
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "UsersUpdateLocaleErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "UsersUpdateLocaleErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "UsersUpdateNonFieldErrorsErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "UsersUpdateNonFieldErrorsErrorComponent"
      } else {
        stop(paste("Failed to initialize UsersUpdateError with oneOf schemas UsersUpdateLocaleErrorComponent, UsersUpdateNonFieldErrorsErrorComponent. Provided class name: ",
                   get(class(instance)[[1]], pos = -1)$classname))
      }
    },

    #' @description
    #' Deserialize JSON string into an instance of UsersUpdateError.
    #' An alias to the method `fromJSON` .
    #'
    #' @param input The input JSON.
    #'
    #' @return An instance of UsersUpdateError.
    fromJSONString = function(input) {
      self$fromJSON(input)
    },

    #' @description
    #' Deserialize JSON string into an instance of UsersUpdateError.
    #'
    #' @param input The input JSON.
    #'
    #' @return An instance of UsersUpdateError.
    fromJSON = function(input) {
      matched <- 0 # match counter
      matched_schemas <- list() #names of matched schemas
      error_messages <- list()
      instance <- NULL

      `UsersUpdateNonFieldErrorsErrorComponent_result` <- tryCatch({
          `UsersUpdateNonFieldErrorsErrorComponent`$public_methods$validateJSON(input)
          `UsersUpdateNonFieldErrorsErrorComponent_instance` <- `UsersUpdateNonFieldErrorsErrorComponent`$new()
          instance <- `UsersUpdateNonFieldErrorsErrorComponent_instance`$fromJSON(input)
          instance_type <- "UsersUpdateNonFieldErrorsErrorComponent"
          matched_schemas <- append(matched_schemas, "UsersUpdateNonFieldErrorsErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`UsersUpdateNonFieldErrorsErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `UsersUpdateNonFieldErrorsErrorComponent_result`["message"])
      }

      `UsersUpdateLocaleErrorComponent_result` <- tryCatch({
          `UsersUpdateLocaleErrorComponent`$public_methods$validateJSON(input)
          `UsersUpdateLocaleErrorComponent_instance` <- `UsersUpdateLocaleErrorComponent`$new()
          instance <- `UsersUpdateLocaleErrorComponent_instance`$fromJSON(input)
          instance_type <- "UsersUpdateLocaleErrorComponent"
          matched_schemas <- append(matched_schemas, "UsersUpdateLocaleErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`UsersUpdateLocaleErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `UsersUpdateLocaleErrorComponent_result`["message"])
      }

      if (matched == 1) {
        # successfully match exactly 1 schema specified in oneOf
        self$actual_instance <- instance
        self$actual_type <- instance_type
      } else if (matched > 1) {
        # more than 1 match
        stop(paste("Multiple matches found when deserializing the input into UsersUpdateError with oneOf schemas UsersUpdateLocaleErrorComponent, UsersUpdateNonFieldErrorsErrorComponent. Matched schemas: ",
                   paste(matched_schemas, collapse = ", ")))
      } else {
        # no match
        stop(paste("No match found when deserializing the input into UsersUpdateError with oneOf schemas UsersUpdateLocaleErrorComponent, UsersUpdateNonFieldErrorsErrorComponent. Details: >>",
                   paste(error_messages, collapse = " >> ")))
      }

      self
    },

    #' @description
    #' Serialize UsersUpdateError to JSON string.
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return JSON string representation of the UsersUpdateError.
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
    #' Convert UsersUpdateError to a base R type
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
    #' Validate the input JSON with respect to UsersUpdateError and
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
#UsersUpdateError$unlock()
#
## Below is an example to define the print function
#UsersUpdateError$set("public", "print", function(...) {
#  print(jsonlite::prettify(self$toJSONString()))
#  invisible(self)
#})
## Uncomment below to lock the class to prevent modifications to the method or field
#UsersUpdateError$lock()

