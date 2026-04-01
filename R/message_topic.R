#' Create a new MessageTopic
#'
#' @description
#' MessageTopic Class
#'
#' @docType class
#' @title MessageTopic
#' @description MessageTopic Class
#' @format An \code{R6Class} generator object
#' @field code Code for the topic. character
#' @field description Description for the topic, in english. character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
MessageTopic <- R6::R6Class(
  "MessageTopic",
  public = list(
    `code` = NULL,
    `description` = NULL,

    #' @description
    #' Initialize a new MessageTopic class.
    #'
    #' @param code Code for the topic.
    #' @param description Description for the topic, in english.
    #' @param ... Other optional arguments.
    initialize = function(`code`, `description`, ...) {
      if (!missing(`code`)) {
        if (!(is.character(`code`) && length(`code`) == 1)) {
          stop(paste("Error! Invalid data for `code`. Must be a string:", `code`))
        }
        self$`code` <- `code`
      }
      if (!missing(`description`)) {
        if (!(is.character(`description`) && length(`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", `description`))
        }
        self$`description` <- `description`
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
    #' @return MessageTopic as a base R list.
    #' @examples
    #' # convert array of MessageTopic (x) to a data frame
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
    #' Convert MessageTopic to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      MessageTopicObject <- list()
      if (!is.null(self$`code`)) {
        MessageTopicObject[["code"]] <-
          self$`code`
      }
      if (!is.null(self$`description`)) {
        MessageTopicObject[["description"]] <-
          self$`description`
      }
      return(MessageTopicObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of MessageTopic
    #'
    #' @param input_json the JSON input
    #' @return the instance of MessageTopic
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`code`)) {
        self$`code` <- this_object$`code`
      }
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return MessageTopic in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of MessageTopic
    #'
    #' @param input_json the JSON input
    #' @return the instance of MessageTopic
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`code` <- this_object$`code`
      self$`description` <- this_object$`description`
      self
    },

    #' @description
    #' Validate JSON input with respect to MessageTopic and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `code`
      if (!is.null(input_json$`code`)) {
        if (!(is.character(input_json$`code`) && length(input_json$`code`) == 1)) {
          stop(paste("Error! Invalid data for `code`. Must be a string:", input_json$`code`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for MessageTopic: the required field `code` is missing."))
      }
      # check the required field `description`
      if (!is.null(input_json$`description`)) {
        if (!(is.character(input_json$`description`) && length(input_json$`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", input_json$`description`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for MessageTopic: the required field `description` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of MessageTopic
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `code` is null
      if (is.null(self$`code`)) {
        return(FALSE)
      }

      if (nchar(self$`code`) > 100) {
        return(FALSE)
      }

      # check if the required `description` is null
      if (is.null(self$`description`)) {
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
      # check if the required `code` is null
      if (is.null(self$`code`)) {
        invalid_fields["code"] <- "Non-nullable required field `code` cannot be null."
      }

      if (nchar(self$`code`) > 100) {
        invalid_fields["code"] <- "Invalid length for `code`, must be smaller than or equal to 100."
      }

      # check if the required `description` is null
      if (is.null(self$`description`)) {
        invalid_fields["description"] <- "Non-nullable required field `description` cannot be null."
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
# MessageTopic$unlock()
#
## Below is an example to define the print function
# MessageTopic$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# MessageTopic$lock()

