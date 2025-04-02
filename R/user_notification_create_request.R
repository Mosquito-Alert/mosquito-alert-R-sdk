#' Create a new UserNotificationCreateRequest
#'
#' @description
#' UserNotificationCreateRequest Class
#'
#' @docType class
#' @title UserNotificationCreateRequest
#' @description UserNotificationCreateRequest Class
#' @format An \code{R6Class} generator object
#' @field receiver_type  character [optional]
#' @field message The message of the notification \link{CreateNotificationMessageRequest}
#' @field user_uuids  list(character)
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
UserNotificationCreateRequest <- R6::R6Class(
  "UserNotificationCreateRequest",
  public = list(
    `receiver_type` = NULL,
    `message` = NULL,
    `user_uuids` = NULL,

    #' @description
    #' Initialize a new UserNotificationCreateRequest class.
    #'
    #' @param message The message of the notification
    #' @param user_uuids user_uuids
    #' @param receiver_type receiver_type. Default to "user".
    #' @param ... Other optional arguments.
    initialize = function(`message`, `user_uuids`, `receiver_type` = "user", ...) {
      if (!missing(`message`)) {
        stopifnot(R6::is.R6(`message`))
        self$`message` <- `message`
      }
      if (!missing(`user_uuids`)) {
        stopifnot(is.vector(`user_uuids`), length(`user_uuids`) != 0)
        sapply(`user_uuids`, function(x) stopifnot(is.character(x)))
        self$`user_uuids` <- `user_uuids`
      }
      if (!is.null(`receiver_type`)) {
        if (!(`receiver_type` %in% c("user"))) {
          stop(paste("Error! \"", `receiver_type`, "\" cannot be assigned to `receiver_type`. Must be \"user\".", sep = ""))
        }
        if (!(is.character(`receiver_type`) && length(`receiver_type`) == 1)) {
          stop(paste("Error! Invalid data for `receiver_type`. Must be a string:", `receiver_type`))
        }
        self$`receiver_type` <- `receiver_type`
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
    #' @return UserNotificationCreateRequest as a base R list.
    #' @examples
    #' # convert array of UserNotificationCreateRequest (x) to a data frame
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
    #' Convert UserNotificationCreateRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      UserNotificationCreateRequestObject <- list()
      if (!is.null(self$`receiver_type`)) {
        UserNotificationCreateRequestObject[["receiver_type"]] <-
          self$`receiver_type`
      }
      if (!is.null(self$`message`)) {
        UserNotificationCreateRequestObject[["message"]] <-
          self$`message`$toSimpleType()
      }
      if (!is.null(self$`user_uuids`)) {
        UserNotificationCreateRequestObject[["user_uuids"]] <-
          self$`user_uuids`
      }
      return(UserNotificationCreateRequestObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of UserNotificationCreateRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of UserNotificationCreateRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`receiver_type`)) {
        if (!is.null(this_object$`receiver_type`) && !(this_object$`receiver_type` %in% c("user"))) {
          stop(paste("Error! \"", this_object$`receiver_type`, "\" cannot be assigned to `receiver_type`. Must be \"user\".", sep = ""))
        }
        self$`receiver_type` <- this_object$`receiver_type`
      }
      if (!is.null(this_object$`message`)) {
        `message_object` <- CreateNotificationMessageRequest$new()
        `message_object`$fromJSON(jsonlite::toJSON(this_object$`message`, auto_unbox = TRUE, digits = NA))
        self$`message` <- `message_object`
      }
      if (!is.null(this_object$`user_uuids`)) {
        self$`user_uuids` <- ApiClient$new()$deserializeObj(this_object$`user_uuids`, "array[character]", loadNamespace("MosquitoAlert"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return UserNotificationCreateRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of UserNotificationCreateRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of UserNotificationCreateRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`receiver_type`) && !(this_object$`receiver_type` %in% c("user"))) {
        stop(paste("Error! \"", this_object$`receiver_type`, "\" cannot be assigned to `receiver_type`. Must be \"user\".", sep = ""))
      }
      self$`receiver_type` <- this_object$`receiver_type`
      self$`message` <- CreateNotificationMessageRequest$new()$fromJSON(jsonlite::toJSON(this_object$`message`, auto_unbox = TRUE, digits = NA))
      self$`user_uuids` <- ApiClient$new()$deserializeObj(this_object$`user_uuids`, "array[character]", loadNamespace("MosquitoAlert"))
      self
    },

    #' @description
    #' Validate JSON input with respect to UserNotificationCreateRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `message`
      if (!is.null(input_json$`message`)) {
        stopifnot(R6::is.R6(input_json$`message`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UserNotificationCreateRequest: the required field `message` is missing."))
      }
      # check the required field `user_uuids`
      if (!is.null(input_json$`user_uuids`)) {
        stopifnot(is.vector(input_json$`user_uuids`), length(input_json$`user_uuids`) != 0)
        tmp <- sapply(input_json$`user_uuids`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UserNotificationCreateRequest: the required field `user_uuids` is missing."))
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
      # check if the required `message` is null
      if (is.null(self$`message`)) {
        return(FALSE)
      }

      # check if the required `user_uuids` is null
      if (is.null(self$`user_uuids`)) {
        return(FALSE)
      }

      if (length(self$`user_uuids`) < 1) {
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
      # check if the required `message` is null
      if (is.null(self$`message`)) {
        invalid_fields["message"] <- "Non-nullable required field `message` cannot be null."
      }

      # check if the required `user_uuids` is null
      if (is.null(self$`user_uuids`)) {
        invalid_fields["user_uuids"] <- "Non-nullable required field `user_uuids` cannot be null."
      }

      if (length(self$`user_uuids`) < 1) {
        invalid_fields["user_uuids"] <- "Invalid length for ``, number of items must be greater than or equal to 1."
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

