#' Create a new NotificationRequest
#'
#' @description
#' NotificationRequest Class
#'
#' @docType class
#' @title NotificationRequest
#' @description NotificationRequest Class
#' @format An \code{R6Class} generator object
#' @field seen  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
NotificationRequest <- R6::R6Class(
  "NotificationRequest",
  public = list(
    `seen` = NULL,

    #' @description
    #' Initialize a new NotificationRequest class.
    #'
    #' @param seen seen
    #' @param ... Other optional arguments.
    initialize = function(`seen`, ...) {
      if (!missing(`seen`)) {
        if (!(is.logical(`seen`) && length(`seen`) == 1)) {
          stop(paste("Error! Invalid data for `seen`. Must be a boolean:", `seen`))
        }
        self$`seen` <- `seen`
      }
    },

    #' @description
    #' To JSON String
    #'
    #' @return NotificationRequest in JSON format
    toJSON = function() {
      NotificationRequestObject <- list()
      if (!is.null(self$`seen`)) {
        NotificationRequestObject[["seen"]] <-
          self$`seen`
      }
      NotificationRequestObject
    },

    #' @description
    #' Deserialize JSON string into an instance of NotificationRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of NotificationRequest
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
    #' @return NotificationRequest in JSON format
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
    #' Deserialize JSON string into an instance of NotificationRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of NotificationRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`seen` <- this_object$`seen`
      self
    },

    #' @description
    #' Validate JSON input with respect to NotificationRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `seen`
      if (!is.null(input_json$`seen`)) {
        if (!(is.logical(input_json$`seen`) && length(input_json$`seen`) == 1)) {
          stop(paste("Error! Invalid data for `seen`. Must be a boolean:", input_json$`seen`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for NotificationRequest: the required field `seen` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of NotificationRequest
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `seen` is null
      if (is.null(self$`seen`)) {
        return(FALSE)
      }

      TRUE
    },

    #' @description
    #' Return a list of invalid fields (if any).
    #'
    #' @return A list of invalid fields (if any).
    getInvalidFields = function() {
      invalid_fields <- list()
      # check if the required `seen` is null
      if (is.null(self$`seen`)) {
        invalid_fields["seen"] <- "Non-nullable required field `seen` cannot be null."
      }

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
# NotificationRequest$unlock()
#
## Below is an example to define the print function
# NotificationRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# NotificationRequest$lock()

