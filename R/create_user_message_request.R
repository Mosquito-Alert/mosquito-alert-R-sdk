#' Create a new CreateUserMessageRequest
#'
#' @description
#' CreateUserMessageRequest Class
#'
#' @docType class
#' @title CreateUserMessageRequest
#' @description CreateUserMessageRequest Class
#' @format An \code{R6Class} generator object
#' @field user_uuids  list(character)
#' @field content The content of the message \link{MessageContentRequest}
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CreateUserMessageRequest <- R6::R6Class(
  "CreateUserMessageRequest",
  public = list(
    `user_uuids` = NULL,
    `content` = NULL,

    #' @description
    #' Initialize a new CreateUserMessageRequest class.
    #'
    #' @param user_uuids user_uuids
    #' @param content The content of the message
    #' @param ... Other optional arguments.
    initialize = function(`user_uuids`, `content`, ...) {
      if (!missing(`user_uuids`)) {
        stopifnot(is.vector(`user_uuids`), length(`user_uuids`) != 0)
        sapply(`user_uuids`, function(x) stopifnot(is.character(x)))
        self$`user_uuids` <- `user_uuids`
      }
      if (!missing(`content`)) {
        stopifnot(R6::is.R6(`content`))
        self$`content` <- `content`
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
    #' @return CreateUserMessageRequest as a base R list.
    #' @examples
    #' # convert array of CreateUserMessageRequest (x) to a data frame
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
    #' Convert CreateUserMessageRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      CreateUserMessageRequestObject <- list()
      if (!is.null(self$`user_uuids`)) {
        CreateUserMessageRequestObject[["user_uuids"]] <-
          self$`user_uuids`
      }
      if (!is.null(self$`content`)) {
        CreateUserMessageRequestObject[["content"]] <-
          self$extractSimpleType(self$`content`)
      }
      return(CreateUserMessageRequestObject)
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
    #' Deserialize JSON string into an instance of CreateUserMessageRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of CreateUserMessageRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`user_uuids`)) {
        self$`user_uuids` <- ApiClient$new()$deserializeObj(this_object$`user_uuids`, "array[character]", loadNamespace("MosquitoAlert"))
      }
      if (!is.null(this_object$`content`)) {
        `content_object` <- MessageContentRequest$new()
        `content_object`$fromJSON(jsonlite::toJSON(this_object$`content`, auto_unbox = TRUE, digits = NA))
        self$`content` <- `content_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return CreateUserMessageRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of CreateUserMessageRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of CreateUserMessageRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`user_uuids` <- ApiClient$new()$deserializeObj(this_object$`user_uuids`, "array[character]", loadNamespace("MosquitoAlert"))
      self$`content` <- MessageContentRequest$new()$fromJSON(jsonlite::toJSON(this_object$`content`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to CreateUserMessageRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `user_uuids`
      if (!is.null(input_json$`user_uuids`)) {
        stopifnot(is.vector(input_json$`user_uuids`), length(input_json$`user_uuids`) != 0)
        tmp <- sapply(input_json$`user_uuids`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CreateUserMessageRequest: the required field `user_uuids` is missing."))
      }
      # check the required field `content`
      if (!is.null(input_json$`content`)) {
        stopifnot(R6::is.R6(input_json$`content`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CreateUserMessageRequest: the required field `content` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CreateUserMessageRequest
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `user_uuids` is null
      if (is.null(self$`user_uuids`)) {
        return(FALSE)
      }

      if (length(self$`user_uuids`) < 1) {
        return(FALSE)
      }

      # check if the required `content` is null
      if (is.null(self$`content`)) {
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
      # check if the required `user_uuids` is null
      if (is.null(self$`user_uuids`)) {
        invalid_fields["user_uuids"] <- "Non-nullable required field `user_uuids` cannot be null."
      }

      if (length(self$`user_uuids`) < 1) {
        invalid_fields["user_uuids"] <- "Invalid length for ``, number of items must be greater than or equal to 1."
      }

      # check if the required `content` is null
      if (is.null(self$`content`)) {
        invalid_fields["content"] <- "Non-nullable required field `content` cannot be null."
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
# CreateUserMessageRequest$unlock()
#
## Below is an example to define the print function
# CreateUserMessageRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CreateUserMessageRequest$lock()

