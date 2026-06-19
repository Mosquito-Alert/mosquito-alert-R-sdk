#' Create a new WorkspaceCollaborationGroup
#'
#' @description
#' WorkspaceCollaborationGroup Class
#'
#' @docType class
#' @title WorkspaceCollaborationGroup
#' @description WorkspaceCollaborationGroup Class
#' @format An \code{R6Class} generator object
#' @field id  integer
#' @field name  character
#' @field workspaces  list(\link{SimpleWorkspace})
#' @field reviewers  list(\link{SimpleUser})
#' @field created_at  character
#' @field updated_at  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
WorkspaceCollaborationGroup <- R6::R6Class(
  "WorkspaceCollaborationGroup",
  public = list(
    `id` = NULL,
    `name` = NULL,
    `workspaces` = NULL,
    `reviewers` = NULL,
    `created_at` = NULL,
    `updated_at` = NULL,

    #' @description
    #' Initialize a new WorkspaceCollaborationGroup class.
    #'
    #' @param id id
    #' @param name name
    #' @param workspaces workspaces
    #' @param reviewers reviewers
    #' @param created_at created_at
    #' @param updated_at updated_at
    #' @param ... Other optional arguments.
    initialize = function(`id`, `name`, `workspaces`, `reviewers`, `created_at`, `updated_at`, ...) {
      if (!missing(`id`)) {
        if (!(is.numeric(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be an integer:", `id`))
        }
        self$`id` <- `id`
      }
      if (!missing(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!missing(`workspaces`)) {
        stopifnot(is.vector(`workspaces`), length(`workspaces`) != 0)
        sapply(`workspaces`, function(x) stopifnot(R6::is.R6(x)))
        self$`workspaces` <- `workspaces`
      }
      if (!missing(`reviewers`)) {
        stopifnot(is.vector(`reviewers`), length(`reviewers`) != 0)
        sapply(`reviewers`, function(x) stopifnot(R6::is.R6(x)))
        self$`reviewers` <- `reviewers`
      }
      if (!missing(`created_at`)) {
        if (!(is.character(`created_at`) && length(`created_at`) == 1)) {
          stop(paste("Error! Invalid data for `created_at`. Must be a string:", `created_at`))
        }
        self$`created_at` <- `created_at`
      }
      if (!missing(`updated_at`)) {
        if (!(is.character(`updated_at`) && length(`updated_at`) == 1)) {
          stop(paste("Error! Invalid data for `updated_at`. Must be a string:", `updated_at`))
        }
        self$`updated_at` <- `updated_at`
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
    #' @return WorkspaceCollaborationGroup as a base R list.
    #' @examples
    #' # convert array of WorkspaceCollaborationGroup (x) to a data frame
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
    #' Convert WorkspaceCollaborationGroup to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      WorkspaceCollaborationGroupObject <- list()
      if (!is.null(self$`id`)) {
        WorkspaceCollaborationGroupObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`name`)) {
        WorkspaceCollaborationGroupObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`workspaces`)) {
        WorkspaceCollaborationGroupObject[["workspaces"]] <-
          self$extractSimpleType(self$`workspaces`)
      }
      if (!is.null(self$`reviewers`)) {
        WorkspaceCollaborationGroupObject[["reviewers"]] <-
          self$extractSimpleType(self$`reviewers`)
      }
      if (!is.null(self$`created_at`)) {
        WorkspaceCollaborationGroupObject[["created_at"]] <-
          self$`created_at`
      }
      if (!is.null(self$`updated_at`)) {
        WorkspaceCollaborationGroupObject[["updated_at"]] <-
          self$`updated_at`
      }
      return(WorkspaceCollaborationGroupObject)
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
    #' Deserialize JSON string into an instance of WorkspaceCollaborationGroup
    #'
    #' @param input_json the JSON input
    #' @return the instance of WorkspaceCollaborationGroup
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`workspaces`)) {
        self$`workspaces` <- ApiClient$new()$deserializeObj(this_object$`workspaces`, "array[SimpleWorkspace]", loadNamespace("MosquitoAlert"))
      }
      if (!is.null(this_object$`reviewers`)) {
        self$`reviewers` <- ApiClient$new()$deserializeObj(this_object$`reviewers`, "array[SimpleUser]", loadNamespace("MosquitoAlert"))
      }
      if (!is.null(this_object$`created_at`)) {
        self$`created_at` <- this_object$`created_at`
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
    #' @return WorkspaceCollaborationGroup in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of WorkspaceCollaborationGroup
    #'
    #' @param input_json the JSON input
    #' @return the instance of WorkspaceCollaborationGroup
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`name` <- this_object$`name`
      self$`workspaces` <- ApiClient$new()$deserializeObj(this_object$`workspaces`, "array[SimpleWorkspace]", loadNamespace("MosquitoAlert"))
      self$`reviewers` <- ApiClient$new()$deserializeObj(this_object$`reviewers`, "array[SimpleUser]", loadNamespace("MosquitoAlert"))
      self$`created_at` <- this_object$`created_at`
      self$`updated_at` <- this_object$`updated_at`
      self
    },

    #' @description
    #' Validate JSON input with respect to WorkspaceCollaborationGroup and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for WorkspaceCollaborationGroup: the required field `id` is missing."))
      }
      # check the required field `name`
      if (!is.null(input_json$`name`)) {
        if (!(is.character(input_json$`name`) && length(input_json$`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", input_json$`name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for WorkspaceCollaborationGroup: the required field `name` is missing."))
      }
      # check the required field `workspaces`
      if (!is.null(input_json$`workspaces`)) {
        stopifnot(is.vector(input_json$`workspaces`), length(input_json$`workspaces`) != 0)
        tmp <- sapply(input_json$`workspaces`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for WorkspaceCollaborationGroup: the required field `workspaces` is missing."))
      }
      # check the required field `reviewers`
      if (!is.null(input_json$`reviewers`)) {
        stopifnot(is.vector(input_json$`reviewers`), length(input_json$`reviewers`) != 0)
        tmp <- sapply(input_json$`reviewers`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for WorkspaceCollaborationGroup: the required field `reviewers` is missing."))
      }
      # check the required field `created_at`
      if (!is.null(input_json$`created_at`)) {
        if (!(is.character(input_json$`created_at`) && length(input_json$`created_at`) == 1)) {
          stop(paste("Error! Invalid data for `created_at`. Must be a string:", input_json$`created_at`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for WorkspaceCollaborationGroup: the required field `created_at` is missing."))
      }
      # check the required field `updated_at`
      if (!is.null(input_json$`updated_at`)) {
        if (!(is.character(input_json$`updated_at`) && length(input_json$`updated_at`) == 1)) {
          stop(paste("Error! Invalid data for `updated_at`. Must be a string:", input_json$`updated_at`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for WorkspaceCollaborationGroup: the required field `updated_at` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of WorkspaceCollaborationGroup
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

      # check if the required `name` is null
      if (is.null(self$`name`)) {
        return(FALSE)
      }

      if (nchar(self$`name`) > 255) {
        return(FALSE)
      }

      # check if the required `workspaces` is null
      if (is.null(self$`workspaces`)) {
        return(FALSE)
      }

      # check if the required `reviewers` is null
      if (is.null(self$`reviewers`)) {
        return(FALSE)
      }

      # check if the required `created_at` is null
      if (is.null(self$`created_at`)) {
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

      # check if the required `name` is null
      if (is.null(self$`name`)) {
        invalid_fields["name"] <- "Non-nullable required field `name` cannot be null."
      }

      if (nchar(self$`name`) > 255) {
        invalid_fields["name"] <- "Invalid length for `name`, must be smaller than or equal to 255."
      }

      # check if the required `workspaces` is null
      if (is.null(self$`workspaces`)) {
        invalid_fields["workspaces"] <- "Non-nullable required field `workspaces` cannot be null."
      }

      # check if the required `reviewers` is null
      if (is.null(self$`reviewers`)) {
        invalid_fields["reviewers"] <- "Non-nullable required field `reviewers` cannot be null."
      }

      # check if the required `created_at` is null
      if (is.null(self$`created_at`)) {
        invalid_fields["created_at"] <- "Non-nullable required field `created_at` cannot be null."
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
# WorkspaceCollaborationGroup$unlock()
#
## Below is an example to define the print function
# WorkspaceCollaborationGroup$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# WorkspaceCollaborationGroup$lock()

