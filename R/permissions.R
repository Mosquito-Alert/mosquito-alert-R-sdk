#' Create a new Permissions
#'
#' @description
#' Permissions Class
#'
#' @docType class
#' @title Permissions
#' @description Permissions Class
#' @format An \code{R6Class} generator object
#' @field annotation  \link{AnnotationPermission}
#' @field identification_task  \link{IdentificationTaskPermission}
#' @field review  \link{ReviewPermission}
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Permissions <- R6::R6Class(
  "Permissions",
  public = list(
    `annotation` = NULL,
    `identification_task` = NULL,
    `review` = NULL,

    #' @description
    #' Initialize a new Permissions class.
    #'
    #' @param annotation annotation
    #' @param identification_task identification_task
    #' @param review review
    #' @param ... Other optional arguments.
    initialize = function(`annotation`, `identification_task`, `review`, ...) {
      if (!missing(`annotation`)) {
        stopifnot(R6::is.R6(`annotation`))
        self$`annotation` <- `annotation`
      }
      if (!missing(`identification_task`)) {
        stopifnot(R6::is.R6(`identification_task`))
        self$`identification_task` <- `identification_task`
      }
      if (!missing(`review`)) {
        stopifnot(R6::is.R6(`review`))
        self$`review` <- `review`
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
    #' @return Permissions as a base R list.
    #' @examples
    #' # convert array of Permissions (x) to a data frame
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
    #' Convert Permissions to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      PermissionsObject <- list()
      if (!is.null(self$`annotation`)) {
        PermissionsObject[["annotation"]] <-
          self$`annotation`$toSimpleType()
      }
      if (!is.null(self$`identification_task`)) {
        PermissionsObject[["identification_task"]] <-
          self$`identification_task`$toSimpleType()
      }
      if (!is.null(self$`review`)) {
        PermissionsObject[["review"]] <-
          self$`review`$toSimpleType()
      }
      return(PermissionsObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of Permissions
    #'
    #' @param input_json the JSON input
    #' @return the instance of Permissions
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`annotation`)) {
        `annotation_object` <- AnnotationPermission$new()
        `annotation_object`$fromJSON(jsonlite::toJSON(this_object$`annotation`, auto_unbox = TRUE, digits = NA))
        self$`annotation` <- `annotation_object`
      }
      if (!is.null(this_object$`identification_task`)) {
        `identification_task_object` <- IdentificationTaskPermission$new()
        `identification_task_object`$fromJSON(jsonlite::toJSON(this_object$`identification_task`, auto_unbox = TRUE, digits = NA))
        self$`identification_task` <- `identification_task_object`
      }
      if (!is.null(this_object$`review`)) {
        `review_object` <- ReviewPermission$new()
        `review_object`$fromJSON(jsonlite::toJSON(this_object$`review`, auto_unbox = TRUE, digits = NA))
        self$`review` <- `review_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return Permissions in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of Permissions
    #'
    #' @param input_json the JSON input
    #' @return the instance of Permissions
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`annotation` <- AnnotationPermission$new()$fromJSON(jsonlite::toJSON(this_object$`annotation`, auto_unbox = TRUE, digits = NA))
      self$`identification_task` <- IdentificationTaskPermission$new()$fromJSON(jsonlite::toJSON(this_object$`identification_task`, auto_unbox = TRUE, digits = NA))
      self$`review` <- ReviewPermission$new()$fromJSON(jsonlite::toJSON(this_object$`review`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to Permissions and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `annotation`
      if (!is.null(input_json$`annotation`)) {
        stopifnot(R6::is.R6(input_json$`annotation`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Permissions: the required field `annotation` is missing."))
      }
      # check the required field `identification_task`
      if (!is.null(input_json$`identification_task`)) {
        stopifnot(R6::is.R6(input_json$`identification_task`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Permissions: the required field `identification_task` is missing."))
      }
      # check the required field `review`
      if (!is.null(input_json$`review`)) {
        stopifnot(R6::is.R6(input_json$`review`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Permissions: the required field `review` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Permissions
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `annotation` is null
      if (is.null(self$`annotation`)) {
        return(FALSE)
      }

      # check if the required `identification_task` is null
      if (is.null(self$`identification_task`)) {
        return(FALSE)
      }

      # check if the required `review` is null
      if (is.null(self$`review`)) {
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
      # check if the required `annotation` is null
      if (is.null(self$`annotation`)) {
        invalid_fields["annotation"] <- "Non-nullable required field `annotation` cannot be null."
      }

      # check if the required `identification_task` is null
      if (is.null(self$`identification_task`)) {
        invalid_fields["identification_task"] <- "Non-nullable required field `identification_task` cannot be null."
      }

      # check if the required `review` is null
      if (is.null(self$`review`)) {
        invalid_fields["review"] <- "Non-nullable required field `review` cannot be null."
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
# Permissions$unlock()
#
## Below is an example to define the print function
# Permissions$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Permissions$lock()

