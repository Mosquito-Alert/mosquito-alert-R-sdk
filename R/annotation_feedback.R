#' Create a new AnnotationFeedback
#'
#' @description
#' AnnotationFeedback Class
#'
#' @docType class
#' @title AnnotationFeedback
#' @description AnnotationFeedback Class
#' @format An \code{R6Class} generator object
#' @field public_note Notes to display on public map character [optional]
#' @field internal_note Internal notes for yourself or other experts character [optional]
#' @field user_note Message that user will receive when viewing report on phone character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AnnotationFeedback <- R6::R6Class(
  "AnnotationFeedback",
  public = list(
    `public_note` = NULL,
    `internal_note` = NULL,
    `user_note` = NULL,

    #' @description
    #' Initialize a new AnnotationFeedback class.
    #'
    #' @param public_note Notes to display on public map
    #' @param internal_note Internal notes for yourself or other experts
    #' @param user_note Message that user will receive when viewing report on phone
    #' @param ... Other optional arguments.
    initialize = function(`public_note` = NULL, `internal_note` = NULL, `user_note` = NULL, ...) {
      if (!is.null(`public_note`)) {
        if (!(is.character(`public_note`) && length(`public_note`) == 1)) {
          stop(paste("Error! Invalid data for `public_note`. Must be a string:", `public_note`))
        }
        self$`public_note` <- `public_note`
      }
      if (!is.null(`internal_note`)) {
        if (!(is.character(`internal_note`) && length(`internal_note`) == 1)) {
          stop(paste("Error! Invalid data for `internal_note`. Must be a string:", `internal_note`))
        }
        self$`internal_note` <- `internal_note`
      }
      if (!is.null(`user_note`)) {
        if (!(is.character(`user_note`) && length(`user_note`) == 1)) {
          stop(paste("Error! Invalid data for `user_note`. Must be a string:", `user_note`))
        }
        self$`user_note` <- `user_note`
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
    #' @return AnnotationFeedback as a base R list.
    #' @examples
    #' # convert array of AnnotationFeedback (x) to a data frame
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
    #' Convert AnnotationFeedback to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AnnotationFeedbackObject <- list()
      if (!is.null(self$`public_note`)) {
        AnnotationFeedbackObject[["public_note"]] <-
          self$`public_note`
      }
      if (!is.null(self$`internal_note`)) {
        AnnotationFeedbackObject[["internal_note"]] <-
          self$`internal_note`
      }
      if (!is.null(self$`user_note`)) {
        AnnotationFeedbackObject[["user_note"]] <-
          self$`user_note`
      }
      return(AnnotationFeedbackObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of AnnotationFeedback
    #'
    #' @param input_json the JSON input
    #' @return the instance of AnnotationFeedback
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`public_note`)) {
        self$`public_note` <- this_object$`public_note`
      }
      if (!is.null(this_object$`internal_note`)) {
        self$`internal_note` <- this_object$`internal_note`
      }
      if (!is.null(this_object$`user_note`)) {
        self$`user_note` <- this_object$`user_note`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return AnnotationFeedback in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of AnnotationFeedback
    #'
    #' @param input_json the JSON input
    #' @return the instance of AnnotationFeedback
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`public_note` <- this_object$`public_note`
      self$`internal_note` <- this_object$`internal_note`
      self$`user_note` <- this_object$`user_note`
      self
    },

    #' @description
    #' Validate JSON input with respect to AnnotationFeedback and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AnnotationFeedback
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      TRUE
    },

    #' @description
    #' Return a list of invalid fields (if any).
    #'
    #' @return A list of invalid fields (if any).
    getInvalidFields = function() {
      invalid_fields <- list()
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
# AnnotationFeedback$unlock()
#
## Below is an example to define the print function
# AnnotationFeedback$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AnnotationFeedback$lock()

