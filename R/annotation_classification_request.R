#' Create a new AnnotationClassificationRequest
#'
#' @description
#' AnnotationClassificationRequest Class
#'
#' @docType class
#' @title AnnotationClassificationRequest
#' @description AnnotationClassificationRequest Class
#' @format An \code{R6Class} generator object
#' @field taxon_id  integer
#' @field confidence_label  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AnnotationClassificationRequest <- R6::R6Class(
  "AnnotationClassificationRequest",
  public = list(
    `taxon_id` = NULL,
    `confidence_label` = NULL,

    #' @description
    #' Initialize a new AnnotationClassificationRequest class.
    #'
    #' @param taxon_id taxon_id
    #' @param confidence_label confidence_label
    #' @param ... Other optional arguments.
    initialize = function(`taxon_id`, `confidence_label`, ...) {
      if (!missing(`taxon_id`)) {
        if (!(is.numeric(`taxon_id`) && length(`taxon_id`) == 1)) {
          stop(paste("Error! Invalid data for `taxon_id`. Must be an integer:", `taxon_id`))
        }
        self$`taxon_id` <- `taxon_id`
      }
      if (!missing(`confidence_label`)) {
        if (!(`confidence_label` %in% c("definitely", "probably"))) {
          stop(paste("Error! \"", `confidence_label`, "\" cannot be assigned to `confidence_label`. Must be \"definitely\", \"probably\".", sep = ""))
        }
        if (!(is.character(`confidence_label`) && length(`confidence_label`) == 1)) {
          stop(paste("Error! Invalid data for `confidence_label`. Must be a string:", `confidence_label`))
        }
        self$`confidence_label` <- `confidence_label`
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
    #' @return AnnotationClassificationRequest as a base R list.
    #' @examples
    #' # convert array of AnnotationClassificationRequest (x) to a data frame
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
    #' Convert AnnotationClassificationRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AnnotationClassificationRequestObject <- list()
      if (!is.null(self$`taxon_id`)) {
        AnnotationClassificationRequestObject[["taxon_id"]] <-
          self$`taxon_id`
      }
      if (!is.null(self$`confidence_label`)) {
        AnnotationClassificationRequestObject[["confidence_label"]] <-
          self$`confidence_label`
      }
      return(AnnotationClassificationRequestObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of AnnotationClassificationRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of AnnotationClassificationRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`taxon_id`)) {
        self$`taxon_id` <- this_object$`taxon_id`
      }
      if (!is.null(this_object$`confidence_label`)) {
        if (!is.null(this_object$`confidence_label`) && !(this_object$`confidence_label` %in% c("definitely", "probably"))) {
          stop(paste("Error! \"", this_object$`confidence_label`, "\" cannot be assigned to `confidence_label`. Must be \"definitely\", \"probably\".", sep = ""))
        }
        self$`confidence_label` <- this_object$`confidence_label`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return AnnotationClassificationRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of AnnotationClassificationRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of AnnotationClassificationRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`taxon_id` <- this_object$`taxon_id`
      if (!is.null(this_object$`confidence_label`) && !(this_object$`confidence_label` %in% c("definitely", "probably"))) {
        stop(paste("Error! \"", this_object$`confidence_label`, "\" cannot be assigned to `confidence_label`. Must be \"definitely\", \"probably\".", sep = ""))
      }
      self$`confidence_label` <- this_object$`confidence_label`
      self
    },

    #' @description
    #' Validate JSON input with respect to AnnotationClassificationRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `taxon_id`
      if (!is.null(input_json$`taxon_id`)) {
        if (!(is.numeric(input_json$`taxon_id`) && length(input_json$`taxon_id`) == 1)) {
          stop(paste("Error! Invalid data for `taxon_id`. Must be an integer:", input_json$`taxon_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AnnotationClassificationRequest: the required field `taxon_id` is missing."))
      }
      # check the required field `confidence_label`
      if (!is.null(input_json$`confidence_label`)) {
        if (!(is.character(input_json$`confidence_label`) && length(input_json$`confidence_label`) == 1)) {
          stop(paste("Error! Invalid data for `confidence_label`. Must be a string:", input_json$`confidence_label`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AnnotationClassificationRequest: the required field `confidence_label` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AnnotationClassificationRequest
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `taxon_id` is null
      if (is.null(self$`taxon_id`)) {
        return(FALSE)
      }

      # check if the required `confidence_label` is null
      if (is.null(self$`confidence_label`)) {
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
      # check if the required `taxon_id` is null
      if (is.null(self$`taxon_id`)) {
        invalid_fields["taxon_id"] <- "Non-nullable required field `taxon_id` cannot be null."
      }

      # check if the required `confidence_label` is null
      if (is.null(self$`confidence_label`)) {
        invalid_fields["confidence_label"] <- "Non-nullable required field `confidence_label` cannot be null."
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
# AnnotationClassificationRequest$unlock()
#
## Below is an example to define the print function
# AnnotationClassificationRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AnnotationClassificationRequest$lock()

