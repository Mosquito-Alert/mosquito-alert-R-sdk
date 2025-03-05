#' @docType class
#' @title MetaNotificationRequest
#'
#' @description MetaNotificationRequest Class
#'
#' @format An \code{R6Class} generator object
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
MetaNotificationRequest <- R6::R6Class(
  "MetaNotificationRequest",
  public = list(
    #' @field actual_instance the object stored in this instance.
    actual_instance = NULL,
    #' @field actual_type the type of the object stored in this instance.
    actual_type = NULL,
    #' @field one_of  a list of types defined in the oneOf schema.
    one_of = list("TopicNotificationCreateRequest", "UserNotificationCreateRequest"),

    #' @description
    #' Initialize a new MetaNotificationRequest.
    #'
    #' @param instance an instance of the object defined in the oneOf schemas: "TopicNotificationCreateRequest", "UserNotificationCreateRequest"
    initialize = function(instance = NULL) {
      if (is.null(instance)) {
        # do nothing
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "TopicNotificationCreateRequest") {
        self$actual_instance <- instance
        self$actual_type <- "TopicNotificationCreateRequest"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "UserNotificationCreateRequest") {
        self$actual_instance <- instance
        self$actual_type <- "UserNotificationCreateRequest"
      } else {
        stop(paste("Failed to initialize MetaNotificationRequest with oneOf schemas TopicNotificationCreateRequest, UserNotificationCreateRequest. Provided class name: ",
                   get(class(instance)[[1]], pos = -1)$classname))
      }
    },

    #' @description
    #' Deserialize JSON string into an instance of MetaNotificationRequest.
    #' An alias to the method `fromJSON` .
    #'
    #' @param input The input JSON.
    #'
    #' @return An instance of MetaNotificationRequest.
    fromJSONString = function(input) {
      self$fromJSON(input)
    },

    #' @description
    #' Deserialize JSON string into an instance of MetaNotificationRequest.
    #'
    #' @param input The input JSON.
    #'
    #' @return An instance of MetaNotificationRequest.
    fromJSON = function(input) {
      matched <- 0 # match counter
      matched_schemas <- list() #names of matched schemas
      error_messages <- list()
      instance <- NULL

      `UserNotificationCreateRequest_result` <- tryCatch({
          `UserNotificationCreateRequest`$public_methods$validateJSON(input)
          `UserNotificationCreateRequest_instance` <- `UserNotificationCreateRequest`$new()
          instance <- `UserNotificationCreateRequest_instance`$fromJSON(input)
          instance_type <- "UserNotificationCreateRequest"
          matched_schemas <- append(matched_schemas, "UserNotificationCreateRequest")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`UserNotificationCreateRequest_result`["error"])) {
        error_messages <- append(error_messages, `UserNotificationCreateRequest_result`["message"])
      }

      `TopicNotificationCreateRequest_result` <- tryCatch({
          `TopicNotificationCreateRequest`$public_methods$validateJSON(input)
          `TopicNotificationCreateRequest_instance` <- `TopicNotificationCreateRequest`$new()
          instance <- `TopicNotificationCreateRequest_instance`$fromJSON(input)
          instance_type <- "TopicNotificationCreateRequest"
          matched_schemas <- append(matched_schemas, "TopicNotificationCreateRequest")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`TopicNotificationCreateRequest_result`["error"])) {
        error_messages <- append(error_messages, `TopicNotificationCreateRequest_result`["message"])
      }

      if (matched == 1) {
        # successfully match exactly 1 schema specified in oneOf
        self$actual_instance <- instance
        self$actual_type <- instance_type
      } else if (matched > 1) {
        # more than 1 match
        stop(paste("Multiple matches found when deserializing the input into MetaNotificationRequest with oneOf schemas TopicNotificationCreateRequest, UserNotificationCreateRequest. Matched schemas: ",
                   paste(matched_schemas, collapse = ", ")))
      } else {
        # no match
        stop(paste("No match found when deserializing the input into MetaNotificationRequest with oneOf schemas TopicNotificationCreateRequest, UserNotificationCreateRequest. Details: >>",
                   paste(error_messages, collapse = " >> ")))
      }

      self
    },

    #' @description
    #' Serialize MetaNotificationRequest to JSON string.
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return JSON string representation of the MetaNotificationRequest.
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
    #' Convert MetaNotificationRequest to a base R type
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
    #' Validate the input JSON with respect to MetaNotificationRequest and
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
#MetaNotificationRequest$unlock()
#
## Below is an example to define the print function
#MetaNotificationRequest$set("public", "print", function(...) {
#  print(jsonlite::prettify(self$toJSONString()))
#  invisible(self)
#})
## Uncomment below to lock the class to prevent modifications to the method or field
#MetaNotificationRequest$lock()

