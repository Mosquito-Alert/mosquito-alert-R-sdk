#' Create a new GeneralPermission
#'
#' @description
#' GeneralPermission Class
#'
#' @docType class
#' @title GeneralPermission
#' @description GeneralPermission Class
#' @format An \code{R6Class} generator object
#' @field role  character
#' @field permissions  \link{Permissions}
#' @field is_staff  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GeneralPermission <- R6::R6Class(
  "GeneralPermission",
  public = list(
    `role` = NULL,
    `permissions` = NULL,
    `is_staff` = NULL,

    #' @description
    #' Initialize a new GeneralPermission class.
    #'
    #' @param role role
    #' @param permissions permissions
    #' @param is_staff is_staff
    #' @param ... Other optional arguments.
    initialize = function(`role`, `permissions`, `is_staff`, ...) {
      if (!missing(`role`)) {
        if (!(`role` %in% c("base", "annotator", "supervisor", "reviewer", "admin"))) {
          stop(paste("Error! \"", `role`, "\" cannot be assigned to `role`. Must be \"base\", \"annotator\", \"supervisor\", \"reviewer\", \"admin\".", sep = ""))
        }
        if (!(is.character(`role`) && length(`role`) == 1)) {
          stop(paste("Error! Invalid data for `role`. Must be a string:", `role`))
        }
        self$`role` <- `role`
      }
      if (!missing(`permissions`)) {
        stopifnot(R6::is.R6(`permissions`))
        self$`permissions` <- `permissions`
      }
      if (!missing(`is_staff`)) {
        if (!(is.logical(`is_staff`) && length(`is_staff`) == 1)) {
          stop(paste("Error! Invalid data for `is_staff`. Must be a boolean:", `is_staff`))
        }
        self$`is_staff` <- `is_staff`
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
    #' @return GeneralPermission as a base R list.
    #' @examples
    #' # convert array of GeneralPermission (x) to a data frame
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
    #' Convert GeneralPermission to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      GeneralPermissionObject <- list()
      if (!is.null(self$`role`)) {
        GeneralPermissionObject[["role"]] <-
          self$`role`
      }
      if (!is.null(self$`permissions`)) {
        GeneralPermissionObject[["permissions"]] <-
          self$`permissions`$toSimpleType()
      }
      if (!is.null(self$`is_staff`)) {
        GeneralPermissionObject[["is_staff"]] <-
          self$`is_staff`
      }
      return(GeneralPermissionObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of GeneralPermission
    #'
    #' @param input_json the JSON input
    #' @return the instance of GeneralPermission
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`role`)) {
        if (!is.null(this_object$`role`) && !(this_object$`role` %in% c("base", "annotator", "supervisor", "reviewer", "admin"))) {
          stop(paste("Error! \"", this_object$`role`, "\" cannot be assigned to `role`. Must be \"base\", \"annotator\", \"supervisor\", \"reviewer\", \"admin\".", sep = ""))
        }
        self$`role` <- this_object$`role`
      }
      if (!is.null(this_object$`permissions`)) {
        `permissions_object` <- Permissions$new()
        `permissions_object`$fromJSON(jsonlite::toJSON(this_object$`permissions`, auto_unbox = TRUE, digits = NA))
        self$`permissions` <- `permissions_object`
      }
      if (!is.null(this_object$`is_staff`)) {
        self$`is_staff` <- this_object$`is_staff`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return GeneralPermission in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of GeneralPermission
    #'
    #' @param input_json the JSON input
    #' @return the instance of GeneralPermission
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`role`) && !(this_object$`role` %in% c("base", "annotator", "supervisor", "reviewer", "admin"))) {
        stop(paste("Error! \"", this_object$`role`, "\" cannot be assigned to `role`. Must be \"base\", \"annotator\", \"supervisor\", \"reviewer\", \"admin\".", sep = ""))
      }
      self$`role` <- this_object$`role`
      self$`permissions` <- Permissions$new()$fromJSON(jsonlite::toJSON(this_object$`permissions`, auto_unbox = TRUE, digits = NA))
      self$`is_staff` <- this_object$`is_staff`
      self
    },

    #' @description
    #' Validate JSON input with respect to GeneralPermission and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `role`
      if (!is.null(input_json$`role`)) {
        if (!(is.character(input_json$`role`) && length(input_json$`role`) == 1)) {
          stop(paste("Error! Invalid data for `role`. Must be a string:", input_json$`role`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GeneralPermission: the required field `role` is missing."))
      }
      # check the required field `permissions`
      if (!is.null(input_json$`permissions`)) {
        stopifnot(R6::is.R6(input_json$`permissions`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GeneralPermission: the required field `permissions` is missing."))
      }
      # check the required field `is_staff`
      if (!is.null(input_json$`is_staff`)) {
        if (!(is.logical(input_json$`is_staff`) && length(input_json$`is_staff`) == 1)) {
          stop(paste("Error! Invalid data for `is_staff`. Must be a boolean:", input_json$`is_staff`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GeneralPermission: the required field `is_staff` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of GeneralPermission
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `role` is null
      if (is.null(self$`role`)) {
        return(FALSE)
      }

      # check if the required `permissions` is null
      if (is.null(self$`permissions`)) {
        return(FALSE)
      }

      # check if the required `is_staff` is null
      if (is.null(self$`is_staff`)) {
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
      # check if the required `role` is null
      if (is.null(self$`role`)) {
        invalid_fields["role"] <- "Non-nullable required field `role` cannot be null."
      }

      # check if the required `permissions` is null
      if (is.null(self$`permissions`)) {
        invalid_fields["permissions"] <- "Non-nullable required field `permissions` cannot be null."
      }

      # check if the required `is_staff` is null
      if (is.null(self$`is_staff`)) {
        invalid_fields["is_staff"] <- "Non-nullable required field `is_staff` cannot be null."
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
# GeneralPermission$unlock()
#
## Below is an example to define the print function
# GeneralPermission$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# GeneralPermission$lock()

