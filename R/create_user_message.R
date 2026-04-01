#' Create a new CreateUserMessage
#'
#' @description
#' CreateUserMessage Class
#'
#' @docType class
#' @title CreateUserMessage
#' @description CreateUserMessage Class
#' @format An \code{R6Class} generator object
#' @field id  integer
#' @field sender_user  \link{SimpleUser}
#' @field content The content of the message \link{MessageContent}
#' @field created_at  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CreateUserMessage <- R6::R6Class(
  "CreateUserMessage",
  public = list(
    `id` = NULL,
    `sender_user` = NULL,
    `content` = NULL,
    `created_at` = NULL,

    #' @description
    #' Initialize a new CreateUserMessage class.
    #'
    #' @param id id
    #' @param sender_user sender_user
    #' @param content The content of the message
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
    #' @return CreateUserMessage as a base R list.
    #' @examples
    #' # convert array of CreateUserMessage (x) to a data frame
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
    #' Convert CreateUserMessage to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      CreateUserMessageObject <- list()
      if (!is.null(self$`id`)) {
        CreateUserMessageObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`sender_user`)) {
        CreateUserMessageObject[["sender_user"]] <-
          self$extractSimpleType(self$`sender_user`)
      }
      if (!is.null(self$`content`)) {
        CreateUserMessageObject[["content"]] <-
          self$extractSimpleType(self$`content`)
      }
      if (!is.null(self$`created_at`)) {
        CreateUserMessageObject[["created_at"]] <-
          self$`created_at`
      }
      return(CreateUserMessageObject)
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
    #' Deserialize JSON string into an instance of CreateUserMessage
    #'
    #' @param input_json the JSON input
    #' @return the instance of CreateUserMessage
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
        `content_object` <- MessageContent$new()
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
    #' @return CreateUserMessage in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of CreateUserMessage
    #'
    #' @param input_json the JSON input
    #' @return the instance of CreateUserMessage
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`sender_user` <- SimpleUser$new()$fromJSON(jsonlite::toJSON(this_object$`sender_user`, auto_unbox = TRUE, digits = NA))
      self$`content` <- MessageContent$new()$fromJSON(jsonlite::toJSON(this_object$`content`, auto_unbox = TRUE, digits = NA))
      self$`created_at` <- this_object$`created_at`
      self
    },

    #' @description
    #' Validate JSON input with respect to CreateUserMessage and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for CreateUserMessage: the required field `id` is missing."))
      }
      # check the required field `sender_user`
      if (!is.null(input_json$`sender_user`)) {
        stopifnot(R6::is.R6(input_json$`sender_user`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CreateUserMessage: the required field `sender_user` is missing."))
      }
      # check the required field `content`
      if (!is.null(input_json$`content`)) {
        stopifnot(R6::is.R6(input_json$`content`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CreateUserMessage: the required field `content` is missing."))
      }
      # check the required field `created_at`
      if (!is.null(input_json$`created_at`)) {
        if (!(is.character(input_json$`created_at`) && length(input_json$`created_at`) == 1)) {
          stop(paste("Error! Invalid data for `created_at`. Must be a string:", input_json$`created_at`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CreateUserMessage: the required field `created_at` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CreateUserMessage
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
# CreateUserMessage$unlock()
#
## Below is an example to define the print function
# CreateUserMessage$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CreateUserMessage$lock()

