#' @docType class
#' @title ObservationsListError
#'
#' @description ObservationsListError Class
#'
#' @format An \code{R6Class} generator object
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ObservationsListError <- R6::R6Class(
  "ObservationsListError",
  public = list(
    #' @field actual_instance the object stored in this instance.
    actual_instance = NULL,
    #' @field actual_type the type of the object stored in this instance.
    actual_type = NULL,
    #' @field one_of  a list of types defined in the oneOf schema.
    one_of = list("ObservationsListCreatedAtErrorComponent", "ObservationsListLocationAdmNuts2ErrorComponent", "ObservationsListLocationAdmNuts3ErrorComponent", "ObservationsListLocationCountryIdErrorComponent", "ObservationsListOrderByErrorComponent", "ObservationsListReceivedAtErrorComponent", "ObservationsListShortIdErrorComponent", "ObservationsListUpdatedAtErrorComponent", "ObservationsListUserUuidErrorComponent"),

    #' @description
    #' Initialize a new ObservationsListError.
    #'
    #' @param instance an instance of the object defined in the oneOf schemas: "ObservationsListCreatedAtErrorComponent", "ObservationsListLocationAdmNuts2ErrorComponent", "ObservationsListLocationAdmNuts3ErrorComponent", "ObservationsListLocationCountryIdErrorComponent", "ObservationsListOrderByErrorComponent", "ObservationsListReceivedAtErrorComponent", "ObservationsListShortIdErrorComponent", "ObservationsListUpdatedAtErrorComponent", "ObservationsListUserUuidErrorComponent"
    initialize = function(instance = NULL) {
      if (is.null(instance)) {
        # do nothing
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "ObservationsListCreatedAtErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "ObservationsListCreatedAtErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "ObservationsListLocationAdmNuts2ErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "ObservationsListLocationAdmNuts2ErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "ObservationsListLocationAdmNuts3ErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "ObservationsListLocationAdmNuts3ErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "ObservationsListLocationCountryIdErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "ObservationsListLocationCountryIdErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "ObservationsListOrderByErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "ObservationsListOrderByErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "ObservationsListReceivedAtErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "ObservationsListReceivedAtErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "ObservationsListShortIdErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "ObservationsListShortIdErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "ObservationsListUpdatedAtErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "ObservationsListUpdatedAtErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "ObservationsListUserUuidErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "ObservationsListUserUuidErrorComponent"
      } else {
        stop(paste("Failed to initialize ObservationsListError with oneOf schemas ObservationsListCreatedAtErrorComponent, ObservationsListLocationAdmNuts2ErrorComponent, ObservationsListLocationAdmNuts3ErrorComponent, ObservationsListLocationCountryIdErrorComponent, ObservationsListOrderByErrorComponent, ObservationsListReceivedAtErrorComponent, ObservationsListShortIdErrorComponent, ObservationsListUpdatedAtErrorComponent, ObservationsListUserUuidErrorComponent. Provided class name: ",
                   get(class(instance)[[1]], pos = -1)$classname))
      }
    },

    #' @description
    #' Deserialize JSON string into an instance of ObservationsListError.
    #' An alias to the method `fromJSON` .
    #'
    #' @param input The input JSON.
    #'
    #' @return An instance of ObservationsListError.
    fromJSONString = function(input) {
      self$fromJSON(input)
    },

    #' @description
    #' Deserialize JSON string into an instance of ObservationsListError.
    #'
    #' @param input The input JSON.
    #'
    #' @return An instance of ObservationsListError.
    fromJSON = function(input) {
      matched <- 0 # match counter
      matched_schemas <- list() #names of matched schemas
      error_messages <- list()
      instance <- NULL

      `ObservationsListShortIdErrorComponent_result` <- tryCatch({
          `ObservationsListShortIdErrorComponent`$public_methods$validateJSON(input)
          `ObservationsListShortIdErrorComponent_instance` <- `ObservationsListShortIdErrorComponent`$new()
          instance <- `ObservationsListShortIdErrorComponent_instance`$fromJSON(input)
          instance_type <- "ObservationsListShortIdErrorComponent"
          matched_schemas <- append(matched_schemas, "ObservationsListShortIdErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`ObservationsListShortIdErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `ObservationsListShortIdErrorComponent_result`["message"])
      }

      `ObservationsListCreatedAtErrorComponent_result` <- tryCatch({
          `ObservationsListCreatedAtErrorComponent`$public_methods$validateJSON(input)
          `ObservationsListCreatedAtErrorComponent_instance` <- `ObservationsListCreatedAtErrorComponent`$new()
          instance <- `ObservationsListCreatedAtErrorComponent_instance`$fromJSON(input)
          instance_type <- "ObservationsListCreatedAtErrorComponent"
          matched_schemas <- append(matched_schemas, "ObservationsListCreatedAtErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`ObservationsListCreatedAtErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `ObservationsListCreatedAtErrorComponent_result`["message"])
      }

      `ObservationsListReceivedAtErrorComponent_result` <- tryCatch({
          `ObservationsListReceivedAtErrorComponent`$public_methods$validateJSON(input)
          `ObservationsListReceivedAtErrorComponent_instance` <- `ObservationsListReceivedAtErrorComponent`$new()
          instance <- `ObservationsListReceivedAtErrorComponent_instance`$fromJSON(input)
          instance_type <- "ObservationsListReceivedAtErrorComponent"
          matched_schemas <- append(matched_schemas, "ObservationsListReceivedAtErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`ObservationsListReceivedAtErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `ObservationsListReceivedAtErrorComponent_result`["message"])
      }

      `ObservationsListUpdatedAtErrorComponent_result` <- tryCatch({
          `ObservationsListUpdatedAtErrorComponent`$public_methods$validateJSON(input)
          `ObservationsListUpdatedAtErrorComponent_instance` <- `ObservationsListUpdatedAtErrorComponent`$new()
          instance <- `ObservationsListUpdatedAtErrorComponent_instance`$fromJSON(input)
          instance_type <- "ObservationsListUpdatedAtErrorComponent"
          matched_schemas <- append(matched_schemas, "ObservationsListUpdatedAtErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`ObservationsListUpdatedAtErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `ObservationsListUpdatedAtErrorComponent_result`["message"])
      }

      `ObservationsListLocationCountryIdErrorComponent_result` <- tryCatch({
          `ObservationsListLocationCountryIdErrorComponent`$public_methods$validateJSON(input)
          `ObservationsListLocationCountryIdErrorComponent_instance` <- `ObservationsListLocationCountryIdErrorComponent`$new()
          instance <- `ObservationsListLocationCountryIdErrorComponent_instance`$fromJSON(input)
          instance_type <- "ObservationsListLocationCountryIdErrorComponent"
          matched_schemas <- append(matched_schemas, "ObservationsListLocationCountryIdErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`ObservationsListLocationCountryIdErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `ObservationsListLocationCountryIdErrorComponent_result`["message"])
      }

      `ObservationsListLocationAdmNuts3ErrorComponent_result` <- tryCatch({
          `ObservationsListLocationAdmNuts3ErrorComponent`$public_methods$validateJSON(input)
          `ObservationsListLocationAdmNuts3ErrorComponent_instance` <- `ObservationsListLocationAdmNuts3ErrorComponent`$new()
          instance <- `ObservationsListLocationAdmNuts3ErrorComponent_instance`$fromJSON(input)
          instance_type <- "ObservationsListLocationAdmNuts3ErrorComponent"
          matched_schemas <- append(matched_schemas, "ObservationsListLocationAdmNuts3ErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`ObservationsListLocationAdmNuts3ErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `ObservationsListLocationAdmNuts3ErrorComponent_result`["message"])
      }

      `ObservationsListLocationAdmNuts2ErrorComponent_result` <- tryCatch({
          `ObservationsListLocationAdmNuts2ErrorComponent`$public_methods$validateJSON(input)
          `ObservationsListLocationAdmNuts2ErrorComponent_instance` <- `ObservationsListLocationAdmNuts2ErrorComponent`$new()
          instance <- `ObservationsListLocationAdmNuts2ErrorComponent_instance`$fromJSON(input)
          instance_type <- "ObservationsListLocationAdmNuts2ErrorComponent"
          matched_schemas <- append(matched_schemas, "ObservationsListLocationAdmNuts2ErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`ObservationsListLocationAdmNuts2ErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `ObservationsListLocationAdmNuts2ErrorComponent_result`["message"])
      }

      `ObservationsListUserUuidErrorComponent_result` <- tryCatch({
          `ObservationsListUserUuidErrorComponent`$public_methods$validateJSON(input)
          `ObservationsListUserUuidErrorComponent_instance` <- `ObservationsListUserUuidErrorComponent`$new()
          instance <- `ObservationsListUserUuidErrorComponent_instance`$fromJSON(input)
          instance_type <- "ObservationsListUserUuidErrorComponent"
          matched_schemas <- append(matched_schemas, "ObservationsListUserUuidErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`ObservationsListUserUuidErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `ObservationsListUserUuidErrorComponent_result`["message"])
      }

      `ObservationsListOrderByErrorComponent_result` <- tryCatch({
          `ObservationsListOrderByErrorComponent`$public_methods$validateJSON(input)
          `ObservationsListOrderByErrorComponent_instance` <- `ObservationsListOrderByErrorComponent`$new()
          instance <- `ObservationsListOrderByErrorComponent_instance`$fromJSON(input)
          instance_type <- "ObservationsListOrderByErrorComponent"
          matched_schemas <- append(matched_schemas, "ObservationsListOrderByErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`ObservationsListOrderByErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `ObservationsListOrderByErrorComponent_result`["message"])
      }

      if (matched == 1) {
        # successfully match exactly 1 schema specified in oneOf
        self$actual_instance <- instance
        self$actual_type <- instance_type
      } else if (matched > 1) {
        # more than 1 match
        stop(paste("Multiple matches found when deserializing the input into ObservationsListError with oneOf schemas ObservationsListCreatedAtErrorComponent, ObservationsListLocationAdmNuts2ErrorComponent, ObservationsListLocationAdmNuts3ErrorComponent, ObservationsListLocationCountryIdErrorComponent, ObservationsListOrderByErrorComponent, ObservationsListReceivedAtErrorComponent, ObservationsListShortIdErrorComponent, ObservationsListUpdatedAtErrorComponent, ObservationsListUserUuidErrorComponent. Matched schemas: ",
                   paste(matched_schemas, collapse = ", ")))
      } else {
        # no match
        stop(paste("No match found when deserializing the input into ObservationsListError with oneOf schemas ObservationsListCreatedAtErrorComponent, ObservationsListLocationAdmNuts2ErrorComponent, ObservationsListLocationAdmNuts3ErrorComponent, ObservationsListLocationCountryIdErrorComponent, ObservationsListOrderByErrorComponent, ObservationsListReceivedAtErrorComponent, ObservationsListShortIdErrorComponent, ObservationsListUpdatedAtErrorComponent, ObservationsListUserUuidErrorComponent. Details: >>",
                   paste(error_messages, collapse = " >> ")))
      }

      self
    },

    #' @description
    #' Serialize ObservationsListError to JSON string.
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return JSON string representation of the ObservationsListError.
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
    #' Convert ObservationsListError to a base R type
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
    #' Validate the input JSON with respect to ObservationsListError and
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
#ObservationsListError$unlock()
#
## Below is an example to define the print function
#ObservationsListError$set("public", "print", function(...) {
#  print(jsonlite::prettify(self$toJSONString()))
#  invisible(self)
#})
## Uncomment below to lock the class to prevent modifications to the method or field
#ObservationsListError$lock()

