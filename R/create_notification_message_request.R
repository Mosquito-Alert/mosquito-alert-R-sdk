#' Create a new CreateNotificationMessageRequest
#'
#' @description
#' CreateNotificationMessageRequest Class
#'
#' @docType class
#' @title CreateNotificationMessageRequest
#' @description CreateNotificationMessageRequest Class
#' @format An \code{R6Class} generator object
#' @field title Provide the message's title in all supported languages \link{LocalizedMessageTitleRequest}
#' @field body Provide the message's body in all supported languages \link{LocalizedMessageBodyRequest}
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CreateNotificationMessageRequest <- R6::R6Class(
  "CreateNotificationMessageRequest",
  public = list(
    `title` = NULL,
    `body` = NULL,

    #' @description
    #' Initialize a new CreateNotificationMessageRequest class.
    #'
    #' @param title Provide the message's title in all supported languages
    #' @param body Provide the message's body in all supported languages
    #' @param ... Other optional arguments.
    initialize = function(`title`, `body`, ...) {
      if (!missing(`title`)) {
        stopifnot(R6::is.R6(`title`))
        self$`title` <- `title`
      }
      if (!missing(`body`)) {
        stopifnot(R6::is.R6(`body`))
        self$`body` <- `body`
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
    #' @return CreateNotificationMessageRequest as a base R list.
    #' @examples
    #' # convert array of CreateNotificationMessageRequest (x) to a data frame
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
    #' Convert CreateNotificationMessageRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      CreateNotificationMessageRequestObject <- list()
      if (!is.null(self$`title`)) {
        CreateNotificationMessageRequestObject[["title"]] <-
          self$`title`$toSimpleType()
      }
      if (!is.null(self$`body`)) {
        CreateNotificationMessageRequestObject[["body"]] <-
          self$`body`$toSimpleType()
      }
      return(CreateNotificationMessageRequestObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of CreateNotificationMessageRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of CreateNotificationMessageRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`title`)) {
        `title_object` <- LocalizedMessageTitleRequest$new()
        `title_object`$fromJSON(jsonlite::toJSON(this_object$`title`, auto_unbox = TRUE, digits = NA))
        self$`title` <- `title_object`
      }
      if (!is.null(this_object$`body`)) {
        `body_object` <- LocalizedMessageBodyRequest$new()
        `body_object`$fromJSON(jsonlite::toJSON(this_object$`body`, auto_unbox = TRUE, digits = NA))
        self$`body` <- `body_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return CreateNotificationMessageRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of CreateNotificationMessageRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of CreateNotificationMessageRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`title` <- LocalizedMessageTitleRequest$new()$fromJSON(jsonlite::toJSON(this_object$`title`, auto_unbox = TRUE, digits = NA))
      self$`body` <- LocalizedMessageBodyRequest$new()$fromJSON(jsonlite::toJSON(this_object$`body`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to CreateNotificationMessageRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `title`
      if (!is.null(input_json$`title`)) {
        stopifnot(R6::is.R6(input_json$`title`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CreateNotificationMessageRequest: the required field `title` is missing."))
      }
      # check the required field `body`
      if (!is.null(input_json$`body`)) {
        stopifnot(R6::is.R6(input_json$`body`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CreateNotificationMessageRequest: the required field `body` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CreateNotificationMessageRequest
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
# CreateNotificationMessageRequest$unlock()
#
## Below is an example to define the print function
# CreateNotificationMessageRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CreateNotificationMessageRequest$lock()

