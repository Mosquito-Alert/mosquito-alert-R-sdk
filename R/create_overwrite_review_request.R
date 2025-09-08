#' Create a new CreateOverwriteReviewRequest
#'
#' @description
#' CreateOverwriteReviewRequest Class
#'
#' @docType class
#' @title CreateOverwriteReviewRequest
#' @description CreateOverwriteReviewRequest Class
#' @format An \code{R6Class} generator object
#' @field action  character [optional]
#' @field public_photo_uuid  character
#' @field is_safe Indicates if the content is safe for publication. character
#' @field public_note  character
#' @field result  \link{AnnotationClassificationRequest}
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CreateOverwriteReviewRequest <- R6::R6Class(
  "CreateOverwriteReviewRequest",
  public = list(
    `action` = NULL,
    `public_photo_uuid` = NULL,
    `is_safe` = NULL,
    `public_note` = NULL,
    `result` = NULL,

    #' @description
    #' Initialize a new CreateOverwriteReviewRequest class.
    #'
    #' @param public_photo_uuid public_photo_uuid
    #' @param is_safe Indicates if the content is safe for publication.
    #' @param public_note public_note
    #' @param result result
    #' @param action action. Default to "overwrite".
    #' @param ... Other optional arguments.
    initialize = function(`public_photo_uuid`, `is_safe`, `public_note`, `result`, `action` = "overwrite", ...) {
      if (!missing(`public_photo_uuid`)) {
        if (!(is.character(`public_photo_uuid`) && length(`public_photo_uuid`) == 1)) {
          stop(paste("Error! Invalid data for `public_photo_uuid`. Must be a string:", `public_photo_uuid`))
        }
        self$`public_photo_uuid` <- `public_photo_uuid`
      }
      if (!missing(`is_safe`)) {
        if (!(is.logical(`is_safe`) && length(`is_safe`) == 1)) {
          stop(paste("Error! Invalid data for `is_safe`. Must be a boolean:", `is_safe`))
        }
        self$`is_safe` <- `is_safe`
      }
      if (!missing(`public_note`)) {
        if (!(is.character(`public_note`) && length(`public_note`) == 1)) {
          stop(paste("Error! Invalid data for `public_note`. Must be a string:", `public_note`))
        }
        self$`public_note` <- `public_note`
      }
      if (!missing(`result`)) {
        stopifnot(R6::is.R6(`result`))
        self$`result` <- `result`
      }
      if (!is.null(`action`)) {
        if (!(`action` %in% c("overwrite"))) {
          stop(paste("Error! \"", `action`, "\" cannot be assigned to `action`. Must be \"overwrite\".", sep = ""))
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
    #' @return CreateOverwriteReviewRequest as a base R list.
    #' @examples
    #' # convert array of CreateOverwriteReviewRequest (x) to a data frame
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
    #' Convert CreateOverwriteReviewRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      CreateOverwriteReviewRequestObject <- list()
      if (!is.null(self$`action`)) {
        CreateOverwriteReviewRequestObject[["action"]] <-
          self$`action`
      }
      if (!is.null(self$`public_photo_uuid`)) {
        CreateOverwriteReviewRequestObject[["public_photo_uuid"]] <-
          self$`public_photo_uuid`
      }
      if (!is.null(self$`is_safe`)) {
        CreateOverwriteReviewRequestObject[["is_safe"]] <-
          self$`is_safe`
      }
      if (!is.null(self$`public_note`)) {
        CreateOverwriteReviewRequestObject[["public_note"]] <-
          self$`public_note`
      }
      if (!is.null(self$`result`)) {
        CreateOverwriteReviewRequestObject[["result"]] <-
          self$`result`$toSimpleType()
      }
      return(CreateOverwriteReviewRequestObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of CreateOverwriteReviewRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of CreateOverwriteReviewRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`action`)) {
        if (!is.null(this_object$`action`) && !(this_object$`action` %in% c("overwrite"))) {
          stop(paste("Error! \"", this_object$`action`, "\" cannot be assigned to `action`. Must be \"overwrite\".", sep = ""))
        }
        self$`action` <- this_object$`action`
      }
      if (!is.null(this_object$`public_photo_uuid`)) {
        self$`public_photo_uuid` <- this_object$`public_photo_uuid`
      }
      if (!is.null(this_object$`is_safe`)) {
        self$`is_safe` <- this_object$`is_safe`
      }
      if (!is.null(this_object$`public_note`)) {
        self$`public_note` <- this_object$`public_note`
      }
      if (!is.null(this_object$`result`)) {
        `result_object` <- AnnotationClassificationRequest$new()
        `result_object`$fromJSON(jsonlite::toJSON(this_object$`result`, auto_unbox = TRUE, digits = NA))
        self$`result` <- `result_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return CreateOverwriteReviewRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of CreateOverwriteReviewRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of CreateOverwriteReviewRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`action`) && !(this_object$`action` %in% c("overwrite"))) {
        stop(paste("Error! \"", this_object$`action`, "\" cannot be assigned to `action`. Must be \"overwrite\".", sep = ""))
      }
      self$`action` <- this_object$`action`
      self$`public_photo_uuid` <- this_object$`public_photo_uuid`
      self$`is_safe` <- this_object$`is_safe`
      self$`public_note` <- this_object$`public_note`
      self$`result` <- AnnotationClassificationRequest$new()$fromJSON(jsonlite::toJSON(this_object$`result`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to CreateOverwriteReviewRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `public_photo_uuid`
      if (!is.null(input_json$`public_photo_uuid`)) {
        if (!(is.character(input_json$`public_photo_uuid`) && length(input_json$`public_photo_uuid`) == 1)) {
          stop(paste("Error! Invalid data for `public_photo_uuid`. Must be a string:", input_json$`public_photo_uuid`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CreateOverwriteReviewRequest: the required field `public_photo_uuid` is missing."))
      }
      # check the required field `is_safe`
      if (!is.null(input_json$`is_safe`)) {
        if (!(is.logical(input_json$`is_safe`) && length(input_json$`is_safe`) == 1)) {
          stop(paste("Error! Invalid data for `is_safe`. Must be a boolean:", input_json$`is_safe`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CreateOverwriteReviewRequest: the required field `is_safe` is missing."))
      }
      # check the required field `public_note`
      if (!is.null(input_json$`public_note`)) {
        if (!(is.character(input_json$`public_note`) && length(input_json$`public_note`) == 1)) {
          stop(paste("Error! Invalid data for `public_note`. Must be a string:", input_json$`public_note`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CreateOverwriteReviewRequest: the required field `public_note` is missing."))
      }
      # check the required field `result`
      if (!is.null(input_json$`result`)) {
        stopifnot(R6::is.R6(input_json$`result`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CreateOverwriteReviewRequest: the required field `result` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CreateOverwriteReviewRequest
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `public_photo_uuid` is null
      if (is.null(self$`public_photo_uuid`)) {
        return(FALSE)
      }

      # check if the required `is_safe` is null
      if (is.null(self$`is_safe`)) {
        return(FALSE)
      }

      if (nchar(self$`public_note`) < 1) {
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
      # check if the required `public_photo_uuid` is null
      if (is.null(self$`public_photo_uuid`)) {
        invalid_fields["public_photo_uuid"] <- "Non-nullable required field `public_photo_uuid` cannot be null."
      }

      # check if the required `is_safe` is null
      if (is.null(self$`is_safe`)) {
        invalid_fields["is_safe"] <- "Non-nullable required field `is_safe` cannot be null."
      }

      if (nchar(self$`public_note`) < 1) {
        invalid_fields["public_note"] <- "Invalid length for `public_note`, must be bigger than or equal to 1."
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
# CreateOverwriteReviewRequest$unlock()
#
## Below is an example to define the print function
# CreateOverwriteReviewRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CreateOverwriteReviewRequest$lock()

