#' @docType class
#' @title BreedingsitesListError
#'
#' @description BreedingsitesListError Class
#'
#' @format An \code{R6Class} generator object
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
BreedingsitesListError <- R6::R6Class(
  "BreedingsitesListError",
  public = list(
    #' @field actual_instance the object stored in this instance.
    actual_instance = NULL,
    #' @field actual_type the type of the object stored in this instance.
    actual_type = NULL,
    #' @field one_of  a list of types defined in the oneOf schema.
    one_of = list("BreedingsitesListCreatedAtErrorComponent", "BreedingsitesListLocationAdmNuts2ErrorComponent", "BreedingsitesListLocationAdmNuts3ErrorComponent", "BreedingsitesListLocationCountryIdErrorComponent", "BreedingsitesListOrderByErrorComponent", "BreedingsitesListReceivedAtErrorComponent", "BreedingsitesListShortIdErrorComponent", "BreedingsitesListUpdatedAtErrorComponent", "BreedingsitesListUserUuidErrorComponent"),

    #' @description
    #' Initialize a new BreedingsitesListError.
    #'
    #' @param instance an instance of the object defined in the oneOf schemas: "BreedingsitesListCreatedAtErrorComponent", "BreedingsitesListLocationAdmNuts2ErrorComponent", "BreedingsitesListLocationAdmNuts3ErrorComponent", "BreedingsitesListLocationCountryIdErrorComponent", "BreedingsitesListOrderByErrorComponent", "BreedingsitesListReceivedAtErrorComponent", "BreedingsitesListShortIdErrorComponent", "BreedingsitesListUpdatedAtErrorComponent", "BreedingsitesListUserUuidErrorComponent"
    initialize = function(instance = NULL) {
      if (is.null(instance)) {
        # do nothing
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "BreedingsitesListCreatedAtErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "BreedingsitesListCreatedAtErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "BreedingsitesListLocationAdmNuts2ErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "BreedingsitesListLocationAdmNuts2ErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "BreedingsitesListLocationAdmNuts3ErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "BreedingsitesListLocationAdmNuts3ErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "BreedingsitesListLocationCountryIdErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "BreedingsitesListLocationCountryIdErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "BreedingsitesListOrderByErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "BreedingsitesListOrderByErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "BreedingsitesListReceivedAtErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "BreedingsitesListReceivedAtErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "BreedingsitesListShortIdErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "BreedingsitesListShortIdErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "BreedingsitesListUpdatedAtErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "BreedingsitesListUpdatedAtErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "BreedingsitesListUserUuidErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "BreedingsitesListUserUuidErrorComponent"
      } else {
        stop(paste("Failed to initialize BreedingsitesListError with oneOf schemas BreedingsitesListCreatedAtErrorComponent, BreedingsitesListLocationAdmNuts2ErrorComponent, BreedingsitesListLocationAdmNuts3ErrorComponent, BreedingsitesListLocationCountryIdErrorComponent, BreedingsitesListOrderByErrorComponent, BreedingsitesListReceivedAtErrorComponent, BreedingsitesListShortIdErrorComponent, BreedingsitesListUpdatedAtErrorComponent, BreedingsitesListUserUuidErrorComponent. Provided class name: ",
                   get(class(instance)[[1]], pos = -1)$classname))
      }
    },

    #' @description
    #' Deserialize JSON string into an instance of BreedingsitesListError.
    #' An alias to the method `fromJSON` .
    #'
    #' @param input The input JSON.
    #'
    #' @return An instance of BreedingsitesListError.
    fromJSONString = function(input) {
      self$fromJSON(input)
    },

    #' @description
    #' Deserialize JSON string into an instance of BreedingsitesListError.
    #'
    #' @param input The input JSON.
    #'
    #' @return An instance of BreedingsitesListError.
    fromJSON = function(input) {
      matched <- 0 # match counter
      matched_schemas <- list() #names of matched schemas
      error_messages <- list()
      instance <- NULL

      `BreedingsitesListShortIdErrorComponent_result` <- tryCatch({
          `BreedingsitesListShortIdErrorComponent`$public_methods$validateJSON(input)
          `BreedingsitesListShortIdErrorComponent_instance` <- `BreedingsitesListShortIdErrorComponent`$new()
          instance <- `BreedingsitesListShortIdErrorComponent_instance`$fromJSON(input)
          instance_type <- "BreedingsitesListShortIdErrorComponent"
          matched_schemas <- append(matched_schemas, "BreedingsitesListShortIdErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`BreedingsitesListShortIdErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `BreedingsitesListShortIdErrorComponent_result`["message"])
      }

      `BreedingsitesListCreatedAtErrorComponent_result` <- tryCatch({
          `BreedingsitesListCreatedAtErrorComponent`$public_methods$validateJSON(input)
          `BreedingsitesListCreatedAtErrorComponent_instance` <- `BreedingsitesListCreatedAtErrorComponent`$new()
          instance <- `BreedingsitesListCreatedAtErrorComponent_instance`$fromJSON(input)
          instance_type <- "BreedingsitesListCreatedAtErrorComponent"
          matched_schemas <- append(matched_schemas, "BreedingsitesListCreatedAtErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`BreedingsitesListCreatedAtErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `BreedingsitesListCreatedAtErrorComponent_result`["message"])
      }

      `BreedingsitesListReceivedAtErrorComponent_result` <- tryCatch({
          `BreedingsitesListReceivedAtErrorComponent`$public_methods$validateJSON(input)
          `BreedingsitesListReceivedAtErrorComponent_instance` <- `BreedingsitesListReceivedAtErrorComponent`$new()
          instance <- `BreedingsitesListReceivedAtErrorComponent_instance`$fromJSON(input)
          instance_type <- "BreedingsitesListReceivedAtErrorComponent"
          matched_schemas <- append(matched_schemas, "BreedingsitesListReceivedAtErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`BreedingsitesListReceivedAtErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `BreedingsitesListReceivedAtErrorComponent_result`["message"])
      }

      `BreedingsitesListUpdatedAtErrorComponent_result` <- tryCatch({
          `BreedingsitesListUpdatedAtErrorComponent`$public_methods$validateJSON(input)
          `BreedingsitesListUpdatedAtErrorComponent_instance` <- `BreedingsitesListUpdatedAtErrorComponent`$new()
          instance <- `BreedingsitesListUpdatedAtErrorComponent_instance`$fromJSON(input)
          instance_type <- "BreedingsitesListUpdatedAtErrorComponent"
          matched_schemas <- append(matched_schemas, "BreedingsitesListUpdatedAtErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`BreedingsitesListUpdatedAtErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `BreedingsitesListUpdatedAtErrorComponent_result`["message"])
      }

      `BreedingsitesListLocationCountryIdErrorComponent_result` <- tryCatch({
          `BreedingsitesListLocationCountryIdErrorComponent`$public_methods$validateJSON(input)
          `BreedingsitesListLocationCountryIdErrorComponent_instance` <- `BreedingsitesListLocationCountryIdErrorComponent`$new()
          instance <- `BreedingsitesListLocationCountryIdErrorComponent_instance`$fromJSON(input)
          instance_type <- "BreedingsitesListLocationCountryIdErrorComponent"
          matched_schemas <- append(matched_schemas, "BreedingsitesListLocationCountryIdErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`BreedingsitesListLocationCountryIdErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `BreedingsitesListLocationCountryIdErrorComponent_result`["message"])
      }

      `BreedingsitesListLocationAdmNuts3ErrorComponent_result` <- tryCatch({
          `BreedingsitesListLocationAdmNuts3ErrorComponent`$public_methods$validateJSON(input)
          `BreedingsitesListLocationAdmNuts3ErrorComponent_instance` <- `BreedingsitesListLocationAdmNuts3ErrorComponent`$new()
          instance <- `BreedingsitesListLocationAdmNuts3ErrorComponent_instance`$fromJSON(input)
          instance_type <- "BreedingsitesListLocationAdmNuts3ErrorComponent"
          matched_schemas <- append(matched_schemas, "BreedingsitesListLocationAdmNuts3ErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`BreedingsitesListLocationAdmNuts3ErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `BreedingsitesListLocationAdmNuts3ErrorComponent_result`["message"])
      }

      `BreedingsitesListLocationAdmNuts2ErrorComponent_result` <- tryCatch({
          `BreedingsitesListLocationAdmNuts2ErrorComponent`$public_methods$validateJSON(input)
          `BreedingsitesListLocationAdmNuts2ErrorComponent_instance` <- `BreedingsitesListLocationAdmNuts2ErrorComponent`$new()
          instance <- `BreedingsitesListLocationAdmNuts2ErrorComponent_instance`$fromJSON(input)
          instance_type <- "BreedingsitesListLocationAdmNuts2ErrorComponent"
          matched_schemas <- append(matched_schemas, "BreedingsitesListLocationAdmNuts2ErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`BreedingsitesListLocationAdmNuts2ErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `BreedingsitesListLocationAdmNuts2ErrorComponent_result`["message"])
      }

      `BreedingsitesListUserUuidErrorComponent_result` <- tryCatch({
          `BreedingsitesListUserUuidErrorComponent`$public_methods$validateJSON(input)
          `BreedingsitesListUserUuidErrorComponent_instance` <- `BreedingsitesListUserUuidErrorComponent`$new()
          instance <- `BreedingsitesListUserUuidErrorComponent_instance`$fromJSON(input)
          instance_type <- "BreedingsitesListUserUuidErrorComponent"
          matched_schemas <- append(matched_schemas, "BreedingsitesListUserUuidErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`BreedingsitesListUserUuidErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `BreedingsitesListUserUuidErrorComponent_result`["message"])
      }

      `BreedingsitesListOrderByErrorComponent_result` <- tryCatch({
          `BreedingsitesListOrderByErrorComponent`$public_methods$validateJSON(input)
          `BreedingsitesListOrderByErrorComponent_instance` <- `BreedingsitesListOrderByErrorComponent`$new()
          instance <- `BreedingsitesListOrderByErrorComponent_instance`$fromJSON(input)
          instance_type <- "BreedingsitesListOrderByErrorComponent"
          matched_schemas <- append(matched_schemas, "BreedingsitesListOrderByErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`BreedingsitesListOrderByErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `BreedingsitesListOrderByErrorComponent_result`["message"])
      }

      if (matched == 1) {
        # successfully match exactly 1 schema specified in oneOf
        self$actual_instance <- instance
        self$actual_type <- instance_type
      } else if (matched > 1) {
        # more than 1 match
        stop(paste("Multiple matches found when deserializing the input into BreedingsitesListError with oneOf schemas BreedingsitesListCreatedAtErrorComponent, BreedingsitesListLocationAdmNuts2ErrorComponent, BreedingsitesListLocationAdmNuts3ErrorComponent, BreedingsitesListLocationCountryIdErrorComponent, BreedingsitesListOrderByErrorComponent, BreedingsitesListReceivedAtErrorComponent, BreedingsitesListShortIdErrorComponent, BreedingsitesListUpdatedAtErrorComponent, BreedingsitesListUserUuidErrorComponent. Matched schemas: ",
                   paste(matched_schemas, collapse = ", ")))
      } else {
        # no match
        stop(paste("No match found when deserializing the input into BreedingsitesListError with oneOf schemas BreedingsitesListCreatedAtErrorComponent, BreedingsitesListLocationAdmNuts2ErrorComponent, BreedingsitesListLocationAdmNuts3ErrorComponent, BreedingsitesListLocationCountryIdErrorComponent, BreedingsitesListOrderByErrorComponent, BreedingsitesListReceivedAtErrorComponent, BreedingsitesListShortIdErrorComponent, BreedingsitesListUpdatedAtErrorComponent, BreedingsitesListUserUuidErrorComponent. Details: >>",
                   paste(error_messages, collapse = " >> ")))
      }

      self
    },

    #' @description
    #' Serialize BreedingsitesListError to JSON string.
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return JSON string representation of the BreedingsitesListError.
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
    #' Convert BreedingsitesListError to a base R type
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
    #' Validate the input JSON with respect to BreedingsitesListError and
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
#BreedingsitesListError$unlock()
#
## Below is an example to define the print function
#BreedingsitesListError$set("public", "print", function(...) {
#  print(jsonlite::prettify(self$toJSONString()))
#  invisible(self)
#})
## Uncomment below to lock the class to prevent modifications to the method or field
#BreedingsitesListError$lock()

