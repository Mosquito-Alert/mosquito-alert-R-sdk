#' @docType class
#' @title NotificationsListError
#'
#' @description NotificationsListError Class
#'
#' @format An \code{R6Class} generator object
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
NotificationsListError <- R6::R6Class(
  "NotificationsListError",
  public = list(
    #' @field actual_instance the object stored in this instance.
    actual_instance = NULL,
    #' @field actual_type the type of the object stored in this instance.
    actual_type = NULL,
    #' @field one_of  a list of types defined in the oneOf schema.
    one_of = list("NotificationsListOrderByErrorComponent"),

    #' @description
    #' Initialize a new NotificationsListError.
    #'
    #' @param instance an instance of the object defined in the oneOf schemas: "NotificationsListOrderByErrorComponent"
    initialize = function(instance = NULL) {
      if (is.null(instance)) {
        # do nothing
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "NotificationsListOrderByErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "NotificationsListOrderByErrorComponent"
      } else {
        stop(paste("Failed to initialize NotificationsListError with oneOf schemas NotificationsListOrderByErrorComponent. Provided class name: ",
                   get(class(instance)[[1]], pos = -1)$classname))
      }
    },

    #' @description
    #' Deserialize JSON string into an instance of NotificationsListError.
    #' An alias to the method `fromJSON` .
    #'
    #' @param input The input JSON.
    #'
    #' @return An instance of NotificationsListError.
    fromJSONString = function(input) {
      self$fromJSON(input)
    },

    #' @description
    #' Deserialize JSON string into an instance of NotificationsListError.
    #'
    #' @param input The input JSON.
    #'
    #' @return An instance of NotificationsListError.
    fromJSON = function(input) {
      matched <- 0 # match counter
      matched_schemas <- list() #names of matched schemas
      error_messages <- list()
      instance <- NULL

      `NotificationsListOrderByErrorComponent_result` <- tryCatch({
          `NotificationsListOrderByErrorComponent`$public_methods$validateJSON(input)
          `NotificationsListOrderByErrorComponent_instance` <- `NotificationsListOrderByErrorComponent`$new()
          instance <- `NotificationsListOrderByErrorComponent_instance`$fromJSON(input)
          instance_type <- "NotificationsListOrderByErrorComponent"
          matched_schemas <- append(matched_schemas, "NotificationsListOrderByErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`NotificationsListOrderByErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `NotificationsListOrderByErrorComponent_result`["message"])
      }

      if (matched == 1) {
        # successfully match exactly 1 schema specified in oneOf
        self$actual_instance <- instance
        self$actual_type <- instance_type
      } else if (matched > 1) {
        # more than 1 match
        stop(paste("Multiple matches found when deserializing the input into NotificationsListError with oneOf schemas NotificationsListOrderByErrorComponent. Matched schemas: ",
                   paste(matched_schemas, collapse = ", ")))
      } else {
        # no match
        stop(paste("No match found when deserializing the input into NotificationsListError with oneOf schemas NotificationsListOrderByErrorComponent. Details: >>",
                   paste(error_messages, collapse = " >> ")))
      }

      self
    },

    #' @description
    #' Serialize NotificationsListError to JSON string.
    #'
    #' @return JSON string representation of the NotificationsListError.
    toJSONString = function() {
      if (!is.null(self$actual_instance)) {
        as.character(jsonlite::minify(self$actual_instance$toJSONString()))
      } else {
        NULL
      }
    },

    #' @description
    #' Serialize NotificationsListError to JSON.
    #'
    #' @return JSON representation of the NotificationsListError.
    toJSON = function() {
      if (!is.null(self$actual_instance)) {
        self$actual_instance$toJSON()
      } else {
        NULL
      }
    },

    #' @description
    #' Validate the input JSON with respect to NotificationsListError and
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
#NotificationsListError$unlock()
#
## Below is an example to define the print function
#NotificationsListError$set("public", "print", function(...) {
#  print(jsonlite::prettify(self$toJSONString()))
#  invisible(self)
#})
## Uncomment below to lock the class to prevent modifications to the method or field
#NotificationsListError$lock()

