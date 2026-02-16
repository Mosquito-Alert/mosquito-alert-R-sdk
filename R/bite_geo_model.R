#' Create a new BiteGeoModel
#'
#' @description
#' BiteGeoModel Class
#'
#' @docType class
#' @title BiteGeoModel
#' @description BiteGeoModel Class
#' @format An \code{R6Class} generator object
#' @field uuid  character
#' @field point  \link{Point}
#' @field received_at  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
BiteGeoModel <- R6::R6Class(
  "BiteGeoModel",
  public = list(
    `uuid` = NULL,
    `point` = NULL,
    `received_at` = NULL,

    #' @description
    #' Initialize a new BiteGeoModel class.
    #'
    #' @param uuid uuid
    #' @param point point
    #' @param received_at received_at
    #' @param ... Other optional arguments.
    initialize = function(`uuid`, `point`, `received_at`, ...) {
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
    #' @return BiteGeoModel as a base R list.
    #' @examples
    #' # convert array of BiteGeoModel (x) to a data frame
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
    #' Convert BiteGeoModel to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      BiteGeoModelObject <- list()
      if (!is.null(self$`uuid`)) {
        BiteGeoModelObject[["uuid"]] <-
          self$`uuid`
      }
      if (!is.null(self$`point`)) {
        BiteGeoModelObject[["point"]] <-
          self$extractSimpleType(self$`point`)
      }
      if (!is.null(self$`received_at`)) {
        BiteGeoModelObject[["received_at"]] <-
          self$`received_at`
      }
      return(BiteGeoModelObject)
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
    #' Deserialize JSON string into an instance of BiteGeoModel
    #'
    #' @param input_json the JSON input
    #' @return the instance of BiteGeoModel
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
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return BiteGeoModel in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of BiteGeoModel
    #'
    #' @param input_json the JSON input
    #' @return the instance of BiteGeoModel
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`uuid` <- this_object$`uuid`
      self$`point` <- Point$new()$fromJSON(jsonlite::toJSON(this_object$`point`, auto_unbox = TRUE, digits = NA))
      self$`received_at` <- this_object$`received_at`
      self
    },

    #' @description
    #' Validate JSON input with respect to BiteGeoModel and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for BiteGeoModel: the required field `uuid` is missing."))
      }
      # check the required field `point`
      if (!is.null(input_json$`point`)) {
        stopifnot(R6::is.R6(input_json$`point`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for BiteGeoModel: the required field `point` is missing."))
      }
      # check the required field `received_at`
      if (!is.null(input_json$`received_at`)) {
        if (!(is.character(input_json$`received_at`) && length(input_json$`received_at`) == 1)) {
          stop(paste("Error! Invalid data for `received_at`. Must be a string:", input_json$`received_at`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for BiteGeoModel: the required field `received_at` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of BiteGeoModel
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
# BiteGeoModel$unlock()
#
## Below is an example to define the print function
# BiteGeoModel$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# BiteGeoModel$lock()

