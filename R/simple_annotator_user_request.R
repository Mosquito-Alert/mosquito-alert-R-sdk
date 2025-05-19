#' Create a new SimpleAnnotatorUserRequest
#'
#' @description
#' SimpleAnnotatorUserRequest Class
#'
#' @docType class
#' @title SimpleAnnotatorUserRequest
#' @description SimpleAnnotatorUserRequest Class
#' @format An \code{R6Class} generator object
#' @field username Requerido. 150 carácteres como máximo. Únicamente letras, dígitos y @/./+/-/_ character
#' @field first_name  character [optional]
#' @field last_name  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SimpleAnnotatorUserRequest <- R6::R6Class(
  "SimpleAnnotatorUserRequest",
  public = list(
    `username` = NULL,
    `first_name` = NULL,
    `last_name` = NULL,

    #' @description
    #' Initialize a new SimpleAnnotatorUserRequest class.
    #'
    #' @param username Requerido. 150 carácteres como máximo. Únicamente letras, dígitos y @/./+/-/_
    #' @param first_name first_name
    #' @param last_name last_name
    #' @param ... Other optional arguments.
    initialize = function(`username`, `first_name` = NULL, `last_name` = NULL, ...) {
      if (!missing(`username`)) {
        if (!(is.character(`username`) && length(`username`) == 1)) {
          stop(paste("Error! Invalid data for `username`. Must be a string:", `username`))
        }
        self$`username` <- `username`
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
    #' @return SimpleAnnotatorUserRequest as a base R list.
    #' @examples
    #' # convert array of SimpleAnnotatorUserRequest (x) to a data frame
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
    #' Convert SimpleAnnotatorUserRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      SimpleAnnotatorUserRequestObject <- list()
      if (!is.null(self$`username`)) {
        SimpleAnnotatorUserRequestObject[["username"]] <-
          self$`username`
      }
      if (!is.null(self$`first_name`)) {
        SimpleAnnotatorUserRequestObject[["first_name"]] <-
          self$`first_name`
      }
      if (!is.null(self$`last_name`)) {
        SimpleAnnotatorUserRequestObject[["last_name"]] <-
          self$`last_name`
      }
      return(SimpleAnnotatorUserRequestObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of SimpleAnnotatorUserRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of SimpleAnnotatorUserRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`username`)) {
        self$`username` <- this_object$`username`
      }
      if (!is.null(this_object$`first_name`)) {
        self$`first_name` <- this_object$`first_name`
      }
      if (!is.null(this_object$`last_name`)) {
        self$`last_name` <- this_object$`last_name`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return SimpleAnnotatorUserRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of SimpleAnnotatorUserRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of SimpleAnnotatorUserRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`username` <- this_object$`username`
      self$`first_name` <- this_object$`first_name`
      self$`last_name` <- this_object$`last_name`
      self
    },

    #' @description
    #' Validate JSON input with respect to SimpleAnnotatorUserRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `username`
      if (!is.null(input_json$`username`)) {
        if (!(is.character(input_json$`username`) && length(input_json$`username`) == 1)) {
          stop(paste("Error! Invalid data for `username`. Must be a string:", input_json$`username`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SimpleAnnotatorUserRequest: the required field `username` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of SimpleAnnotatorUserRequest
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `username` is null
      if (is.null(self$`username`)) {
        return(FALSE)
      }

      if (nchar(self$`username`) > 150) {
        return(FALSE)
      }
      if (nchar(self$`username`) < 1) {
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

      TRUE
    },

    #' @description
    #' Return a list of invalid fields (if any).
    #'
    #' @return A list of invalid fields (if any).
    getInvalidFields = function() {
      invalid_fields <- list()
      # check if the required `username` is null
      if (is.null(self$`username`)) {
        invalid_fields["username"] <- "Non-nullable required field `username` cannot be null."
      }

      if (nchar(self$`username`) > 150) {
        invalid_fields["username"] <- "Invalid length for `username`, must be smaller than or equal to 150."
      }
      if (nchar(self$`username`) < 1) {
        invalid_fields["username"] <- "Invalid length for `username`, must be bigger than or equal to 1."
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
# SimpleAnnotatorUserRequest$unlock()
#
## Below is an example to define the print function
# SimpleAnnotatorUserRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# SimpleAnnotatorUserRequest$lock()

