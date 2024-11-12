#' Create a new Notification
#'
#' @description
#' Notification Class
#'
#' @docType class
#' @title Notification
#' @description Notification Class
#' @format An \code{R6Class} generator object
#' @field id  integer
#' @field expert_id Expert sending the notification integer
#' @field created_at  character
#' @field title  character
#' @field body  character
#' @field seen  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Notification <- R6::R6Class(
  "Notification",
  public = list(
    `id` = NULL,
    `expert_id` = NULL,
    `created_at` = NULL,
    `title` = NULL,
    `body` = NULL,
    `seen` = NULL,

    #' @description
    #' Initialize a new Notification class.
    #'
    #' @param id id
    #' @param expert_id Expert sending the notification
    #' @param created_at created_at
    #' @param title title
    #' @param body body
    #' @param seen seen
    #' @param ... Other optional arguments.
    initialize = function(`id`, `expert_id`, `created_at`, `title`, `body`, `seen`, ...) {
      if (!missing(`id`)) {
        if (!(is.numeric(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be an integer:", `id`))
        }
        self$`id` <- `id`
      }
      if (!missing(`expert_id`)) {
        if (!(is.numeric(`expert_id`) && length(`expert_id`) == 1)) {
          stop(paste("Error! Invalid data for `expert_id`. Must be an integer:", `expert_id`))
        }
        self$`expert_id` <- `expert_id`
      }
      if (!missing(`created_at`)) {
        if (!(is.character(`created_at`) && length(`created_at`) == 1)) {
          stop(paste("Error! Invalid data for `created_at`. Must be a string:", `created_at`))
        }
        self$`created_at` <- `created_at`
      }
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
    #' @return Notification in JSON format
    toJSON = function() {
      NotificationObject <- list()
      if (!is.null(self$`id`)) {
        NotificationObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`expert_id`)) {
        NotificationObject[["expert_id"]] <-
          self$`expert_id`
      }
      if (!is.null(self$`created_at`)) {
        NotificationObject[["created_at"]] <-
          self$`created_at`
      }
      if (!is.null(self$`title`)) {
        NotificationObject[["title"]] <-
          self$`title`
      }
      if (!is.null(self$`body`)) {
        NotificationObject[["body"]] <-
          self$`body`
      }
      if (!is.null(self$`seen`)) {
        NotificationObject[["seen"]] <-
          self$`seen`
      }
      NotificationObject
    },

    #' @description
    #' Deserialize JSON string into an instance of Notification
    #'
    #' @param input_json the JSON input
    #' @return the instance of Notification
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`expert_id`)) {
        self$`expert_id` <- this_object$`expert_id`
      }
      if (!is.null(this_object$`created_at`)) {
        self$`created_at` <- this_object$`created_at`
      }
      if (!is.null(this_object$`title`)) {
        self$`title` <- this_object$`title`
      }
      if (!is.null(this_object$`body`)) {
        self$`body` <- this_object$`body`
      }
      if (!is.null(this_object$`seen`)) {
        self$`seen` <- this_object$`seen`
      }
      self
    },

    #' @description
    #' To JSON String
    #'
    #' @return Notification in JSON format
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`id`)) {
          sprintf(
          '"id":
            %d
                    ',
          self$`id`
          )
        },
        if (!is.null(self$`expert_id`)) {
          sprintf(
          '"expert_id":
            %d
                    ',
          self$`expert_id`
          )
        },
        if (!is.null(self$`created_at`)) {
          sprintf(
          '"created_at":
            "%s"
                    ',
          self$`created_at`
          )
        },
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
        },
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
    #' Deserialize JSON string into an instance of Notification
    #'
    #' @param input_json the JSON input
    #' @return the instance of Notification
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`expert_id` <- this_object$`expert_id`
      self$`created_at` <- this_object$`created_at`
      self$`title` <- this_object$`title`
      self$`body` <- this_object$`body`
      self$`seen` <- this_object$`seen`
      self
    },

    #' @description
    #' Validate JSON input with respect to Notification and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `id`
      if (!is.null(input_json$`id`)) {
        if (!(is.numeric(input_json$`id`) && length(input_json$`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be an integer:", input_json$`id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Notification: the required field `id` is missing."))
      }
      # check the required field `expert_id`
      if (!is.null(input_json$`expert_id`)) {
        if (!(is.numeric(input_json$`expert_id`) && length(input_json$`expert_id`) == 1)) {
          stop(paste("Error! Invalid data for `expert_id`. Must be an integer:", input_json$`expert_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Notification: the required field `expert_id` is missing."))
      }
      # check the required field `created_at`
      if (!is.null(input_json$`created_at`)) {
        if (!(is.character(input_json$`created_at`) && length(input_json$`created_at`) == 1)) {
          stop(paste("Error! Invalid data for `created_at`. Must be a string:", input_json$`created_at`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Notification: the required field `created_at` is missing."))
      }
      # check the required field `title`
      if (!is.null(input_json$`title`)) {
        if (!(is.character(input_json$`title`) && length(input_json$`title`) == 1)) {
          stop(paste("Error! Invalid data for `title`. Must be a string:", input_json$`title`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Notification: the required field `title` is missing."))
      }
      # check the required field `body`
      if (!is.null(input_json$`body`)) {
        if (!(is.character(input_json$`body`) && length(input_json$`body`) == 1)) {
          stop(paste("Error! Invalid data for `body`. Must be a string:", input_json$`body`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Notification: the required field `body` is missing."))
      }
      # check the required field `seen`
      if (!is.null(input_json$`seen`)) {
        if (!(is.logical(input_json$`seen`) && length(input_json$`seen`) == 1)) {
          stop(paste("Error! Invalid data for `seen`. Must be a boolean:", input_json$`seen`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Notification: the required field `seen` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Notification
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `id` is null
      if (is.null(self$`id`)) {
        return(FALSE)
      }

      # check if the required `created_at` is null
      if (is.null(self$`created_at`)) {
        return(FALSE)
      }

      # check if the required `title` is null
      if (is.null(self$`title`)) {
        return(FALSE)
      }

      # check if the required `body` is null
      if (is.null(self$`body`)) {
        return(FALSE)
      }

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
      # check if the required `id` is null
      if (is.null(self$`id`)) {
        invalid_fields["id"] <- "Non-nullable required field `id` cannot be null."
      }

      # check if the required `created_at` is null
      if (is.null(self$`created_at`)) {
        invalid_fields["created_at"] <- "Non-nullable required field `created_at` cannot be null."
      }

      # check if the required `title` is null
      if (is.null(self$`title`)) {
        invalid_fields["title"] <- "Non-nullable required field `title` cannot be null."
      }

      # check if the required `body` is null
      if (is.null(self$`body`)) {
        invalid_fields["body"] <- "Non-nullable required field `body` cannot be null."
      }

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
# Notification$unlock()
#
## Below is an example to define the print function
# Notification$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Notification$lock()

