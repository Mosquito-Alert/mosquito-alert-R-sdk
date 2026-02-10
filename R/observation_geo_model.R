#' Create a new ObservationGeoModel
#'
#' @description
#' ObservationGeoModel Class
#'
#' @docType class
#' @title ObservationGeoModel
#' @description ObservationGeoModel Class
#' @format An \code{R6Class} generator object
#' @field uuid  character
#' @field point  \link{Point}
#' @field received_at  character
#' @field identification_taxon_id  integer
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ObservationGeoModel <- R6::R6Class(
  "ObservationGeoModel",
  public = list(
    `uuid` = NULL,
    `point` = NULL,
    `received_at` = NULL,
    `identification_taxon_id` = NULL,

    #' @description
    #' Initialize a new ObservationGeoModel class.
    #'
    #' @param uuid uuid
    #' @param point point
    #' @param received_at received_at
    #' @param identification_taxon_id identification_taxon_id
    #' @param ... Other optional arguments.
    initialize = function(`uuid`, `point`, `received_at`, `identification_taxon_id`, ...) {
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
      if (!missing(`identification_taxon_id`)) {
        if (!(is.numeric(`identification_taxon_id`) && length(`identification_taxon_id`) == 1)) {
          stop(paste("Error! Invalid data for `identification_taxon_id`. Must be an integer:", `identification_taxon_id`))
        }
        self$`identification_taxon_id` <- `identification_taxon_id`
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
    #' @return ObservationGeoModel as a base R list.
    #' @examples
    #' # convert array of ObservationGeoModel (x) to a data frame
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
    #' Convert ObservationGeoModel to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ObservationGeoModelObject <- list()
      if (!is.null(self$`uuid`)) {
        ObservationGeoModelObject[["uuid"]] <-
          self$`uuid`
      }
      if (!is.null(self$`point`)) {
        ObservationGeoModelObject[["point"]] <-
          self$`point`$toSimpleType()
      }
      if (!is.null(self$`received_at`)) {
        ObservationGeoModelObject[["received_at"]] <-
          self$`received_at`
      }
      if (!is.null(self$`identification_taxon_id`)) {
        ObservationGeoModelObject[["identification_taxon_id"]] <-
          self$`identification_taxon_id`
      }
      return(ObservationGeoModelObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of ObservationGeoModel
    #'
    #' @param input_json the JSON input
    #' @return the instance of ObservationGeoModel
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
      if (!is.null(this_object$`identification_taxon_id`)) {
        self$`identification_taxon_id` <- this_object$`identification_taxon_id`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ObservationGeoModel in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ObservationGeoModel
    #'
    #' @param input_json the JSON input
    #' @return the instance of ObservationGeoModel
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`uuid` <- this_object$`uuid`
      self$`point` <- Point$new()$fromJSON(jsonlite::toJSON(this_object$`point`, auto_unbox = TRUE, digits = NA))
      self$`received_at` <- this_object$`received_at`
      self$`identification_taxon_id` <- this_object$`identification_taxon_id`
      self
    },

    #' @description
    #' Validate JSON input with respect to ObservationGeoModel and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for ObservationGeoModel: the required field `uuid` is missing."))
      }
      # check the required field `point`
      if (!is.null(input_json$`point`)) {
        stopifnot(R6::is.R6(input_json$`point`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ObservationGeoModel: the required field `point` is missing."))
      }
      # check the required field `received_at`
      if (!is.null(input_json$`received_at`)) {
        if (!(is.character(input_json$`received_at`) && length(input_json$`received_at`) == 1)) {
          stop(paste("Error! Invalid data for `received_at`. Must be a string:", input_json$`received_at`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ObservationGeoModel: the required field `received_at` is missing."))
      }
      # check the required field `identification_taxon_id`
      if (!is.null(input_json$`identification_taxon_id`)) {
        if (!(is.numeric(input_json$`identification_taxon_id`) && length(input_json$`identification_taxon_id`) == 1)) {
          stop(paste("Error! Invalid data for `identification_taxon_id`. Must be an integer:", input_json$`identification_taxon_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ObservationGeoModel: the required field `identification_taxon_id` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ObservationGeoModel
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
# ObservationGeoModel$unlock()
#
## Below is an example to define the print function
# ObservationGeoModel$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ObservationGeoModel$lock()

