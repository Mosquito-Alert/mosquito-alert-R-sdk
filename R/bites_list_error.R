#' @docType class
#' @title BitesListError
#'
#' @description BitesListError Class
#'
#' @format An \code{R6Class} generator object
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
BitesListError <- R6::R6Class(
  "BitesListError",
  public = list(
    #' @field actual_instance the object stored in this instance.
    actual_instance = NULL,
    #' @field actual_type the type of the object stored in this instance.
    actual_type = NULL,
    #' @field one_of  a list of types defined in the oneOf schema.
    one_of = list("BitesListCreatedAtErrorComponent", "BitesListLocationCountryIdErrorComponent", "BitesListLocationNuts2ErrorComponent", "BitesListLocationNuts3ErrorComponent", "BitesListOrderByErrorComponent", "BitesListReceivedAtErrorComponent", "BitesListShortIdErrorComponent", "BitesListUpdatedAtErrorComponent", "BitesListUserUuidErrorComponent"),

    #' @description
    #' Initialize a new BitesListError.
    #'
    #' @param instance an instance of the object defined in the oneOf schemas: "BitesListCreatedAtErrorComponent", "BitesListLocationCountryIdErrorComponent", "BitesListLocationNuts2ErrorComponent", "BitesListLocationNuts3ErrorComponent", "BitesListOrderByErrorComponent", "BitesListReceivedAtErrorComponent", "BitesListShortIdErrorComponent", "BitesListUpdatedAtErrorComponent", "BitesListUserUuidErrorComponent"
    initialize = function(instance = NULL) {
      if (is.null(instance)) {
        # do nothing
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "BitesListCreatedAtErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "BitesListCreatedAtErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "BitesListLocationCountryIdErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "BitesListLocationCountryIdErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "BitesListLocationNuts2ErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "BitesListLocationNuts2ErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "BitesListLocationNuts3ErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "BitesListLocationNuts3ErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "BitesListOrderByErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "BitesListOrderByErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "BitesListReceivedAtErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "BitesListReceivedAtErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "BitesListShortIdErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "BitesListShortIdErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "BitesListUpdatedAtErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "BitesListUpdatedAtErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "BitesListUserUuidErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "BitesListUserUuidErrorComponent"
      } else {
        stop(paste("Failed to initialize BitesListError with oneOf schemas BitesListCreatedAtErrorComponent, BitesListLocationCountryIdErrorComponent, BitesListLocationNuts2ErrorComponent, BitesListLocationNuts3ErrorComponent, BitesListOrderByErrorComponent, BitesListReceivedAtErrorComponent, BitesListShortIdErrorComponent, BitesListUpdatedAtErrorComponent, BitesListUserUuidErrorComponent. Provided class name: ",
                   get(class(instance)[[1]], pos = -1)$classname))
      }
    },

    #' @description
    #' Deserialize JSON string into an instance of BitesListError.
    #' An alias to the method `fromJSON` .
    #'
    #' @param input The input JSON.
    #'
    #' @return An instance of BitesListError.
    fromJSONString = function(input) {
      self$fromJSON(input)
    },

    #' @description
    #' Deserialize JSON string into an instance of BitesListError.
    #'
    #' @param input The input JSON.
    #'
    #' @return An instance of BitesListError.
    fromJSON = function(input) {
      matched <- 0 # match counter
      matched_schemas <- list() #names of matched schemas
      error_messages <- list()
      instance <- NULL

      `BitesListShortIdErrorComponent_result` <- tryCatch({
          `BitesListShortIdErrorComponent`$public_methods$validateJSON(input)
          `BitesListShortIdErrorComponent_instance` <- `BitesListShortIdErrorComponent`$new()
          instance <- `BitesListShortIdErrorComponent_instance`$fromJSON(input)
          instance_type <- "BitesListShortIdErrorComponent"
          matched_schemas <- append(matched_schemas, "BitesListShortIdErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`BitesListShortIdErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `BitesListShortIdErrorComponent_result`["message"])
      }

      `BitesListCreatedAtErrorComponent_result` <- tryCatch({
          `BitesListCreatedAtErrorComponent`$public_methods$validateJSON(input)
          `BitesListCreatedAtErrorComponent_instance` <- `BitesListCreatedAtErrorComponent`$new()
          instance <- `BitesListCreatedAtErrorComponent_instance`$fromJSON(input)
          instance_type <- "BitesListCreatedAtErrorComponent"
          matched_schemas <- append(matched_schemas, "BitesListCreatedAtErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`BitesListCreatedAtErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `BitesListCreatedAtErrorComponent_result`["message"])
      }

      `BitesListReceivedAtErrorComponent_result` <- tryCatch({
          `BitesListReceivedAtErrorComponent`$public_methods$validateJSON(input)
          `BitesListReceivedAtErrorComponent_instance` <- `BitesListReceivedAtErrorComponent`$new()
          instance <- `BitesListReceivedAtErrorComponent_instance`$fromJSON(input)
          instance_type <- "BitesListReceivedAtErrorComponent"
          matched_schemas <- append(matched_schemas, "BitesListReceivedAtErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`BitesListReceivedAtErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `BitesListReceivedAtErrorComponent_result`["message"])
      }

      `BitesListUpdatedAtErrorComponent_result` <- tryCatch({
          `BitesListUpdatedAtErrorComponent`$public_methods$validateJSON(input)
          `BitesListUpdatedAtErrorComponent_instance` <- `BitesListUpdatedAtErrorComponent`$new()
          instance <- `BitesListUpdatedAtErrorComponent_instance`$fromJSON(input)
          instance_type <- "BitesListUpdatedAtErrorComponent"
          matched_schemas <- append(matched_schemas, "BitesListUpdatedAtErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`BitesListUpdatedAtErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `BitesListUpdatedAtErrorComponent_result`["message"])
      }

      `BitesListLocationCountryIdErrorComponent_result` <- tryCatch({
          `BitesListLocationCountryIdErrorComponent`$public_methods$validateJSON(input)
          `BitesListLocationCountryIdErrorComponent_instance` <- `BitesListLocationCountryIdErrorComponent`$new()
          instance <- `BitesListLocationCountryIdErrorComponent_instance`$fromJSON(input)
          instance_type <- "BitesListLocationCountryIdErrorComponent"
          matched_schemas <- append(matched_schemas, "BitesListLocationCountryIdErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`BitesListLocationCountryIdErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `BitesListLocationCountryIdErrorComponent_result`["message"])
      }

      `BitesListLocationNuts3ErrorComponent_result` <- tryCatch({
          `BitesListLocationNuts3ErrorComponent`$public_methods$validateJSON(input)
          `BitesListLocationNuts3ErrorComponent_instance` <- `BitesListLocationNuts3ErrorComponent`$new()
          instance <- `BitesListLocationNuts3ErrorComponent_instance`$fromJSON(input)
          instance_type <- "BitesListLocationNuts3ErrorComponent"
          matched_schemas <- append(matched_schemas, "BitesListLocationNuts3ErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`BitesListLocationNuts3ErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `BitesListLocationNuts3ErrorComponent_result`["message"])
      }

      `BitesListLocationNuts2ErrorComponent_result` <- tryCatch({
          `BitesListLocationNuts2ErrorComponent`$public_methods$validateJSON(input)
          `BitesListLocationNuts2ErrorComponent_instance` <- `BitesListLocationNuts2ErrorComponent`$new()
          instance <- `BitesListLocationNuts2ErrorComponent_instance`$fromJSON(input)
          instance_type <- "BitesListLocationNuts2ErrorComponent"
          matched_schemas <- append(matched_schemas, "BitesListLocationNuts2ErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`BitesListLocationNuts2ErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `BitesListLocationNuts2ErrorComponent_result`["message"])
      }

      `BitesListUserUuidErrorComponent_result` <- tryCatch({
          `BitesListUserUuidErrorComponent`$public_methods$validateJSON(input)
          `BitesListUserUuidErrorComponent_instance` <- `BitesListUserUuidErrorComponent`$new()
          instance <- `BitesListUserUuidErrorComponent_instance`$fromJSON(input)
          instance_type <- "BitesListUserUuidErrorComponent"
          matched_schemas <- append(matched_schemas, "BitesListUserUuidErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`BitesListUserUuidErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `BitesListUserUuidErrorComponent_result`["message"])
      }

      `BitesListOrderByErrorComponent_result` <- tryCatch({
          `BitesListOrderByErrorComponent`$public_methods$validateJSON(input)
          `BitesListOrderByErrorComponent_instance` <- `BitesListOrderByErrorComponent`$new()
          instance <- `BitesListOrderByErrorComponent_instance`$fromJSON(input)
          instance_type <- "BitesListOrderByErrorComponent"
          matched_schemas <- append(matched_schemas, "BitesListOrderByErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`BitesListOrderByErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `BitesListOrderByErrorComponent_result`["message"])
      }

      if (matched == 1) {
        # successfully match exactly 1 schema specified in oneOf
        self$actual_instance <- instance
        self$actual_type <- instance_type
      } else if (matched > 1) {
        # more than 1 match
        stop(paste("Multiple matches found when deserializing the input into BitesListError with oneOf schemas BitesListCreatedAtErrorComponent, BitesListLocationCountryIdErrorComponent, BitesListLocationNuts2ErrorComponent, BitesListLocationNuts3ErrorComponent, BitesListOrderByErrorComponent, BitesListReceivedAtErrorComponent, BitesListShortIdErrorComponent, BitesListUpdatedAtErrorComponent, BitesListUserUuidErrorComponent. Matched schemas: ",
                   paste(matched_schemas, collapse = ", ")))
      } else {
        # no match
        stop(paste("No match found when deserializing the input into BitesListError with oneOf schemas BitesListCreatedAtErrorComponent, BitesListLocationCountryIdErrorComponent, BitesListLocationNuts2ErrorComponent, BitesListLocationNuts3ErrorComponent, BitesListOrderByErrorComponent, BitesListReceivedAtErrorComponent, BitesListShortIdErrorComponent, BitesListUpdatedAtErrorComponent, BitesListUserUuidErrorComponent. Details: >>",
                   paste(error_messages, collapse = " >> ")))
      }

      self
    },

    #' @description
    #' Serialize BitesListError to JSON string.
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return JSON string representation of the BitesListError.
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
    #' Convert BitesListError to a base R type
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
    #' Validate the input JSON with respect to BitesListError and
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
#BitesListError$unlock()
#
## Below is an example to define the print function
#BitesListError$set("public", "print", function(...) {
#  print(jsonlite::prettify(self$toJSONString()))
#  invisible(self)
#})
## Uncomment below to lock the class to prevent modifications to the method or field
#BitesListError$lock()

