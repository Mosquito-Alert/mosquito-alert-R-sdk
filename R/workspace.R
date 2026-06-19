#' Create a new Workspace
#'
#' @description
#' Workspace Class
#'
#' @docType class
#' @title Workspace
#' @description Workspace Class
#' @format An \code{R6Class} generator object
#' @field id  integer
#' @field name  character [optional]
#' @field country  \link{Country}
#' @field memberships  list(\link{WorkspaceMembership})
#' @field is_public Whether the results of the workspace are visible to the public. character [optional]
#' @field supervisor_exclusivity_days Number of days that a identification tasks in the queue is exclusively available to the supervisors. integer [optional]
#' @field updated_at  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Workspace <- R6::R6Class(
  "Workspace",
  public = list(
    `id` = NULL,
    `name` = NULL,
    `country` = NULL,
    `memberships` = NULL,
    `is_public` = NULL,
    `supervisor_exclusivity_days` = NULL,
    `updated_at` = NULL,

    #' @description
    #' Initialize a new Workspace class.
    #'
    #' @param id id
    #' @param country country
    #' @param memberships memberships
    #' @param updated_at updated_at
    #' @param name name
    #' @param is_public Whether the results of the workspace are visible to the public.
    #' @param supervisor_exclusivity_days Number of days that a identification tasks in the queue is exclusively available to the supervisors.
    #' @param ... Other optional arguments.
    initialize = function(`id`, `country`, `memberships`, `updated_at`, `name` = NULL, `is_public` = NULL, `supervisor_exclusivity_days` = NULL, ...) {
      if (!missing(`id`)) {
        if (!(is.numeric(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be an integer:", `id`))
        }
        self$`id` <- `id`
      }
      if (!missing(`country`)) {
        stopifnot(R6::is.R6(`country`))
        self$`country` <- `country`
      }
      if (!missing(`memberships`)) {
        stopifnot(is.vector(`memberships`), length(`memberships`) != 0)
        sapply(`memberships`, function(x) stopifnot(R6::is.R6(x)))
        self$`memberships` <- `memberships`
      }
      if (!missing(`updated_at`)) {
        if (!(is.character(`updated_at`) && length(`updated_at`) == 1)) {
          stop(paste("Error! Invalid data for `updated_at`. Must be a string:", `updated_at`))
        }
        self$`updated_at` <- `updated_at`
      }
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`is_public`)) {
        if (!(is.logical(`is_public`) && length(`is_public`) == 1)) {
          stop(paste("Error! Invalid data for `is_public`. Must be a boolean:", `is_public`))
        }
        self$`is_public` <- `is_public`
      }
      if (!is.null(`supervisor_exclusivity_days`)) {
        if (!(is.numeric(`supervisor_exclusivity_days`) && length(`supervisor_exclusivity_days`) == 1)) {
          stop(paste("Error! Invalid data for `supervisor_exclusivity_days`. Must be an integer:", `supervisor_exclusivity_days`))
        }
        self$`supervisor_exclusivity_days` <- `supervisor_exclusivity_days`
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
    #' @return Workspace as a base R list.
    #' @examples
    #' # convert array of Workspace (x) to a data frame
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
    #' Convert Workspace to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      WorkspaceObject <- list()
      if (!is.null(self$`id`)) {
        WorkspaceObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`name`)) {
        WorkspaceObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`country`)) {
        WorkspaceObject[["country"]] <-
          self$extractSimpleType(self$`country`)
      }
      if (!is.null(self$`memberships`)) {
        WorkspaceObject[["memberships"]] <-
          self$extractSimpleType(self$`memberships`)
      }
      if (!is.null(self$`is_public`)) {
        WorkspaceObject[["is_public"]] <-
          self$`is_public`
      }
      if (!is.null(self$`supervisor_exclusivity_days`)) {
        WorkspaceObject[["supervisor_exclusivity_days"]] <-
          self$`supervisor_exclusivity_days`
      }
      if (!is.null(self$`updated_at`)) {
        WorkspaceObject[["updated_at"]] <-
          self$`updated_at`
      }
      return(WorkspaceObject)
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
    #' Deserialize JSON string into an instance of Workspace
    #'
    #' @param input_json the JSON input
    #' @return the instance of Workspace
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`country`)) {
        `country_object` <- Country$new()
        `country_object`$fromJSON(jsonlite::toJSON(this_object$`country`, auto_unbox = TRUE, digits = NA))
        self$`country` <- `country_object`
      }
      if (!is.null(this_object$`memberships`)) {
        self$`memberships` <- ApiClient$new()$deserializeObj(this_object$`memberships`, "array[WorkspaceMembership]", loadNamespace("MosquitoAlert"))
      }
      if (!is.null(this_object$`is_public`)) {
        self$`is_public` <- this_object$`is_public`
      }
      if (!is.null(this_object$`supervisor_exclusivity_days`)) {
        self$`supervisor_exclusivity_days` <- this_object$`supervisor_exclusivity_days`
      }
      if (!is.null(this_object$`updated_at`)) {
        self$`updated_at` <- this_object$`updated_at`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return Workspace in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of Workspace
    #'
    #' @param input_json the JSON input
    #' @return the instance of Workspace
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`name` <- this_object$`name`
      self$`country` <- Country$new()$fromJSON(jsonlite::toJSON(this_object$`country`, auto_unbox = TRUE, digits = NA))
      self$`memberships` <- ApiClient$new()$deserializeObj(this_object$`memberships`, "array[WorkspaceMembership]", loadNamespace("MosquitoAlert"))
      self$`is_public` <- this_object$`is_public`
      self$`supervisor_exclusivity_days` <- this_object$`supervisor_exclusivity_days`
      self$`updated_at` <- this_object$`updated_at`
      self
    },

    #' @description
    #' Validate JSON input with respect to Workspace and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for Workspace: the required field `id` is missing."))
      }
      # check the required field `country`
      if (!is.null(input_json$`country`)) {
        stopifnot(R6::is.R6(input_json$`country`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Workspace: the required field `country` is missing."))
      }
      # check the required field `memberships`
      if (!is.null(input_json$`memberships`)) {
        stopifnot(is.vector(input_json$`memberships`), length(input_json$`memberships`) != 0)
        tmp <- sapply(input_json$`memberships`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Workspace: the required field `memberships` is missing."))
      }
      # check the required field `updated_at`
      if (!is.null(input_json$`updated_at`)) {
        if (!(is.character(input_json$`updated_at`) && length(input_json$`updated_at`) == 1)) {
          stop(paste("Error! Invalid data for `updated_at`. Must be a string:", input_json$`updated_at`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Workspace: the required field `updated_at` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Workspace
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

      if (nchar(self$`name`) > 255) {
        return(FALSE)
      }

      # check if the required `memberships` is null
      if (is.null(self$`memberships`)) {
        return(FALSE)
      }

      if (self$`supervisor_exclusivity_days` > 32767) {
        return(FALSE)
      }
      if (self$`supervisor_exclusivity_days` < 0) {
        return(FALSE)
      }

      # check if the required `updated_at` is null
      if (is.null(self$`updated_at`)) {
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

      if (nchar(self$`name`) > 255) {
        invalid_fields["name"] <- "Invalid length for `name`, must be smaller than or equal to 255."
      }

      # check if the required `memberships` is null
      if (is.null(self$`memberships`)) {
        invalid_fields["memberships"] <- "Non-nullable required field `memberships` cannot be null."
      }

      if (self$`supervisor_exclusivity_days` > 32767) {
        invalid_fields["supervisor_exclusivity_days"] <- "Invalid value for `supervisor_exclusivity_days`, must be smaller than or equal to 32767."
      }
      if (self$`supervisor_exclusivity_days` < 0) {
        invalid_fields["supervisor_exclusivity_days"] <- "Invalid value for `supervisor_exclusivity_days`, must be bigger than or equal to 0."
      }

      # check if the required `updated_at` is null
      if (is.null(self$`updated_at`)) {
        invalid_fields["updated_at"] <- "Non-nullable required field `updated_at` cannot be null."
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
# Workspace$unlock()
#
## Below is an example to define the print function
# Workspace$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Workspace$lock()

