#' Create a new UserAssignment
#'
#' @description
#' UserAssignment Class
#'
#' @docType class
#' @title UserAssignment
#' @description UserAssignment Class
#' @format An \code{R6Class} generator object
#' @field user  \link{SimpleAnnotatorUser}
#' @field annotation_id  integer
#' @field annotation_type  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
UserAssignment <- R6::R6Class(
  "UserAssignment",
  public = list(
    `user` = NULL,
    `annotation_id` = NULL,
    `annotation_type` = NULL,

    #' @description
    #' Initialize a new UserAssignment class.
    #'
    #' @param user user
    #' @param annotation_id annotation_id
    #' @param annotation_type annotation_type
    #' @param ... Other optional arguments.
    initialize = function(`user`, `annotation_id`, `annotation_type`, ...) {
      if (!missing(`user`)) {
        stopifnot(R6::is.R6(`user`))
        self$`user` <- `user`
      }
      if (!missing(`annotation_id`)) {
        if (!(is.numeric(`annotation_id`) && length(`annotation_id`) == 1)) {
          stop(paste("Error! Invalid data for `annotation_id`. Must be an integer:", `annotation_id`))
        }
        self$`annotation_id` <- `annotation_id`
      }
      if (!missing(`annotation_type`)) {
        if (!(`annotation_type` %in% c("short", "long"))) {
          stop(paste("Error! \"", `annotation_type`, "\" cannot be assigned to `annotation_type`. Must be \"short\", \"long\".", sep = ""))
        }
        if (!(is.character(`annotation_type`) && length(`annotation_type`) == 1)) {
          stop(paste("Error! Invalid data for `annotation_type`. Must be a string:", `annotation_type`))
        }
        self$`annotation_type` <- `annotation_type`
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
    #' @return UserAssignment as a base R list.
    #' @examples
    #' # convert array of UserAssignment (x) to a data frame
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
    #' Convert UserAssignment to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      UserAssignmentObject <- list()
      if (!is.null(self$`user`)) {
        UserAssignmentObject[["user"]] <-
          self$`user`$toSimpleType()
      }
      if (!is.null(self$`annotation_id`)) {
        UserAssignmentObject[["annotation_id"]] <-
          self$`annotation_id`
      }
      if (!is.null(self$`annotation_type`)) {
        UserAssignmentObject[["annotation_type"]] <-
          self$`annotation_type`
      }
      return(UserAssignmentObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of UserAssignment
    #'
    #' @param input_json the JSON input
    #' @return the instance of UserAssignment
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`user`)) {
        `user_object` <- SimpleAnnotatorUser$new()
        `user_object`$fromJSON(jsonlite::toJSON(this_object$`user`, auto_unbox = TRUE, digits = NA))
        self$`user` <- `user_object`
      }
      if (!is.null(this_object$`annotation_id`)) {
        self$`annotation_id` <- this_object$`annotation_id`
      }
      if (!is.null(this_object$`annotation_type`)) {
        if (!is.null(this_object$`annotation_type`) && !(this_object$`annotation_type` %in% c("short", "long"))) {
          stop(paste("Error! \"", this_object$`annotation_type`, "\" cannot be assigned to `annotation_type`. Must be \"short\", \"long\".", sep = ""))
        }
        self$`annotation_type` <- this_object$`annotation_type`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return UserAssignment in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of UserAssignment
    #'
    #' @param input_json the JSON input
    #' @return the instance of UserAssignment
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`user` <- SimpleAnnotatorUser$new()$fromJSON(jsonlite::toJSON(this_object$`user`, auto_unbox = TRUE, digits = NA))
      self$`annotation_id` <- this_object$`annotation_id`
      if (!is.null(this_object$`annotation_type`) && !(this_object$`annotation_type` %in% c("short", "long"))) {
        stop(paste("Error! \"", this_object$`annotation_type`, "\" cannot be assigned to `annotation_type`. Must be \"short\", \"long\".", sep = ""))
      }
      self$`annotation_type` <- this_object$`annotation_type`
      self
    },

    #' @description
    #' Validate JSON input with respect to UserAssignment and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `user`
      if (!is.null(input_json$`user`)) {
        stopifnot(R6::is.R6(input_json$`user`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UserAssignment: the required field `user` is missing."))
      }
      # check the required field `annotation_id`
      if (!is.null(input_json$`annotation_id`)) {
        if (!(is.numeric(input_json$`annotation_id`) && length(input_json$`annotation_id`) == 1)) {
          stop(paste("Error! Invalid data for `annotation_id`. Must be an integer:", input_json$`annotation_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UserAssignment: the required field `annotation_id` is missing."))
      }
      # check the required field `annotation_type`
      if (!is.null(input_json$`annotation_type`)) {
        if (!(is.character(input_json$`annotation_type`) && length(input_json$`annotation_type`) == 1)) {
          stop(paste("Error! Invalid data for `annotation_type`. Must be a string:", input_json$`annotation_type`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for UserAssignment: the required field `annotation_type` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of UserAssignment
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `user` is null
      if (is.null(self$`user`)) {
        return(FALSE)
      }

      # check if the required `annotation_type` is null
      if (is.null(self$`annotation_type`)) {
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
      # check if the required `user` is null
      if (is.null(self$`user`)) {
        invalid_fields["user"] <- "Non-nullable required field `user` cannot be null."
      }

      # check if the required `annotation_type` is null
      if (is.null(self$`annotation_type`)) {
        invalid_fields["annotation_type"] <- "Non-nullable required field `annotation_type` cannot be null."
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
# UserAssignment$unlock()
#
## Below is an example to define the print function
# UserAssignment$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# UserAssignment$lock()

