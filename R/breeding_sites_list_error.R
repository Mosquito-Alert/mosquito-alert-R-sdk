#' @docType class
#' @title BreedingSitesListError
#'
#' @description BreedingSitesListError Class
#'
#' @format An \code{R6Class} generator object
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
BreedingSitesListError <- R6::R6Class(
  "BreedingSitesListError",
  public = list(
    #' @field actual_instance the object stored in this instance.
    actual_instance = NULL,
    #' @field actual_type the type of the object stored in this instance.
    actual_type = NULL,
    #' @field one_of  a list of types defined in the oneOf schema.
    one_of = list("BreedingSitesListCreatedAtErrorComponent", "BreedingSitesListLocationCountryIdErrorComponent", "BreedingSitesListLocationNuts2ErrorComponent", "BreedingSitesListLocationNuts3ErrorComponent", "BreedingSitesListOrderByErrorComponent", "BreedingSitesListReceivedAtErrorComponent", "BreedingSitesListShortIdErrorComponent", "BreedingSitesListUpdatedAtErrorComponent", "BreedingSitesListUserUuidErrorComponent"),

    #' @description
    #' Initialize a new BreedingSitesListError.
    #'
    #' @param instance an instance of the object defined in the oneOf schemas: "BreedingSitesListCreatedAtErrorComponent", "BreedingSitesListLocationCountryIdErrorComponent", "BreedingSitesListLocationNuts2ErrorComponent", "BreedingSitesListLocationNuts3ErrorComponent", "BreedingSitesListOrderByErrorComponent", "BreedingSitesListReceivedAtErrorComponent", "BreedingSitesListShortIdErrorComponent", "BreedingSitesListUpdatedAtErrorComponent", "BreedingSitesListUserUuidErrorComponent"
    initialize = function(instance = NULL) {
      if (is.null(instance)) {
        # do nothing
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "BreedingSitesListCreatedAtErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "BreedingSitesListCreatedAtErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "BreedingSitesListLocationCountryIdErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "BreedingSitesListLocationCountryIdErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "BreedingSitesListLocationNuts2ErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "BreedingSitesListLocationNuts2ErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "BreedingSitesListLocationNuts3ErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "BreedingSitesListLocationNuts3ErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "BreedingSitesListOrderByErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "BreedingSitesListOrderByErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "BreedingSitesListReceivedAtErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "BreedingSitesListReceivedAtErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "BreedingSitesListShortIdErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "BreedingSitesListShortIdErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "BreedingSitesListUpdatedAtErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "BreedingSitesListUpdatedAtErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "BreedingSitesListUserUuidErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "BreedingSitesListUserUuidErrorComponent"
      } else {
        stop(paste("Failed to initialize BreedingSitesListError with oneOf schemas BreedingSitesListCreatedAtErrorComponent, BreedingSitesListLocationCountryIdErrorComponent, BreedingSitesListLocationNuts2ErrorComponent, BreedingSitesListLocationNuts3ErrorComponent, BreedingSitesListOrderByErrorComponent, BreedingSitesListReceivedAtErrorComponent, BreedingSitesListShortIdErrorComponent, BreedingSitesListUpdatedAtErrorComponent, BreedingSitesListUserUuidErrorComponent. Provided class name: ",
                   get(class(instance)[[1]], pos = -1)$classname))
      }
    },

    #' @description
    #' Deserialize JSON string into an instance of BreedingSitesListError.
    #' An alias to the method `fromJSON` .
    #'
    #' @param input The input JSON.
    #'
    #' @return An instance of BreedingSitesListError.
    fromJSONString = function(input) {
      self$fromJSON(input)
    },

    #' @description
    #' Deserialize JSON string into an instance of BreedingSitesListError.
    #'
    #' @param input The input JSON.
    #'
    #' @return An instance of BreedingSitesListError.
    fromJSON = function(input) {
      matched <- 0 # match counter
      matched_schemas <- list() #names of matched schemas
      error_messages <- list()
      instance <- NULL

      `BreedingSitesListShortIdErrorComponent_result` <- tryCatch({
          `BreedingSitesListShortIdErrorComponent`$public_methods$validateJSON(input)
          `BreedingSitesListShortIdErrorComponent_instance` <- `BreedingSitesListShortIdErrorComponent`$new()
          instance <- `BreedingSitesListShortIdErrorComponent_instance`$fromJSON(input)
          instance_type <- "BreedingSitesListShortIdErrorComponent"
          matched_schemas <- append(matched_schemas, "BreedingSitesListShortIdErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`BreedingSitesListShortIdErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `BreedingSitesListShortIdErrorComponent_result`["message"])
      }

      `BreedingSitesListCreatedAtErrorComponent_result` <- tryCatch({
          `BreedingSitesListCreatedAtErrorComponent`$public_methods$validateJSON(input)
          `BreedingSitesListCreatedAtErrorComponent_instance` <- `BreedingSitesListCreatedAtErrorComponent`$new()
          instance <- `BreedingSitesListCreatedAtErrorComponent_instance`$fromJSON(input)
          instance_type <- "BreedingSitesListCreatedAtErrorComponent"
          matched_schemas <- append(matched_schemas, "BreedingSitesListCreatedAtErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`BreedingSitesListCreatedAtErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `BreedingSitesListCreatedAtErrorComponent_result`["message"])
      }

      `BreedingSitesListReceivedAtErrorComponent_result` <- tryCatch({
          `BreedingSitesListReceivedAtErrorComponent`$public_methods$validateJSON(input)
          `BreedingSitesListReceivedAtErrorComponent_instance` <- `BreedingSitesListReceivedAtErrorComponent`$new()
          instance <- `BreedingSitesListReceivedAtErrorComponent_instance`$fromJSON(input)
          instance_type <- "BreedingSitesListReceivedAtErrorComponent"
          matched_schemas <- append(matched_schemas, "BreedingSitesListReceivedAtErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`BreedingSitesListReceivedAtErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `BreedingSitesListReceivedAtErrorComponent_result`["message"])
      }

      `BreedingSitesListUpdatedAtErrorComponent_result` <- tryCatch({
          `BreedingSitesListUpdatedAtErrorComponent`$public_methods$validateJSON(input)
          `BreedingSitesListUpdatedAtErrorComponent_instance` <- `BreedingSitesListUpdatedAtErrorComponent`$new()
          instance <- `BreedingSitesListUpdatedAtErrorComponent_instance`$fromJSON(input)
          instance_type <- "BreedingSitesListUpdatedAtErrorComponent"
          matched_schemas <- append(matched_schemas, "BreedingSitesListUpdatedAtErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`BreedingSitesListUpdatedAtErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `BreedingSitesListUpdatedAtErrorComponent_result`["message"])
      }

      `BreedingSitesListLocationCountryIdErrorComponent_result` <- tryCatch({
          `BreedingSitesListLocationCountryIdErrorComponent`$public_methods$validateJSON(input)
          `BreedingSitesListLocationCountryIdErrorComponent_instance` <- `BreedingSitesListLocationCountryIdErrorComponent`$new()
          instance <- `BreedingSitesListLocationCountryIdErrorComponent_instance`$fromJSON(input)
          instance_type <- "BreedingSitesListLocationCountryIdErrorComponent"
          matched_schemas <- append(matched_schemas, "BreedingSitesListLocationCountryIdErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`BreedingSitesListLocationCountryIdErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `BreedingSitesListLocationCountryIdErrorComponent_result`["message"])
      }

      `BreedingSitesListLocationNuts3ErrorComponent_result` <- tryCatch({
          `BreedingSitesListLocationNuts3ErrorComponent`$public_methods$validateJSON(input)
          `BreedingSitesListLocationNuts3ErrorComponent_instance` <- `BreedingSitesListLocationNuts3ErrorComponent`$new()
          instance <- `BreedingSitesListLocationNuts3ErrorComponent_instance`$fromJSON(input)
          instance_type <- "BreedingSitesListLocationNuts3ErrorComponent"
          matched_schemas <- append(matched_schemas, "BreedingSitesListLocationNuts3ErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`BreedingSitesListLocationNuts3ErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `BreedingSitesListLocationNuts3ErrorComponent_result`["message"])
      }

      `BreedingSitesListLocationNuts2ErrorComponent_result` <- tryCatch({
          `BreedingSitesListLocationNuts2ErrorComponent`$public_methods$validateJSON(input)
          `BreedingSitesListLocationNuts2ErrorComponent_instance` <- `BreedingSitesListLocationNuts2ErrorComponent`$new()
          instance <- `BreedingSitesListLocationNuts2ErrorComponent_instance`$fromJSON(input)
          instance_type <- "BreedingSitesListLocationNuts2ErrorComponent"
          matched_schemas <- append(matched_schemas, "BreedingSitesListLocationNuts2ErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`BreedingSitesListLocationNuts2ErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `BreedingSitesListLocationNuts2ErrorComponent_result`["message"])
      }

      `BreedingSitesListUserUuidErrorComponent_result` <- tryCatch({
          `BreedingSitesListUserUuidErrorComponent`$public_methods$validateJSON(input)
          `BreedingSitesListUserUuidErrorComponent_instance` <- `BreedingSitesListUserUuidErrorComponent`$new()
          instance <- `BreedingSitesListUserUuidErrorComponent_instance`$fromJSON(input)
          instance_type <- "BreedingSitesListUserUuidErrorComponent"
          matched_schemas <- append(matched_schemas, "BreedingSitesListUserUuidErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`BreedingSitesListUserUuidErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `BreedingSitesListUserUuidErrorComponent_result`["message"])
      }

      `BreedingSitesListOrderByErrorComponent_result` <- tryCatch({
          `BreedingSitesListOrderByErrorComponent`$public_methods$validateJSON(input)
          `BreedingSitesListOrderByErrorComponent_instance` <- `BreedingSitesListOrderByErrorComponent`$new()
          instance <- `BreedingSitesListOrderByErrorComponent_instance`$fromJSON(input)
          instance_type <- "BreedingSitesListOrderByErrorComponent"
          matched_schemas <- append(matched_schemas, "BreedingSitesListOrderByErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`BreedingSitesListOrderByErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `BreedingSitesListOrderByErrorComponent_result`["message"])
      }

      if (matched == 1) {
        # successfully match exactly 1 schema specified in oneOf
        self$actual_instance <- instance
        self$actual_type <- instance_type
      } else if (matched > 1) {
        # more than 1 match
        stop(paste("Multiple matches found when deserializing the input into BreedingSitesListError with oneOf schemas BreedingSitesListCreatedAtErrorComponent, BreedingSitesListLocationCountryIdErrorComponent, BreedingSitesListLocationNuts2ErrorComponent, BreedingSitesListLocationNuts3ErrorComponent, BreedingSitesListOrderByErrorComponent, BreedingSitesListReceivedAtErrorComponent, BreedingSitesListShortIdErrorComponent, BreedingSitesListUpdatedAtErrorComponent, BreedingSitesListUserUuidErrorComponent. Matched schemas: ",
                   paste(matched_schemas, collapse = ", ")))
      } else {
        # no match
        stop(paste("No match found when deserializing the input into BreedingSitesListError with oneOf schemas BreedingSitesListCreatedAtErrorComponent, BreedingSitesListLocationCountryIdErrorComponent, BreedingSitesListLocationNuts2ErrorComponent, BreedingSitesListLocationNuts3ErrorComponent, BreedingSitesListOrderByErrorComponent, BreedingSitesListReceivedAtErrorComponent, BreedingSitesListShortIdErrorComponent, BreedingSitesListUpdatedAtErrorComponent, BreedingSitesListUserUuidErrorComponent. Details: >>",
                   paste(error_messages, collapse = " >> ")))
      }

      self
    },

    #' @description
    #' Serialize BreedingSitesListError to JSON string.
    #'
    #' @return JSON string representation of the BreedingSitesListError.
    toJSONString = function() {
      if (!is.null(self$actual_instance)) {
        as.character(jsonlite::minify(self$actual_instance$toJSONString()))
      } else {
        NULL
      }
    },

    #' @description
    #' Serialize BreedingSitesListError to JSON.
    #'
    #' @return JSON representation of the BreedingSitesListError.
    toJSON = function() {
      if (!is.null(self$actual_instance)) {
        self$actual_instance$toJSON()
      } else {
        NULL
      }
    },

    #' @description
    #' Validate the input JSON with respect to BreedingSitesListError and
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
#BreedingSitesListError$unlock()
#
## Below is an example to define the print function
#BreedingSitesListError$set("public", "print", function(...) {
#  print(jsonlite::prettify(self$toJSONString()))
#  invisible(self)
#})
## Uncomment below to lock the class to prevent modifications to the method or field
#BreedingSitesListError$lock()

