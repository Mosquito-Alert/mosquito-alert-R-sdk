#' Create a new NotificationRequest
#'
#' @description
#' NotificationRequest Class
#'
#' @docType class
#' @title NotificationRequest
#' @description NotificationRequest Class
#' @format An \code{R6Class} generator object
#' @field is_read  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
NotificationRequest <- R6::R6Class(
  "NotificationRequest",
  public = list(
    `is_read` = NULL,

    #' @description
    #' Initialize a new NotificationRequest class.
    #'
    #' @param is_read is_read
    #' @param ... Other optional arguments.
    initialize = function(`is_read`, ...) {
      if (!missing(`is_read`)) {
        if (!(is.logical(`is_read`) && length(`is_read`) == 1)) {
          stop(paste("Error! Invalid data for `is_read`. Must be a boolean:", `is_read`))
        }
        self$`is_read` <- `is_read`
      }
    },

    #' @description
    #' To JSON String
    #'
    #' @return NotificationRequest in JSON format
    toJSON = function() {
      NotificationRequestObject <- list()
      if (!is.null(self$`is_read`)) {
        NotificationRequestObject[["is_read"]] <-
          self$`is_read`
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
      if (!is.null(this_object$`is_read`)) {
        self$`is_read` <- this_object$`is_read`
      }
      self
    },

    #' @description
    #' To JSON String
    #'
    #' @return NotificationRequest in JSON format
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`is_read`)) {
          sprintf(
          '"is_read":
            %s
                    ',
          tolower(self$`is_read`)
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
      self$`is_read` <- this_object$`is_read`
      self
    },

    #' @description
    #' Validate JSON input with respect to NotificationRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `is_read`
      if (!is.null(input_json$`is_read`)) {
        if (!(is.logical(input_json$`is_read`) && length(input_json$`is_read`) == 1)) {
          stop(paste("Error! Invalid data for `is_read`. Must be a boolean:", input_json$`is_read`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for NotificationRequest: the required field `is_read` is missing."))
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
      # check if the required `is_read` is null
      if (is.null(self$`is_read`)) {
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
      # check if the required `is_read` is null
      if (is.null(self$`is_read`)) {
        invalid_fields["is_read"] <- "Non-nullable required field `is_read` cannot be null."
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

