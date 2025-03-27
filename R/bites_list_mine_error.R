#' @docType class
#' @title BitesListMineError
#'
#' @description BitesListMineError Class
#'
#' @format An \code{R6Class} generator object
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
BitesListMineError <- R6::R6Class(
  "BitesListMineError",
  public = list(
    #' @field actual_instance the object stored in this instance.
    actual_instance = NULL,
    #' @field actual_type the type of the object stored in this instance.
    actual_type = NULL,
    #' @field one_of  a list of types defined in the oneOf schema.
    one_of = list("BitesListMineCountryIdErrorComponent", "BitesListMineCreatedAtErrorComponent", "BitesListMineOrderByErrorComponent", "BitesListMineReceivedAtErrorComponent", "BitesListMineShortIdErrorComponent", "BitesListMineUpdatedAtErrorComponent", "BitesListMineUserUuidErrorComponent"),

    #' @description
    #' Initialize a new BitesListMineError.
    #'
    #' @param instance an instance of the object defined in the oneOf schemas: "BitesListMineCountryIdErrorComponent", "BitesListMineCreatedAtErrorComponent", "BitesListMineOrderByErrorComponent", "BitesListMineReceivedAtErrorComponent", "BitesListMineShortIdErrorComponent", "BitesListMineUpdatedAtErrorComponent", "BitesListMineUserUuidErrorComponent"
    initialize = function(instance = NULL) {
      if (is.null(instance)) {
        # do nothing
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "BitesListMineCountryIdErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "BitesListMineCountryIdErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "BitesListMineCreatedAtErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "BitesListMineCreatedAtErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "BitesListMineOrderByErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "BitesListMineOrderByErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "BitesListMineReceivedAtErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "BitesListMineReceivedAtErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "BitesListMineShortIdErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "BitesListMineShortIdErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "BitesListMineUpdatedAtErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "BitesListMineUpdatedAtErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "BitesListMineUserUuidErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "BitesListMineUserUuidErrorComponent"
      } else {
        stop(paste("Failed to initialize BitesListMineError with oneOf schemas BitesListMineCountryIdErrorComponent, BitesListMineCreatedAtErrorComponent, BitesListMineOrderByErrorComponent, BitesListMineReceivedAtErrorComponent, BitesListMineShortIdErrorComponent, BitesListMineUpdatedAtErrorComponent, BitesListMineUserUuidErrorComponent. Provided class name: ",
                   get(class(instance)[[1]], pos = -1)$classname))
      }
    },

    #' @description
    #' Deserialize JSON string into an instance of BitesListMineError.
    #' An alias to the method `fromJSON` .
    #'
    #' @param input The input JSON.
    #'
    #' @return An instance of BitesListMineError.
    fromJSONString = function(input) {
      self$fromJSON(input)
    },

    #' @description
    #' Deserialize JSON string into an instance of BitesListMineError.
    #'
    #' @param input The input JSON.
    #'
    #' @return An instance of BitesListMineError.
    fromJSON = function(input) {
      matched <- 0 # match counter
      matched_schemas <- list() #names of matched schemas
      error_messages <- list()
      instance <- NULL

      `BitesListMineShortIdErrorComponent_result` <- tryCatch({
          `BitesListMineShortIdErrorComponent`$public_methods$validateJSON(input)
          `BitesListMineShortIdErrorComponent_instance` <- `BitesListMineShortIdErrorComponent`$new()
          instance <- `BitesListMineShortIdErrorComponent_instance`$fromJSON(input)
          instance_type <- "BitesListMineShortIdErrorComponent"
          matched_schemas <- append(matched_schemas, "BitesListMineShortIdErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`BitesListMineShortIdErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `BitesListMineShortIdErrorComponent_result`["message"])
      }

      `BitesListMineCreatedAtErrorComponent_result` <- tryCatch({
          `BitesListMineCreatedAtErrorComponent`$public_methods$validateJSON(input)
          `BitesListMineCreatedAtErrorComponent_instance` <- `BitesListMineCreatedAtErrorComponent`$new()
          instance <- `BitesListMineCreatedAtErrorComponent_instance`$fromJSON(input)
          instance_type <- "BitesListMineCreatedAtErrorComponent"
          matched_schemas <- append(matched_schemas, "BitesListMineCreatedAtErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`BitesListMineCreatedAtErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `BitesListMineCreatedAtErrorComponent_result`["message"])
      }

      `BitesListMineReceivedAtErrorComponent_result` <- tryCatch({
          `BitesListMineReceivedAtErrorComponent`$public_methods$validateJSON(input)
          `BitesListMineReceivedAtErrorComponent_instance` <- `BitesListMineReceivedAtErrorComponent`$new()
          instance <- `BitesListMineReceivedAtErrorComponent_instance`$fromJSON(input)
          instance_type <- "BitesListMineReceivedAtErrorComponent"
          matched_schemas <- append(matched_schemas, "BitesListMineReceivedAtErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`BitesListMineReceivedAtErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `BitesListMineReceivedAtErrorComponent_result`["message"])
      }

      `BitesListMineUpdatedAtErrorComponent_result` <- tryCatch({
          `BitesListMineUpdatedAtErrorComponent`$public_methods$validateJSON(input)
          `BitesListMineUpdatedAtErrorComponent_instance` <- `BitesListMineUpdatedAtErrorComponent`$new()
          instance <- `BitesListMineUpdatedAtErrorComponent_instance`$fromJSON(input)
          instance_type <- "BitesListMineUpdatedAtErrorComponent"
          matched_schemas <- append(matched_schemas, "BitesListMineUpdatedAtErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`BitesListMineUpdatedAtErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `BitesListMineUpdatedAtErrorComponent_result`["message"])
      }

      `BitesListMineCountryIdErrorComponent_result` <- tryCatch({
          `BitesListMineCountryIdErrorComponent`$public_methods$validateJSON(input)
          `BitesListMineCountryIdErrorComponent_instance` <- `BitesListMineCountryIdErrorComponent`$new()
          instance <- `BitesListMineCountryIdErrorComponent_instance`$fromJSON(input)
          instance_type <- "BitesListMineCountryIdErrorComponent"
          matched_schemas <- append(matched_schemas, "BitesListMineCountryIdErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`BitesListMineCountryIdErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `BitesListMineCountryIdErrorComponent_result`["message"])
      }

      `BitesListMineUserUuidErrorComponent_result` <- tryCatch({
          `BitesListMineUserUuidErrorComponent`$public_methods$validateJSON(input)
          `BitesListMineUserUuidErrorComponent_instance` <- `BitesListMineUserUuidErrorComponent`$new()
          instance <- `BitesListMineUserUuidErrorComponent_instance`$fromJSON(input)
          instance_type <- "BitesListMineUserUuidErrorComponent"
          matched_schemas <- append(matched_schemas, "BitesListMineUserUuidErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`BitesListMineUserUuidErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `BitesListMineUserUuidErrorComponent_result`["message"])
      }

      `BitesListMineOrderByErrorComponent_result` <- tryCatch({
          `BitesListMineOrderByErrorComponent`$public_methods$validateJSON(input)
          `BitesListMineOrderByErrorComponent_instance` <- `BitesListMineOrderByErrorComponent`$new()
          instance <- `BitesListMineOrderByErrorComponent_instance`$fromJSON(input)
          instance_type <- "BitesListMineOrderByErrorComponent"
          matched_schemas <- append(matched_schemas, "BitesListMineOrderByErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`BitesListMineOrderByErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `BitesListMineOrderByErrorComponent_result`["message"])
      }

      if (matched == 1) {
        # successfully match exactly 1 schema specified in oneOf
        self$actual_instance <- instance
        self$actual_type <- instance_type
      } else if (matched > 1) {
        # more than 1 match
        stop(paste("Multiple matches found when deserializing the input into BitesListMineError with oneOf schemas BitesListMineCountryIdErrorComponent, BitesListMineCreatedAtErrorComponent, BitesListMineOrderByErrorComponent, BitesListMineReceivedAtErrorComponent, BitesListMineShortIdErrorComponent, BitesListMineUpdatedAtErrorComponent, BitesListMineUserUuidErrorComponent. Matched schemas: ",
                   paste(matched_schemas, collapse = ", ")))
      } else {
        # no match
        stop(paste("No match found when deserializing the input into BitesListMineError with oneOf schemas BitesListMineCountryIdErrorComponent, BitesListMineCreatedAtErrorComponent, BitesListMineOrderByErrorComponent, BitesListMineReceivedAtErrorComponent, BitesListMineShortIdErrorComponent, BitesListMineUpdatedAtErrorComponent, BitesListMineUserUuidErrorComponent. Details: >>",
                   paste(error_messages, collapse = " >> ")))
      }

      self
    },

    #' @description
    #' Serialize BitesListMineError to JSON string.
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return JSON string representation of the BitesListMineError.
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
    #' Convert BitesListMineError to a base R type
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
    #' Validate the input JSON with respect to BitesListMineError and
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
#BitesListMineError$unlock()
#
## Below is an example to define the print function
#BitesListMineError$set("public", "print", function(...) {
#  print(jsonlite::prettify(self$toJSONString()))
#  invisible(self)
#})
## Uncomment below to lock the class to prevent modifications to the method or field
#BitesListMineError$lock()

