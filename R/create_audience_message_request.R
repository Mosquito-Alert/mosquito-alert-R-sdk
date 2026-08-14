#' Create a new CreateAudienceMessageRequest
#'
#' @description
#' CreateAudienceMessageRequest Class
#'
#' @docType class
#' @title CreateAudienceMessageRequest
#' @description CreateAudienceMessageRequest Class
#' @format An \code{R6Class} generator object
#' @field content The content of the message for the audience \link{CreateAudienceMessageContentRequest}
#' @field target  character
#' @field audience The audience filter for the message \link{AudienceFilterRequest}
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CreateAudienceMessageRequest <- R6::R6Class(
  "CreateAudienceMessageRequest",
  public = list(
    `content` = NULL,
    `target` = NULL,
    `audience` = NULL,

    #' @description
    #' Initialize a new CreateAudienceMessageRequest class.
    #'
    #' @param content The content of the message for the audience
    #' @param target target
    #' @param audience The audience filter for the message
    #' @param ... Other optional arguments.
    initialize = function(`content`, `target`, `audience`, ...) {
      if (!missing(`content`)) {
        stopifnot(R6::is.R6(`content`))
        self$`content` <- `content`
      }
      if (!missing(`target`)) {
        if (!(`target` %in% c("audience"))) {
          stop(paste("Error! \"", `target`, "\" cannot be assigned to `target`. Must be \"audience\".", sep = ""))
        }
        if (!(is.character(`target`) && length(`target`) == 1)) {
          stop(paste("Error! Invalid data for `target`. Must be a string:", `target`))
        }
        self$`target` <- `target`
      }
      if (!missing(`audience`)) {
        stopifnot(R6::is.R6(`audience`))
        self$`audience` <- `audience`
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
    #' @return CreateAudienceMessageRequest as a base R list.
    #' @examples
    #' # convert array of CreateAudienceMessageRequest (x) to a data frame
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
    #' Convert CreateAudienceMessageRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      CreateAudienceMessageRequestObject <- list()
      if (!is.null(self$`content`)) {
        CreateAudienceMessageRequestObject[["content"]] <-
          self$extractSimpleType(self$`content`)
      }
      if (!is.null(self$`target`)) {
        CreateAudienceMessageRequestObject[["target"]] <-
          self$`target`
      }
      if (!is.null(self$`audience`)) {
        CreateAudienceMessageRequestObject[["audience"]] <-
          self$extractSimpleType(self$`audience`)
      }
      return(CreateAudienceMessageRequestObject)
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
    #' Deserialize JSON string into an instance of CreateAudienceMessageRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of CreateAudienceMessageRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`content`)) {
        `content_object` <- CreateAudienceMessageContentRequest$new()
        `content_object`$fromJSON(jsonlite::toJSON(this_object$`content`, auto_unbox = TRUE, digits = NA))
        self$`content` <- `content_object`
      }
      if (!is.null(this_object$`target`)) {
        if (!is.null(this_object$`target`) && !(this_object$`target` %in% c("audience"))) {
          stop(paste("Error! \"", this_object$`target`, "\" cannot be assigned to `target`. Must be \"audience\".", sep = ""))
        }
        self$`target` <- this_object$`target`
      }
      if (!is.null(this_object$`audience`)) {
        `audience_object` <- AudienceFilterRequest$new()
        `audience_object`$fromJSON(jsonlite::toJSON(this_object$`audience`, auto_unbox = TRUE, digits = NA))
        self$`audience` <- `audience_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return CreateAudienceMessageRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of CreateAudienceMessageRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of CreateAudienceMessageRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`content` <- CreateAudienceMessageContentRequest$new()$fromJSON(jsonlite::toJSON(this_object$`content`, auto_unbox = TRUE, digits = NA))
      if (!is.null(this_object$`target`) && !(this_object$`target` %in% c("audience"))) {
        stop(paste("Error! \"", this_object$`target`, "\" cannot be assigned to `target`. Must be \"audience\".", sep = ""))
      }
      self$`target` <- this_object$`target`
      self$`audience` <- AudienceFilterRequest$new()$fromJSON(jsonlite::toJSON(this_object$`audience`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to CreateAudienceMessageRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `content`
      if (!is.null(input_json$`content`)) {
        stopifnot(R6::is.R6(input_json$`content`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CreateAudienceMessageRequest: the required field `content` is missing."))
      }
      # check the required field `target`
      if (!is.null(input_json$`target`)) {
        if (!(is.character(input_json$`target`) && length(input_json$`target`) == 1)) {
          stop(paste("Error! Invalid data for `target`. Must be a string:", input_json$`target`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CreateAudienceMessageRequest: the required field `target` is missing."))
      }
      # check the required field `audience`
      if (!is.null(input_json$`audience`)) {
        stopifnot(R6::is.R6(input_json$`audience`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CreateAudienceMessageRequest: the required field `audience` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CreateAudienceMessageRequest
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `content` is null
      if (is.null(self$`content`)) {
        return(FALSE)
      }

      # check if the required `target` is null
      if (is.null(self$`target`)) {
        return(FALSE)
      }

      # check if the required `audience` is null
      if (is.null(self$`audience`)) {
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
      # check if the required `content` is null
      if (is.null(self$`content`)) {
        invalid_fields["content"] <- "Non-nullable required field `content` cannot be null."
      }

      # check if the required `target` is null
      if (is.null(self$`target`)) {
        invalid_fields["target"] <- "Non-nullable required field `target` cannot be null."
      }

      # check if the required `audience` is null
      if (is.null(self$`audience`)) {
        invalid_fields["audience"] <- "Non-nullable required field `audience` cannot be null."
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
# CreateAudienceMessageRequest$unlock()
#
## Below is an example to define the print function
# CreateAudienceMessageRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CreateAudienceMessageRequest$lock()

