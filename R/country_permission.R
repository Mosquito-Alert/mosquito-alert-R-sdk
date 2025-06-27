#' Create a new CountryPermission
#'
#' @description
#' CountryPermission Class
#'
#' @docType class
#' @title CountryPermission
#' @description CountryPermission Class
#' @format An \code{R6Class} generator object
#' @field role  character
#' @field permissions  \link{Permissions}
#' @field country  \link{Country}
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CountryPermission <- R6::R6Class(
  "CountryPermission",
  public = list(
    `role` = NULL,
    `permissions` = NULL,
    `country` = NULL,

    #' @description
    #' Initialize a new CountryPermission class.
    #'
    #' @param role role
    #' @param permissions permissions
    #' @param country country
    #' @param ... Other optional arguments.
    initialize = function(`role`, `permissions`, `country`, ...) {
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
      if (!missing(`country`)) {
        stopifnot(R6::is.R6(`country`))
        self$`country` <- `country`
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
    #' @return CountryPermission as a base R list.
    #' @examples
    #' # convert array of CountryPermission (x) to a data frame
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
    #' Convert CountryPermission to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      CountryPermissionObject <- list()
      if (!is.null(self$`role`)) {
        CountryPermissionObject[["role"]] <-
          self$`role`
      }
      if (!is.null(self$`permissions`)) {
        CountryPermissionObject[["permissions"]] <-
          self$`permissions`$toSimpleType()
      }
      if (!is.null(self$`country`)) {
        CountryPermissionObject[["country"]] <-
          self$`country`$toSimpleType()
      }
      return(CountryPermissionObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of CountryPermission
    #'
    #' @param input_json the JSON input
    #' @return the instance of CountryPermission
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
      if (!is.null(this_object$`country`)) {
        `country_object` <- Country$new()
        `country_object`$fromJSON(jsonlite::toJSON(this_object$`country`, auto_unbox = TRUE, digits = NA))
        self$`country` <- `country_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return CountryPermission in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of CountryPermission
    #'
    #' @param input_json the JSON input
    #' @return the instance of CountryPermission
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`role`) && !(this_object$`role` %in% c("base", "annotator", "supervisor", "reviewer", "admin"))) {
        stop(paste("Error! \"", this_object$`role`, "\" cannot be assigned to `role`. Must be \"base\", \"annotator\", \"supervisor\", \"reviewer\", \"admin\".", sep = ""))
      }
      self$`role` <- this_object$`role`
      self$`permissions` <- Permissions$new()$fromJSON(jsonlite::toJSON(this_object$`permissions`, auto_unbox = TRUE, digits = NA))
      self$`country` <- Country$new()$fromJSON(jsonlite::toJSON(this_object$`country`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to CountryPermission and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for CountryPermission: the required field `role` is missing."))
      }
      # check the required field `permissions`
      if (!is.null(input_json$`permissions`)) {
        stopifnot(R6::is.R6(input_json$`permissions`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CountryPermission: the required field `permissions` is missing."))
      }
      # check the required field `country`
      if (!is.null(input_json$`country`)) {
        stopifnot(R6::is.R6(input_json$`country`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CountryPermission: the required field `country` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CountryPermission
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

      # check if the required `country` is null
      if (is.null(self$`country`)) {
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

      # check if the required `country` is null
      if (is.null(self$`country`)) {
        invalid_fields["country"] <- "Non-nullable required field `country` cannot be null."
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
# CountryPermission$unlock()
#
## Below is an example to define the print function
# CountryPermission$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CountryPermission$lock()

