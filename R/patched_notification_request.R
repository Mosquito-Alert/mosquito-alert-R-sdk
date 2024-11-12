#' Create a new PatchedNotificationRequest
#'
#' @description
#' PatchedNotificationRequest Class
#'
#' @docType class
#' @title PatchedNotificationRequest
#' @description PatchedNotificationRequest Class
#' @format An \code{R6Class} generator object
#' @field seen  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PatchedNotificationRequest <- R6::R6Class(
  "PatchedNotificationRequest",
  public = list(
    `seen` = NULL,

    #' @description
    #' Initialize a new PatchedNotificationRequest class.
    #'
    #' @param seen seen
    #' @param ... Other optional arguments.
    initialize = function(`seen` = NULL, ...) {
      if (!is.null(`seen`)) {
        if (!(is.logical(`seen`) && length(`seen`) == 1)) {
          stop(paste("Error! Invalid data for `seen`. Must be a boolean:", `seen`))
        }
        self$`seen` <- `seen`
      }
    },

    #' @description
    #' To JSON String
    #'
    #' @return PatchedNotificationRequest in JSON format
    toJSON = function() {
      PatchedNotificationRequestObject <- list()
      if (!is.null(self$`seen`)) {
        PatchedNotificationRequestObject[["seen"]] <-
          self$`seen`
      }
      PatchedNotificationRequestObject
    },

    #' @description
    #' Deserialize JSON string into an instance of PatchedNotificationRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of PatchedNotificationRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`seen`)) {
        self$`seen` <- this_object$`seen`
      }
      self
    },

    #' @description
    #' To JSON String
    #'
    #' @return PatchedNotificationRequest in JSON format
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`seen`)) {
          sprintf(
          '"seen":
            %s
                    ',
          tolower(self$`seen`)
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },

    #' @description
    #' Deserialize JSON string into an instance of PatchedNotificationRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of PatchedNotificationRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`seen` <- this_object$`seen`
      self
    },

    #' @description
    #' Validate JSON input with respect to PatchedNotificationRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of PatchedNotificationRequest
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      TRUE
    },

    #' @description
    #' Return a list of invalid fields (if any).
    #'
    #' @return A list of invalid fields (if any).
    getInvalidFields = function() {
      invalid_fields <- list()
      invalid_fields
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
# PatchedNotificationRequest$unlock()
#
## Below is an example to define the print function
# PatchedNotificationRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PatchedNotificationRequest$lock()

