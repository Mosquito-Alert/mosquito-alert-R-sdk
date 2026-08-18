#' @docType class
#' @title UsersAudienceFilterError
#'
#' @description UsersAudienceFilterError Class
#'
#' @format An \code{R6Class} generator object
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
UsersAudienceFilterError <- R6::R6Class(
  "UsersAudienceFilterError",
  public = list(
    #' @field actual_instance the object stored in this instance.
    actual_instance = NULL,
    #' @field actual_type the type of the object stored in this instance.
    actual_type = NULL,
    #' @field one_of  a list of types defined in the oneOf schema.
    one_of = list("UsersAudienceFilterInAreaErrorComponent", "UsersAudienceFilterLastLoginAfterErrorComponent", "UsersAudienceFilterLastLoginBeforeErrorComponent", "UsersAudienceFilterLocaleErrorComponent", "UsersAudienceFilterNonFieldErrorsErrorComponent", "UsersAudienceFilterNotificationTopicsErrorComponent", "UsersAudienceFilterNotificationTopicsINDEXErrorComponent"),

    #' @description
    #' Initialize a new UsersAudienceFilterError.
    #'
    #' @param instance an instance of the object defined in the oneOf schemas: "UsersAudienceFilterInAreaErrorComponent", "UsersAudienceFilterLastLoginAfterErrorComponent", "UsersAudienceFilterLastLoginBeforeErrorComponent", "UsersAudienceFilterLocaleErrorComponent", "UsersAudienceFilterNonFieldErrorsErrorComponent", "UsersAudienceFilterNotificationTopicsErrorComponent", "UsersAudienceFilterNotificationTopicsINDEXErrorComponent"
    initialize = function(instance = NULL) {
      if (is.null(instance)) {
        # do nothing
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "UsersAudienceFilterInAreaErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "UsersAudienceFilterInAreaErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "UsersAudienceFilterLastLoginAfterErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "UsersAudienceFilterLastLoginAfterErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "UsersAudienceFilterLastLoginBeforeErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "UsersAudienceFilterLastLoginBeforeErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "UsersAudienceFilterLocaleErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "UsersAudienceFilterLocaleErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "UsersAudienceFilterNonFieldErrorsErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "UsersAudienceFilterNonFieldErrorsErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "UsersAudienceFilterNotificationTopicsErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "UsersAudienceFilterNotificationTopicsErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "UsersAudienceFilterNotificationTopicsINDEXErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "UsersAudienceFilterNotificationTopicsINDEXErrorComponent"
      } else {
        stop(paste("Failed to initialize UsersAudienceFilterError with oneOf schemas UsersAudienceFilterInAreaErrorComponent, UsersAudienceFilterLastLoginAfterErrorComponent, UsersAudienceFilterLastLoginBeforeErrorComponent, UsersAudienceFilterLocaleErrorComponent, UsersAudienceFilterNonFieldErrorsErrorComponent, UsersAudienceFilterNotificationTopicsErrorComponent, UsersAudienceFilterNotificationTopicsINDEXErrorComponent. Provided class name: ",
                   get(class(instance)[[1]], pos = -1)$classname))
      }
    },

    #' @description
    #' Deserialize JSON string into an instance of UsersAudienceFilterError.
    #' An alias to the method `fromJSON` .
    #'
    #' @param input The input JSON.
    #'
    #' @return An instance of UsersAudienceFilterError.
    fromJSONString = function(input) {
      self$fromJSON(input)
    },

    #' @description
    #' Deserialize JSON string into an instance of UsersAudienceFilterError.
    #'
    #' @param input The input JSON.
    #'
    #' @return An instance of UsersAudienceFilterError.
    fromJSON = function(input) {
      matched <- 0 # match counter
      matched_schemas <- list() #names of matched schemas
      error_messages <- list()
      instance <- NULL

      `UsersAudienceFilterNonFieldErrorsErrorComponent_result` <- tryCatch({
          `UsersAudienceFilterNonFieldErrorsErrorComponent`$public_methods$validateJSON(input)
          `UsersAudienceFilterNonFieldErrorsErrorComponent_instance` <- `UsersAudienceFilterNonFieldErrorsErrorComponent`$new()
          instance <- `UsersAudienceFilterNonFieldErrorsErrorComponent_instance`$fromJSON(input)
          instance_type <- "UsersAudienceFilterNonFieldErrorsErrorComponent"
          matched_schemas <- append(matched_schemas, "UsersAudienceFilterNonFieldErrorsErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`UsersAudienceFilterNonFieldErrorsErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `UsersAudienceFilterNonFieldErrorsErrorComponent_result`["message"])
      }

      `UsersAudienceFilterLastLoginBeforeErrorComponent_result` <- tryCatch({
          `UsersAudienceFilterLastLoginBeforeErrorComponent`$public_methods$validateJSON(input)
          `UsersAudienceFilterLastLoginBeforeErrorComponent_instance` <- `UsersAudienceFilterLastLoginBeforeErrorComponent`$new()
          instance <- `UsersAudienceFilterLastLoginBeforeErrorComponent_instance`$fromJSON(input)
          instance_type <- "UsersAudienceFilterLastLoginBeforeErrorComponent"
          matched_schemas <- append(matched_schemas, "UsersAudienceFilterLastLoginBeforeErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`UsersAudienceFilterLastLoginBeforeErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `UsersAudienceFilterLastLoginBeforeErrorComponent_result`["message"])
      }

      `UsersAudienceFilterLastLoginAfterErrorComponent_result` <- tryCatch({
          `UsersAudienceFilterLastLoginAfterErrorComponent`$public_methods$validateJSON(input)
          `UsersAudienceFilterLastLoginAfterErrorComponent_instance` <- `UsersAudienceFilterLastLoginAfterErrorComponent`$new()
          instance <- `UsersAudienceFilterLastLoginAfterErrorComponent_instance`$fromJSON(input)
          instance_type <- "UsersAudienceFilterLastLoginAfterErrorComponent"
          matched_schemas <- append(matched_schemas, "UsersAudienceFilterLastLoginAfterErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`UsersAudienceFilterLastLoginAfterErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `UsersAudienceFilterLastLoginAfterErrorComponent_result`["message"])
      }

      `UsersAudienceFilterInAreaErrorComponent_result` <- tryCatch({
          `UsersAudienceFilterInAreaErrorComponent`$public_methods$validateJSON(input)
          `UsersAudienceFilterInAreaErrorComponent_instance` <- `UsersAudienceFilterInAreaErrorComponent`$new()
          instance <- `UsersAudienceFilterInAreaErrorComponent_instance`$fromJSON(input)
          instance_type <- "UsersAudienceFilterInAreaErrorComponent"
          matched_schemas <- append(matched_schemas, "UsersAudienceFilterInAreaErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`UsersAudienceFilterInAreaErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `UsersAudienceFilterInAreaErrorComponent_result`["message"])
      }

      `UsersAudienceFilterLocaleErrorComponent_result` <- tryCatch({
          `UsersAudienceFilterLocaleErrorComponent`$public_methods$validateJSON(input)
          `UsersAudienceFilterLocaleErrorComponent_instance` <- `UsersAudienceFilterLocaleErrorComponent`$new()
          instance <- `UsersAudienceFilterLocaleErrorComponent_instance`$fromJSON(input)
          instance_type <- "UsersAudienceFilterLocaleErrorComponent"
          matched_schemas <- append(matched_schemas, "UsersAudienceFilterLocaleErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`UsersAudienceFilterLocaleErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `UsersAudienceFilterLocaleErrorComponent_result`["message"])
      }

      `UsersAudienceFilterNotificationTopicsErrorComponent_result` <- tryCatch({
          `UsersAudienceFilterNotificationTopicsErrorComponent`$public_methods$validateJSON(input)
          `UsersAudienceFilterNotificationTopicsErrorComponent_instance` <- `UsersAudienceFilterNotificationTopicsErrorComponent`$new()
          instance <- `UsersAudienceFilterNotificationTopicsErrorComponent_instance`$fromJSON(input)
          instance_type <- "UsersAudienceFilterNotificationTopicsErrorComponent"
          matched_schemas <- append(matched_schemas, "UsersAudienceFilterNotificationTopicsErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`UsersAudienceFilterNotificationTopicsErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `UsersAudienceFilterNotificationTopicsErrorComponent_result`["message"])
      }

      `UsersAudienceFilterNotificationTopicsINDEXErrorComponent_result` <- tryCatch({
          `UsersAudienceFilterNotificationTopicsINDEXErrorComponent`$public_methods$validateJSON(input)
          `UsersAudienceFilterNotificationTopicsINDEXErrorComponent_instance` <- `UsersAudienceFilterNotificationTopicsINDEXErrorComponent`$new()
          instance <- `UsersAudienceFilterNotificationTopicsINDEXErrorComponent_instance`$fromJSON(input)
          instance_type <- "UsersAudienceFilterNotificationTopicsINDEXErrorComponent"
          matched_schemas <- append(matched_schemas, "UsersAudienceFilterNotificationTopicsINDEXErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`UsersAudienceFilterNotificationTopicsINDEXErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `UsersAudienceFilterNotificationTopicsINDEXErrorComponent_result`["message"])
      }

      if (matched == 1) {
        # successfully match exactly 1 schema specified in oneOf
        self$actual_instance <- instance
        self$actual_type <- instance_type
      } else if (matched > 1) {
        # more than 1 match
        stop(paste("Multiple matches found when deserializing the input into UsersAudienceFilterError with oneOf schemas UsersAudienceFilterInAreaErrorComponent, UsersAudienceFilterLastLoginAfterErrorComponent, UsersAudienceFilterLastLoginBeforeErrorComponent, UsersAudienceFilterLocaleErrorComponent, UsersAudienceFilterNonFieldErrorsErrorComponent, UsersAudienceFilterNotificationTopicsErrorComponent, UsersAudienceFilterNotificationTopicsINDEXErrorComponent. Matched schemas: ",
                   paste(matched_schemas, collapse = ", ")))
      } else {
        # no match
        stop(paste("No match found when deserializing the input into UsersAudienceFilterError with oneOf schemas UsersAudienceFilterInAreaErrorComponent, UsersAudienceFilterLastLoginAfterErrorComponent, UsersAudienceFilterLastLoginBeforeErrorComponent, UsersAudienceFilterLocaleErrorComponent, UsersAudienceFilterNonFieldErrorsErrorComponent, UsersAudienceFilterNotificationTopicsErrorComponent, UsersAudienceFilterNotificationTopicsINDEXErrorComponent. Details: >>",
                   paste(error_messages, collapse = " >> ")))
      }

      self
    },

    #' @description
    #' Serialize UsersAudienceFilterError to JSON string.
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return JSON string representation of the UsersAudienceFilterError.
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
    #' Convert UsersAudienceFilterError to a base R type
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
    #' Validate the input JSON with respect to UsersAudienceFilterError and
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
#UsersAudienceFilterError$unlock()
#
## Below is an example to define the print function
#UsersAudienceFilterError$set("public", "print", function(...) {
#  print(jsonlite::prettify(self$toJSONString()))
#  invisible(self)
#})
## Uncomment below to lock the class to prevent modifications to the method or field
#UsersAudienceFilterError$lock()

