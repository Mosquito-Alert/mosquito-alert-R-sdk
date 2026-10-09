#' Create a new AreaMeta
#'
#' @description
#' AreaMeta Class
#'
#' @docType class
#' @title AreaMeta
#' @description AreaMeta Class
#' @format An \code{R6Class} generator object
#' @field level  character
#' @field id  character
#' @field code  character
#' @field name  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AreaMeta <- R6::R6Class(
  "AreaMeta",
  public = list(
    `level` = NULL,
    `id` = NULL,
    `code` = NULL,
    `name` = NULL,

    #' @description
    #' Initialize a new AreaMeta class.
    #'
    #' @param level level
    #' @param id id
    #' @param code code
    #' @param name name
    #' @param ... Other optional arguments.
    initialize = function(`level`, `id`, `code`, `name`, ...) {
      if (!missing(`level`)) {
        if (!(`level` %in% c("country", "nuts2", "nuts3"))) {
          stop(paste("Error! \"", `level`, "\" cannot be assigned to `level`. Must be \"country\", \"nuts2\", \"nuts3\".", sep = ""))
        }
        if (!(is.character(`level`) && length(`level`) == 1)) {
          stop(paste("Error! Invalid data for `level`. Must be a string:", `level`))
        }
        self$`level` <- `level`
      }
      if (!missing(`id`)) {
        if (!(is.character(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be a string:", `id`))
        }
        self$`id` <- `id`
      }
      if (!missing(`code`)) {
        if (!(is.character(`code`) && length(`code`) == 1)) {
          stop(paste("Error! Invalid data for `code`. Must be a string:", `code`))
        }
        self$`code` <- `code`
      }
      if (!missing(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
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
    #' @return AreaMeta as a base R list.
    #' @examples
    #' # convert array of AreaMeta (x) to a data frame
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
    #' Convert AreaMeta to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AreaMetaObject <- list()
      if (!is.null(self$`level`)) {
        AreaMetaObject[["level"]] <-
          self$`level`
      }
      if (!is.null(self$`id`)) {
        AreaMetaObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`code`)) {
        AreaMetaObject[["code"]] <-
          self$`code`
      }
      if (!is.null(self$`name`)) {
        AreaMetaObject[["name"]] <-
          self$`name`
      }
      return(AreaMetaObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of AreaMeta
    #'
    #' @param input_json the JSON input
    #' @return the instance of AreaMeta
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`level`)) {
        if (!is.null(this_object$`level`) && !(this_object$`level` %in% c("country", "nuts2", "nuts3"))) {
          stop(paste("Error! \"", this_object$`level`, "\" cannot be assigned to `level`. Must be \"country\", \"nuts2\", \"nuts3\".", sep = ""))
        }
        self$`level` <- this_object$`level`
      }
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`code`)) {
        self$`code` <- this_object$`code`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return AreaMeta in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of AreaMeta
    #'
    #' @param input_json the JSON input
    #' @return the instance of AreaMeta
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`level`) && !(this_object$`level` %in% c("country", "nuts2", "nuts3"))) {
        stop(paste("Error! \"", this_object$`level`, "\" cannot be assigned to `level`. Must be \"country\", \"nuts2\", \"nuts3\".", sep = ""))
      }
      self$`level` <- this_object$`level`
      self$`id` <- this_object$`id`
      self$`code` <- this_object$`code`
      self$`name` <- this_object$`name`
      self
    },

    #' @description
    #' Validate JSON input with respect to AreaMeta and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `level`
      if (!is.null(input_json$`level`)) {
        if (!(is.character(input_json$`level`) && length(input_json$`level`) == 1)) {
          stop(paste("Error! Invalid data for `level`. Must be a string:", input_json$`level`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AreaMeta: the required field `level` is missing."))
      }
      # check the required field `id`
      if (!is.null(input_json$`id`)) {
        if (!(is.character(input_json$`id`) && length(input_json$`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be a string:", input_json$`id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AreaMeta: the required field `id` is missing."))
      }
      # check the required field `code`
      if (!is.null(input_json$`code`)) {
        if (!(is.character(input_json$`code`) && length(input_json$`code`) == 1)) {
          stop(paste("Error! Invalid data for `code`. Must be a string:", input_json$`code`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AreaMeta: the required field `code` is missing."))
      }
      # check the required field `name`
      if (!is.null(input_json$`name`)) {
        if (!(is.character(input_json$`name`) && length(input_json$`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", input_json$`name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AreaMeta: the required field `name` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AreaMeta
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `level` is null
      if (is.null(self$`level`)) {
        return(FALSE)
      }

      # check if the required `id` is null
      if (is.null(self$`id`)) {
        return(FALSE)
      }

      # check if the required `code` is null
      if (is.null(self$`code`)) {
        return(FALSE)
      }

      # check if the required `name` is null
      if (is.null(self$`name`)) {
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
      # check if the required `level` is null
      if (is.null(self$`level`)) {
        invalid_fields["level"] <- "Non-nullable required field `level` cannot be null."
      }

      # check if the required `id` is null
      if (is.null(self$`id`)) {
        invalid_fields["id"] <- "Non-nullable required field `id` cannot be null."
      }

      # check if the required `code` is null
      if (is.null(self$`code`)) {
        invalid_fields["code"] <- "Non-nullable required field `code` cannot be null."
      }

      # check if the required `name` is null
      if (is.null(self$`name`)) {
        invalid_fields["name"] <- "Non-nullable required field `name` cannot be null."
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
# AreaMeta$unlock()
#
## Below is an example to define the print function
# AreaMeta$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AreaMeta$lock()

