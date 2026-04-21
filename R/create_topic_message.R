#' Create a new CreateTopicMessage
#'
#' @description
#' CreateTopicMessage Class
#'
#' @docType class
#' @title CreateTopicMessage
#' @description CreateTopicMessage Class
#' @format An \code{R6Class} generator object
#' @field id  integer
#' @field sender_user  \link{SimpleUser}
#' @field content The content of the message for the topic \link{CreateTopicMessageContent}
#' @field created_at  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CreateTopicMessage <- R6::R6Class(
  "CreateTopicMessage",
  public = list(
    `id` = NULL,
    `sender_user` = NULL,
    `content` = NULL,
    `created_at` = NULL,

    #' @description
    #' Initialize a new CreateTopicMessage class.
    #'
    #' @param id id
    #' @param sender_user sender_user
    #' @param content The content of the message for the topic
    #' @param created_at created_at
    #' @param ... Other optional arguments.
    initialize = function(`id`, `sender_user`, `content`, `created_at`, ...) {
      if (!missing(`id`)) {
        if (!(is.numeric(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be an integer:", `id`))
        }
        self$`id` <- `id`
      }
      if (!missing(`sender_user`)) {
        stopifnot(R6::is.R6(`sender_user`))
        self$`sender_user` <- `sender_user`
      }
      if (!missing(`content`)) {
        stopifnot(R6::is.R6(`content`))
        self$`content` <- `content`
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
    #' @return CreateTopicMessage as a base R list.
    #' @examples
    #' # convert array of CreateTopicMessage (x) to a data frame
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
    #' Convert CreateTopicMessage to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      CreateTopicMessageObject <- list()
      if (!is.null(self$`id`)) {
        CreateTopicMessageObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`sender_user`)) {
        CreateTopicMessageObject[["sender_user"]] <-
          self$extractSimpleType(self$`sender_user`)
      }
      if (!is.null(self$`content`)) {
        CreateTopicMessageObject[["content"]] <-
          self$extractSimpleType(self$`content`)
      }
      if (!is.null(self$`created_at`)) {
        CreateTopicMessageObject[["created_at"]] <-
          self$`created_at`
      }
      return(CreateTopicMessageObject)
    },

    extractSimpleType = function(x) {
      if (R6::is.R6(x)) {
        return(x$toSimpleType())
      } else if (!self$hasNestedR6(x)) {
        return(x)
      }
      lapply(x, self$extractSimpleType)
    },

    hasNestedR6 = function(x) {
      if (R6::is.R6(x)) {
        return(TRUE)
      }
      if (is.list(x)) {
        for (item in x) {
          if (self$hasNestedR6(item)) {
            return(TRUE)
          }
        }
      }
      FALSE
    },

    #' @description
    #' Deserialize JSON string into an instance of CreateTopicMessage
    #'
    #' @param input_json the JSON input
    #' @return the instance of CreateTopicMessage
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`sender_user`)) {
        `sender_user_object` <- SimpleUser$new()
        `sender_user_object`$fromJSON(jsonlite::toJSON(this_object$`sender_user`, auto_unbox = TRUE, digits = NA))
        self$`sender_user` <- `sender_user_object`
      }
      if (!is.null(this_object$`content`)) {
        `content_object` <- CreateTopicMessageContent$new()
        `content_object`$fromJSON(jsonlite::toJSON(this_object$`content`, auto_unbox = TRUE, digits = NA))
        self$`content` <- `content_object`
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
    #' @return CreateTopicMessage in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of CreateTopicMessage
    #'
    #' @param input_json the JSON input
    #' @return the instance of CreateTopicMessage
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`sender_user` <- SimpleUser$new()$fromJSON(jsonlite::toJSON(this_object$`sender_user`, auto_unbox = TRUE, digits = NA))
      self$`content` <- CreateTopicMessageContent$new()$fromJSON(jsonlite::toJSON(this_object$`content`, auto_unbox = TRUE, digits = NA))
      self$`created_at` <- this_object$`created_at`
      self
    },

    #' @description
    #' Validate JSON input with respect to CreateTopicMessage and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for CreateTopicMessage: the required field `id` is missing."))
      }
      # check the required field `sender_user`
      if (!is.null(input_json$`sender_user`)) {
        stopifnot(R6::is.R6(input_json$`sender_user`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CreateTopicMessage: the required field `sender_user` is missing."))
      }
      # check the required field `content`
      if (!is.null(input_json$`content`)) {
        stopifnot(R6::is.R6(input_json$`content`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CreateTopicMessage: the required field `content` is missing."))
      }
      # check the required field `created_at`
      if (!is.null(input_json$`created_at`)) {
        if (!(is.character(input_json$`created_at`) && length(input_json$`created_at`) == 1)) {
          stop(paste("Error! Invalid data for `created_at`. Must be a string:", input_json$`created_at`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CreateTopicMessage: the required field `created_at` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CreateTopicMessage
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

      # check if the required `sender_user` is null
      if (is.null(self$`sender_user`)) {
        return(FALSE)
      }

      # check if the required `content` is null
      if (is.null(self$`content`)) {
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

      # check if the required `sender_user` is null
      if (is.null(self$`sender_user`)) {
        invalid_fields["sender_user"] <- "Non-nullable required field `sender_user` cannot be null."
      }

      # check if the required `content` is null
      if (is.null(self$`content`)) {
        invalid_fields["content"] <- "Non-nullable required field `content` cannot be null."
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
# CreateTopicMessage$unlock()
#
## Below is an example to define the print function
# CreateTopicMessage$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CreateTopicMessage$lock()

