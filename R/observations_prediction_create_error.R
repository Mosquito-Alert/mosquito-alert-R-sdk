#' @docType class
#' @title ObservationsPredictionCreateError
#'
#' @description ObservationsPredictionCreateError Class
#'
#' @format An \code{R6Class} generator object
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ObservationsPredictionCreateError <- R6::R6Class(
  "ObservationsPredictionCreateError",
  public = list(
    #' @field actual_instance the object stored in this instance.
    actual_instance = NULL,
    #' @field actual_type the type of the object stored in this instance.
    actual_type = NULL,
    #' @field one_of  a list of types defined in the oneOf schema.
    one_of = list("ObservationsPredictionCreateIsExecutiveValidationErrorComponent", "ObservationsPredictionCreateNonFieldErrorsErrorComponent", "ObservationsPredictionCreateRefPhotoUuidErrorComponent"),

    #' @description
    #' Initialize a new ObservationsPredictionCreateError.
    #'
    #' @param instance an instance of the object defined in the oneOf schemas: "ObservationsPredictionCreateIsExecutiveValidationErrorComponent", "ObservationsPredictionCreateNonFieldErrorsErrorComponent", "ObservationsPredictionCreateRefPhotoUuidErrorComponent"
    initialize = function(instance = NULL) {
      if (is.null(instance)) {
        # do nothing
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "ObservationsPredictionCreateIsExecutiveValidationErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "ObservationsPredictionCreateIsExecutiveValidationErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "ObservationsPredictionCreateNonFieldErrorsErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "ObservationsPredictionCreateNonFieldErrorsErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "ObservationsPredictionCreateRefPhotoUuidErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "ObservationsPredictionCreateRefPhotoUuidErrorComponent"
      } else {
        stop(paste("Failed to initialize ObservationsPredictionCreateError with oneOf schemas ObservationsPredictionCreateIsExecutiveValidationErrorComponent, ObservationsPredictionCreateNonFieldErrorsErrorComponent, ObservationsPredictionCreateRefPhotoUuidErrorComponent. Provided class name: ",
                   get(class(instance)[[1]], pos = -1)$classname))
      }
    },

    #' @description
    #' Deserialize JSON string into an instance of ObservationsPredictionCreateError.
    #' An alias to the method `fromJSON` .
    #'
    #' @param input The input JSON.
    #'
    #' @return An instance of ObservationsPredictionCreateError.
    fromJSONString = function(input) {
      self$fromJSON(input)
    },

    #' @description
    #' Deserialize JSON string into an instance of ObservationsPredictionCreateError.
    #'
    #' @param input The input JSON.
    #'
    #' @return An instance of ObservationsPredictionCreateError.
    fromJSON = function(input) {
      matched <- 0 # match counter
      matched_schemas <- list() #names of matched schemas
      error_messages <- list()
      instance <- NULL

      `ObservationsPredictionCreateNonFieldErrorsErrorComponent_result` <- tryCatch({
          `ObservationsPredictionCreateNonFieldErrorsErrorComponent`$public_methods$validateJSON(input)
          `ObservationsPredictionCreateNonFieldErrorsErrorComponent_instance` <- `ObservationsPredictionCreateNonFieldErrorsErrorComponent`$new()
          instance <- `ObservationsPredictionCreateNonFieldErrorsErrorComponent_instance`$fromJSON(input)
          instance_type <- "ObservationsPredictionCreateNonFieldErrorsErrorComponent"
          matched_schemas <- append(matched_schemas, "ObservationsPredictionCreateNonFieldErrorsErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`ObservationsPredictionCreateNonFieldErrorsErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `ObservationsPredictionCreateNonFieldErrorsErrorComponent_result`["message"])
      }

      `ObservationsPredictionCreateRefPhotoUuidErrorComponent_result` <- tryCatch({
          `ObservationsPredictionCreateRefPhotoUuidErrorComponent`$public_methods$validateJSON(input)
          `ObservationsPredictionCreateRefPhotoUuidErrorComponent_instance` <- `ObservationsPredictionCreateRefPhotoUuidErrorComponent`$new()
          instance <- `ObservationsPredictionCreateRefPhotoUuidErrorComponent_instance`$fromJSON(input)
          instance_type <- "ObservationsPredictionCreateRefPhotoUuidErrorComponent"
          matched_schemas <- append(matched_schemas, "ObservationsPredictionCreateRefPhotoUuidErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`ObservationsPredictionCreateRefPhotoUuidErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `ObservationsPredictionCreateRefPhotoUuidErrorComponent_result`["message"])
      }

      `ObservationsPredictionCreateIsExecutiveValidationErrorComponent_result` <- tryCatch({
          `ObservationsPredictionCreateIsExecutiveValidationErrorComponent`$public_methods$validateJSON(input)
          `ObservationsPredictionCreateIsExecutiveValidationErrorComponent_instance` <- `ObservationsPredictionCreateIsExecutiveValidationErrorComponent`$new()
          instance <- `ObservationsPredictionCreateIsExecutiveValidationErrorComponent_instance`$fromJSON(input)
          instance_type <- "ObservationsPredictionCreateIsExecutiveValidationErrorComponent"
          matched_schemas <- append(matched_schemas, "ObservationsPredictionCreateIsExecutiveValidationErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`ObservationsPredictionCreateIsExecutiveValidationErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `ObservationsPredictionCreateIsExecutiveValidationErrorComponent_result`["message"])
      }

      if (matched == 1) {
        # successfully match exactly 1 schema specified in oneOf
        self$actual_instance <- instance
        self$actual_type <- instance_type
      } else if (matched > 1) {
        # more than 1 match
        stop(paste("Multiple matches found when deserializing the input into ObservationsPredictionCreateError with oneOf schemas ObservationsPredictionCreateIsExecutiveValidationErrorComponent, ObservationsPredictionCreateNonFieldErrorsErrorComponent, ObservationsPredictionCreateRefPhotoUuidErrorComponent. Matched schemas: ",
                   paste(matched_schemas, collapse = ", ")))
      } else {
        # no match
        stop(paste("No match found when deserializing the input into ObservationsPredictionCreateError with oneOf schemas ObservationsPredictionCreateIsExecutiveValidationErrorComponent, ObservationsPredictionCreateNonFieldErrorsErrorComponent, ObservationsPredictionCreateRefPhotoUuidErrorComponent. Details: >>",
                   paste(error_messages, collapse = " >> ")))
      }

      self
    },

    #' @description
    #' Serialize ObservationsPredictionCreateError to JSON string.
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return JSON string representation of the ObservationsPredictionCreateError.
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
    #' Convert ObservationsPredictionCreateError to a base R type
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
    #' Validate the input JSON with respect to ObservationsPredictionCreateError and
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
#ObservationsPredictionCreateError$unlock()
#
## Below is an example to define the print function
#ObservationsPredictionCreateError$set("public", "print", function(...) {
#  print(jsonlite::prettify(self$toJSONString()))
#  invisible(self)
#})
## Uncomment below to lock the class to prevent modifications to the method or field
#ObservationsPredictionCreateError$lock()

