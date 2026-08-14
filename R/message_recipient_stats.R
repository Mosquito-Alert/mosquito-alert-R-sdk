#' Create a new MessageRecipientStats
#'
#' @description
#' MessageRecipientStats Class
#'
#' @docType class
#' @title MessageRecipientStats
#' @description MessageRecipientStats Class
#' @format An \code{R6Class} generator object
#' @field total  integer
#' @field read  integer
#' @field unread  integer
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
MessageRecipientStats <- R6::R6Class(
  "MessageRecipientStats",
  public = list(
    `total` = NULL,
    `read` = NULL,
    `unread` = NULL,

    #' @description
    #' Initialize a new MessageRecipientStats class.
    #'
    #' @param total total
    #' @param read read
    #' @param unread unread
    #' @param ... Other optional arguments.
    initialize = function(`total`, `read`, `unread`, ...) {
      if (!missing(`total`)) {
        if (!(is.numeric(`total`) && length(`total`) == 1)) {
          stop(paste("Error! Invalid data for `total`. Must be an integer:", `total`))
        }
        self$`total` <- `total`
      }
      if (!missing(`read`)) {
        if (!(is.numeric(`read`) && length(`read`) == 1)) {
          stop(paste("Error! Invalid data for `read`. Must be an integer:", `read`))
        }
        self$`read` <- `read`
      }
      if (!missing(`unread`)) {
        if (!(is.numeric(`unread`) && length(`unread`) == 1)) {
          stop(paste("Error! Invalid data for `unread`. Must be an integer:", `unread`))
        }
        self$`unread` <- `unread`
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
    #' @return MessageRecipientStats as a base R list.
    #' @examples
    #' # convert array of MessageRecipientStats (x) to a data frame
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
    #' Convert MessageRecipientStats to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      MessageRecipientStatsObject <- list()
      if (!is.null(self$`total`)) {
        MessageRecipientStatsObject[["total"]] <-
          self$`total`
      }
      if (!is.null(self$`read`)) {
        MessageRecipientStatsObject[["read"]] <-
          self$`read`
      }
      if (!is.null(self$`unread`)) {
        MessageRecipientStatsObject[["unread"]] <-
          self$`unread`
      }
      return(MessageRecipientStatsObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of MessageRecipientStats
    #'
    #' @param input_json the JSON input
    #' @return the instance of MessageRecipientStats
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`total`)) {
        self$`total` <- this_object$`total`
      }
      if (!is.null(this_object$`read`)) {
        self$`read` <- this_object$`read`
      }
      if (!is.null(this_object$`unread`)) {
        self$`unread` <- this_object$`unread`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return MessageRecipientStats in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of MessageRecipientStats
    #'
    #' @param input_json the JSON input
    #' @return the instance of MessageRecipientStats
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`total` <- this_object$`total`
      self$`read` <- this_object$`read`
      self$`unread` <- this_object$`unread`
      self
    },

    #' @description
    #' Validate JSON input with respect to MessageRecipientStats and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `total`
      if (!is.null(input_json$`total`)) {
        if (!(is.numeric(input_json$`total`) && length(input_json$`total`) == 1)) {
          stop(paste("Error! Invalid data for `total`. Must be an integer:", input_json$`total`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for MessageRecipientStats: the required field `total` is missing."))
      }
      # check the required field `read`
      if (!is.null(input_json$`read`)) {
        if (!(is.numeric(input_json$`read`) && length(input_json$`read`) == 1)) {
          stop(paste("Error! Invalid data for `read`. Must be an integer:", input_json$`read`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for MessageRecipientStats: the required field `read` is missing."))
      }
      # check the required field `unread`
      if (!is.null(input_json$`unread`)) {
        if (!(is.numeric(input_json$`unread`) && length(input_json$`unread`) == 1)) {
          stop(paste("Error! Invalid data for `unread`. Must be an integer:", input_json$`unread`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for MessageRecipientStats: the required field `unread` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of MessageRecipientStats
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `total` is null
      if (is.null(self$`total`)) {
        return(FALSE)
      }

      # check if the required `read` is null
      if (is.null(self$`read`)) {
        return(FALSE)
      }

      # check if the required `unread` is null
      if (is.null(self$`unread`)) {
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
      # check if the required `total` is null
      if (is.null(self$`total`)) {
        invalid_fields["total"] <- "Non-nullable required field `total` cannot be null."
      }

      # check if the required `read` is null
      if (is.null(self$`read`)) {
        invalid_fields["read"] <- "Non-nullable required field `read` cannot be null."
      }

      # check if the required `unread` is null
      if (is.null(self$`unread`)) {
        invalid_fields["unread"] <- "Non-nullable required field `unread` cannot be null."
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
# MessageRecipientStats$unlock()
#
## Below is an example to define the print function
# MessageRecipientStats$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# MessageRecipientStats$lock()

