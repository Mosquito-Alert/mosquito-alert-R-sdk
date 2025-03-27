#' Create a new AdmBoundary
#'
#' @description
#' AdmBoundary Class
#'
#' @docType class
#' @title AdmBoundary
#' @description AdmBoundary Class
#' @format An \code{R6Class} generator object
#' @field name  character
#' @field code  character
#' @field source  character
#' @field level  integer
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AdmBoundary <- R6::R6Class(
  "AdmBoundary",
  public = list(
    `name` = NULL,
    `code` = NULL,
    `source` = NULL,
    `level` = NULL,

    #' @description
    #' Initialize a new AdmBoundary class.
    #'
    #' @param name name
    #' @param code code
    #' @param source source
    #' @param level level
    #' @param ... Other optional arguments.
    initialize = function(`name`, `code`, `source`, `level`, ...) {
      if (!missing(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!missing(`code`)) {
        if (!(is.character(`code`) && length(`code`) == 1)) {
          stop(paste("Error! Invalid data for `code`. Must be a string:", `code`))
        }
        self$`code` <- `code`
      }
      if (!missing(`source`)) {
        if (!(is.character(`source`) && length(`source`) == 1)) {
          stop(paste("Error! Invalid data for `source`. Must be a string:", `source`))
        }
        self$`source` <- `source`
      }
      if (!missing(`level`)) {
        if (!(is.numeric(`level`) && length(`level`) == 1)) {
          stop(paste("Error! Invalid data for `level`. Must be an integer:", `level`))
        }
        self$`level` <- `level`
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
    #' @return AdmBoundary as a base R list.
    #' @examples
    #' # convert array of AdmBoundary (x) to a data frame
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
    #' Convert AdmBoundary to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AdmBoundaryObject <- list()
      if (!is.null(self$`name`)) {
        AdmBoundaryObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`code`)) {
        AdmBoundaryObject[["code"]] <-
          self$`code`
      }
      if (!is.null(self$`source`)) {
        AdmBoundaryObject[["source"]] <-
          self$`source`
      }
      if (!is.null(self$`level`)) {
        AdmBoundaryObject[["level"]] <-
          self$`level`
      }
      return(AdmBoundaryObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of AdmBoundary
    #'
    #' @param input_json the JSON input
    #' @return the instance of AdmBoundary
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`code`)) {
        self$`code` <- this_object$`code`
      }
      if (!is.null(this_object$`source`)) {
        self$`source` <- this_object$`source`
      }
      if (!is.null(this_object$`level`)) {
        self$`level` <- this_object$`level`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return AdmBoundary in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of AdmBoundary
    #'
    #' @param input_json the JSON input
    #' @return the instance of AdmBoundary
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`name` <- this_object$`name`
      self$`code` <- this_object$`code`
      self$`source` <- this_object$`source`
      self$`level` <- this_object$`level`
      self
    },

    #' @description
    #' Validate JSON input with respect to AdmBoundary and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `name`
      if (!is.null(input_json$`name`)) {
        if (!(is.character(input_json$`name`) && length(input_json$`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", input_json$`name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AdmBoundary: the required field `name` is missing."))
      }
      # check the required field `code`
      if (!is.null(input_json$`code`)) {
        if (!(is.character(input_json$`code`) && length(input_json$`code`) == 1)) {
          stop(paste("Error! Invalid data for `code`. Must be a string:", input_json$`code`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AdmBoundary: the required field `code` is missing."))
      }
      # check the required field `source`
      if (!is.null(input_json$`source`)) {
        if (!(is.character(input_json$`source`) && length(input_json$`source`) == 1)) {
          stop(paste("Error! Invalid data for `source`. Must be a string:", input_json$`source`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AdmBoundary: the required field `source` is missing."))
      }
      # check the required field `level`
      if (!is.null(input_json$`level`)) {
        if (!(is.numeric(input_json$`level`) && length(input_json$`level`) == 1)) {
          stop(paste("Error! Invalid data for `level`. Must be an integer:", input_json$`level`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AdmBoundary: the required field `level` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AdmBoundary
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `name` is null
      if (is.null(self$`name`)) {
        return(FALSE)
      }

      # check if the required `code` is null
      if (is.null(self$`code`)) {
        return(FALSE)
      }

      # check if the required `source` is null
      if (is.null(self$`source`)) {
        return(FALSE)
      }

      # check if the required `level` is null
      if (is.null(self$`level`)) {
        return(FALSE)
      }

      if (self$`level` < 0) {
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
      # check if the required `name` is null
      if (is.null(self$`name`)) {
        invalid_fields["name"] <- "Non-nullable required field `name` cannot be null."
      }

      # check if the required `code` is null
      if (is.null(self$`code`)) {
        invalid_fields["code"] <- "Non-nullable required field `code` cannot be null."
      }

      # check if the required `source` is null
      if (is.null(self$`source`)) {
        invalid_fields["source"] <- "Non-nullable required field `source` cannot be null."
      }

      # check if the required `level` is null
      if (is.null(self$`level`)) {
        invalid_fields["level"] <- "Non-nullable required field `level` cannot be null."
      }

      if (self$`level` < 0) {
        invalid_fields["level"] <- "Invalid value for `level`, must be bigger than or equal to 0."
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
# AdmBoundary$unlock()
#
## Below is an example to define the print function
# AdmBoundary$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AdmBoundary$lock()

