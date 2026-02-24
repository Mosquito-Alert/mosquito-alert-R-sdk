#' Create a new CreateAgreeReviewRequest
#'
#' @description
#' CreateAgreeReviewRequest Class
#'
#' @docType class
#' @title CreateAgreeReviewRequest
#' @description CreateAgreeReviewRequest Class
#' @format An \code{R6Class} generator object
#' @field action  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CreateAgreeReviewRequest <- R6::R6Class(
  "CreateAgreeReviewRequest",
  public = list(
    `action` = NULL,

    #' @description
    #' Initialize a new CreateAgreeReviewRequest class.
    #'
    #' @param action action
    #' @param ... Other optional arguments.
    initialize = function(`action`, ...) {
      if (!missing(`action`)) {
        if (!(`action` %in% c("agree"))) {
          stop(paste("Error! \"", `action`, "\" cannot be assigned to `action`. Must be \"agree\".", sep = ""))
        }
        if (!(is.character(`action`) && length(`action`) == 1)) {
          stop(paste("Error! Invalid data for `action`. Must be a string:", `action`))
        }
        self$`action` <- `action`
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
    #' @return CreateAgreeReviewRequest as a base R list.
    #' @examples
    #' # convert array of CreateAgreeReviewRequest (x) to a data frame
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
    #' Convert CreateAgreeReviewRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      CreateAgreeReviewRequestObject <- list()
      if (!is.null(self$`action`)) {
        CreateAgreeReviewRequestObject[["action"]] <-
          self$`action`
      }
      return(CreateAgreeReviewRequestObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of CreateAgreeReviewRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of CreateAgreeReviewRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`action`)) {
        if (!is.null(this_object$`action`) && !(this_object$`action` %in% c("agree"))) {
          stop(paste("Error! \"", this_object$`action`, "\" cannot be assigned to `action`. Must be \"agree\".", sep = ""))
        }
        self$`action` <- this_object$`action`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return CreateAgreeReviewRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of CreateAgreeReviewRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of CreateAgreeReviewRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`action`) && !(this_object$`action` %in% c("agree"))) {
        stop(paste("Error! \"", this_object$`action`, "\" cannot be assigned to `action`. Must be \"agree\".", sep = ""))
      }
      self$`action` <- this_object$`action`
      self
    },

    #' @description
    #' Validate JSON input with respect to CreateAgreeReviewRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `action`
      if (!is.null(input_json$`action`)) {
        if (!(is.character(input_json$`action`) && length(input_json$`action`) == 1)) {
          stop(paste("Error! Invalid data for `action`. Must be a string:", input_json$`action`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CreateAgreeReviewRequest: the required field `action` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CreateAgreeReviewRequest
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `action` is null
      if (is.null(self$`action`)) {
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
      # check if the required `action` is null
      if (is.null(self$`action`)) {
        invalid_fields["action"] <- "Non-nullable required field `action` cannot be null."
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
# CreateAgreeReviewRequest$unlock()
#
## Below is an example to define the print function
# CreateAgreeReviewRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CreateAgreeReviewRequest$lock()

