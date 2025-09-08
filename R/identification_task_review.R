#' Create a new IdentificationTaskReview
#'
#' @description
#' IdentificationTaskReview Class
#'
#' @docType class
#' @title IdentificationTaskReview
#' @description IdentificationTaskReview Class
#' @format An \code{R6Class} generator object
#' @field action  character
#' @field created_at  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
IdentificationTaskReview <- R6::R6Class(
  "IdentificationTaskReview",
  public = list(
    `action` = NULL,
    `created_at` = NULL,

    #' @description
    #' Initialize a new IdentificationTaskReview class.
    #'
    #' @param action action
    #' @param created_at created_at
    #' @param ... Other optional arguments.
    initialize = function(`action`, `created_at`, ...) {
      if (!missing(`action`)) {
        if (!(`action` %in% c("agree", "overwrite"))) {
          stop(paste("Error! \"", `action`, "\" cannot be assigned to `action`. Must be \"agree\", \"overwrite\".", sep = ""))
        }
        if (!(is.character(`action`) && length(`action`) == 1)) {
          stop(paste("Error! Invalid data for `action`. Must be a string:", `action`))
        }
        self$`action` <- `action`
      }
      if (!missing(`created_at`)) {
        if (!(is.character(`created_at`) && length(`created_at`) == 1)) {
          stop(paste("Error! Invalid data for `created_at`. Must be a string:", `created_at`))
        }
        self$`created_at` <- `created_at`
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
    #' @return IdentificationTaskReview as a base R list.
    #' @examples
    #' # convert array of IdentificationTaskReview (x) to a data frame
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
    #' Convert IdentificationTaskReview to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      IdentificationTaskReviewObject <- list()
      if (!is.null(self$`action`)) {
        IdentificationTaskReviewObject[["action"]] <-
          self$`action`
      }
      if (!is.null(self$`created_at`)) {
        IdentificationTaskReviewObject[["created_at"]] <-
          self$`created_at`
      }
      return(IdentificationTaskReviewObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of IdentificationTaskReview
    #'
    #' @param input_json the JSON input
    #' @return the instance of IdentificationTaskReview
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`action`)) {
        if (!is.null(this_object$`action`) && !(this_object$`action` %in% c("agree", "overwrite"))) {
          stop(paste("Error! \"", this_object$`action`, "\" cannot be assigned to `action`. Must be \"agree\", \"overwrite\".", sep = ""))
        }
        self$`action` <- this_object$`action`
      }
      if (!is.null(this_object$`created_at`)) {
        self$`created_at` <- this_object$`created_at`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return IdentificationTaskReview in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of IdentificationTaskReview
    #'
    #' @param input_json the JSON input
    #' @return the instance of IdentificationTaskReview
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`action`) && !(this_object$`action` %in% c("agree", "overwrite"))) {
        stop(paste("Error! \"", this_object$`action`, "\" cannot be assigned to `action`. Must be \"agree\", \"overwrite\".", sep = ""))
      }
      self$`action` <- this_object$`action`
      self$`created_at` <- this_object$`created_at`
      self
    },

    #' @description
    #' Validate JSON input with respect to IdentificationTaskReview and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for IdentificationTaskReview: the required field `action` is missing."))
      }
      # check the required field `created_at`
      if (!is.null(input_json$`created_at`)) {
        if (!(is.character(input_json$`created_at`) && length(input_json$`created_at`) == 1)) {
          stop(paste("Error! Invalid data for `created_at`. Must be a string:", input_json$`created_at`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for IdentificationTaskReview: the required field `created_at` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of IdentificationTaskReview
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

      # check if the required `created_at` is null
      if (is.null(self$`created_at`)) {
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

      # check if the required `created_at` is null
      if (is.null(self$`created_at`)) {
        invalid_fields["created_at"] <- "Non-nullable required field `created_at` cannot be null."
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
# IdentificationTaskReview$unlock()
#
## Below is an example to define the print function
# IdentificationTaskReview$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# IdentificationTaskReview$lock()

