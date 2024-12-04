#' @docType class
#' @title CampaignsListError
#'
#' @description CampaignsListError Class
#'
#' @format An \code{R6Class} generator object
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CampaignsListError <- R6::R6Class(
  "CampaignsListError",
  public = list(
    #' @field actual_instance the object stored in this instance.
    actual_instance = NULL,
    #' @field actual_type the type of the object stored in this instance.
    actual_type = NULL,
    #' @field one_of  a list of types defined in the oneOf schema.
    one_of = list("CampaignsListCountryIdErrorComponent", "CampaignsListOrderByErrorComponent"),

    #' @description
    #' Initialize a new CampaignsListError.
    #'
    #' @param instance an instance of the object defined in the oneOf schemas: "CampaignsListCountryIdErrorComponent", "CampaignsListOrderByErrorComponent"
    initialize = function(instance = NULL) {
      if (is.null(instance)) {
        # do nothing
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "CampaignsListCountryIdErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "CampaignsListCountryIdErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "CampaignsListOrderByErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "CampaignsListOrderByErrorComponent"
      } else {
        stop(paste("Failed to initialize CampaignsListError with oneOf schemas CampaignsListCountryIdErrorComponent, CampaignsListOrderByErrorComponent. Provided class name: ",
                   get(class(instance)[[1]], pos = -1)$classname))
      }
    },

    #' @description
    #' Deserialize JSON string into an instance of CampaignsListError.
    #' An alias to the method `fromJSON` .
    #'
    #' @param input The input JSON.
    #'
    #' @return An instance of CampaignsListError.
    fromJSONString = function(input) {
      self$fromJSON(input)
    },

    #' @description
    #' Deserialize JSON string into an instance of CampaignsListError.
    #'
    #' @param input The input JSON.
    #'
    #' @return An instance of CampaignsListError.
    fromJSON = function(input) {
      matched <- 0 # match counter
      matched_schemas <- list() #names of matched schemas
      error_messages <- list()
      instance <- NULL

      `CampaignsListCountryIdErrorComponent_result` <- tryCatch({
          `CampaignsListCountryIdErrorComponent`$public_methods$validateJSON(input)
          `CampaignsListCountryIdErrorComponent_instance` <- `CampaignsListCountryIdErrorComponent`$new()
          instance <- `CampaignsListCountryIdErrorComponent_instance`$fromJSON(input)
          instance_type <- "CampaignsListCountryIdErrorComponent"
          matched_schemas <- append(matched_schemas, "CampaignsListCountryIdErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`CampaignsListCountryIdErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `CampaignsListCountryIdErrorComponent_result`["message"])
      }

      `CampaignsListOrderByErrorComponent_result` <- tryCatch({
          `CampaignsListOrderByErrorComponent`$public_methods$validateJSON(input)
          `CampaignsListOrderByErrorComponent_instance` <- `CampaignsListOrderByErrorComponent`$new()
          instance <- `CampaignsListOrderByErrorComponent_instance`$fromJSON(input)
          instance_type <- "CampaignsListOrderByErrorComponent"
          matched_schemas <- append(matched_schemas, "CampaignsListOrderByErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`CampaignsListOrderByErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `CampaignsListOrderByErrorComponent_result`["message"])
      }

      if (matched == 1) {
        # successfully match exactly 1 schema specified in oneOf
        self$actual_instance <- instance
        self$actual_type <- instance_type
      } else if (matched > 1) {
        # more than 1 match
        stop(paste("Multiple matches found when deserializing the input into CampaignsListError with oneOf schemas CampaignsListCountryIdErrorComponent, CampaignsListOrderByErrorComponent. Matched schemas: ",
                   paste(matched_schemas, collapse = ", ")))
      } else {
        # no match
        stop(paste("No match found when deserializing the input into CampaignsListError with oneOf schemas CampaignsListCountryIdErrorComponent, CampaignsListOrderByErrorComponent. Details: >>",
                   paste(error_messages, collapse = " >> ")))
      }

      self
    },

    #' @description
    #' Serialize CampaignsListError to JSON string.
    #'
    #' @return JSON string representation of the CampaignsListError.
    toJSONString = function() {
      if (!is.null(self$actual_instance)) {
        as.character(jsonlite::minify(self$actual_instance$toJSONString()))
      } else {
        NULL
      }
    },

    #' @description
    #' Serialize CampaignsListError to JSON.
    #'
    #' @return JSON representation of the CampaignsListError.
    toJSON = function() {
      if (!is.null(self$actual_instance)) {
        self$actual_instance$toJSON()
      } else {
        NULL
      }
    },

    #' @description
    #' Validate the input JSON with respect to CampaignsListError and
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
#CampaignsListError$unlock()
#
## Below is an example to define the print function
#CampaignsListError$set("public", "print", function(...) {
#  print(jsonlite::prettify(self$toJSONString()))
#  invisible(self)
#})
## Uncomment below to lock the class to prevent modifications to the method or field
#CampaignsListError$lock()

