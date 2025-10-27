#' Create a new SimplifiedObservationWithPhotos
#'
#' @description
#' SimplifiedObservationWithPhotos Class
#'
#' @docType class
#' @title SimplifiedObservationWithPhotos
#' @description SimplifiedObservationWithPhotos Class
#' @format An \code{R6Class} generator object
#' @field uuid  character
#' @field short_id  character
#' @field user_uuid  character
#' @field created_at  character
#' @field created_at_local The date and time when the record was created, displayed without timezone field. character
#' @field received_at  character
#' @field location  \link{SimplifiedLocation}
#' @field note Note user attached to report. character [optional]
#' @field photos  list(\link{SimplePhoto})
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SimplifiedObservationWithPhotos <- R6::R6Class(
  "SimplifiedObservationWithPhotos",
  public = list(
    `uuid` = NULL,
    `short_id` = NULL,
    `user_uuid` = NULL,
    `created_at` = NULL,
    `created_at_local` = NULL,
    `received_at` = NULL,
    `location` = NULL,
    `note` = NULL,
    `photos` = NULL,

    #' @description
    #' Initialize a new SimplifiedObservationWithPhotos class.
    #'
    #' @param uuid uuid
    #' @param short_id short_id
    #' @param user_uuid user_uuid
    #' @param created_at created_at
    #' @param created_at_local The date and time when the record was created, displayed without timezone field.
    #' @param received_at received_at
    #' @param location location
    #' @param photos photos
    #' @param note Note user attached to report.
    #' @param ... Other optional arguments.
    initialize = function(`uuid`, `short_id`, `user_uuid`, `created_at`, `created_at_local`, `received_at`, `location`, `photos`, `note` = NULL, ...) {
      if (!missing(`uuid`)) {
        if (!(is.character(`uuid`) && length(`uuid`) == 1)) {
          stop(paste("Error! Invalid data for `uuid`. Must be a string:", `uuid`))
        }
        self$`uuid` <- `uuid`
      }
      if (!missing(`short_id`)) {
        if (!(is.character(`short_id`) && length(`short_id`) == 1)) {
          stop(paste("Error! Invalid data for `short_id`. Must be a string:", `short_id`))
        }
        self$`short_id` <- `short_id`
      }
      if (!missing(`user_uuid`)) {
        if (!(is.character(`user_uuid`) && length(`user_uuid`) == 1)) {
          stop(paste("Error! Invalid data for `user_uuid`. Must be a string:", `user_uuid`))
        }
        self$`user_uuid` <- `user_uuid`
      }
      if (!missing(`created_at`)) {
        if (!(is.character(`created_at`) && length(`created_at`) == 1)) {
          stop(paste("Error! Invalid data for `created_at`. Must be a string:", `created_at`))
        }
        self$`created_at` <- `created_at`
      }
      if (!missing(`created_at_local`)) {
        if (!(is.character(`created_at_local`) && length(`created_at_local`) == 1)) {
          stop(paste("Error! Invalid data for `created_at_local`. Must be a string:", `created_at_local`))
        }
        self$`created_at_local` <- `created_at_local`
      }
      if (!missing(`received_at`)) {
        if (!(is.character(`received_at`) && length(`received_at`) == 1)) {
          stop(paste("Error! Invalid data for `received_at`. Must be a string:", `received_at`))
        }
        self$`received_at` <- `received_at`
      }
      if (!missing(`location`)) {
        stopifnot(R6::is.R6(`location`))
        self$`location` <- `location`
      }
      if (!missing(`photos`)) {
        stopifnot(is.vector(`photos`), length(`photos`) != 0)
        sapply(`photos`, function(x) stopifnot(R6::is.R6(x)))
        self$`photos` <- `photos`
      }
      if (!is.null(`note`)) {
        if (!(is.character(`note`) && length(`note`) == 1)) {
          stop(paste("Error! Invalid data for `note`. Must be a string:", `note`))
        }
        self$`note` <- `note`
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
    #' @return SimplifiedObservationWithPhotos as a base R list.
    #' @examples
    #' # convert array of SimplifiedObservationWithPhotos (x) to a data frame
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
    #' Convert SimplifiedObservationWithPhotos to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      SimplifiedObservationWithPhotosObject <- list()
      if (!is.null(self$`uuid`)) {
        SimplifiedObservationWithPhotosObject[["uuid"]] <-
          self$`uuid`
      }
      if (!is.null(self$`short_id`)) {
        SimplifiedObservationWithPhotosObject[["short_id"]] <-
          self$`short_id`
      }
      if (!is.null(self$`user_uuid`)) {
        SimplifiedObservationWithPhotosObject[["user_uuid"]] <-
          self$`user_uuid`
      }
      if (!is.null(self$`created_at`)) {
        SimplifiedObservationWithPhotosObject[["created_at"]] <-
          self$`created_at`
      }
      if (!is.null(self$`created_at_local`)) {
        SimplifiedObservationWithPhotosObject[["created_at_local"]] <-
          self$`created_at_local`
      }
      if (!is.null(self$`received_at`)) {
        SimplifiedObservationWithPhotosObject[["received_at"]] <-
          self$`received_at`
      }
      if (!is.null(self$`location`)) {
        SimplifiedObservationWithPhotosObject[["location"]] <-
          self$`location`$toSimpleType()
      }
      if (!is.null(self$`note`)) {
        SimplifiedObservationWithPhotosObject[["note"]] <-
          self$`note`
      }
      if (!is.null(self$`photos`)) {
        SimplifiedObservationWithPhotosObject[["photos"]] <-
          lapply(self$`photos`, function(x) x$toSimpleType())
      }
      return(SimplifiedObservationWithPhotosObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of SimplifiedObservationWithPhotos
    #'
    #' @param input_json the JSON input
    #' @return the instance of SimplifiedObservationWithPhotos
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`uuid`)) {
        self$`uuid` <- this_object$`uuid`
      }
      if (!is.null(this_object$`short_id`)) {
        self$`short_id` <- this_object$`short_id`
      }
      if (!is.null(this_object$`user_uuid`)) {
        self$`user_uuid` <- this_object$`user_uuid`
      }
      if (!is.null(this_object$`created_at`)) {
        self$`created_at` <- this_object$`created_at`
      }
      if (!is.null(this_object$`created_at_local`)) {
        self$`created_at_local` <- this_object$`created_at_local`
      }
      if (!is.null(this_object$`received_at`)) {
        self$`received_at` <- this_object$`received_at`
      }
      if (!is.null(this_object$`location`)) {
        `location_object` <- SimplifiedLocation$new()
        `location_object`$fromJSON(jsonlite::toJSON(this_object$`location`, auto_unbox = TRUE, digits = NA))
        self$`location` <- `location_object`
      }
      if (!is.null(this_object$`note`)) {
        self$`note` <- this_object$`note`
      }
      if (!is.null(this_object$`photos`)) {
        self$`photos` <- ApiClient$new()$deserializeObj(this_object$`photos`, "array[SimplePhoto]", loadNamespace("MosquitoAlert"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return SimplifiedObservationWithPhotos in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of SimplifiedObservationWithPhotos
    #'
    #' @param input_json the JSON input
    #' @return the instance of SimplifiedObservationWithPhotos
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`uuid` <- this_object$`uuid`
      self$`short_id` <- this_object$`short_id`
      self$`user_uuid` <- this_object$`user_uuid`
      self$`created_at` <- this_object$`created_at`
      self$`created_at_local` <- this_object$`created_at_local`
      self$`received_at` <- this_object$`received_at`
      self$`location` <- SimplifiedLocation$new()$fromJSON(jsonlite::toJSON(this_object$`location`, auto_unbox = TRUE, digits = NA))
      self$`note` <- this_object$`note`
      self$`photos` <- ApiClient$new()$deserializeObj(this_object$`photos`, "array[SimplePhoto]", loadNamespace("MosquitoAlert"))
      self
    },

    #' @description
    #' Validate JSON input with respect to SimplifiedObservationWithPhotos and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for SimplifiedObservationWithPhotos: the required field `uuid` is missing."))
      }
      # check the required field `short_id`
      if (!is.null(input_json$`short_id`)) {
        if (!(is.character(input_json$`short_id`) && length(input_json$`short_id`) == 1)) {
          stop(paste("Error! Invalid data for `short_id`. Must be a string:", input_json$`short_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SimplifiedObservationWithPhotos: the required field `short_id` is missing."))
      }
      # check the required field `user_uuid`
      if (!is.null(input_json$`user_uuid`)) {
        if (!(is.character(input_json$`user_uuid`) && length(input_json$`user_uuid`) == 1)) {
          stop(paste("Error! Invalid data for `user_uuid`. Must be a string:", input_json$`user_uuid`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SimplifiedObservationWithPhotos: the required field `user_uuid` is missing."))
      }
      # check the required field `created_at`
      if (!is.null(input_json$`created_at`)) {
        if (!(is.character(input_json$`created_at`) && length(input_json$`created_at`) == 1)) {
          stop(paste("Error! Invalid data for `created_at`. Must be a string:", input_json$`created_at`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SimplifiedObservationWithPhotos: the required field `created_at` is missing."))
      }
      # check the required field `created_at_local`
      if (!is.null(input_json$`created_at_local`)) {
        if (!(is.character(input_json$`created_at_local`) && length(input_json$`created_at_local`) == 1)) {
          stop(paste("Error! Invalid data for `created_at_local`. Must be a string:", input_json$`created_at_local`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SimplifiedObservationWithPhotos: the required field `created_at_local` is missing."))
      }
      # check the required field `received_at`
      if (!is.null(input_json$`received_at`)) {
        if (!(is.character(input_json$`received_at`) && length(input_json$`received_at`) == 1)) {
          stop(paste("Error! Invalid data for `received_at`. Must be a string:", input_json$`received_at`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SimplifiedObservationWithPhotos: the required field `received_at` is missing."))
      }
      # check the required field `location`
      if (!is.null(input_json$`location`)) {
        stopifnot(R6::is.R6(input_json$`location`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SimplifiedObservationWithPhotos: the required field `location` is missing."))
      }
      # check the required field `photos`
      if (!is.null(input_json$`photos`)) {
        stopifnot(is.vector(input_json$`photos`), length(input_json$`photos`) != 0)
        tmp <- sapply(input_json$`photos`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SimplifiedObservationWithPhotos: the required field `photos` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of SimplifiedObservationWithPhotos
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

      # check if the required `short_id` is null
      if (is.null(self$`short_id`)) {
        return(FALSE)
      }

      # check if the required `user_uuid` is null
      if (is.null(self$`user_uuid`)) {
        return(FALSE)
      }

      # check if the required `created_at` is null
      if (is.null(self$`created_at`)) {
        return(FALSE)
      }

      # check if the required `created_at_local` is null
      if (is.null(self$`created_at_local`)) {
        return(FALSE)
      }

      # check if the required `received_at` is null
      if (is.null(self$`received_at`)) {
        return(FALSE)
      }

      # check if the required `location` is null
      if (is.null(self$`location`)) {
        return(FALSE)
      }

      # check if the required `photos` is null
      if (is.null(self$`photos`)) {
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

      # check if the required `short_id` is null
      if (is.null(self$`short_id`)) {
        invalid_fields["short_id"] <- "Non-nullable required field `short_id` cannot be null."
      }

      # check if the required `user_uuid` is null
      if (is.null(self$`user_uuid`)) {
        invalid_fields["user_uuid"] <- "Non-nullable required field `user_uuid` cannot be null."
      }

      # check if the required `created_at` is null
      if (is.null(self$`created_at`)) {
        invalid_fields["created_at"] <- "Non-nullable required field `created_at` cannot be null."
      }

      # check if the required `created_at_local` is null
      if (is.null(self$`created_at_local`)) {
        invalid_fields["created_at_local"] <- "Non-nullable required field `created_at_local` cannot be null."
      }

      # check if the required `received_at` is null
      if (is.null(self$`received_at`)) {
        invalid_fields["received_at"] <- "Non-nullable required field `received_at` cannot be null."
      }

      # check if the required `location` is null
      if (is.null(self$`location`)) {
        invalid_fields["location"] <- "Non-nullable required field `location` cannot be null."
      }

      # check if the required `photos` is null
      if (is.null(self$`photos`)) {
        invalid_fields["photos"] <- "Non-nullable required field `photos` cannot be null."
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
# SimplifiedObservationWithPhotos$unlock()
#
## Below is an example to define the print function
# SimplifiedObservationWithPhotos$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# SimplifiedObservationWithPhotos$lock()

