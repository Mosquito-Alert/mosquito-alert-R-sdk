#' @docType class
#' @title BreedingsitesListMineError
#'
#' @description BreedingsitesListMineError Class
#'
#' @format An \code{R6Class} generator object
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
BreedingsitesListMineError <- R6::R6Class(
  "BreedingsitesListMineError",
  public = list(
    #' @field actual_instance the object stored in this instance.
    actual_instance = NULL,
    #' @field actual_type the type of the object stored in this instance.
    actual_type = NULL,
    #' @field one_of  a list of types defined in the oneOf schema.
    one_of = list("BreedingsitesListMineCreatedAtErrorComponent", "BreedingsitesListMineLocationCountryIdErrorComponent", "BreedingsitesListMineLocationNuts2ErrorComponent", "BreedingsitesListMineLocationNuts3ErrorComponent", "BreedingsitesListMineOrderByErrorComponent", "BreedingsitesListMineReceivedAtErrorComponent", "BreedingsitesListMineShortIdErrorComponent", "BreedingsitesListMineUpdatedAtErrorComponent", "BreedingsitesListMineUserUuidErrorComponent"),

    #' @description
    #' Initialize a new BreedingsitesListMineError.
    #'
    #' @param instance an instance of the object defined in the oneOf schemas: "BreedingsitesListMineCreatedAtErrorComponent", "BreedingsitesListMineLocationCountryIdErrorComponent", "BreedingsitesListMineLocationNuts2ErrorComponent", "BreedingsitesListMineLocationNuts3ErrorComponent", "BreedingsitesListMineOrderByErrorComponent", "BreedingsitesListMineReceivedAtErrorComponent", "BreedingsitesListMineShortIdErrorComponent", "BreedingsitesListMineUpdatedAtErrorComponent", "BreedingsitesListMineUserUuidErrorComponent"
    initialize = function(instance = NULL) {
      if (is.null(instance)) {
        # do nothing
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "BreedingsitesListMineCreatedAtErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "BreedingsitesListMineCreatedAtErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "BreedingsitesListMineLocationCountryIdErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "BreedingsitesListMineLocationCountryIdErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "BreedingsitesListMineLocationNuts2ErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "BreedingsitesListMineLocationNuts2ErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "BreedingsitesListMineLocationNuts3ErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "BreedingsitesListMineLocationNuts3ErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "BreedingsitesListMineOrderByErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "BreedingsitesListMineOrderByErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "BreedingsitesListMineReceivedAtErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "BreedingsitesListMineReceivedAtErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "BreedingsitesListMineShortIdErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "BreedingsitesListMineShortIdErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "BreedingsitesListMineUpdatedAtErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "BreedingsitesListMineUpdatedAtErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "BreedingsitesListMineUserUuidErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "BreedingsitesListMineUserUuidErrorComponent"
      } else {
        stop(paste("Failed to initialize BreedingsitesListMineError with oneOf schemas BreedingsitesListMineCreatedAtErrorComponent, BreedingsitesListMineLocationCountryIdErrorComponent, BreedingsitesListMineLocationNuts2ErrorComponent, BreedingsitesListMineLocationNuts3ErrorComponent, BreedingsitesListMineOrderByErrorComponent, BreedingsitesListMineReceivedAtErrorComponent, BreedingsitesListMineShortIdErrorComponent, BreedingsitesListMineUpdatedAtErrorComponent, BreedingsitesListMineUserUuidErrorComponent. Provided class name: ",
                   get(class(instance)[[1]], pos = -1)$classname))
      }
    },

    #' @description
    #' Deserialize JSON string into an instance of BreedingsitesListMineError.
    #' An alias to the method `fromJSON` .
    #'
    #' @param input The input JSON.
    #'
    #' @return An instance of BreedingsitesListMineError.
    fromJSONString = function(input) {
      self$fromJSON(input)
    },

    #' @description
    #' Deserialize JSON string into an instance of BreedingsitesListMineError.
    #'
    #' @param input The input JSON.
    #'
    #' @return An instance of BreedingsitesListMineError.
    fromJSON = function(input) {
      matched <- 0 # match counter
      matched_schemas <- list() #names of matched schemas
      error_messages <- list()
      instance <- NULL

      `BreedingsitesListMineShortIdErrorComponent_result` <- tryCatch({
          `BreedingsitesListMineShortIdErrorComponent`$public_methods$validateJSON(input)
          `BreedingsitesListMineShortIdErrorComponent_instance` <- `BreedingsitesListMineShortIdErrorComponent`$new()
          instance <- `BreedingsitesListMineShortIdErrorComponent_instance`$fromJSON(input)
          instance_type <- "BreedingsitesListMineShortIdErrorComponent"
          matched_schemas <- append(matched_schemas, "BreedingsitesListMineShortIdErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`BreedingsitesListMineShortIdErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `BreedingsitesListMineShortIdErrorComponent_result`["message"])
      }

      `BreedingsitesListMineCreatedAtErrorComponent_result` <- tryCatch({
          `BreedingsitesListMineCreatedAtErrorComponent`$public_methods$validateJSON(input)
          `BreedingsitesListMineCreatedAtErrorComponent_instance` <- `BreedingsitesListMineCreatedAtErrorComponent`$new()
          instance <- `BreedingsitesListMineCreatedAtErrorComponent_instance`$fromJSON(input)
          instance_type <- "BreedingsitesListMineCreatedAtErrorComponent"
          matched_schemas <- append(matched_schemas, "BreedingsitesListMineCreatedAtErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`BreedingsitesListMineCreatedAtErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `BreedingsitesListMineCreatedAtErrorComponent_result`["message"])
      }

      `BreedingsitesListMineReceivedAtErrorComponent_result` <- tryCatch({
          `BreedingsitesListMineReceivedAtErrorComponent`$public_methods$validateJSON(input)
          `BreedingsitesListMineReceivedAtErrorComponent_instance` <- `BreedingsitesListMineReceivedAtErrorComponent`$new()
          instance <- `BreedingsitesListMineReceivedAtErrorComponent_instance`$fromJSON(input)
          instance_type <- "BreedingsitesListMineReceivedAtErrorComponent"
          matched_schemas <- append(matched_schemas, "BreedingsitesListMineReceivedAtErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`BreedingsitesListMineReceivedAtErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `BreedingsitesListMineReceivedAtErrorComponent_result`["message"])
      }

      `BreedingsitesListMineUpdatedAtErrorComponent_result` <- tryCatch({
          `BreedingsitesListMineUpdatedAtErrorComponent`$public_methods$validateJSON(input)
          `BreedingsitesListMineUpdatedAtErrorComponent_instance` <- `BreedingsitesListMineUpdatedAtErrorComponent`$new()
          instance <- `BreedingsitesListMineUpdatedAtErrorComponent_instance`$fromJSON(input)
          instance_type <- "BreedingsitesListMineUpdatedAtErrorComponent"
          matched_schemas <- append(matched_schemas, "BreedingsitesListMineUpdatedAtErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`BreedingsitesListMineUpdatedAtErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `BreedingsitesListMineUpdatedAtErrorComponent_result`["message"])
      }

      `BreedingsitesListMineLocationCountryIdErrorComponent_result` <- tryCatch({
          `BreedingsitesListMineLocationCountryIdErrorComponent`$public_methods$validateJSON(input)
          `BreedingsitesListMineLocationCountryIdErrorComponent_instance` <- `BreedingsitesListMineLocationCountryIdErrorComponent`$new()
          instance <- `BreedingsitesListMineLocationCountryIdErrorComponent_instance`$fromJSON(input)
          instance_type <- "BreedingsitesListMineLocationCountryIdErrorComponent"
          matched_schemas <- append(matched_schemas, "BreedingsitesListMineLocationCountryIdErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`BreedingsitesListMineLocationCountryIdErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `BreedingsitesListMineLocationCountryIdErrorComponent_result`["message"])
      }

      `BreedingsitesListMineLocationNuts3ErrorComponent_result` <- tryCatch({
          `BreedingsitesListMineLocationNuts3ErrorComponent`$public_methods$validateJSON(input)
          `BreedingsitesListMineLocationNuts3ErrorComponent_instance` <- `BreedingsitesListMineLocationNuts3ErrorComponent`$new()
          instance <- `BreedingsitesListMineLocationNuts3ErrorComponent_instance`$fromJSON(input)
          instance_type <- "BreedingsitesListMineLocationNuts3ErrorComponent"
          matched_schemas <- append(matched_schemas, "BreedingsitesListMineLocationNuts3ErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`BreedingsitesListMineLocationNuts3ErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `BreedingsitesListMineLocationNuts3ErrorComponent_result`["message"])
      }

      `BreedingsitesListMineLocationNuts2ErrorComponent_result` <- tryCatch({
          `BreedingsitesListMineLocationNuts2ErrorComponent`$public_methods$validateJSON(input)
          `BreedingsitesListMineLocationNuts2ErrorComponent_instance` <- `BreedingsitesListMineLocationNuts2ErrorComponent`$new()
          instance <- `BreedingsitesListMineLocationNuts2ErrorComponent_instance`$fromJSON(input)
          instance_type <- "BreedingsitesListMineLocationNuts2ErrorComponent"
          matched_schemas <- append(matched_schemas, "BreedingsitesListMineLocationNuts2ErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`BreedingsitesListMineLocationNuts2ErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `BreedingsitesListMineLocationNuts2ErrorComponent_result`["message"])
      }

      `BreedingsitesListMineUserUuidErrorComponent_result` <- tryCatch({
          `BreedingsitesListMineUserUuidErrorComponent`$public_methods$validateJSON(input)
          `BreedingsitesListMineUserUuidErrorComponent_instance` <- `BreedingsitesListMineUserUuidErrorComponent`$new()
          instance <- `BreedingsitesListMineUserUuidErrorComponent_instance`$fromJSON(input)
          instance_type <- "BreedingsitesListMineUserUuidErrorComponent"
          matched_schemas <- append(matched_schemas, "BreedingsitesListMineUserUuidErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`BreedingsitesListMineUserUuidErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `BreedingsitesListMineUserUuidErrorComponent_result`["message"])
      }

      `BreedingsitesListMineOrderByErrorComponent_result` <- tryCatch({
          `BreedingsitesListMineOrderByErrorComponent`$public_methods$validateJSON(input)
          `BreedingsitesListMineOrderByErrorComponent_instance` <- `BreedingsitesListMineOrderByErrorComponent`$new()
          instance <- `BreedingsitesListMineOrderByErrorComponent_instance`$fromJSON(input)
          instance_type <- "BreedingsitesListMineOrderByErrorComponent"
          matched_schemas <- append(matched_schemas, "BreedingsitesListMineOrderByErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`BreedingsitesListMineOrderByErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `BreedingsitesListMineOrderByErrorComponent_result`["message"])
      }

      if (matched == 1) {
        # successfully match exactly 1 schema specified in oneOf
        self$actual_instance <- instance
        self$actual_type <- instance_type
      } else if (matched > 1) {
        # more than 1 match
        stop(paste("Multiple matches found when deserializing the input into BreedingsitesListMineError with oneOf schemas BreedingsitesListMineCreatedAtErrorComponent, BreedingsitesListMineLocationCountryIdErrorComponent, BreedingsitesListMineLocationNuts2ErrorComponent, BreedingsitesListMineLocationNuts3ErrorComponent, BreedingsitesListMineOrderByErrorComponent, BreedingsitesListMineReceivedAtErrorComponent, BreedingsitesListMineShortIdErrorComponent, BreedingsitesListMineUpdatedAtErrorComponent, BreedingsitesListMineUserUuidErrorComponent. Matched schemas: ",
                   paste(matched_schemas, collapse = ", ")))
      } else {
        # no match
        stop(paste("No match found when deserializing the input into BreedingsitesListMineError with oneOf schemas BreedingsitesListMineCreatedAtErrorComponent, BreedingsitesListMineLocationCountryIdErrorComponent, BreedingsitesListMineLocationNuts2ErrorComponent, BreedingsitesListMineLocationNuts3ErrorComponent, BreedingsitesListMineOrderByErrorComponent, BreedingsitesListMineReceivedAtErrorComponent, BreedingsitesListMineShortIdErrorComponent, BreedingsitesListMineUpdatedAtErrorComponent, BreedingsitesListMineUserUuidErrorComponent. Details: >>",
                   paste(error_messages, collapse = " >> ")))
      }

      self
    },

    #' @description
    #' Serialize BreedingsitesListMineError to JSON string.
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return JSON string representation of the BreedingsitesListMineError.
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
    #' Convert BreedingsitesListMineError to a base R type
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
    #' Validate the input JSON with respect to BreedingsitesListMineError and
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
#BreedingsitesListMineError$unlock()
#
## Below is an example to define the print function
#BreedingsitesListMineError$set("public", "print", function(...) {
#  print(jsonlite::prettify(self$toJSONString()))
#  invisible(self)
#})
## Uncomment below to lock the class to prevent modifications to the method or field
#BreedingsitesListMineError$lock()

