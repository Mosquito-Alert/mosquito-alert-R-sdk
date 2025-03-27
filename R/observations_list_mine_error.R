#' @docType class
#' @title ObservationsListMineError
#'
#' @description ObservationsListMineError Class
#'
#' @format An \code{R6Class} generator object
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ObservationsListMineError <- R6::R6Class(
  "ObservationsListMineError",
  public = list(
    #' @field actual_instance the object stored in this instance.
    actual_instance = NULL,
    #' @field actual_type the type of the object stored in this instance.
    actual_type = NULL,
    #' @field one_of  a list of types defined in the oneOf schema.
    one_of = list("ObservationsListMineCountryIdErrorComponent", "ObservationsListMineCreatedAtErrorComponent", "ObservationsListMineOrderByErrorComponent", "ObservationsListMineReceivedAtErrorComponent", "ObservationsListMineShortIdErrorComponent", "ObservationsListMineUpdatedAtErrorComponent", "ObservationsListMineUserUuidErrorComponent"),

    #' @description
    #' Initialize a new ObservationsListMineError.
    #'
    #' @param instance an instance of the object defined in the oneOf schemas: "ObservationsListMineCountryIdErrorComponent", "ObservationsListMineCreatedAtErrorComponent", "ObservationsListMineOrderByErrorComponent", "ObservationsListMineReceivedAtErrorComponent", "ObservationsListMineShortIdErrorComponent", "ObservationsListMineUpdatedAtErrorComponent", "ObservationsListMineUserUuidErrorComponent"
    initialize = function(instance = NULL) {
      if (is.null(instance)) {
        # do nothing
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "ObservationsListMineCountryIdErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "ObservationsListMineCountryIdErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "ObservationsListMineCreatedAtErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "ObservationsListMineCreatedAtErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "ObservationsListMineOrderByErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "ObservationsListMineOrderByErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "ObservationsListMineReceivedAtErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "ObservationsListMineReceivedAtErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "ObservationsListMineShortIdErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "ObservationsListMineShortIdErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "ObservationsListMineUpdatedAtErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "ObservationsListMineUpdatedAtErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "ObservationsListMineUserUuidErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "ObservationsListMineUserUuidErrorComponent"
      } else {
        stop(paste("Failed to initialize ObservationsListMineError with oneOf schemas ObservationsListMineCountryIdErrorComponent, ObservationsListMineCreatedAtErrorComponent, ObservationsListMineOrderByErrorComponent, ObservationsListMineReceivedAtErrorComponent, ObservationsListMineShortIdErrorComponent, ObservationsListMineUpdatedAtErrorComponent, ObservationsListMineUserUuidErrorComponent. Provided class name: ",
                   get(class(instance)[[1]], pos = -1)$classname))
      }
    },

    #' @description
    #' Deserialize JSON string into an instance of ObservationsListMineError.
    #' An alias to the method `fromJSON` .
    #'
    #' @param input The input JSON.
    #'
    #' @return An instance of ObservationsListMineError.
    fromJSONString = function(input) {
      self$fromJSON(input)
    },

    #' @description
    #' Deserialize JSON string into an instance of ObservationsListMineError.
    #'
    #' @param input The input JSON.
    #'
    #' @return An instance of ObservationsListMineError.
    fromJSON = function(input) {
      matched <- 0 # match counter
      matched_schemas <- list() #names of matched schemas
      error_messages <- list()
      instance <- NULL

      `ObservationsListMineShortIdErrorComponent_result` <- tryCatch({
          `ObservationsListMineShortIdErrorComponent`$public_methods$validateJSON(input)
          `ObservationsListMineShortIdErrorComponent_instance` <- `ObservationsListMineShortIdErrorComponent`$new()
          instance <- `ObservationsListMineShortIdErrorComponent_instance`$fromJSON(input)
          instance_type <- "ObservationsListMineShortIdErrorComponent"
          matched_schemas <- append(matched_schemas, "ObservationsListMineShortIdErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`ObservationsListMineShortIdErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `ObservationsListMineShortIdErrorComponent_result`["message"])
      }

      `ObservationsListMineCreatedAtErrorComponent_result` <- tryCatch({
          `ObservationsListMineCreatedAtErrorComponent`$public_methods$validateJSON(input)
          `ObservationsListMineCreatedAtErrorComponent_instance` <- `ObservationsListMineCreatedAtErrorComponent`$new()
          instance <- `ObservationsListMineCreatedAtErrorComponent_instance`$fromJSON(input)
          instance_type <- "ObservationsListMineCreatedAtErrorComponent"
          matched_schemas <- append(matched_schemas, "ObservationsListMineCreatedAtErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`ObservationsListMineCreatedAtErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `ObservationsListMineCreatedAtErrorComponent_result`["message"])
      }

      `ObservationsListMineReceivedAtErrorComponent_result` <- tryCatch({
          `ObservationsListMineReceivedAtErrorComponent`$public_methods$validateJSON(input)
          `ObservationsListMineReceivedAtErrorComponent_instance` <- `ObservationsListMineReceivedAtErrorComponent`$new()
          instance <- `ObservationsListMineReceivedAtErrorComponent_instance`$fromJSON(input)
          instance_type <- "ObservationsListMineReceivedAtErrorComponent"
          matched_schemas <- append(matched_schemas, "ObservationsListMineReceivedAtErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`ObservationsListMineReceivedAtErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `ObservationsListMineReceivedAtErrorComponent_result`["message"])
      }

      `ObservationsListMineUpdatedAtErrorComponent_result` <- tryCatch({
          `ObservationsListMineUpdatedAtErrorComponent`$public_methods$validateJSON(input)
          `ObservationsListMineUpdatedAtErrorComponent_instance` <- `ObservationsListMineUpdatedAtErrorComponent`$new()
          instance <- `ObservationsListMineUpdatedAtErrorComponent_instance`$fromJSON(input)
          instance_type <- "ObservationsListMineUpdatedAtErrorComponent"
          matched_schemas <- append(matched_schemas, "ObservationsListMineUpdatedAtErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`ObservationsListMineUpdatedAtErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `ObservationsListMineUpdatedAtErrorComponent_result`["message"])
      }

      `ObservationsListMineCountryIdErrorComponent_result` <- tryCatch({
          `ObservationsListMineCountryIdErrorComponent`$public_methods$validateJSON(input)
          `ObservationsListMineCountryIdErrorComponent_instance` <- `ObservationsListMineCountryIdErrorComponent`$new()
          instance <- `ObservationsListMineCountryIdErrorComponent_instance`$fromJSON(input)
          instance_type <- "ObservationsListMineCountryIdErrorComponent"
          matched_schemas <- append(matched_schemas, "ObservationsListMineCountryIdErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`ObservationsListMineCountryIdErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `ObservationsListMineCountryIdErrorComponent_result`["message"])
      }

      `ObservationsListMineUserUuidErrorComponent_result` <- tryCatch({
          `ObservationsListMineUserUuidErrorComponent`$public_methods$validateJSON(input)
          `ObservationsListMineUserUuidErrorComponent_instance` <- `ObservationsListMineUserUuidErrorComponent`$new()
          instance <- `ObservationsListMineUserUuidErrorComponent_instance`$fromJSON(input)
          instance_type <- "ObservationsListMineUserUuidErrorComponent"
          matched_schemas <- append(matched_schemas, "ObservationsListMineUserUuidErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`ObservationsListMineUserUuidErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `ObservationsListMineUserUuidErrorComponent_result`["message"])
      }

      `ObservationsListMineOrderByErrorComponent_result` <- tryCatch({
          `ObservationsListMineOrderByErrorComponent`$public_methods$validateJSON(input)
          `ObservationsListMineOrderByErrorComponent_instance` <- `ObservationsListMineOrderByErrorComponent`$new()
          instance <- `ObservationsListMineOrderByErrorComponent_instance`$fromJSON(input)
          instance_type <- "ObservationsListMineOrderByErrorComponent"
          matched_schemas <- append(matched_schemas, "ObservationsListMineOrderByErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`ObservationsListMineOrderByErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `ObservationsListMineOrderByErrorComponent_result`["message"])
      }

      if (matched == 1) {
        # successfully match exactly 1 schema specified in oneOf
        self$actual_instance <- instance
        self$actual_type <- instance_type
      } else if (matched > 1) {
        # more than 1 match
        stop(paste("Multiple matches found when deserializing the input into ObservationsListMineError with oneOf schemas ObservationsListMineCountryIdErrorComponent, ObservationsListMineCreatedAtErrorComponent, ObservationsListMineOrderByErrorComponent, ObservationsListMineReceivedAtErrorComponent, ObservationsListMineShortIdErrorComponent, ObservationsListMineUpdatedAtErrorComponent, ObservationsListMineUserUuidErrorComponent. Matched schemas: ",
                   paste(matched_schemas, collapse = ", ")))
      } else {
        # no match
        stop(paste("No match found when deserializing the input into ObservationsListMineError with oneOf schemas ObservationsListMineCountryIdErrorComponent, ObservationsListMineCreatedAtErrorComponent, ObservationsListMineOrderByErrorComponent, ObservationsListMineReceivedAtErrorComponent, ObservationsListMineShortIdErrorComponent, ObservationsListMineUpdatedAtErrorComponent, ObservationsListMineUserUuidErrorComponent. Details: >>",
                   paste(error_messages, collapse = " >> ")))
      }

      self
    },

    #' @description
    #' Serialize ObservationsListMineError to JSON string.
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return JSON string representation of the ObservationsListMineError.
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
    #' Convert ObservationsListMineError to a base R type
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
    #' Validate the input JSON with respect to ObservationsListMineError and
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
#ObservationsListMineError$unlock()
#
## Below is an example to define the print function
#ObservationsListMineError$set("public", "print", function(...) {
#  print(jsonlite::prettify(self$toJSONString()))
#  invisible(self)
#})
## Uncomment below to lock the class to prevent modifications to the method or field
#ObservationsListMineError$lock()

