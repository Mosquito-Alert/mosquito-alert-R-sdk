#' Create a new PatchedUserRequest
#'
#' @description
#' PatchedUserRequest Class
#'
#' @docType class
#' @title PatchedUserRequest
#' @description PatchedUserRequest Class
#' @format An \code{R6Class} generator object
#' @field device_token Device token, used in messaging. Must be supplied by the client character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PatchedUserRequest <- R6::R6Class(
  "PatchedUserRequest",
  public = list(
    `device_token` = NULL,

    #' @description
    #' Initialize a new PatchedUserRequest class.
    #'
    #' @param device_token Device token, used in messaging. Must be supplied by the client
    #' @param ... Other optional arguments.
    initialize = function(`device_token` = NULL, ...) {
      if (!is.null(`device_token`)) {
        if (!(is.character(`device_token`) && length(`device_token`) == 1)) {
          stop(paste("Error! Invalid data for `device_token`. Must be a string:", `device_token`))
        }
        self$`device_token` <- `device_token`
      }
    },

    #' @description
    #' To JSON String
    #'
    #' @return PatchedUserRequest in JSON format
    toJSON = function() {
      PatchedUserRequestObject <- list()
      if (!is.null(self$`device_token`)) {
        PatchedUserRequestObject[["device_token"]] <-
          self$`device_token`
      }
      PatchedUserRequestObject
    },

    #' @description
    #' Deserialize JSON string into an instance of PatchedUserRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of PatchedUserRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`device_token`)) {
        self$`device_token` <- this_object$`device_token`
      }
      self
    },

    #' @description
    #' To JSON String
    #'
    #' @return PatchedUserRequest in JSON format
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`device_token`)) {
          sprintf(
          '"device_token":
            "%s"
                    ',
          self$`device_token`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },

    #' @description
    #' Deserialize JSON string into an instance of PatchedUserRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of PatchedUserRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`device_token` <- this_object$`device_token`
      self
    },

    #' @description
    #' Validate JSON input with respect to PatchedUserRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of PatchedUserRequest
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
# PatchedUserRequest$unlock()
#
## Below is an example to define the print function
# PatchedUserRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PatchedUserRequest$lock()

