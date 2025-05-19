#' Create a new SimpleAnnotatorUser
#'
#' @description
#' SimpleAnnotatorUser Class
#'
#' @docType class
#' @title SimpleAnnotatorUser
#' @description SimpleAnnotatorUser Class
#' @format An \code{R6Class} generator object
#' @field id  integer
#' @field username Requerido. 150 carácteres como máximo. Únicamente letras, dígitos y @/./+/-/_ character
#' @field first_name  character [optional]
#' @field last_name  character [optional]
#' @field full_name  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SimpleAnnotatorUser <- R6::R6Class(
  "SimpleAnnotatorUser",
  public = list(
    `id` = NULL,
    `username` = NULL,
    `first_name` = NULL,
    `last_name` = NULL,
    `full_name` = NULL,

    #' @description
    #' Initialize a new SimpleAnnotatorUser class.
    #'
    #' @param id id
    #' @param username Requerido. 150 carácteres como máximo. Únicamente letras, dígitos y @/./+/-/_
    #' @param full_name full_name
    #' @param first_name first_name
    #' @param last_name last_name
    #' @param ... Other optional arguments.
    initialize = function(`id`, `username`, `full_name`, `first_name` = NULL, `last_name` = NULL, ...) {
      if (!missing(`id`)) {
        if (!(is.numeric(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be an integer:", `id`))
        }
        self$`id` <- `id`
      }
      if (!missing(`username`)) {
        if (!(is.character(`username`) && length(`username`) == 1)) {
          stop(paste("Error! Invalid data for `username`. Must be a string:", `username`))
        }
        self$`username` <- `username`
      }
      if (!missing(`full_name`)) {
        if (!(is.character(`full_name`) && length(`full_name`) == 1)) {
          stop(paste("Error! Invalid data for `full_name`. Must be a string:", `full_name`))
        }
        self$`full_name` <- `full_name`
      }
      if (!is.null(`first_name`)) {
        if (!(is.character(`first_name`) && length(`first_name`) == 1)) {
          stop(paste("Error! Invalid data for `first_name`. Must be a string:", `first_name`))
        }
        self$`first_name` <- `first_name`
      }
      if (!is.null(`last_name`)) {
        if (!(is.character(`last_name`) && length(`last_name`) == 1)) {
          stop(paste("Error! Invalid data for `last_name`. Must be a string:", `last_name`))
        }
        self$`last_name` <- `last_name`
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
    #' @return SimpleAnnotatorUser as a base R list.
    #' @examples
    #' # convert array of SimpleAnnotatorUser (x) to a data frame
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
    #' Convert SimpleAnnotatorUser to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      SimpleAnnotatorUserObject <- list()
      if (!is.null(self$`id`)) {
        SimpleAnnotatorUserObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`username`)) {
        SimpleAnnotatorUserObject[["username"]] <-
          self$`username`
      }
      if (!is.null(self$`first_name`)) {
        SimpleAnnotatorUserObject[["first_name"]] <-
          self$`first_name`
      }
      if (!is.null(self$`last_name`)) {
        SimpleAnnotatorUserObject[["last_name"]] <-
          self$`last_name`
      }
      if (!is.null(self$`full_name`)) {
        SimpleAnnotatorUserObject[["full_name"]] <-
          self$`full_name`
      }
      return(SimpleAnnotatorUserObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of SimpleAnnotatorUser
    #'
    #' @param input_json the JSON input
    #' @return the instance of SimpleAnnotatorUser
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`username`)) {
        self$`username` <- this_object$`username`
      }
      if (!is.null(this_object$`first_name`)) {
        self$`first_name` <- this_object$`first_name`
      }
      if (!is.null(this_object$`last_name`)) {
        self$`last_name` <- this_object$`last_name`
      }
      if (!is.null(this_object$`full_name`)) {
        self$`full_name` <- this_object$`full_name`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return SimpleAnnotatorUser in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of SimpleAnnotatorUser
    #'
    #' @param input_json the JSON input
    #' @return the instance of SimpleAnnotatorUser
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`username` <- this_object$`username`
      self$`first_name` <- this_object$`first_name`
      self$`last_name` <- this_object$`last_name`
      self$`full_name` <- this_object$`full_name`
      self
    },

    #' @description
    #' Validate JSON input with respect to SimpleAnnotatorUser and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `id`
      if (!is.null(input_json$`id`)) {
        if (!(is.numeric(input_json$`id`) && length(input_json$`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be an integer:", input_json$`id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SimpleAnnotatorUser: the required field `id` is missing."))
      }
      # check the required field `username`
      if (!is.null(input_json$`username`)) {
        if (!(is.character(input_json$`username`) && length(input_json$`username`) == 1)) {
          stop(paste("Error! Invalid data for `username`. Must be a string:", input_json$`username`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SimpleAnnotatorUser: the required field `username` is missing."))
      }
      # check the required field `full_name`
      if (!is.null(input_json$`full_name`)) {
        if (!(is.character(input_json$`full_name`) && length(input_json$`full_name`) == 1)) {
          stop(paste("Error! Invalid data for `full_name`. Must be a string:", input_json$`full_name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SimpleAnnotatorUser: the required field `full_name` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of SimpleAnnotatorUser
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `id` is null
      if (is.null(self$`id`)) {
        return(FALSE)
      }

      # check if the required `username` is null
      if (is.null(self$`username`)) {
        return(FALSE)
      }

      if (nchar(self$`username`) > 150) {
        return(FALSE)
      }
      if (!str_detect(self$`username`, "^[\\w.@+-]+$")) {
        return(FALSE)
      }

      if (nchar(self$`first_name`) > 150) {
        return(FALSE)
      }

      if (nchar(self$`last_name`) > 150) {
        return(FALSE)
      }

      # check if the required `full_name` is null
      if (is.null(self$`full_name`)) {
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
      # check if the required `id` is null
      if (is.null(self$`id`)) {
        invalid_fields["id"] <- "Non-nullable required field `id` cannot be null."
      }

      # check if the required `username` is null
      if (is.null(self$`username`)) {
        invalid_fields["username"] <- "Non-nullable required field `username` cannot be null."
      }

      if (nchar(self$`username`) > 150) {
        invalid_fields["username"] <- "Invalid length for `username`, must be smaller than or equal to 150."
      }
      if (!str_detect(self$`username`, "^[\\w.@+-]+$")) {
        invalid_fields["username"] <- "Invalid value for `username`, must conform to the pattern ^[\\w.@+-]+$."
      }

      if (nchar(self$`first_name`) > 150) {
        invalid_fields["first_name"] <- "Invalid length for `first_name`, must be smaller than or equal to 150."
      }

      if (nchar(self$`last_name`) > 150) {
        invalid_fields["last_name"] <- "Invalid length for `last_name`, must be smaller than or equal to 150."
      }

      # check if the required `full_name` is null
      if (is.null(self$`full_name`)) {
        invalid_fields["full_name"] <- "Non-nullable required field `full_name` cannot be null."
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
# SimpleAnnotatorUser$unlock()
#
## Below is an example to define the print function
# SimpleAnnotatorUser$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# SimpleAnnotatorUser$lock()

