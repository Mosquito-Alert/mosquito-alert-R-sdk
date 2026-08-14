#' Create a new MessageTargeting
#'
#' @description
#' MessageTargeting Class
#'
#' @docType class
#' @title MessageTargeting
#' @description MessageTargeting Class
#' @format An \code{R6Class} generator object
#' @field target  character
#' @field audience  \link{AudienceFilter} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
MessageTargeting <- R6::R6Class(
  "MessageTargeting",
  public = list(
    `target` = NULL,
    `audience` = NULL,

    #' @description
    #' Initialize a new MessageTargeting class.
    #'
    #' @param target target
    #' @param audience audience
    #' @param ... Other optional arguments.
    initialize = function(`target`, `audience` = NULL, ...) {
      if (!missing(`target`)) {
        if (!(`target` %in% c("users", "audience"))) {
          stop(paste("Error! \"", `target`, "\" cannot be assigned to `target`. Must be \"users\", \"audience\".", sep = ""))
        }
        if (!(is.character(`target`) && length(`target`) == 1)) {
          stop(paste("Error! Invalid data for `target`. Must be a string:", `target`))
        }
        self$`target` <- `target`
      }
      if (!is.null(`audience`)) {
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
    #' @return MessageTargeting as a base R list.
    #' @examples
    #' # convert array of MessageTargeting (x) to a data frame
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
    #' Convert MessageTargeting to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      MessageTargetingObject <- list()
      if (!is.null(self$`target`)) {
        MessageTargetingObject[["target"]] <-
          self$`target`
      }
      if (!is.null(self$`audience`)) {
        MessageTargetingObject[["audience"]] <-
          self$extractSimpleType(self$`audience`)
      }
      return(MessageTargetingObject)
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
    #' Deserialize JSON string into an instance of MessageTargeting
    #'
    #' @param input_json the JSON input
    #' @return the instance of MessageTargeting
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`target`)) {
        if (!is.null(this_object$`target`) && !(this_object$`target` %in% c("users", "audience"))) {
          stop(paste("Error! \"", this_object$`target`, "\" cannot be assigned to `target`. Must be \"users\", \"audience\".", sep = ""))
        }
        self$`target` <- this_object$`target`
      }
      if (!is.null(this_object$`audience`)) {
        `audience_object` <- AudienceFilter$new()
        `audience_object`$fromJSON(jsonlite::toJSON(this_object$`audience`, auto_unbox = TRUE, digits = NA))
        self$`audience` <- `audience_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return MessageTargeting in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of MessageTargeting
    #'
    #' @param input_json the JSON input
    #' @return the instance of MessageTargeting
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`target`) && !(this_object$`target` %in% c("users", "audience"))) {
        stop(paste("Error! \"", this_object$`target`, "\" cannot be assigned to `target`. Must be \"users\", \"audience\".", sep = ""))
      }
      self$`target` <- this_object$`target`
      self$`audience` <- AudienceFilter$new()$fromJSON(jsonlite::toJSON(this_object$`audience`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to MessageTargeting and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `target`
      if (!is.null(input_json$`target`)) {
        if (!(is.character(input_json$`target`) && length(input_json$`target`) == 1)) {
          stop(paste("Error! Invalid data for `target`. Must be a string:", input_json$`target`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for MessageTargeting: the required field `target` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of MessageTargeting
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `target` is null
      if (is.null(self$`target`)) {
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
      # check if the required `target` is null
      if (is.null(self$`target`)) {
        invalid_fields["target"] <- "Non-nullable required field `target` cannot be null."
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
# MessageTargeting$unlock()
#
## Below is an example to define the print function
# MessageTargeting$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# MessageTargeting$lock()

