#' Create a new StatsArea
#'
#' @description
#' StatsArea Class
#'
#' @docType class
#' @title StatsArea
#' @description StatsArea Class
#' @format An \code{R6Class} generator object
#' @field key Value to send as `?area=`, e.g. \"nuts2:34\". character
#' @field level  character
#' @field id  character
#' @field code  character
#' @field name  character
#' @field is_member True if the user is a direct member of a workspace anchored on this area. character
#' @field children  list(\link{StatsArea})
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
StatsArea <- R6::R6Class(
  "StatsArea",
  public = list(
    `key` = NULL,
    `level` = NULL,
    `id` = NULL,
    `code` = NULL,
    `name` = NULL,
    `is_member` = NULL,
    `children` = NULL,

    #' @description
    #' Initialize a new StatsArea class.
    #'
    #' @param key Value to send as `?area=`, e.g. \"nuts2:34\".
    #' @param level level
    #' @param id id
    #' @param code code
    #' @param name name
    #' @param is_member True if the user is a direct member of a workspace anchored on this area.
    #' @param children children
    #' @param ... Other optional arguments.
    initialize = function(`key`, `level`, `id`, `code`, `name`, `is_member`, `children`, ...) {
      if (!missing(`key`)) {
        if (!(is.character(`key`) && length(`key`) == 1)) {
          stop(paste("Error! Invalid data for `key`. Must be a string:", `key`))
        }
        self$`key` <- `key`
      }
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
      if (!missing(`is_member`)) {
        if (!(is.logical(`is_member`) && length(`is_member`) == 1)) {
          stop(paste("Error! Invalid data for `is_member`. Must be a boolean:", `is_member`))
        }
        self$`is_member` <- `is_member`
      }
      if (!missing(`children`)) {
        stopifnot(is.vector(`children`), length(`children`) != 0)
        sapply(`children`, function(x) stopifnot(R6::is.R6(x)))
        self$`children` <- `children`
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
    #' @return StatsArea as a base R list.
    #' @examples
    #' # convert array of StatsArea (x) to a data frame
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
    #' Convert StatsArea to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      StatsAreaObject <- list()
      if (!is.null(self$`key`)) {
        StatsAreaObject[["key"]] <-
          self$`key`
      }
      if (!is.null(self$`level`)) {
        StatsAreaObject[["level"]] <-
          self$`level`
      }
      if (!is.null(self$`id`)) {
        StatsAreaObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`code`)) {
        StatsAreaObject[["code"]] <-
          self$`code`
      }
      if (!is.null(self$`name`)) {
        StatsAreaObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`is_member`)) {
        StatsAreaObject[["is_member"]] <-
          self$`is_member`
      }
      if (!is.null(self$`children`)) {
        StatsAreaObject[["children"]] <-
          self$extractSimpleType(self$`children`)
      }
      return(StatsAreaObject)
    },

    extractSimpleType = function(x) {
      if (R6::is.R6(x)) {
        return(x$toSimpleType())
      } else if (!self$hasNestedR6(x)) {
        return(x)
      }
      lapply(x, self$extractSimpleType)
    },

    hasNestedR6 = function(x) {
      if (R6::is.R6(x)) {
        return(TRUE)
      }
      if (is.list(x)) {
        for (item in x) {
          if (self$hasNestedR6(item)) {
            return(TRUE)
          }
        }
      }
      FALSE
    },

    #' @description
    #' Deserialize JSON string into an instance of StatsArea
    #'
    #' @param input_json the JSON input
    #' @return the instance of StatsArea
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`key`)) {
        self$`key` <- this_object$`key`
      }
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
      if (!is.null(this_object$`is_member`)) {
        self$`is_member` <- this_object$`is_member`
      }
      if (!is.null(this_object$`children`)) {
        self$`children` <- ApiClient$new()$deserializeObj(this_object$`children`, "array[StatsArea]", loadNamespace("MosquitoAlert"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return StatsArea in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of StatsArea
    #'
    #' @param input_json the JSON input
    #' @return the instance of StatsArea
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`key` <- this_object$`key`
      if (!is.null(this_object$`level`) && !(this_object$`level` %in% c("country", "nuts2", "nuts3"))) {
        stop(paste("Error! \"", this_object$`level`, "\" cannot be assigned to `level`. Must be \"country\", \"nuts2\", \"nuts3\".", sep = ""))
      }
      self$`level` <- this_object$`level`
      self$`id` <- this_object$`id`
      self$`code` <- this_object$`code`
      self$`name` <- this_object$`name`
      self$`is_member` <- this_object$`is_member`
      self$`children` <- ApiClient$new()$deserializeObj(this_object$`children`, "array[StatsArea]", loadNamespace("MosquitoAlert"))
      self
    },

    #' @description
    #' Validate JSON input with respect to StatsArea and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `key`
      if (!is.null(input_json$`key`)) {
        if (!(is.character(input_json$`key`) && length(input_json$`key`) == 1)) {
          stop(paste("Error! Invalid data for `key`. Must be a string:", input_json$`key`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for StatsArea: the required field `key` is missing."))
      }
      # check the required field `level`
      if (!is.null(input_json$`level`)) {
        if (!(is.character(input_json$`level`) && length(input_json$`level`) == 1)) {
          stop(paste("Error! Invalid data for `level`. Must be a string:", input_json$`level`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for StatsArea: the required field `level` is missing."))
      }
      # check the required field `id`
      if (!is.null(input_json$`id`)) {
        if (!(is.character(input_json$`id`) && length(input_json$`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be a string:", input_json$`id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for StatsArea: the required field `id` is missing."))
      }
      # check the required field `code`
      if (!is.null(input_json$`code`)) {
        if (!(is.character(input_json$`code`) && length(input_json$`code`) == 1)) {
          stop(paste("Error! Invalid data for `code`. Must be a string:", input_json$`code`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for StatsArea: the required field `code` is missing."))
      }
      # check the required field `name`
      if (!is.null(input_json$`name`)) {
        if (!(is.character(input_json$`name`) && length(input_json$`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", input_json$`name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for StatsArea: the required field `name` is missing."))
      }
      # check the required field `is_member`
      if (!is.null(input_json$`is_member`)) {
        if (!(is.logical(input_json$`is_member`) && length(input_json$`is_member`) == 1)) {
          stop(paste("Error! Invalid data for `is_member`. Must be a boolean:", input_json$`is_member`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for StatsArea: the required field `is_member` is missing."))
      }
      # check the required field `children`
      if (!is.null(input_json$`children`)) {
        stopifnot(is.vector(input_json$`children`), length(input_json$`children`) != 0)
        tmp <- sapply(input_json$`children`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for StatsArea: the required field `children` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of StatsArea
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `key` is null
      if (is.null(self$`key`)) {
        return(FALSE)
      }

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

      # check if the required `is_member` is null
      if (is.null(self$`is_member`)) {
        return(FALSE)
      }

      # check if the required `children` is null
      if (is.null(self$`children`)) {
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
      # check if the required `key` is null
      if (is.null(self$`key`)) {
        invalid_fields["key"] <- "Non-nullable required field `key` cannot be null."
      }

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

      # check if the required `is_member` is null
      if (is.null(self$`is_member`)) {
        invalid_fields["is_member"] <- "Non-nullable required field `is_member` cannot be null."
      }

      # check if the required `children` is null
      if (is.null(self$`children`)) {
        invalid_fields["children"] <- "Non-nullable required field `children` cannot be null."
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
# StatsArea$unlock()
#
## Below is an example to define the print function
# StatsArea$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# StatsArea$lock()

