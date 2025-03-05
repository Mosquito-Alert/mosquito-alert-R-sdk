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
#' @field message The message of the notification \link{CreateNotificationMessageRequest}
#' @field topic_codes  list(character)
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
TopicNotificationCreateRequest <- R6::R6Class(
  "TopicNotificationCreateRequest",
  public = list(
    `receiver_type` = NULL,
    `message` = NULL,
    `topic_codes` = NULL,

    #' @description
    #' Initialize a new TopicNotificationCreateRequest class.
    #'
    #' @param receiver_type receiver_type
    #' @param message The message of the notification
    #' @param topic_codes topic_codes
    #' @param ... Other optional arguments.
    initialize = function(`receiver_type`, `message`, `topic_codes`, ...) {
      if (!missing(`receiver_type`)) {
        if (!(`receiver_type` %in% c("user", "topic"))) {
          stop(paste("Error! \"", `receiver_type`, "\" cannot be assigned to `receiver_type`. Must be \"user\", \"topic\".", sep = ""))
        }
        if (!(is.character(`receiver_type`) && length(`receiver_type`) == 1)) {
          stop(paste("Error! Invalid data for `receiver_type`. Must be a string:", `receiver_type`))
        }
        self$`receiver_type` <- `receiver_type`
      }
      if (!missing(`message`)) {
        stopifnot(R6::is.R6(`message`))
        self$`message` <- `message`
      }
      if (!missing(`topic_codes`)) {
        stopifnot(is.vector(`topic_codes`), length(`topic_codes`) != 0)
        sapply(`topic_codes`, function(x) stopifnot(is.character(x)))
        self$`topic_codes` <- `topic_codes`
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
    #' @return TopicNotificationCreateRequest as a base R list.
    #' @examples
    #' # convert array of TopicNotificationCreateRequest (x) to a data frame
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
    #' Convert TopicNotificationCreateRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      TopicNotificationCreateRequestObject <- list()
      if (!is.null(self$`receiver_type`)) {
        TopicNotificationCreateRequestObject[["receiver_type"]] <-
          self$`receiver_type`
      }
      if (!is.null(self$`message`)) {
        TopicNotificationCreateRequestObject[["message"]] <-
          self$`message`$toSimpleType()
      }
      if (!is.null(self$`topic_codes`)) {
        TopicNotificationCreateRequestObject[["topic_codes"]] <-
          self$`topic_codes`
      }
      return(TopicNotificationCreateRequestObject)
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
      if (!is.null(this_object$`message`)) {
        `message_object` <- CreateNotificationMessageRequest$new()
        `message_object`$fromJSON(jsonlite::toJSON(this_object$`message`, auto_unbox = TRUE, digits = NA))
        self$`message` <- `message_object`
      }
      if (!is.null(this_object$`topic_codes`)) {
        self$`topic_codes` <- ApiClient$new()$deserializeObj(this_object$`topic_codes`, "array[character]", loadNamespace("MosquitoAlert"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return TopicNotificationCreateRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
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
      self$`message` <- CreateNotificationMessageRequest$new()$fromJSON(jsonlite::toJSON(this_object$`message`, auto_unbox = TRUE, digits = NA))
      self$`topic_codes` <- ApiClient$new()$deserializeObj(this_object$`topic_codes`, "array[character]", loadNamespace("MosquitoAlert"))
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
      # check the required field `message`
      if (!is.null(input_json$`message`)) {
        stopifnot(R6::is.R6(input_json$`message`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TopicNotificationCreateRequest: the required field `message` is missing."))
      }
      # check the required field `topic_codes`
      if (!is.null(input_json$`topic_codes`)) {
        stopifnot(is.vector(input_json$`topic_codes`), length(input_json$`topic_codes`) != 0)
        tmp <- sapply(input_json$`topic_codes`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TopicNotificationCreateRequest: the required field `topic_codes` is missing."))
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

      # check if the required `message` is null
      if (is.null(self$`message`)) {
        return(FALSE)
      }

      # check if the required `topic_codes` is null
      if (is.null(self$`topic_codes`)) {
        return(FALSE)
      }

      if (length(self$`topic_codes`) < 1) {
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

      # check if the required `message` is null
      if (is.null(self$`message`)) {
        invalid_fields["message"] <- "Non-nullable required field `message` cannot be null."
      }

      # check if the required `topic_codes` is null
      if (is.null(self$`topic_codes`)) {
        invalid_fields["topic_codes"] <- "Non-nullable required field `topic_codes` cannot be null."
      }

      if (length(self$`topic_codes`) < 1) {
        invalid_fields["topic_codes"] <- "Invalid length for ``, number of items must be greater than or equal to 1."
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

