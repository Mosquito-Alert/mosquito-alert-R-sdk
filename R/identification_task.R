#' Create a new IdentificationTask
#'
#' @description
#' IdentificationTask Class
#'
#' @docType class
#' @title IdentificationTask
#' @description IdentificationTask Class
#' @format An \code{R6Class} generator object
#' @field observation  \link{SimplifiedObservationWithPhotos}
#' @field public_photo  \link{SimplePhoto}
#' @field assignments  list(\link{UserAssignment})
#' @field status  character
#' @field is_flagged  character
#' @field is_safe Indicates if the content is safe for publication. character
#' @field public_note  character
#' @field num_annotations  integer
#' @field review  \link{IdentificationTaskReview}
#' @field result  \link{IdentificationTaskResult}
#' @field created_at  character
#' @field updated_at  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
IdentificationTask <- R6::R6Class(
  "IdentificationTask",
  public = list(
    `observation` = NULL,
    `public_photo` = NULL,
    `assignments` = NULL,
    `status` = NULL,
    `is_flagged` = NULL,
    `is_safe` = NULL,
    `public_note` = NULL,
    `num_annotations` = NULL,
    `review` = NULL,
    `result` = NULL,
    `created_at` = NULL,
    `updated_at` = NULL,

    #' @description
    #' Initialize a new IdentificationTask class.
    #'
    #' @param observation observation
    #' @param public_photo public_photo
    #' @param assignments assignments
    #' @param status status
    #' @param is_flagged is_flagged
    #' @param is_safe Indicates if the content is safe for publication.
    #' @param public_note public_note
    #' @param num_annotations num_annotations
    #' @param review review
    #' @param result result
    #' @param created_at created_at
    #' @param updated_at updated_at
    #' @param ... Other optional arguments.
    initialize = function(`observation`, `public_photo`, `assignments`, `status`, `is_flagged`, `is_safe`, `public_note`, `num_annotations`, `review`, `result`, `created_at`, `updated_at`, ...) {
      if (!missing(`observation`)) {
        stopifnot(R6::is.R6(`observation`))
        self$`observation` <- `observation`
      }
      if (!missing(`public_photo`)) {
        stopifnot(R6::is.R6(`public_photo`))
        self$`public_photo` <- `public_photo`
      }
      if (!missing(`assignments`)) {
        stopifnot(is.vector(`assignments`), length(`assignments`) != 0)
        sapply(`assignments`, function(x) stopifnot(R6::is.R6(x)))
        self$`assignments` <- `assignments`
      }
      if (!missing(`status`)) {
        if (!(`status` %in% c("open", "conflict", "review", "done", "archived"))) {
          stop(paste("Error! \"", `status`, "\" cannot be assigned to `status`. Must be \"open\", \"conflict\", \"review\", \"done\", \"archived\".", sep = ""))
        }
        if (!(is.character(`status`) && length(`status`) == 1)) {
          stop(paste("Error! Invalid data for `status`. Must be a string:", `status`))
        }
        self$`status` <- `status`
      }
      if (!missing(`is_flagged`)) {
        if (!(is.logical(`is_flagged`) && length(`is_flagged`) == 1)) {
          stop(paste("Error! Invalid data for `is_flagged`. Must be a boolean:", `is_flagged`))
        }
        self$`is_flagged` <- `is_flagged`
      }
      if (!missing(`is_safe`)) {
        if (!(is.logical(`is_safe`) && length(`is_safe`) == 1)) {
          stop(paste("Error! Invalid data for `is_safe`. Must be a boolean:", `is_safe`))
        }
        self$`is_safe` <- `is_safe`
      }
      if (!missing(`public_note`)) {
        if (!(is.character(`public_note`) && length(`public_note`) == 1)) {
          stop(paste("Error! Invalid data for `public_note`. Must be a string:", `public_note`))
        }
        self$`public_note` <- `public_note`
      }
      if (!missing(`num_annotations`)) {
        if (!(is.numeric(`num_annotations`) && length(`num_annotations`) == 1)) {
          stop(paste("Error! Invalid data for `num_annotations`. Must be an integer:", `num_annotations`))
        }
        self$`num_annotations` <- `num_annotations`
      }
      if (!missing(`review`)) {
        stopifnot(R6::is.R6(`review`))
        self$`review` <- `review`
      }
      if (!missing(`result`)) {
        stopifnot(R6::is.R6(`result`))
        self$`result` <- `result`
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
    #' @return IdentificationTask as a base R list.
    #' @examples
    #' # convert array of IdentificationTask (x) to a data frame
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
    #' Convert IdentificationTask to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      IdentificationTaskObject <- list()
      if (!is.null(self$`observation`)) {
        IdentificationTaskObject[["observation"]] <-
          self$`observation`$toSimpleType()
      }
      if (!is.null(self$`public_photo`)) {
        IdentificationTaskObject[["public_photo"]] <-
          self$`public_photo`$toSimpleType()
      }
      if (!is.null(self$`assignments`)) {
        IdentificationTaskObject[["assignments"]] <-
          lapply(self$`assignments`, function(x) x$toSimpleType())
      }
      if (!is.null(self$`status`)) {
        IdentificationTaskObject[["status"]] <-
          self$`status`
      }
      if (!is.null(self$`is_flagged`)) {
        IdentificationTaskObject[["is_flagged"]] <-
          self$`is_flagged`
      }
      if (!is.null(self$`is_safe`)) {
        IdentificationTaskObject[["is_safe"]] <-
          self$`is_safe`
      }
      if (!is.null(self$`public_note`)) {
        IdentificationTaskObject[["public_note"]] <-
          self$`public_note`
      }
      if (!is.null(self$`num_annotations`)) {
        IdentificationTaskObject[["num_annotations"]] <-
          self$`num_annotations`
      }
      if (!is.null(self$`review`)) {
        IdentificationTaskObject[["review"]] <-
          self$`review`$toSimpleType()
      }
      if (!is.null(self$`result`)) {
        IdentificationTaskObject[["result"]] <-
          self$`result`$toSimpleType()
      }
      if (!is.null(self$`created_at`)) {
        IdentificationTaskObject[["created_at"]] <-
          self$`created_at`
      }
      if (!is.null(self$`updated_at`)) {
        IdentificationTaskObject[["updated_at"]] <-
          self$`updated_at`
      }
      return(IdentificationTaskObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of IdentificationTask
    #'
    #' @param input_json the JSON input
    #' @return the instance of IdentificationTask
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`observation`)) {
        `observation_object` <- SimplifiedObservationWithPhotos$new()
        `observation_object`$fromJSON(jsonlite::toJSON(this_object$`observation`, auto_unbox = TRUE, digits = NA))
        self$`observation` <- `observation_object`
      }
      if (!is.null(this_object$`public_photo`)) {
        `public_photo_object` <- SimplePhoto$new()
        `public_photo_object`$fromJSON(jsonlite::toJSON(this_object$`public_photo`, auto_unbox = TRUE, digits = NA))
        self$`public_photo` <- `public_photo_object`
      }
      if (!is.null(this_object$`assignments`)) {
        self$`assignments` <- ApiClient$new()$deserializeObj(this_object$`assignments`, "array[UserAssignment]", loadNamespace("MosquitoAlert"))
      }
      if (!is.null(this_object$`status`)) {
        if (!is.null(this_object$`status`) && !(this_object$`status` %in% c("open", "conflict", "review", "done", "archived"))) {
          stop(paste("Error! \"", this_object$`status`, "\" cannot be assigned to `status`. Must be \"open\", \"conflict\", \"review\", \"done\", \"archived\".", sep = ""))
        }
        self$`status` <- this_object$`status`
      }
      if (!is.null(this_object$`is_flagged`)) {
        self$`is_flagged` <- this_object$`is_flagged`
      }
      if (!is.null(this_object$`is_safe`)) {
        self$`is_safe` <- this_object$`is_safe`
      }
      if (!is.null(this_object$`public_note`)) {
        self$`public_note` <- this_object$`public_note`
      }
      if (!is.null(this_object$`num_annotations`)) {
        self$`num_annotations` <- this_object$`num_annotations`
      }
      if (!is.null(this_object$`review`)) {
        `review_object` <- IdentificationTaskReview$new()
        `review_object`$fromJSON(jsonlite::toJSON(this_object$`review`, auto_unbox = TRUE, digits = NA))
        self$`review` <- `review_object`
      }
      if (!is.null(this_object$`result`)) {
        `result_object` <- IdentificationTaskResult$new()
        `result_object`$fromJSON(jsonlite::toJSON(this_object$`result`, auto_unbox = TRUE, digits = NA))
        self$`result` <- `result_object`
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
    #' @return IdentificationTask in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of IdentificationTask
    #'
    #' @param input_json the JSON input
    #' @return the instance of IdentificationTask
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`observation` <- SimplifiedObservationWithPhotos$new()$fromJSON(jsonlite::toJSON(this_object$`observation`, auto_unbox = TRUE, digits = NA))
      self$`public_photo` <- SimplePhoto$new()$fromJSON(jsonlite::toJSON(this_object$`public_photo`, auto_unbox = TRUE, digits = NA))
      self$`assignments` <- ApiClient$new()$deserializeObj(this_object$`assignments`, "array[UserAssignment]", loadNamespace("MosquitoAlert"))
      if (!is.null(this_object$`status`) && !(this_object$`status` %in% c("open", "conflict", "review", "done", "archived"))) {
        stop(paste("Error! \"", this_object$`status`, "\" cannot be assigned to `status`. Must be \"open\", \"conflict\", \"review\", \"done\", \"archived\".", sep = ""))
      }
      self$`status` <- this_object$`status`
      self$`is_flagged` <- this_object$`is_flagged`
      self$`is_safe` <- this_object$`is_safe`
      self$`public_note` <- this_object$`public_note`
      self$`num_annotations` <- this_object$`num_annotations`
      self$`review` <- IdentificationTaskReview$new()$fromJSON(jsonlite::toJSON(this_object$`review`, auto_unbox = TRUE, digits = NA))
      self$`result` <- IdentificationTaskResult$new()$fromJSON(jsonlite::toJSON(this_object$`result`, auto_unbox = TRUE, digits = NA))
      self$`created_at` <- this_object$`created_at`
      self$`updated_at` <- this_object$`updated_at`
      self
    },

    #' @description
    #' Validate JSON input with respect to IdentificationTask and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `observation`
      if (!is.null(input_json$`observation`)) {
        stopifnot(R6::is.R6(input_json$`observation`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for IdentificationTask: the required field `observation` is missing."))
      }
      # check the required field `public_photo`
      if (!is.null(input_json$`public_photo`)) {
        stopifnot(R6::is.R6(input_json$`public_photo`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for IdentificationTask: the required field `public_photo` is missing."))
      }
      # check the required field `assignments`
      if (!is.null(input_json$`assignments`)) {
        stopifnot(is.vector(input_json$`assignments`), length(input_json$`assignments`) != 0)
        tmp <- sapply(input_json$`assignments`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for IdentificationTask: the required field `assignments` is missing."))
      }
      # check the required field `status`
      if (!is.null(input_json$`status`)) {
        if (!(is.character(input_json$`status`) && length(input_json$`status`) == 1)) {
          stop(paste("Error! Invalid data for `status`. Must be a string:", input_json$`status`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for IdentificationTask: the required field `status` is missing."))
      }
      # check the required field `is_flagged`
      if (!is.null(input_json$`is_flagged`)) {
        if (!(is.logical(input_json$`is_flagged`) && length(input_json$`is_flagged`) == 1)) {
          stop(paste("Error! Invalid data for `is_flagged`. Must be a boolean:", input_json$`is_flagged`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for IdentificationTask: the required field `is_flagged` is missing."))
      }
      # check the required field `is_safe`
      if (!is.null(input_json$`is_safe`)) {
        if (!(is.logical(input_json$`is_safe`) && length(input_json$`is_safe`) == 1)) {
          stop(paste("Error! Invalid data for `is_safe`. Must be a boolean:", input_json$`is_safe`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for IdentificationTask: the required field `is_safe` is missing."))
      }
      # check the required field `public_note`
      if (!is.null(input_json$`public_note`)) {
        if (!(is.character(input_json$`public_note`) && length(input_json$`public_note`) == 1)) {
          stop(paste("Error! Invalid data for `public_note`. Must be a string:", input_json$`public_note`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for IdentificationTask: the required field `public_note` is missing."))
      }
      # check the required field `num_annotations`
      if (!is.null(input_json$`num_annotations`)) {
        if (!(is.numeric(input_json$`num_annotations`) && length(input_json$`num_annotations`) == 1)) {
          stop(paste("Error! Invalid data for `num_annotations`. Must be an integer:", input_json$`num_annotations`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for IdentificationTask: the required field `num_annotations` is missing."))
      }
      # check the required field `review`
      if (!is.null(input_json$`review`)) {
        stopifnot(R6::is.R6(input_json$`review`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for IdentificationTask: the required field `review` is missing."))
      }
      # check the required field `result`
      if (!is.null(input_json$`result`)) {
        stopifnot(R6::is.R6(input_json$`result`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for IdentificationTask: the required field `result` is missing."))
      }
      # check the required field `created_at`
      if (!is.null(input_json$`created_at`)) {
        if (!(is.character(input_json$`created_at`) && length(input_json$`created_at`) == 1)) {
          stop(paste("Error! Invalid data for `created_at`. Must be a string:", input_json$`created_at`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for IdentificationTask: the required field `created_at` is missing."))
      }
      # check the required field `updated_at`
      if (!is.null(input_json$`updated_at`)) {
        if (!(is.character(input_json$`updated_at`) && length(input_json$`updated_at`) == 1)) {
          stop(paste("Error! Invalid data for `updated_at`. Must be a string:", input_json$`updated_at`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for IdentificationTask: the required field `updated_at` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of IdentificationTask
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `observation` is null
      if (is.null(self$`observation`)) {
        return(FALSE)
      }

      # check if the required `public_photo` is null
      if (is.null(self$`public_photo`)) {
        return(FALSE)
      }

      # check if the required `assignments` is null
      if (is.null(self$`assignments`)) {
        return(FALSE)
      }

      # check if the required `status` is null
      if (is.null(self$`status`)) {
        return(FALSE)
      }

      # check if the required `is_flagged` is null
      if (is.null(self$`is_flagged`)) {
        return(FALSE)
      }

      # check if the required `is_safe` is null
      if (is.null(self$`is_safe`)) {
        return(FALSE)
      }

      # check if the required `num_annotations` is null
      if (is.null(self$`num_annotations`)) {
        return(FALSE)
      }

      if (self$`num_annotations` < 0) {
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
      # check if the required `observation` is null
      if (is.null(self$`observation`)) {
        invalid_fields["observation"] <- "Non-nullable required field `observation` cannot be null."
      }

      # check if the required `public_photo` is null
      if (is.null(self$`public_photo`)) {
        invalid_fields["public_photo"] <- "Non-nullable required field `public_photo` cannot be null."
      }

      # check if the required `assignments` is null
      if (is.null(self$`assignments`)) {
        invalid_fields["assignments"] <- "Non-nullable required field `assignments` cannot be null."
      }

      # check if the required `status` is null
      if (is.null(self$`status`)) {
        invalid_fields["status"] <- "Non-nullable required field `status` cannot be null."
      }

      # check if the required `is_flagged` is null
      if (is.null(self$`is_flagged`)) {
        invalid_fields["is_flagged"] <- "Non-nullable required field `is_flagged` cannot be null."
      }

      # check if the required `is_safe` is null
      if (is.null(self$`is_safe`)) {
        invalid_fields["is_safe"] <- "Non-nullable required field `is_safe` cannot be null."
      }

      # check if the required `num_annotations` is null
      if (is.null(self$`num_annotations`)) {
        invalid_fields["num_annotations"] <- "Non-nullable required field `num_annotations` cannot be null."
      }

      if (self$`num_annotations` < 0) {
        invalid_fields["num_annotations"] <- "Invalid value for `num_annotations`, must be bigger than or equal to 0."
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
# IdentificationTask$unlock()
#
## Below is an example to define the print function
# IdentificationTask$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# IdentificationTask$lock()

