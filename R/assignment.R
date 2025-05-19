#' Create a new Assignment
#'
#' @description
#' Assignment Class
#'
#' @docType class
#' @title Assignment
#' @description Assignment Class
#' @format An \code{R6Class} generator object
#' @field user  \link{SimpleAnnotatorUser}
#' @field annotation_id  integer
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Assignment <- R6::R6Class(
  "Assignment",
  public = list(
    `user` = NULL,
    `annotation_id` = NULL,

    #' @description
    #' Initialize a new Assignment class.
    #'
    #' @param user user
    #' @param annotation_id annotation_id
    #' @param ... Other optional arguments.
    initialize = function(`user`, `annotation_id`, ...) {
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
    #' @return Assignment as a base R list.
    #' @examples
    #' # convert array of Assignment (x) to a data frame
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
    #' Convert Assignment to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AssignmentObject <- list()
      if (!is.null(self$`user`)) {
        AssignmentObject[["user"]] <-
          self$`user`$toSimpleType()
      }
      if (!is.null(self$`annotation_id`)) {
        AssignmentObject[["annotation_id"]] <-
          self$`annotation_id`
      }
      return(AssignmentObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of Assignment
    #'
    #' @param input_json the JSON input
    #' @return the instance of Assignment
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
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return Assignment in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of Assignment
    #'
    #' @param input_json the JSON input
    #' @return the instance of Assignment
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`user` <- SimpleAnnotatorUser$new()$fromJSON(jsonlite::toJSON(this_object$`user`, auto_unbox = TRUE, digits = NA))
      self$`annotation_id` <- this_object$`annotation_id`
      self
    },

    #' @description
    #' Validate JSON input with respect to Assignment and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `user`
      if (!is.null(input_json$`user`)) {
        stopifnot(R6::is.R6(input_json$`user`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Assignment: the required field `user` is missing."))
      }
      # check the required field `annotation_id`
      if (!is.null(input_json$`annotation_id`)) {
        if (!(is.numeric(input_json$`annotation_id`) && length(input_json$`annotation_id`) == 1)) {
          stop(paste("Error! Invalid data for `annotation_id`. Must be an integer:", input_json$`annotation_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Assignment: the required field `annotation_id` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Assignment
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
# Assignment$unlock()
#
## Below is an example to define the print function
# Assignment$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Assignment$lock()

