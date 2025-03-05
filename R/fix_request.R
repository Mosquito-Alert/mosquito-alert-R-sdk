#' Create a new FixRequest
#'
#' @description
#' FixRequest Class
#'
#' @docType class
#' @title FixRequest
#' @description FixRequest Class
#' @format An \code{R6Class} generator object
#' @field coverage_uuid  character
#' @field created_at  character
#' @field sent_at  character
#' @field point  \link{FixLocationRequest}
#' @field power Power level of phone at time fix recorded, expressed as proportion of full charge. Range: 0-1. numeric [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
FixRequest <- R6::R6Class(
  "FixRequest",
  public = list(
    `coverage_uuid` = NULL,
    `created_at` = NULL,
    `sent_at` = NULL,
    `point` = NULL,
    `power` = NULL,

    #' @description
    #' Initialize a new FixRequest class.
    #'
    #' @param coverage_uuid coverage_uuid
    #' @param created_at created_at
    #' @param sent_at sent_at
    #' @param point point
    #' @param power Power level of phone at time fix recorded, expressed as proportion of full charge. Range: 0-1.
    #' @param ... Other optional arguments.
    initialize = function(`coverage_uuid`, `created_at`, `sent_at`, `point`, `power` = NULL, ...) {
      if (!missing(`coverage_uuid`)) {
        if (!(is.character(`coverage_uuid`) && length(`coverage_uuid`) == 1)) {
          stop(paste("Error! Invalid data for `coverage_uuid`. Must be a string:", `coverage_uuid`))
        }
        self$`coverage_uuid` <- `coverage_uuid`
      }
      if (!missing(`created_at`)) {
        if (!(is.character(`created_at`) && length(`created_at`) == 1)) {
          stop(paste("Error! Invalid data for `created_at`. Must be a string:", `created_at`))
        }
        self$`created_at` <- `created_at`
      }
      if (!missing(`sent_at`)) {
        if (!(is.character(`sent_at`) && length(`sent_at`) == 1)) {
          stop(paste("Error! Invalid data for `sent_at`. Must be a string:", `sent_at`))
        }
        self$`sent_at` <- `sent_at`
      }
      if (!missing(`point`)) {
        stopifnot(R6::is.R6(`point`))
        self$`point` <- `point`
      }
      if (!is.null(`power`)) {
        if (!(is.numeric(`power`) && length(`power`) == 1)) {
          stop(paste("Error! Invalid data for `power`. Must be a number:", `power`))
        }
        self$`power` <- `power`
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
    #' @return FixRequest as a base R list.
    #' @examples
    #' # convert array of FixRequest (x) to a data frame
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
    #' Convert FixRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      FixRequestObject <- list()
      if (!is.null(self$`coverage_uuid`)) {
        FixRequestObject[["coverage_uuid"]] <-
          self$`coverage_uuid`
      }
      if (!is.null(self$`created_at`)) {
        FixRequestObject[["created_at"]] <-
          self$`created_at`
      }
      if (!is.null(self$`sent_at`)) {
        FixRequestObject[["sent_at"]] <-
          self$`sent_at`
      }
      if (!is.null(self$`point`)) {
        FixRequestObject[["point"]] <-
          self$`point`$toSimpleType()
      }
      if (!is.null(self$`power`)) {
        FixRequestObject[["power"]] <-
          self$`power`
      }
      return(FixRequestObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of FixRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of FixRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`coverage_uuid`)) {
        self$`coverage_uuid` <- this_object$`coverage_uuid`
      }
      if (!is.null(this_object$`created_at`)) {
        self$`created_at` <- this_object$`created_at`
      }
      if (!is.null(this_object$`sent_at`)) {
        self$`sent_at` <- this_object$`sent_at`
      }
      if (!is.null(this_object$`point`)) {
        `point_object` <- FixLocationRequest$new()
        `point_object`$fromJSON(jsonlite::toJSON(this_object$`point`, auto_unbox = TRUE, digits = NA))
        self$`point` <- `point_object`
      }
      if (!is.null(this_object$`power`)) {
        self$`power` <- this_object$`power`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return FixRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of FixRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of FixRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`coverage_uuid` <- this_object$`coverage_uuid`
      self$`created_at` <- this_object$`created_at`
      self$`sent_at` <- this_object$`sent_at`
      self$`point` <- FixLocationRequest$new()$fromJSON(jsonlite::toJSON(this_object$`point`, auto_unbox = TRUE, digits = NA))
      self$`power` <- this_object$`power`
      self
    },

    #' @description
    #' Validate JSON input with respect to FixRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `coverage_uuid`
      if (!is.null(input_json$`coverage_uuid`)) {
        if (!(is.character(input_json$`coverage_uuid`) && length(input_json$`coverage_uuid`) == 1)) {
          stop(paste("Error! Invalid data for `coverage_uuid`. Must be a string:", input_json$`coverage_uuid`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for FixRequest: the required field `coverage_uuid` is missing."))
      }
      # check the required field `created_at`
      if (!is.null(input_json$`created_at`)) {
        if (!(is.character(input_json$`created_at`) && length(input_json$`created_at`) == 1)) {
          stop(paste("Error! Invalid data for `created_at`. Must be a string:", input_json$`created_at`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for FixRequest: the required field `created_at` is missing."))
      }
      # check the required field `sent_at`
      if (!is.null(input_json$`sent_at`)) {
        if (!(is.character(input_json$`sent_at`) && length(input_json$`sent_at`) == 1)) {
          stop(paste("Error! Invalid data for `sent_at`. Must be a string:", input_json$`sent_at`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for FixRequest: the required field `sent_at` is missing."))
      }
      # check the required field `point`
      if (!is.null(input_json$`point`)) {
        stopifnot(R6::is.R6(input_json$`point`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for FixRequest: the required field `point` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of FixRequest
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `coverage_uuid` is null
      if (is.null(self$`coverage_uuid`)) {
        return(FALSE)
      }

      # check if the required `created_at` is null
      if (is.null(self$`created_at`)) {
        return(FALSE)
      }

      # check if the required `sent_at` is null
      if (is.null(self$`sent_at`)) {
        return(FALSE)
      }

      # check if the required `point` is null
      if (is.null(self$`point`)) {
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
      # check if the required `coverage_uuid` is null
      if (is.null(self$`coverage_uuid`)) {
        invalid_fields["coverage_uuid"] <- "Non-nullable required field `coverage_uuid` cannot be null."
      }

      # check if the required `created_at` is null
      if (is.null(self$`created_at`)) {
        invalid_fields["created_at"] <- "Non-nullable required field `created_at` cannot be null."
      }

      # check if the required `sent_at` is null
      if (is.null(self$`sent_at`)) {
        invalid_fields["sent_at"] <- "Non-nullable required field `sent_at` cannot be null."
      }

      # check if the required `point` is null
      if (is.null(self$`point`)) {
        invalid_fields["point"] <- "Non-nullable required field `point` cannot be null."
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
# FixRequest$unlock()
#
## Below is an example to define the print function
# FixRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# FixRequest$lock()

