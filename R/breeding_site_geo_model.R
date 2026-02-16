#' Create a new BreedingSiteGeoModel
#'
#' @description
#' BreedingSiteGeoModel Class
#'
#' @docType class
#' @title BreedingSiteGeoModel
#' @description BreedingSiteGeoModel Class
#' @format An \code{R6Class} generator object
#' @field uuid  character
#' @field point  \link{Point}
#' @field received_at  character
#' @field site_type  character
#' @field has_water Either if the user perceived water in the breeding site. character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
BreedingSiteGeoModel <- R6::R6Class(
  "BreedingSiteGeoModel",
  public = list(
    `uuid` = NULL,
    `point` = NULL,
    `received_at` = NULL,
    `site_type` = NULL,
    `has_water` = NULL,

    #' @description
    #' Initialize a new BreedingSiteGeoModel class.
    #'
    #' @param uuid uuid
    #' @param point point
    #' @param received_at received_at
    #' @param site_type site_type
    #' @param has_water Either if the user perceived water in the breeding site.
    #' @param ... Other optional arguments.
    initialize = function(`uuid`, `point`, `received_at`, `site_type`, `has_water` = NULL, ...) {
      if (!missing(`uuid`)) {
        if (!(is.character(`uuid`) && length(`uuid`) == 1)) {
          stop(paste("Error! Invalid data for `uuid`. Must be a string:", `uuid`))
        }
        self$`uuid` <- `uuid`
      }
      if (!missing(`point`)) {
        stopifnot(R6::is.R6(`point`))
        self$`point` <- `point`
      }
      if (!missing(`received_at`)) {
        if (!(is.character(`received_at`) && length(`received_at`) == 1)) {
          stop(paste("Error! Invalid data for `received_at`. Must be a string:", `received_at`))
        }
        self$`received_at` <- `received_at`
      }
      if (!missing(`site_type`)) {
        if (!(`site_type` %in% c("basin", "bucket", "fountain", "small_container", "storm_drain", "well", "other"))) {
          stop(paste("Error! \"", `site_type`, "\" cannot be assigned to `site_type`. Must be \"basin\", \"bucket\", \"fountain\", \"small_container\", \"storm_drain\", \"well\", \"other\".", sep = ""))
        }
        if (!(is.character(`site_type`) && length(`site_type`) == 1)) {
          stop(paste("Error! Invalid data for `site_type`. Must be a string:", `site_type`))
        }
        self$`site_type` <- `site_type`
      }
      if (!is.null(`has_water`)) {
        if (!(is.logical(`has_water`) && length(`has_water`) == 1)) {
          stop(paste("Error! Invalid data for `has_water`. Must be a boolean:", `has_water`))
        }
        self$`has_water` <- `has_water`
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
    #' @return BreedingSiteGeoModel as a base R list.
    #' @examples
    #' # convert array of BreedingSiteGeoModel (x) to a data frame
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
    #' Convert BreedingSiteGeoModel to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      BreedingSiteGeoModelObject <- list()
      if (!is.null(self$`uuid`)) {
        BreedingSiteGeoModelObject[["uuid"]] <-
          self$`uuid`
      }
      if (!is.null(self$`point`)) {
        BreedingSiteGeoModelObject[["point"]] <-
          self$extractSimpleType(self$`point`)
      }
      if (!is.null(self$`received_at`)) {
        BreedingSiteGeoModelObject[["received_at"]] <-
          self$`received_at`
      }
      if (!is.null(self$`site_type`)) {
        BreedingSiteGeoModelObject[["site_type"]] <-
          self$`site_type`
      }
      if (!is.null(self$`has_water`)) {
        BreedingSiteGeoModelObject[["has_water"]] <-
          self$`has_water`
      }
      return(BreedingSiteGeoModelObject)
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
    #' Deserialize JSON string into an instance of BreedingSiteGeoModel
    #'
    #' @param input_json the JSON input
    #' @return the instance of BreedingSiteGeoModel
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`uuid`)) {
        self$`uuid` <- this_object$`uuid`
      }
      if (!is.null(this_object$`point`)) {
        `point_object` <- Point$new()
        `point_object`$fromJSON(jsonlite::toJSON(this_object$`point`, auto_unbox = TRUE, digits = NA))
        self$`point` <- `point_object`
      }
      if (!is.null(this_object$`received_at`)) {
        self$`received_at` <- this_object$`received_at`
      }
      if (!is.null(this_object$`site_type`)) {
        if (!is.null(this_object$`site_type`) && !(this_object$`site_type` %in% c("basin", "bucket", "fountain", "small_container", "storm_drain", "well", "other"))) {
          stop(paste("Error! \"", this_object$`site_type`, "\" cannot be assigned to `site_type`. Must be \"basin\", \"bucket\", \"fountain\", \"small_container\", \"storm_drain\", \"well\", \"other\".", sep = ""))
        }
        self$`site_type` <- this_object$`site_type`
      }
      if (!is.null(this_object$`has_water`)) {
        self$`has_water` <- this_object$`has_water`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return BreedingSiteGeoModel in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of BreedingSiteGeoModel
    #'
    #' @param input_json the JSON input
    #' @return the instance of BreedingSiteGeoModel
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`uuid` <- this_object$`uuid`
      self$`point` <- Point$new()$fromJSON(jsonlite::toJSON(this_object$`point`, auto_unbox = TRUE, digits = NA))
      self$`received_at` <- this_object$`received_at`
      if (!is.null(this_object$`site_type`) && !(this_object$`site_type` %in% c("basin", "bucket", "fountain", "small_container", "storm_drain", "well", "other"))) {
        stop(paste("Error! \"", this_object$`site_type`, "\" cannot be assigned to `site_type`. Must be \"basin\", \"bucket\", \"fountain\", \"small_container\", \"storm_drain\", \"well\", \"other\".", sep = ""))
      }
      self$`site_type` <- this_object$`site_type`
      self$`has_water` <- this_object$`has_water`
      self
    },

    #' @description
    #' Validate JSON input with respect to BreedingSiteGeoModel and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `uuid`
      if (!is.null(input_json$`uuid`)) {
        if (!(is.character(input_json$`uuid`) && length(input_json$`uuid`) == 1)) {
          stop(paste("Error! Invalid data for `uuid`. Must be a string:", input_json$`uuid`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for BreedingSiteGeoModel: the required field `uuid` is missing."))
      }
      # check the required field `point`
      if (!is.null(input_json$`point`)) {
        stopifnot(R6::is.R6(input_json$`point`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for BreedingSiteGeoModel: the required field `point` is missing."))
      }
      # check the required field `received_at`
      if (!is.null(input_json$`received_at`)) {
        if (!(is.character(input_json$`received_at`) && length(input_json$`received_at`) == 1)) {
          stop(paste("Error! Invalid data for `received_at`. Must be a string:", input_json$`received_at`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for BreedingSiteGeoModel: the required field `received_at` is missing."))
      }
      # check the required field `site_type`
      if (!is.null(input_json$`site_type`)) {
        if (!(is.character(input_json$`site_type`) && length(input_json$`site_type`) == 1)) {
          stop(paste("Error! Invalid data for `site_type`. Must be a string:", input_json$`site_type`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for BreedingSiteGeoModel: the required field `site_type` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of BreedingSiteGeoModel
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `uuid` is null
      if (is.null(self$`uuid`)) {
        return(FALSE)
      }

      # check if the required `point` is null
      if (is.null(self$`point`)) {
        return(FALSE)
      }

      # check if the required `received_at` is null
      if (is.null(self$`received_at`)) {
        return(FALSE)
      }

      # check if the required `site_type` is null
      if (is.null(self$`site_type`)) {
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
      # check if the required `uuid` is null
      if (is.null(self$`uuid`)) {
        invalid_fields["uuid"] <- "Non-nullable required field `uuid` cannot be null."
      }

      # check if the required `point` is null
      if (is.null(self$`point`)) {
        invalid_fields["point"] <- "Non-nullable required field `point` cannot be null."
      }

      # check if the required `received_at` is null
      if (is.null(self$`received_at`)) {
        invalid_fields["received_at"] <- "Non-nullable required field `received_at` cannot be null."
      }

      # check if the required `site_type` is null
      if (is.null(self$`site_type`)) {
        invalid_fields["site_type"] <- "Non-nullable required field `site_type` cannot be null."
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
# BreedingSiteGeoModel$unlock()
#
## Below is an example to define the print function
# BreedingSiteGeoModel$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# BreedingSiteGeoModel$lock()

