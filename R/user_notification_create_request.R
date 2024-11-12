#' Create a new UserNotificationCreateRequest
#'
#' @description
#' UserNotificationCreateRequest Class
#'
#' @docType class
#' @title UserNotificationCreateRequest
#' @description UserNotificationCreateRequest Class
#' @format An \code{R6Class} generator object
#' @field receiver_type  character
#' @field title_en  character
#' @field body_en  character
#' @field user_uuid  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
UserNotificationCreateRequest <- R6::R6Class(
  "UserNotificationCreateRequest",
  public = list(
    `receiver_type` = NULL,
    `title_en` = NULL,
    `body_en` = NULL,
    `user_uuid` = NULL,

    #' @description
    #' Initialize a new UserNotificationCreateRequest class.
    #'
    #' @param receiver_type receiver_type
    #' @param title_en title_en
    #' @param body_en body_en
    #' @param user_uuid user_uuid
    #' @param ... Other optional arguments.
    initialize = function(`receiver_type`, `title_en`, `body_en`, `user_uuid`, ...) {
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
      if (!missing(`user_uuid`)) {
        if (!(is.character(`user_uuid`) && length(`user_uuid`) == 1)) {
          stop(paste("Error! Invalid data for `user_uuid`. Must be a string:", `user_uuid`))
        }
        self$`user_uuid` <- `user_uuid`
      }
    },

    #' @description
    #' To JSON String
    #'
    #' @return UserNotificationCreateRequest in JSON format
    toJSON = function() {
      UserNotificationCreateRequestObject <- list()
      if (!is.null(self$`receiver_type`)) {
        UserNotificationCreateRequestObject[["receiver_type"]] <-
          self$`receiver_type`
      }
      if (!is.null(self$`title_en`)) {
        UserNotificationCreateRequestObject[["title_en"]] <-
          self$`title_en`
      }
      if (!is.null(self$`body_en`)) {
        UserNotificationCreateRequestObject[["body_en"]] <-
          self$`body_en`
      }
      if (!is.null(self$`user_uuid`)) {
        UserNotificationCreateRequestObject[["user_uuid"]] <-
          self$`user_uuid`
      }
      UserNotificationCreateRequestObject
    },

    #' @description
    #' Deserialize JSON string into an instance of UserNotificationCreateRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of UserNotificationCreateRequest
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
      if (!is.null(this_object$`user_uuid`)) {
        self$`user_uuid` <- this_object$`user_uuid`
      }
      self
    },

    #' @description
    #' To JSON String
    #'
    #' @return UserNotificationCreateRequest in JSON format
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
        if (!is.null(self$`user_uuid`)) {
          sprintf(
          '"user_uuid":
            "%s"
                    ',
          self$`user_uuid`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },

    #' @description
    #' Deserialize JSON string into an instance of UserNotificationCreateRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of UserNotificationCreateRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`receiver_type`) && !(this_object$`receiver_type` %in% c("user", "topic"))) {
        stop(paste("Error! \"", this_object$`receiver_type`, "\" cannot be assigned to `receiver_type`. Must be \"user\", \"topic\".", sep = ""))
      }
      self$`receiver_type` <- this_object$`receiver_type`
      self$`title_en` <- this_object$`title_en`
      self$`body_en` <- this_object$`body_en`
      self$`user_uuid` <- this_object$`user_uuid`
      self
    },

    #' @description
    #' Validate JSON input with respect to UserNotificationCreateRequest and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for UserNotificationCreateRequest: the required field `receiver_type` is missing."))
      }
      # check the required field `title_en`
      if (!is.null(input_json$`title_en`)) {
        if (!(is.character(input_json$`title_en`) && length(input_json$`title_en`) == 1)) {
          stop(paste("Error! Invalid data for `title_en`. Must be a string:", input_json$`title_en`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UserNotificationCreateRequest: the required field `title_en` is missing."))
      }
      # check the required field `body_en`
      if (!is.null(input_json$`body_en`)) {
        if (!(is.character(input_json$`body_en`) && length(input_json$`body_en`) == 1)) {
          stop(paste("Error! Invalid data for `body_en`. Must be a string:", input_json$`body_en`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UserNotificationCreateRequest: the required field `body_en` is missing."))
      }
      # check the required field `user_uuid`
      if (!is.null(input_json$`user_uuid`)) {
        if (!(is.character(input_json$`user_uuid`) && length(input_json$`user_uuid`) == 1)) {
          stop(paste("Error! Invalid data for `user_uuid`. Must be a string:", input_json$`user_uuid`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UserNotificationCreateRequest: the required field `user_uuid` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of UserNotificationCreateRequest
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

      # check if the required `user_uuid` is null
      if (is.null(self$`user_uuid`)) {
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

      # check if the required `user_uuid` is null
      if (is.null(self$`user_uuid`)) {
        invalid_fields["user_uuid"] <- "Non-nullable required field `user_uuid` cannot be null."
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
# UserNotificationCreateRequest$unlock()
#
## Below is an example to define the print function
# UserNotificationCreateRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# UserNotificationCreateRequest$lock()

