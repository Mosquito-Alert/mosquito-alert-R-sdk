#' Create a new Annotation
#'
#' @description
#' Annotation Class
#'
#' @docType class
#' @title Annotation
#' @description Annotation Class
#' @format An \code{R6Class} generator object
#' @field id  integer
#' @field observation_uuid UUID randomly generated on phone to identify each unique report version. Must be exactly 36 characters (32 hex digits plus 4 hyphens). character
#' @field user  \link{SimpleAnnotatorUser}
#' @field best_photo  \link{SimplePhoto}
#' @field classification  \link{AnnotationClassification}
#' @field feedback  \link{AnnotationFeedback} [optional]
#' @field is_flagged  character
#' @field is_decisive  character
#' @field tags  list(character) [optional]
#' @field created_at  character
#' @field updated_at  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Annotation <- R6::R6Class(
  "Annotation",
  public = list(
    `id` = NULL,
    `observation_uuid` = NULL,
    `user` = NULL,
    `best_photo` = NULL,
    `classification` = NULL,
    `feedback` = NULL,
    `is_flagged` = NULL,
    `is_decisive` = NULL,
    `tags` = NULL,
    `created_at` = NULL,
    `updated_at` = NULL,

    #' @description
    #' Initialize a new Annotation class.
    #'
    #' @param id id
    #' @param observation_uuid UUID randomly generated on phone to identify each unique report version. Must be exactly 36 characters (32 hex digits plus 4 hyphens).
    #' @param user user
    #' @param best_photo best_photo
    #' @param classification classification
    #' @param is_flagged is_flagged
    #' @param is_decisive is_decisive
    #' @param created_at created_at
    #' @param updated_at updated_at
    #' @param feedback feedback
    #' @param tags tags
    #' @param ... Other optional arguments.
    initialize = function(`id`, `observation_uuid`, `user`, `best_photo`, `classification`, `is_flagged`, `is_decisive`, `created_at`, `updated_at`, `feedback` = NULL, `tags` = NULL, ...) {
      if (!missing(`id`)) {
        if (!(is.numeric(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be an integer:", `id`))
        }
        self$`id` <- `id`
      }
      if (!missing(`observation_uuid`)) {
        if (!(is.character(`observation_uuid`) && length(`observation_uuid`) == 1)) {
          stop(paste("Error! Invalid data for `observation_uuid`. Must be a string:", `observation_uuid`))
        }
        self$`observation_uuid` <- `observation_uuid`
      }
      if (!missing(`user`)) {
        stopifnot(R6::is.R6(`user`))
        self$`user` <- `user`
      }
      if (!missing(`best_photo`)) {
        stopifnot(R6::is.R6(`best_photo`))
        self$`best_photo` <- `best_photo`
      }
      if (!missing(`classification`)) {
        stopifnot(R6::is.R6(`classification`))
        self$`classification` <- `classification`
      }
      if (!missing(`is_flagged`)) {
        if (!(is.logical(`is_flagged`) && length(`is_flagged`) == 1)) {
          stop(paste("Error! Invalid data for `is_flagged`. Must be a boolean:", `is_flagged`))
        }
        self$`is_flagged` <- `is_flagged`
      }
      if (!missing(`is_decisive`)) {
        if (!(is.logical(`is_decisive`) && length(`is_decisive`) == 1)) {
          stop(paste("Error! Invalid data for `is_decisive`. Must be a boolean:", `is_decisive`))
        }
        self$`is_decisive` <- `is_decisive`
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
      if (!is.null(`feedback`)) {
        stopifnot(R6::is.R6(`feedback`))
        self$`feedback` <- `feedback`
      }
      if (!is.null(`tags`)) {
        stopifnot(is.vector(`tags`), length(`tags`) != 0)
        sapply(`tags`, function(x) stopifnot(is.character(x)))
        self$`tags` <- `tags`
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
    #' @return Annotation as a base R list.
    #' @examples
    #' # convert array of Annotation (x) to a data frame
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
    #' Convert Annotation to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AnnotationObject <- list()
      if (!is.null(self$`id`)) {
        AnnotationObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`observation_uuid`)) {
        AnnotationObject[["observation_uuid"]] <-
          self$`observation_uuid`
      }
      if (!is.null(self$`user`)) {
        AnnotationObject[["user"]] <-
          self$`user`$toSimpleType()
      }
      if (!is.null(self$`best_photo`)) {
        AnnotationObject[["best_photo"]] <-
          self$`best_photo`$toSimpleType()
      }
      if (!is.null(self$`classification`)) {
        AnnotationObject[["classification"]] <-
          self$`classification`$toSimpleType()
      }
      if (!is.null(self$`feedback`)) {
        AnnotationObject[["feedback"]] <-
          self$`feedback`$toSimpleType()
      }
      if (!is.null(self$`is_flagged`)) {
        AnnotationObject[["is_flagged"]] <-
          self$`is_flagged`
      }
      if (!is.null(self$`is_decisive`)) {
        AnnotationObject[["is_decisive"]] <-
          self$`is_decisive`
      }
      if (!is.null(self$`tags`)) {
        AnnotationObject[["tags"]] <-
          self$`tags`
      }
      if (!is.null(self$`created_at`)) {
        AnnotationObject[["created_at"]] <-
          self$`created_at`
      }
      if (!is.null(self$`updated_at`)) {
        AnnotationObject[["updated_at"]] <-
          self$`updated_at`
      }
      return(AnnotationObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of Annotation
    #'
    #' @param input_json the JSON input
    #' @return the instance of Annotation
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`observation_uuid`)) {
        self$`observation_uuid` <- this_object$`observation_uuid`
      }
      if (!is.null(this_object$`user`)) {
        `user_object` <- SimpleAnnotatorUser$new()
        `user_object`$fromJSON(jsonlite::toJSON(this_object$`user`, auto_unbox = TRUE, digits = NA))
        self$`user` <- `user_object`
      }
      if (!is.null(this_object$`best_photo`)) {
        `best_photo_object` <- SimplePhoto$new()
        `best_photo_object`$fromJSON(jsonlite::toJSON(this_object$`best_photo`, auto_unbox = TRUE, digits = NA))
        self$`best_photo` <- `best_photo_object`
      }
      if (!is.null(this_object$`classification`)) {
        `classification_object` <- AnnotationClassification$new()
        `classification_object`$fromJSON(jsonlite::toJSON(this_object$`classification`, auto_unbox = TRUE, digits = NA))
        self$`classification` <- `classification_object`
      }
      if (!is.null(this_object$`feedback`)) {
        `feedback_object` <- AnnotationFeedback$new()
        `feedback_object`$fromJSON(jsonlite::toJSON(this_object$`feedback`, auto_unbox = TRUE, digits = NA))
        self$`feedback` <- `feedback_object`
      }
      if (!is.null(this_object$`is_flagged`)) {
        self$`is_flagged` <- this_object$`is_flagged`
      }
      if (!is.null(this_object$`is_decisive`)) {
        self$`is_decisive` <- this_object$`is_decisive`
      }
      if (!is.null(this_object$`tags`)) {
        self$`tags` <- ApiClient$new()$deserializeObj(this_object$`tags`, "array[character]", loadNamespace("MosquitoAlert"))
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
    #' @return Annotation in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of Annotation
    #'
    #' @param input_json the JSON input
    #' @return the instance of Annotation
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`observation_uuid` <- this_object$`observation_uuid`
      self$`user` <- SimpleAnnotatorUser$new()$fromJSON(jsonlite::toJSON(this_object$`user`, auto_unbox = TRUE, digits = NA))
      self$`best_photo` <- SimplePhoto$new()$fromJSON(jsonlite::toJSON(this_object$`best_photo`, auto_unbox = TRUE, digits = NA))
      self$`classification` <- AnnotationClassification$new()$fromJSON(jsonlite::toJSON(this_object$`classification`, auto_unbox = TRUE, digits = NA))
      self$`feedback` <- AnnotationFeedback$new()$fromJSON(jsonlite::toJSON(this_object$`feedback`, auto_unbox = TRUE, digits = NA))
      self$`is_flagged` <- this_object$`is_flagged`
      self$`is_decisive` <- this_object$`is_decisive`
      self$`tags` <- ApiClient$new()$deserializeObj(this_object$`tags`, "array[character]", loadNamespace("MosquitoAlert"))
      self$`created_at` <- this_object$`created_at`
      self$`updated_at` <- this_object$`updated_at`
      self
    },

    #' @description
    #' Validate JSON input with respect to Annotation and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for Annotation: the required field `id` is missing."))
      }
      # check the required field `observation_uuid`
      if (!is.null(input_json$`observation_uuid`)) {
        if (!(is.character(input_json$`observation_uuid`) && length(input_json$`observation_uuid`) == 1)) {
          stop(paste("Error! Invalid data for `observation_uuid`. Must be a string:", input_json$`observation_uuid`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Annotation: the required field `observation_uuid` is missing."))
      }
      # check the required field `user`
      if (!is.null(input_json$`user`)) {
        stopifnot(R6::is.R6(input_json$`user`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Annotation: the required field `user` is missing."))
      }
      # check the required field `best_photo`
      if (!is.null(input_json$`best_photo`)) {
        stopifnot(R6::is.R6(input_json$`best_photo`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Annotation: the required field `best_photo` is missing."))
      }
      # check the required field `classification`
      if (!is.null(input_json$`classification`)) {
        stopifnot(R6::is.R6(input_json$`classification`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Annotation: the required field `classification` is missing."))
      }
      # check the required field `is_flagged`
      if (!is.null(input_json$`is_flagged`)) {
        if (!(is.logical(input_json$`is_flagged`) && length(input_json$`is_flagged`) == 1)) {
          stop(paste("Error! Invalid data for `is_flagged`. Must be a boolean:", input_json$`is_flagged`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Annotation: the required field `is_flagged` is missing."))
      }
      # check the required field `is_decisive`
      if (!is.null(input_json$`is_decisive`)) {
        if (!(is.logical(input_json$`is_decisive`) && length(input_json$`is_decisive`) == 1)) {
          stop(paste("Error! Invalid data for `is_decisive`. Must be a boolean:", input_json$`is_decisive`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Annotation: the required field `is_decisive` is missing."))
      }
      # check the required field `created_at`
      if (!is.null(input_json$`created_at`)) {
        if (!(is.character(input_json$`created_at`) && length(input_json$`created_at`) == 1)) {
          stop(paste("Error! Invalid data for `created_at`. Must be a string:", input_json$`created_at`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Annotation: the required field `created_at` is missing."))
      }
      # check the required field `updated_at`
      if (!is.null(input_json$`updated_at`)) {
        if (!(is.character(input_json$`updated_at`) && length(input_json$`updated_at`) == 1)) {
          stop(paste("Error! Invalid data for `updated_at`. Must be a string:", input_json$`updated_at`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Annotation: the required field `updated_at` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Annotation
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

      # check if the required `observation_uuid` is null
      if (is.null(self$`observation_uuid`)) {
        return(FALSE)
      }

      # check if the required `user` is null
      if (is.null(self$`user`)) {
        return(FALSE)
      }

      # check if the required `is_flagged` is null
      if (is.null(self$`is_flagged`)) {
        return(FALSE)
      }

      # check if the required `is_decisive` is null
      if (is.null(self$`is_decisive`)) {
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

      # check if the required `observation_uuid` is null
      if (is.null(self$`observation_uuid`)) {
        invalid_fields["observation_uuid"] <- "Non-nullable required field `observation_uuid` cannot be null."
      }

      # check if the required `user` is null
      if (is.null(self$`user`)) {
        invalid_fields["user"] <- "Non-nullable required field `user` cannot be null."
      }

      # check if the required `is_flagged` is null
      if (is.null(self$`is_flagged`)) {
        invalid_fields["is_flagged"] <- "Non-nullable required field `is_flagged` cannot be null."
      }

      # check if the required `is_decisive` is null
      if (is.null(self$`is_decisive`)) {
        invalid_fields["is_decisive"] <- "Non-nullable required field `is_decisive` cannot be null."
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
# Annotation$unlock()
#
## Below is an example to define the print function
# Annotation$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Annotation$lock()

