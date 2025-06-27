#' Create a new ReviewPermission
#'
#' @description
#' ReviewPermission Class
#'
#' @docType class
#' @title ReviewPermission
#' @description ReviewPermission Class
#' @format An \code{R6Class} generator object
#' @field add  character
#' @field change  character
#' @field view  character
#' @field delete  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ReviewPermission <- R6::R6Class(
  "ReviewPermission",
  public = list(
    `add` = NULL,
    `change` = NULL,
    `view` = NULL,
    `delete` = NULL,

    #' @description
    #' Initialize a new ReviewPermission class.
    #'
    #' @param add add
    #' @param change change
    #' @param view view
    #' @param delete delete
    #' @param ... Other optional arguments.
    initialize = function(`add`, `change`, `view`, `delete`, ...) {
      if (!missing(`add`)) {
        if (!(is.logical(`add`) && length(`add`) == 1)) {
          stop(paste("Error! Invalid data for `add`. Must be a boolean:", `add`))
        }
        self$`add` <- `add`
      }
      if (!missing(`change`)) {
        if (!(is.logical(`change`) && length(`change`) == 1)) {
          stop(paste("Error! Invalid data for `change`. Must be a boolean:", `change`))
        }
        self$`change` <- `change`
      }
      if (!missing(`view`)) {
        if (!(is.logical(`view`) && length(`view`) == 1)) {
          stop(paste("Error! Invalid data for `view`. Must be a boolean:", `view`))
        }
        self$`view` <- `view`
      }
      if (!missing(`delete`)) {
        if (!(is.logical(`delete`) && length(`delete`) == 1)) {
          stop(paste("Error! Invalid data for `delete`. Must be a boolean:", `delete`))
        }
        self$`delete` <- `delete`
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
    #' @return ReviewPermission as a base R list.
    #' @examples
    #' # convert array of ReviewPermission (x) to a data frame
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
    #' Convert ReviewPermission to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ReviewPermissionObject <- list()
      if (!is.null(self$`add`)) {
        ReviewPermissionObject[["add"]] <-
          self$`add`
      }
      if (!is.null(self$`change`)) {
        ReviewPermissionObject[["change"]] <-
          self$`change`
      }
      if (!is.null(self$`view`)) {
        ReviewPermissionObject[["view"]] <-
          self$`view`
      }
      if (!is.null(self$`delete`)) {
        ReviewPermissionObject[["delete"]] <-
          self$`delete`
      }
      return(ReviewPermissionObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of ReviewPermission
    #'
    #' @param input_json the JSON input
    #' @return the instance of ReviewPermission
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`add`)) {
        self$`add` <- this_object$`add`
      }
      if (!is.null(this_object$`change`)) {
        self$`change` <- this_object$`change`
      }
      if (!is.null(this_object$`view`)) {
        self$`view` <- this_object$`view`
      }
      if (!is.null(this_object$`delete`)) {
        self$`delete` <- this_object$`delete`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ReviewPermission in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ReviewPermission
    #'
    #' @param input_json the JSON input
    #' @return the instance of ReviewPermission
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`add` <- this_object$`add`
      self$`change` <- this_object$`change`
      self$`view` <- this_object$`view`
      self$`delete` <- this_object$`delete`
      self
    },

    #' @description
    #' Validate JSON input with respect to ReviewPermission and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `add`
      if (!is.null(input_json$`add`)) {
        if (!(is.logical(input_json$`add`) && length(input_json$`add`) == 1)) {
          stop(paste("Error! Invalid data for `add`. Must be a boolean:", input_json$`add`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ReviewPermission: the required field `add` is missing."))
      }
      # check the required field `change`
      if (!is.null(input_json$`change`)) {
        if (!(is.logical(input_json$`change`) && length(input_json$`change`) == 1)) {
          stop(paste("Error! Invalid data for `change`. Must be a boolean:", input_json$`change`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ReviewPermission: the required field `change` is missing."))
      }
      # check the required field `view`
      if (!is.null(input_json$`view`)) {
        if (!(is.logical(input_json$`view`) && length(input_json$`view`) == 1)) {
          stop(paste("Error! Invalid data for `view`. Must be a boolean:", input_json$`view`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ReviewPermission: the required field `view` is missing."))
      }
      # check the required field `delete`
      if (!is.null(input_json$`delete`)) {
        if (!(is.logical(input_json$`delete`) && length(input_json$`delete`) == 1)) {
          stop(paste("Error! Invalid data for `delete`. Must be a boolean:", input_json$`delete`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ReviewPermission: the required field `delete` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ReviewPermission
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `add` is null
      if (is.null(self$`add`)) {
        return(FALSE)
      }

      # check if the required `change` is null
      if (is.null(self$`change`)) {
        return(FALSE)
      }

      # check if the required `view` is null
      if (is.null(self$`view`)) {
        return(FALSE)
      }

      # check if the required `delete` is null
      if (is.null(self$`delete`)) {
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
      # check if the required `add` is null
      if (is.null(self$`add`)) {
        invalid_fields["add"] <- "Non-nullable required field `add` cannot be null."
      }

      # check if the required `change` is null
      if (is.null(self$`change`)) {
        invalid_fields["change"] <- "Non-nullable required field `change` cannot be null."
      }

      # check if the required `view` is null
      if (is.null(self$`view`)) {
        invalid_fields["view"] <- "Non-nullable required field `view` cannot be null."
      }

      # check if the required `delete` is null
      if (is.null(self$`delete`)) {
        invalid_fields["delete"] <- "Non-nullable required field `delete` cannot be null."
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
# ReviewPermission$unlock()
#
## Below is an example to define the print function
# ReviewPermission$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ReviewPermission$lock()

