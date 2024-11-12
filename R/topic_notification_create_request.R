#' Create a new TopicNotificationCreateRequest
#'
#' @description
#' TopicNotificationCreateRequest Class
#'
#' @docType class
#' @title TopicNotificationCreateRequest
#' @description TopicNotificationCreateRequest Class
#' @format An \code{R6Class} generator object
#' @field receiver_type  character
#' @field title_en  character
#' @field body_en  character
#' @field topic_code  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
TopicNotificationCreateRequest <- R6::R6Class(
  "TopicNotificationCreateRequest",
  public = list(
    `receiver_type` = NULL,
    `title_en` = NULL,
    `body_en` = NULL,
    `topic_code` = NULL,

    #' @description
    #' Initialize a new TopicNotificationCreateRequest class.
    #'
    #' @param receiver_type receiver_type
    #' @param title_en title_en
    #' @param body_en body_en
    #' @param topic_code topic_code
    #' @param ... Other optional arguments.
    initialize = function(`receiver_type`, `title_en`, `body_en`, `topic_code`, ...) {
      if (!missing(`receiver_type`)) {
        if (!(`receiver_type` %in% c("user", "topic"))) {
          stop(paste("Error! \"", `receiver_type`, "\" cannot be assigned to `receiver_type`. Must be \"user\", \"topic\".", sep = ""))
        }
        if (!(is.character(`receiver_type`) && length(`receiver_type`) == 1)) {
          stop(paste("Error! Invalid data for `receiver_type`. Must be a string:", `receiver_type`))
        }
        self$`receiver_type` <- `receiver_type`
      }
      if (!missing(`title_en`)) {
        if (!(is.character(`title_en`) && length(`title_en`) == 1)) {
          stop(paste("Error! Invalid data for `title_en`. Must be a string:", `title_en`))
        }
        self$`title_en` <- `title_en`
      }
      if (!missing(`body_en`)) {
        if (!(is.character(`body_en`) && length(`body_en`) == 1)) {
          stop(paste("Error! Invalid data for `body_en`. Must be a string:", `body_en`))
        }
        self$`body_en` <- `body_en`
      }
      if (!missing(`topic_code`)) {
        if (!(is.character(`topic_code`) && length(`topic_code`) == 1)) {
          stop(paste("Error! Invalid data for `topic_code`. Must be a string:", `topic_code`))
        }
        self$`topic_code` <- `topic_code`
      }
    },

    #' @description
    #' To JSON String
    #'
    #' @return TopicNotificationCreateRequest in JSON format
    toJSON = function() {
      TopicNotificationCreateRequestObject <- list()
      if (!is.null(self$`receiver_type`)) {
        TopicNotificationCreateRequestObject[["receiver_type"]] <-
          self$`receiver_type`
      }
      if (!is.null(self$`title_en`)) {
        TopicNotificationCreateRequestObject[["title_en"]] <-
          self$`title_en`
      }
      if (!is.null(self$`body_en`)) {
        TopicNotificationCreateRequestObject[["body_en"]] <-
          self$`body_en`
      }
      if (!is.null(self$`topic_code`)) {
        TopicNotificationCreateRequestObject[["topic_code"]] <-
          self$`topic_code`
      }
      TopicNotificationCreateRequestObject
    },

    #' @description
    #' Deserialize JSON string into an instance of TopicNotificationCreateRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of TopicNotificationCreateRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`receiver_type`)) {
        if (!is.null(this_object$`receiver_type`) && !(this_object$`receiver_type` %in% c("user", "topic"))) {
          stop(paste("Error! \"", this_object$`receiver_type`, "\" cannot be assigned to `receiver_type`. Must be \"user\", \"topic\".", sep = ""))
        }
        self$`receiver_type` <- this_object$`receiver_type`
      }
      if (!is.null(this_object$`title_en`)) {
        self$`title_en` <- this_object$`title_en`
      }
      if (!is.null(this_object$`body_en`)) {
        self$`body_en` <- this_object$`body_en`
      }
      if (!is.null(this_object$`topic_code`)) {
        self$`topic_code` <- this_object$`topic_code`
      }
      self
    },

    #' @description
    #' To JSON String
    #'
    #' @return TopicNotificationCreateRequest in JSON format
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`receiver_type`)) {
          sprintf(
          '"receiver_type":
            "%s"
                    ',
          self$`receiver_type`
          )
        },
        if (!is.null(self$`title_en`)) {
          sprintf(
          '"title_en":
            "%s"
                    ',
          self$`title_en`
          )
        },
        if (!is.null(self$`body_en`)) {
          sprintf(
          '"body_en":
            "%s"
                    ',
          self$`body_en`
          )
        },
        if (!is.null(self$`topic_code`)) {
          sprintf(
          '"topic_code":
            "%s"
                    ',
          self$`topic_code`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },

    #' @description
    #' Deserialize JSON string into an instance of TopicNotificationCreateRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of TopicNotificationCreateRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`receiver_type`) && !(this_object$`receiver_type` %in% c("user", "topic"))) {
        stop(paste("Error! \"", this_object$`receiver_type`, "\" cannot be assigned to `receiver_type`. Must be \"user\", \"topic\".", sep = ""))
      }
      self$`receiver_type` <- this_object$`receiver_type`
      self$`title_en` <- this_object$`title_en`
      self$`body_en` <- this_object$`body_en`
      self$`topic_code` <- this_object$`topic_code`
      self
    },

    #' @description
    #' Validate JSON input with respect to TopicNotificationCreateRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `receiver_type`
      if (!is.null(input_json$`receiver_type`)) {
        if (!(is.character(input_json$`receiver_type`) && length(input_json$`receiver_type`) == 1)) {
          stop(paste("Error! Invalid data for `receiver_type`. Must be a string:", input_json$`receiver_type`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TopicNotificationCreateRequest: the required field `receiver_type` is missing."))
      }
      # check the required field `title_en`
      if (!is.null(input_json$`title_en`)) {
        if (!(is.character(input_json$`title_en`) && length(input_json$`title_en`) == 1)) {
          stop(paste("Error! Invalid data for `title_en`. Must be a string:", input_json$`title_en`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TopicNotificationCreateRequest: the required field `title_en` is missing."))
      }
      # check the required field `body_en`
      if (!is.null(input_json$`body_en`)) {
        if (!(is.character(input_json$`body_en`) && length(input_json$`body_en`) == 1)) {
          stop(paste("Error! Invalid data for `body_en`. Must be a string:", input_json$`body_en`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TopicNotificationCreateRequest: the required field `body_en` is missing."))
      }
      # check the required field `topic_code`
      if (!is.null(input_json$`topic_code`)) {
        if (!(is.character(input_json$`topic_code`) && length(input_json$`topic_code`) == 1)) {
          stop(paste("Error! Invalid data for `topic_code`. Must be a string:", input_json$`topic_code`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TopicNotificationCreateRequest: the required field `topic_code` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of TopicNotificationCreateRequest
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `receiver_type` is null
      if (is.null(self$`receiver_type`)) {
        return(FALSE)
      }

      # check if the required `title_en` is null
      if (is.null(self$`title_en`)) {
        return(FALSE)
      }

      if (nchar(self$`title_en`) < 1) {
        return(FALSE)
      }

      # check if the required `body_en` is null
      if (is.null(self$`body_en`)) {
        return(FALSE)
      }

      if (nchar(self$`body_en`) < 1) {
        return(FALSE)
      }

      # check if the required `topic_code` is null
      if (is.null(self$`topic_code`)) {
        return(FALSE)
      }

      if (nchar(self$`topic_code`) < 1) {
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
      # check if the required `receiver_type` is null
      if (is.null(self$`receiver_type`)) {
        invalid_fields["receiver_type"] <- "Non-nullable required field `receiver_type` cannot be null."
      }

      # check if the required `title_en` is null
      if (is.null(self$`title_en`)) {
        invalid_fields["title_en"] <- "Non-nullable required field `title_en` cannot be null."
      }

      if (nchar(self$`title_en`) < 1) {
        invalid_fields["title_en"] <- "Invalid length for `title_en`, must be bigger than or equal to 1."
      }

      # check if the required `body_en` is null
      if (is.null(self$`body_en`)) {
        invalid_fields["body_en"] <- "Non-nullable required field `body_en` cannot be null."
      }

      if (nchar(self$`body_en`) < 1) {
        invalid_fields["body_en"] <- "Invalid length for `body_en`, must be bigger than or equal to 1."
      }

      # check if the required `topic_code` is null
      if (is.null(self$`topic_code`)) {
        invalid_fields["topic_code"] <- "Non-nullable required field `topic_code` cannot be null."
      }

      if (nchar(self$`topic_code`) < 1) {
        invalid_fields["topic_code"] <- "Invalid length for `topic_code`, must be bigger than or equal to 1."
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
# TopicNotificationCreateRequest$unlock()
#
## Below is an example to define the print function
# TopicNotificationCreateRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# TopicNotificationCreateRequest$lock()

