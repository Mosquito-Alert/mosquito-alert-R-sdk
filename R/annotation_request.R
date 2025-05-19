#' Create a new AnnotationRequest
#'
#' @description
#' AnnotationRequest Class
#'
#' @docType class
#' @title AnnotationRequest
#' @description AnnotationRequest Class
#' @format An \code{R6Class} generator object
#' @field best_photo_uuid  character [optional]
#' @field classification  \link{AnnotationClassificationRequest}
#' @field feedback  \link{AnnotationFeedbackRequest} [optional]
#' @field is_flagged  character [optional]
#' @field is_decisive  character [optional]
#' @field tags  list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AnnotationRequest <- R6::R6Class(
  "AnnotationRequest",
  public = list(
    `best_photo_uuid` = NULL,
    `classification` = NULL,
    `feedback` = NULL,
    `is_flagged` = NULL,
    `is_decisive` = NULL,
    `tags` = NULL,

    #' @description
    #' Initialize a new AnnotationRequest class.
    #'
    #' @param classification classification
    #' @param best_photo_uuid best_photo_uuid
    #' @param feedback feedback
    #' @param is_flagged is_flagged. Default to FALSE.
    #' @param is_decisive is_decisive. Default to FALSE.
    #' @param tags tags
    #' @param ... Other optional arguments.
    initialize = function(`classification`, `best_photo_uuid` = NULL, `feedback` = NULL, `is_flagged` = FALSE, `is_decisive` = FALSE, `tags` = NULL, ...) {
      if (!missing(`classification`)) {
        stopifnot(R6::is.R6(`classification`))
        self$`classification` <- `classification`
      }
      if (!is.null(`best_photo_uuid`)) {
        if (!(is.character(`best_photo_uuid`) && length(`best_photo_uuid`) == 1)) {
          stop(paste("Error! Invalid data for `best_photo_uuid`. Must be a string:", `best_photo_uuid`))
        }
        self$`best_photo_uuid` <- `best_photo_uuid`
      }
      if (!is.null(`feedback`)) {
        stopifnot(R6::is.R6(`feedback`))
        self$`feedback` <- `feedback`
      }
      if (!is.null(`is_flagged`)) {
        if (!(is.logical(`is_flagged`) && length(`is_flagged`) == 1)) {
          stop(paste("Error! Invalid data for `is_flagged`. Must be a boolean:", `is_flagged`))
        }
        self$`is_flagged` <- `is_flagged`
      }
      if (!is.null(`is_decisive`)) {
        if (!(is.logical(`is_decisive`) && length(`is_decisive`) == 1)) {
          stop(paste("Error! Invalid data for `is_decisive`. Must be a boolean:", `is_decisive`))
        }
        self$`is_decisive` <- `is_decisive`
      }
      if (!is.null(`tags`)) {
        stopifnot(is.vector(`tags`), length(`tags`) != 0)
        sapply(`tags`, function(x) stopifnot(is.character(x)))
        self$`tags` <- `tags`
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
    #' @return AnnotationRequest as a base R list.
    #' @examples
    #' # convert array of AnnotationRequest (x) to a data frame
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
    #' Convert AnnotationRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AnnotationRequestObject <- list()
      if (!is.null(self$`best_photo_uuid`)) {
        AnnotationRequestObject[["best_photo_uuid"]] <-
          self$`best_photo_uuid`
      }
      if (!is.null(self$`classification`)) {
        AnnotationRequestObject[["classification"]] <-
          self$`classification`$toSimpleType()
      }
      if (!is.null(self$`feedback`)) {
        AnnotationRequestObject[["feedback"]] <-
          self$`feedback`$toSimpleType()
      }
      if (!is.null(self$`is_flagged`)) {
        AnnotationRequestObject[["is_flagged"]] <-
          self$`is_flagged`
      }
      if (!is.null(self$`is_decisive`)) {
        AnnotationRequestObject[["is_decisive"]] <-
          self$`is_decisive`
      }
      if (!is.null(self$`tags`)) {
        AnnotationRequestObject[["tags"]] <-
          self$`tags`
      }
      return(AnnotationRequestObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of AnnotationRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of AnnotationRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`best_photo_uuid`)) {
        self$`best_photo_uuid` <- this_object$`best_photo_uuid`
      }
      if (!is.null(this_object$`classification`)) {
        `classification_object` <- AnnotationClassificationRequest$new()
        `classification_object`$fromJSON(jsonlite::toJSON(this_object$`classification`, auto_unbox = TRUE, digits = NA))
        self$`classification` <- `classification_object`
      }
      if (!is.null(this_object$`feedback`)) {
        `feedback_object` <- AnnotationFeedbackRequest$new()
        `feedback_object`$fromJSON(jsonlite::toJSON(this_object$`feedback`, auto_unbox = TRUE, digits = NA))
        self$`feedback` <- `feedback_object`
      }
      if (!is.null(this_object$`is_flagged`)) {
        self$`is_flagged` <- this_object$`is_flagged`
      }
      if (!is.null(this_object$`is_decisive`)) {
        self$`is_decisive` <- this_object$`is_decisive`
      }
      if (!is.null(this_object$`tags`)) {
        self$`tags` <- ApiClient$new()$deserializeObj(this_object$`tags`, "array[character]", loadNamespace("MosquitoAlert"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return AnnotationRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of AnnotationRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of AnnotationRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`best_photo_uuid` <- this_object$`best_photo_uuid`
      self$`classification` <- AnnotationClassificationRequest$new()$fromJSON(jsonlite::toJSON(this_object$`classification`, auto_unbox = TRUE, digits = NA))
      self$`feedback` <- AnnotationFeedbackRequest$new()$fromJSON(jsonlite::toJSON(this_object$`feedback`, auto_unbox = TRUE, digits = NA))
      self$`is_flagged` <- this_object$`is_flagged`
      self$`is_decisive` <- this_object$`is_decisive`
      self$`tags` <- ApiClient$new()$deserializeObj(this_object$`tags`, "array[character]", loadNamespace("MosquitoAlert"))
      self
    },

    #' @description
    #' Validate JSON input with respect to AnnotationRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `classification`
      if (!is.null(input_json$`classification`)) {
        stopifnot(R6::is.R6(input_json$`classification`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AnnotationRequest: the required field `classification` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AnnotationRequest
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
# AnnotationRequest$unlock()
#
## Below is an example to define the print function
# AnnotationRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AnnotationRequest$lock()

