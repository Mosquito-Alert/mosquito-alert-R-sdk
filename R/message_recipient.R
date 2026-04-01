#' Create a new MessageRecipient
#'
#' @description
#' MessageRecipient Class
#'
#' @docType class
#' @title MessageRecipient
#' @description MessageRecipient Class
#' @format An \code{R6Class} generator object
#' @field user  \link{MinimalUser}
#' @field has_read  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
MessageRecipient <- R6::R6Class(
  "MessageRecipient",
  public = list(
    `user` = NULL,
    `has_read` = NULL,

    #' @description
    #' Initialize a new MessageRecipient class.
    #'
    #' @param user user
    #' @param has_read has_read
    #' @param ... Other optional arguments.
    initialize = function(`user`, `has_read`, ...) {
      if (!missing(`user`)) {
        stopifnot(R6::is.R6(`user`))
        self$`user` <- `user`
      }
      if (!missing(`has_read`)) {
        if (!(is.logical(`has_read`) && length(`has_read`) == 1)) {
          stop(paste("Error! Invalid data for `has_read`. Must be a boolean:", `has_read`))
        }
        self$`has_read` <- `has_read`
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
    #' @return MessageRecipient as a base R list.
    #' @examples
    #' # convert array of MessageRecipient (x) to a data frame
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
    #' Convert MessageRecipient to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      MessageRecipientObject <- list()
      if (!is.null(self$`user`)) {
        MessageRecipientObject[["user"]] <-
          self$extractSimpleType(self$`user`)
      }
      if (!is.null(self$`has_read`)) {
        MessageRecipientObject[["has_read"]] <-
          self$`has_read`
      }
      return(MessageRecipientObject)
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
    #' Deserialize JSON string into an instance of MessageRecipient
    #'
    #' @param input_json the JSON input
    #' @return the instance of MessageRecipient
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`user`)) {
        `user_object` <- MinimalUser$new()
        `user_object`$fromJSON(jsonlite::toJSON(this_object$`user`, auto_unbox = TRUE, digits = NA))
        self$`user` <- `user_object`
      }
      if (!is.null(this_object$`has_read`)) {
        self$`has_read` <- this_object$`has_read`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return MessageRecipient in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of MessageRecipient
    #'
    #' @param input_json the JSON input
    #' @return the instance of MessageRecipient
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`user` <- MinimalUser$new()$fromJSON(jsonlite::toJSON(this_object$`user`, auto_unbox = TRUE, digits = NA))
      self$`has_read` <- this_object$`has_read`
      self
    },

    #' @description
    #' Validate JSON input with respect to MessageRecipient and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `user`
      if (!is.null(input_json$`user`)) {
        stopifnot(R6::is.R6(input_json$`user`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for MessageRecipient: the required field `user` is missing."))
      }
      # check the required field `has_read`
      if (!is.null(input_json$`has_read`)) {
        if (!(is.logical(input_json$`has_read`) && length(input_json$`has_read`) == 1)) {
          stop(paste("Error! Invalid data for `has_read`. Must be a boolean:", input_json$`has_read`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for MessageRecipient: the required field `has_read` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of MessageRecipient
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `user` is null
      if (is.null(self$`user`)) {
        return(FALSE)
      }

      # check if the required `has_read` is null
      if (is.null(self$`has_read`)) {
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
      # check if the required `user` is null
      if (is.null(self$`user`)) {
        invalid_fields["user"] <- "Non-nullable required field `user` cannot be null."
      }

      # check if the required `has_read` is null
      if (is.null(self$`has_read`)) {
        invalid_fields["has_read"] <- "Non-nullable required field `has_read` cannot be null."
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
# MessageRecipient$unlock()
#
## Below is an example to define the print function
# MessageRecipient$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# MessageRecipient$lock()

