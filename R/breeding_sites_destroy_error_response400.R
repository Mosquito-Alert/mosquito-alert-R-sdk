#' @docType class
#' @title BreedingSitesDestroyErrorResponse400
#'
#' @description BreedingSitesDestroyErrorResponse400 Class
#'
#' @format An \code{R6Class} generator object
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
BreedingSitesDestroyErrorResponse400 <- R6::R6Class(
  "BreedingSitesDestroyErrorResponse400",
  public = list(
    #' @field actual_instance the object stored in this instance.
    actual_instance = NULL,
    #' @field actual_type the type of the object stored in this instance.
    actual_type = NULL,
    #' @field one_of  a list of types defined in the oneOf schema.
    one_of = list("ParseErrorResponse"),

    #' @description
    #' Initialize a new BreedingSitesDestroyErrorResponse400.
    #'
    #' @param instance an instance of the object defined in the oneOf schemas: "ParseErrorResponse"
    initialize = function(instance = NULL) {
      if (is.null(instance)) {
        # do nothing
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "ParseErrorResponse") {
        self$actual_instance <- instance
        self$actual_type <- "ParseErrorResponse"
      } else {
        stop(paste("Failed to initialize BreedingSitesDestroyErrorResponse400 with oneOf schemas ParseErrorResponse. Provided class name: ",
                   get(class(instance)[[1]], pos = -1)$classname))
      }
    },

    #' @description
    #' Deserialize JSON string into an instance of BreedingSitesDestroyErrorResponse400.
    #' An alias to the method `fromJSON` .
    #'
    #' @param input The input JSON.
    #'
    #' @return An instance of BreedingSitesDestroyErrorResponse400.
    fromJSONString = function(input) {
      self$fromJSON(input)
    },

    #' @description
    #' Deserialize JSON string into an instance of BreedingSitesDestroyErrorResponse400.
    #'
    #' @param input The input JSON.
    #'
    #' @return An instance of BreedingSitesDestroyErrorResponse400.
    fromJSON = function(input) {
      matched <- 0 # match counter
      matched_schemas <- list() #names of matched schemas
      error_messages <- list()
      instance <- NULL

      `ParseErrorResponse_result` <- tryCatch({
          `ParseErrorResponse`$public_methods$validateJSON(input)
          `ParseErrorResponse_instance` <- `ParseErrorResponse`$new()
          instance <- `ParseErrorResponse_instance`$fromJSON(input)
          instance_type <- "ParseErrorResponse"
          matched_schemas <- append(matched_schemas, "ParseErrorResponse")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`ParseErrorResponse_result`["error"])) {
        error_messages <- append(error_messages, `ParseErrorResponse_result`["message"])
      }

      if (matched == 1) {
        # successfully match exactly 1 schema specified in oneOf
        self$actual_instance <- instance
        self$actual_type <- instance_type
      } else if (matched > 1) {
        # more than 1 match
        stop(paste("Multiple matches found when deserializing the input into BreedingSitesDestroyErrorResponse400 with oneOf schemas ParseErrorResponse. Matched schemas: ",
                   paste(matched_schemas, collapse = ", ")))
      } else {
        # no match
        stop(paste("No match found when deserializing the input into BreedingSitesDestroyErrorResponse400 with oneOf schemas ParseErrorResponse. Details: >>",
                   paste(error_messages, collapse = " >> ")))
      }

      self
    },

    #' @description
    #' Serialize BreedingSitesDestroyErrorResponse400 to JSON string.
    #'
    #' @return JSON string representation of the BreedingSitesDestroyErrorResponse400.
    toJSONString = function() {
      if (!is.null(self$actual_instance)) {
        as.character(jsonlite::minify(self$actual_instance$toJSONString()))
      } else {
        NULL
      }
    },

    #' @description
    #' Serialize BreedingSitesDestroyErrorResponse400 to JSON.
    #'
    #' @return JSON representation of the BreedingSitesDestroyErrorResponse400.
    toJSON = function() {
      if (!is.null(self$actual_instance)) {
        self$actual_instance$toJSON()
      } else {
        NULL
      }
    },

    #' @description
    #' Validate the input JSON with respect to BreedingSitesDestroyErrorResponse400 and
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
#BreedingSitesDestroyErrorResponse400$unlock()
#
## Below is an example to define the print function
#BreedingSitesDestroyErrorResponse400$set("public", "print", function(...) {
#  print(jsonlite::prettify(self$toJSONString()))
#  invisible(self)
#})
## Uncomment below to lock the class to prevent modifications to the method or field
#BreedingSitesDestroyErrorResponse400$lock()

