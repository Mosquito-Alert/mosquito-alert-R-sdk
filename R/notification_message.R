#' Create a new NotificationMessage
#'
#' @description
#' NotificationMessage Class
#'
#' @docType class
#' @title NotificationMessage
#' @description NotificationMessage Class
#' @format An \code{R6Class} generator object
#' @field title  character
#' @field body  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
NotificationMessage <- R6::R6Class(
  "NotificationMessage",
  public = list(
    `title` = NULL,
    `body` = NULL,

    #' @description
    #' Initialize a new NotificationMessage class.
    #'
    #' @param title title
    #' @param body body
    #' @param ... Other optional arguments.
    initialize = function(`title`, `body`, ...) {
      if (!missing(`title`)) {
        if (!(is.character(`title`) && length(`title`) == 1)) {
          stop(paste("Error! Invalid data for `title`. Must be a string:", `title`))
        }
        self$`title` <- `title`
      }
      if (!missing(`body`)) {
        if (!(is.character(`body`) && length(`body`) == 1)) {
          stop(paste("Error! Invalid data for `body`. Must be a string:", `body`))
        }
        self$`body` <- `body`
      }
    },

    #' @description
    #' To JSON String
    #'
    #' @return NotificationMessage in JSON format
    toJSON = function() {
      NotificationMessageObject <- list()
      if (!is.null(self$`title`)) {
        NotificationMessageObject[["title"]] <-
          self$`title`
      }
      if (!is.null(self$`body`)) {
        NotificationMessageObject[["body"]] <-
          self$`body`
      }
      NotificationMessageObject
    },

    #' @description
    #' Deserialize JSON string into an instance of NotificationMessage
    #'
    #' @param input_json the JSON input
    #' @return the instance of NotificationMessage
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`title`)) {
        self$`title` <- this_object$`title`
      }
      if (!is.null(this_object$`body`)) {
        self$`body` <- this_object$`body`
      }
      self
    },

    #' @description
    #' To JSON String
    #'
    #' @return NotificationMessage in JSON format
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`title`)) {
          sprintf(
          '"title":
            "%s"
                    ',
          self$`title`
          )
        },
        if (!is.null(self$`body`)) {
          sprintf(
          '"body":
            "%s"
                    ',
          self$`body`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },

    #' @description
    #' Deserialize JSON string into an instance of NotificationMessage
    #'
    #' @param input_json the JSON input
    #' @return the instance of NotificationMessage
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`title` <- this_object$`title`
      self$`body` <- this_object$`body`
      self
    },

    #' @description
    #' Validate JSON input with respect to NotificationMessage and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `title`
      if (!is.null(input_json$`title`)) {
        if (!(is.character(input_json$`title`) && length(input_json$`title`) == 1)) {
          stop(paste("Error! Invalid data for `title`. Must be a string:", input_json$`title`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for NotificationMessage: the required field `title` is missing."))
      }
      # check the required field `body`
      if (!is.null(input_json$`body`)) {
        if (!(is.character(input_json$`body`) && length(input_json$`body`) == 1)) {
          stop(paste("Error! Invalid data for `body`. Must be a string:", input_json$`body`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for NotificationMessage: the required field `body` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of NotificationMessage
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `title` is null
      if (is.null(self$`title`)) {
        return(FALSE)
      }

      # check if the required `body` is null
      if (is.null(self$`body`)) {
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
      # check if the required `title` is null
      if (is.null(self$`title`)) {
        invalid_fields["title"] <- "Non-nullable required field `title` cannot be null."
      }

      # check if the required `body` is null
      if (is.null(self$`body`)) {
        invalid_fields["body"] <- "Non-nullable required field `body` cannot be null."
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
# NotificationMessage$unlock()
#
## Below is an example to define the print function
# NotificationMessage$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# NotificationMessage$lock()

