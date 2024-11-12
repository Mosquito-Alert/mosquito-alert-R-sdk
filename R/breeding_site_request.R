#' Create a new BreedingSiteRequest
#'
#' @description
#' BreedingSiteRequest Class
#'
#' @docType class
#' @title BreedingSiteRequest
#' @description BreedingSiteRequest Class
#' @format An \code{R6Class} generator object
#' @field created_at  character
#' @field sent_at  character
#' @field location  \link{LocationRequest}
#' @field note Note user attached to report. character [optional]
#' @field tags  list(character) [optional]
#' @field package  \link{PackageRequest} [optional]
#' @field device  \link{DeviceRequest} [optional]
#' @field photos  list(\link{SimplePhotoRequest})
#' @field site_type Breeding site type. character [optional]
#' @field has_water Either if the user perceived water in the breeding site. character [optional]
#' @field in_public_area Either if the breeding site is found in a public area. character [optional]
#' @field has_near_mosquitoes Either if the user perceived mosquitoes near the breeding site (less than 10 meters). character [optional]
#' @field has_larvae Either if the user perceived larvaes the breeding site. character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
BreedingSiteRequest <- R6::R6Class(
  "BreedingSiteRequest",
  public = list(
    `created_at` = NULL,
    `sent_at` = NULL,
    `location` = NULL,
    `note` = NULL,
    `tags` = NULL,
    `package` = NULL,
    `device` = NULL,
    `photos` = NULL,
    `site_type` = NULL,
    `has_water` = NULL,
    `in_public_area` = NULL,
    `has_near_mosquitoes` = NULL,
    `has_larvae` = NULL,

    #' @description
    #' Initialize a new BreedingSiteRequest class.
    #'
    #' @param created_at created_at
    #' @param sent_at sent_at
    #' @param location location
    #' @param photos photos
    #' @param note Note user attached to report.
    #' @param tags tags
    #' @param package package
    #' @param device device
    #' @param site_type Breeding site type.
    #' @param has_water Either if the user perceived water in the breeding site.
    #' @param in_public_area Either if the breeding site is found in a public area.
    #' @param has_near_mosquitoes Either if the user perceived mosquitoes near the breeding site (less than 10 meters).
    #' @param has_larvae Either if the user perceived larvaes the breeding site.
    #' @param ... Other optional arguments.
    initialize = function(`created_at`, `sent_at`, `location`, `photos`, `note` = NULL, `tags` = NULL, `package` = NULL, `device` = NULL, `site_type` = NULL, `has_water` = NULL, `in_public_area` = NULL, `has_near_mosquitoes` = NULL, `has_larvae` = NULL, ...) {
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
      if (!is.null(`tags`)) {
        stopifnot(is.vector(`tags`), length(`tags`) != 0)
        sapply(`tags`, function(x) stopifnot(is.character(x)))
        self$`tags` <- `tags`
      }
      if (!is.null(`package`)) {
        stopifnot(R6::is.R6(`package`))
        self$`package` <- `package`
      }
      if (!is.null(`device`)) {
        stopifnot(R6::is.R6(`device`))
        self$`device` <- `device`
      }
      if (!is.null(`site_type`)) {
        if (!(`site_type` %in% c("basin", "bucket", "fountain", "small_container", "storm_drain", "well", "other", ""))) {
          stop(paste("Error! \"", `site_type`, "\" cannot be assigned to `site_type`. Must be \"basin\", \"bucket\", \"fountain\", \"small_container\", \"storm_drain\", \"well\", \"other\", \"\".", sep = ""))
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
      if (!is.null(`in_public_area`)) {
        if (!(is.logical(`in_public_area`) && length(`in_public_area`) == 1)) {
          stop(paste("Error! Invalid data for `in_public_area`. Must be a boolean:", `in_public_area`))
        }
        self$`in_public_area` <- `in_public_area`
      }
      if (!is.null(`has_near_mosquitoes`)) {
        if (!(is.logical(`has_near_mosquitoes`) && length(`has_near_mosquitoes`) == 1)) {
          stop(paste("Error! Invalid data for `has_near_mosquitoes`. Must be a boolean:", `has_near_mosquitoes`))
        }
        self$`has_near_mosquitoes` <- `has_near_mosquitoes`
      }
      if (!is.null(`has_larvae`)) {
        if (!(is.logical(`has_larvae`) && length(`has_larvae`) == 1)) {
          stop(paste("Error! Invalid data for `has_larvae`. Must be a boolean:", `has_larvae`))
        }
        self$`has_larvae` <- `has_larvae`
      }
    },

    #' @description
    #' To JSON String
    #'
    #' @return BreedingSiteRequest in JSON format
    toJSON = function() {
      BreedingSiteRequestObject <- list()
      if (!is.null(self$`created_at`)) {
        BreedingSiteRequestObject[["created_at"]] <-
          self$`created_at`
      }
      if (!is.null(self$`sent_at`)) {
        BreedingSiteRequestObject[["sent_at"]] <-
          self$`sent_at`
      }
      if (!is.null(self$`location`)) {
        BreedingSiteRequestObject[["location"]] <-
          self$`location`$toJSON()
      }
      if (!is.null(self$`note`)) {
        BreedingSiteRequestObject[["note"]] <-
          self$`note`
      }
      if (!is.null(self$`tags`)) {
        BreedingSiteRequestObject[["tags"]] <-
          self$`tags`
      }
      if (!is.null(self$`package`)) {
        BreedingSiteRequestObject[["package"]] <-
          self$`package`$toJSON()
      }
      if (!is.null(self$`device`)) {
        BreedingSiteRequestObject[["device"]] <-
          self$`device`$toJSON()
      }
      if (!is.null(self$`photos`)) {
        BreedingSiteRequestObject[["photos"]] <-
          lapply(self$`photos`, function(x) x$toJSON())
      }
      if (!is.null(self$`site_type`)) {
        BreedingSiteRequestObject[["site_type"]] <-
          self$`site_type`
      }
      if (!is.null(self$`has_water`)) {
        BreedingSiteRequestObject[["has_water"]] <-
          self$`has_water`
      }
      if (!is.null(self$`in_public_area`)) {
        BreedingSiteRequestObject[["in_public_area"]] <-
          self$`in_public_area`
      }
      if (!is.null(self$`has_near_mosquitoes`)) {
        BreedingSiteRequestObject[["has_near_mosquitoes"]] <-
          self$`has_near_mosquitoes`
      }
      if (!is.null(self$`has_larvae`)) {
        BreedingSiteRequestObject[["has_larvae"]] <-
          self$`has_larvae`
      }
      BreedingSiteRequestObject
    },

    #' @description
    #' Deserialize JSON string into an instance of BreedingSiteRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of BreedingSiteRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`created_at`)) {
        self$`created_at` <- this_object$`created_at`
      }
      if (!is.null(this_object$`sent_at`)) {
        self$`sent_at` <- this_object$`sent_at`
      }
      if (!is.null(this_object$`location`)) {
        `location_object` <- LocationRequest$new()
        `location_object`$fromJSON(jsonlite::toJSON(this_object$`location`, auto_unbox = TRUE, digits = NA))
        self$`location` <- `location_object`
      }
      if (!is.null(this_object$`note`)) {
        self$`note` <- this_object$`note`
      }
      if (!is.null(this_object$`tags`)) {
        self$`tags` <- ApiClient$new()$deserializeObj(this_object$`tags`, "array[character]", loadNamespace("MosquitoAlert"))
      }
      if (!is.null(this_object$`package`)) {
        `package_object` <- PackageRequest$new()
        `package_object`$fromJSON(jsonlite::toJSON(this_object$`package`, auto_unbox = TRUE, digits = NA))
        self$`package` <- `package_object`
      }
      if (!is.null(this_object$`device`)) {
        `device_object` <- DeviceRequest$new()
        `device_object`$fromJSON(jsonlite::toJSON(this_object$`device`, auto_unbox = TRUE, digits = NA))
        self$`device` <- `device_object`
      }
      if (!is.null(this_object$`photos`)) {
        self$`photos` <- ApiClient$new()$deserializeObj(this_object$`photos`, "array[SimplePhotoRequest]", loadNamespace("MosquitoAlert"))
      }
      if (!is.null(this_object$`site_type`)) {
        if (!is.null(this_object$`site_type`) && !(this_object$`site_type` %in% c("basin", "bucket", "fountain", "small_container", "storm_drain", "well", "other", ""))) {
          stop(paste("Error! \"", this_object$`site_type`, "\" cannot be assigned to `site_type`. Must be \"basin\", \"bucket\", \"fountain\", \"small_container\", \"storm_drain\", \"well\", \"other\", \"\".", sep = ""))
        }
        self$`site_type` <- this_object$`site_type`
      }
      if (!is.null(this_object$`has_water`)) {
        self$`has_water` <- this_object$`has_water`
      }
      if (!is.null(this_object$`in_public_area`)) {
        self$`in_public_area` <- this_object$`in_public_area`
      }
      if (!is.null(this_object$`has_near_mosquitoes`)) {
        self$`has_near_mosquitoes` <- this_object$`has_near_mosquitoes`
      }
      if (!is.null(this_object$`has_larvae`)) {
        self$`has_larvae` <- this_object$`has_larvae`
      }
      self
    },

    #' @description
    #' To JSON String
    #'
    #' @return BreedingSiteRequest in JSON format
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`created_at`)) {
          sprintf(
          '"created_at":
            "%s"
                    ',
          self$`created_at`
          )
        },
        if (!is.null(self$`sent_at`)) {
          sprintf(
          '"sent_at":
            "%s"
                    ',
          self$`sent_at`
          )
        },
        if (!is.null(self$`location`)) {
          sprintf(
          '"location":
          %s
          ',
          jsonlite::toJSON(self$`location`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`note`)) {
          sprintf(
          '"note":
            "%s"
                    ',
          self$`note`
          )
        },
        if (!is.null(self$`tags`)) {
          sprintf(
          '"tags":
             [%s]
          ',
          paste(unlist(lapply(self$`tags`, function(x) paste0('"', x, '"'))), collapse = ",")
          )
        },
        if (!is.null(self$`package`)) {
          sprintf(
          '"package":
          %s
          ',
          jsonlite::toJSON(self$`package`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`device`)) {
          sprintf(
          '"device":
          %s
          ',
          jsonlite::toJSON(self$`device`$toJSON(), auto_unbox = TRUE, digits = NA)
          )
        },
        if (!is.null(self$`photos`)) {
          sprintf(
          '"photos":
          [%s]
',
          paste(sapply(self$`photos`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox = TRUE, digits = NA)), collapse = ",")
          )
        },
        if (!is.null(self$`site_type`)) {
          sprintf(
          '"site_type":
            "%s"
                    ',
          self$`site_type`
          )
        },
        if (!is.null(self$`has_water`)) {
          sprintf(
          '"has_water":
            %s
                    ',
          tolower(self$`has_water`)
          )
        },
        if (!is.null(self$`in_public_area`)) {
          sprintf(
          '"in_public_area":
            %s
                    ',
          tolower(self$`in_public_area`)
          )
        },
        if (!is.null(self$`has_near_mosquitoes`)) {
          sprintf(
          '"has_near_mosquitoes":
            %s
                    ',
          tolower(self$`has_near_mosquitoes`)
          )
        },
        if (!is.null(self$`has_larvae`)) {
          sprintf(
          '"has_larvae":
            %s
                    ',
          tolower(self$`has_larvae`)
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },

    #' @description
    #' Deserialize JSON string into an instance of BreedingSiteRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of BreedingSiteRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`created_at` <- this_object$`created_at`
      self$`sent_at` <- this_object$`sent_at`
      self$`location` <- LocationRequest$new()$fromJSON(jsonlite::toJSON(this_object$`location`, auto_unbox = TRUE, digits = NA))
      self$`note` <- this_object$`note`
      self$`tags` <- ApiClient$new()$deserializeObj(this_object$`tags`, "array[character]", loadNamespace("MosquitoAlert"))
      self$`package` <- PackageRequest$new()$fromJSON(jsonlite::toJSON(this_object$`package`, auto_unbox = TRUE, digits = NA))
      self$`device` <- DeviceRequest$new()$fromJSON(jsonlite::toJSON(this_object$`device`, auto_unbox = TRUE, digits = NA))
      self$`photos` <- ApiClient$new()$deserializeObj(this_object$`photos`, "array[SimplePhotoRequest]", loadNamespace("MosquitoAlert"))
      if (!is.null(this_object$`site_type`) && !(this_object$`site_type` %in% c("basin", "bucket", "fountain", "small_container", "storm_drain", "well", "other", ""))) {
        stop(paste("Error! \"", this_object$`site_type`, "\" cannot be assigned to `site_type`. Must be \"basin\", \"bucket\", \"fountain\", \"small_container\", \"storm_drain\", \"well\", \"other\", \"\".", sep = ""))
      }
      self$`site_type` <- this_object$`site_type`
      self$`has_water` <- this_object$`has_water`
      self$`in_public_area` <- this_object$`in_public_area`
      self$`has_near_mosquitoes` <- this_object$`has_near_mosquitoes`
      self$`has_larvae` <- this_object$`has_larvae`
      self
    },

    #' @description
    #' Validate JSON input with respect to BreedingSiteRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `created_at`
      if (!is.null(input_json$`created_at`)) {
        if (!(is.character(input_json$`created_at`) && length(input_json$`created_at`) == 1)) {
          stop(paste("Error! Invalid data for `created_at`. Must be a string:", input_json$`created_at`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for BreedingSiteRequest: the required field `created_at` is missing."))
      }
      # check the required field `sent_at`
      if (!is.null(input_json$`sent_at`)) {
        if (!(is.character(input_json$`sent_at`) && length(input_json$`sent_at`) == 1)) {
          stop(paste("Error! Invalid data for `sent_at`. Must be a string:", input_json$`sent_at`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for BreedingSiteRequest: the required field `sent_at` is missing."))
      }
      # check the required field `location`
      if (!is.null(input_json$`location`)) {
        stopifnot(R6::is.R6(input_json$`location`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for BreedingSiteRequest: the required field `location` is missing."))
      }
      # check the required field `photos`
      if (!is.null(input_json$`photos`)) {
        stopifnot(is.vector(input_json$`photos`), length(input_json$`photos`) != 0)
        tmp <- sapply(input_json$`photos`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for BreedingSiteRequest: the required field `photos` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of BreedingSiteRequest
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `created_at` is null
      if (is.null(self$`created_at`)) {
        return(FALSE)
      }

      # check if the required `sent_at` is null
      if (is.null(self$`sent_at`)) {
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
      # check if the required `created_at` is null
      if (is.null(self$`created_at`)) {
        invalid_fields["created_at"] <- "Non-nullable required field `created_at` cannot be null."
      }

      # check if the required `sent_at` is null
      if (is.null(self$`sent_at`)) {
        invalid_fields["sent_at"] <- "Non-nullable required field `sent_at` cannot be null."
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
# BreedingSiteRequest$unlock()
#
## Below is an example to define the print function
# BreedingSiteRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# BreedingSiteRequest$lock()

