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
#' @field message  \link{NotificationMessage}
#' @field is_read  character
#' @field created_at  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Notification <- R6::R6Class(
  "Notification",
  public = list(
    `id` = NULL,
    `message` = NULL,
    `is_read` = NULL,
    `created_at` = NULL,

    #' @description
    #' Initialize a new Notification class.
    #'
    #' @param id id
    #' @param message message
    #' @param is_read is_read
    #' @param created_at created_at
    #' @param ... Other optional arguments.
    initialize = function(`id`, `message`, `is_read`, `created_at`, ...) {
      if (!missing(`id`)) {
        if (!(is.numeric(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be an integer:", `id`))
        }
        self$`id` <- `id`
      }
      if (!missing(`message`)) {
        stopifnot(R6::is.R6(`message`))
        self$`message` <- `message`
      }
      if (!missing(`is_read`)) {
        if (!(is.logical(`is_read`) && length(`is_read`) == 1)) {
          stop(paste("Error! Invalid data for `is_read`. Must be a boolean:", `is_read`))
        }
        self$`is_read` <- `is_read`
      }
      if (!missing(`created_at`)) {
        if (!(is.character(`created_at`) && length(`created_at`) == 1)) {
          stop(paste("Error! Invalid data for `created_at`. Must be a string:", `created_at`))
        }
        self$`created_at` <- `created_at`
      }
    },

    #' @description
    #' Convert to an R object. This method is deprecated. Use `toSimpleType()` instead.
    toJSON = function() {
      .Deprecated(new = "toSimpleType", msg = "Use the '$toSimpleType()' method instead since that is more clearly named. Use '$toJSONString()' to get a JSON string")
      return(self$toSimpleType())
    },

    #' @description
    #' Convert to a List
    #'
    #' Convert the R6 object to a list to work more easily with other tooling.
    #'
    #' @return Notification as a base R list.
    #' @examples
    #' # convert array of Notification (x) to a data frame
    #' \dontrun{
    #' library(purrr)
    #' library(tibble)
    #' df <- x |> map(\(y)y$toList()) |> map(as_tibble) |> list_rbind()
    #' df
    #' }
    toList = function() {
      return(self$toSimpleType())
    },

    #' @description
    #' Convert Notification to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      NotificationObject <- list()
      if (!is.null(self$`id`)) {
        NotificationObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`message`)) {
        NotificationObject[["message"]] <-
          self$`message`$toSimpleType()
      }
      if (!is.null(self$`is_read`)) {
        NotificationObject[["is_read"]] <-
          self$`is_read`
      }
      if (!is.null(self$`created_at`)) {
        NotificationObject[["created_at"]] <-
          self$`created_at`
      }
      return(NotificationObject)
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
      if (!is.null(this_object$`message`)) {
        `message_object` <- NotificationMessage$new()
        `message_object`$fromJSON(jsonlite::toJSON(this_object$`message`, auto_unbox = TRUE, digits = NA))
        self$`message` <- `message_object`
      }
      if (!is.null(this_object$`is_read`)) {
        self$`is_read` <- this_object$`is_read`
      }
      if (!is.null(this_object$`created_at`)) {
        self$`created_at` <- this_object$`created_at`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return Notification in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of Notification
    #'
    #' @param input_json the JSON input
    #' @return the instance of Notification
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`message` <- NotificationMessage$new()$fromJSON(jsonlite::toJSON(this_object$`message`, auto_unbox = TRUE, digits = NA))
      self$`is_read` <- this_object$`is_read`
      self$`created_at` <- this_object$`created_at`
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
      # check the required field `message`
      if (!is.null(input_json$`message`)) {
        stopifnot(R6::is.R6(input_json$`message`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Notification: the required field `message` is missing."))
      }
      # check the required field `is_read`
      if (!is.null(input_json$`is_read`)) {
        if (!(is.logical(input_json$`is_read`) && length(input_json$`is_read`) == 1)) {
          stop(paste("Error! Invalid data for `is_read`. Must be a boolean:", input_json$`is_read`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Notification: the required field `is_read` is missing."))
      }
      # check the required field `created_at`
      if (!is.null(input_json$`created_at`)) {
        if (!(is.character(input_json$`created_at`) && length(input_json$`created_at`) == 1)) {
          stop(paste("Error! Invalid data for `created_at`. Must be a string:", input_json$`created_at`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Notification: the required field `created_at` is missing."))
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

      # check if the required `message` is null
      if (is.null(self$`message`)) {
        return(FALSE)
      }

      # check if the required `is_read` is null
      if (is.null(self$`is_read`)) {
        return(FALSE)
      }

      # check if the required `created_at` is null
      if (is.null(self$`created_at`)) {
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

      # check if the required `message` is null
      if (is.null(self$`message`)) {
        invalid_fields["message"] <- "Non-nullable required field `message` cannot be null."
      }

      # check if the required `is_read` is null
      if (is.null(self$`is_read`)) {
        invalid_fields["is_read"] <- "Non-nullable required field `is_read` cannot be null."
      }

      # check if the required `created_at` is null
      if (is.null(self$`created_at`)) {
        invalid_fields["created_at"] <- "Non-nullable required field `created_at` cannot be null."
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

