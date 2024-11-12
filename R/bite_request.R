#' Create a new BiteRequest
#'
#' @description
#' BiteRequest Class
#'
#' @docType class
#' @title BiteRequest
#' @description BiteRequest Class
#' @format An \code{R6Class} generator object
#' @field created_at  character
#' @field sent_at  character
#' @field location  \link{LocationRequest}
#' @field note Note user attached to report. character [optional]
#' @field tags  list(character) [optional]
#' @field package  \link{PackageRequest} [optional]
#' @field device  \link{DeviceRequest} [optional]
#' @field event_environment The environment where the event took place. character [optional]
#' @field event_moment The moment of the day when the event took place. character [optional]
#' @field head_bite_count Number of bites reported in the head. integer [optional]
#' @field left_arm_bite_count Number of bites reported in the left arm. integer [optional]
#' @field right_arm_bite_count Number of bites reported in the right arm. integer [optional]
#' @field chest_bite_count Number of bites reported in the chest. integer [optional]
#' @field left_leg_bite_count Number of bites reported in the left leg. integer [optional]
#' @field right_leg_bite_count Number of bites reported in the right leg. integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
BiteRequest <- R6::R6Class(
  "BiteRequest",
  public = list(
    `created_at` = NULL,
    `sent_at` = NULL,
    `location` = NULL,
    `note` = NULL,
    `tags` = NULL,
    `package` = NULL,
    `device` = NULL,
    `event_environment` = NULL,
    `event_moment` = NULL,
    `head_bite_count` = NULL,
    `left_arm_bite_count` = NULL,
    `right_arm_bite_count` = NULL,
    `chest_bite_count` = NULL,
    `left_leg_bite_count` = NULL,
    `right_leg_bite_count` = NULL,

    #' @description
    #' Initialize a new BiteRequest class.
    #'
    #' @param created_at created_at
    #' @param sent_at sent_at
    #' @param location location
    #' @param note Note user attached to report.
    #' @param tags tags
    #' @param package package
    #' @param device device
    #' @param event_environment The environment where the event took place.
    #' @param event_moment The moment of the day when the event took place.
    #' @param head_bite_count Number of bites reported in the head.. Default to 0.
    #' @param left_arm_bite_count Number of bites reported in the left arm.. Default to 0.
    #' @param right_arm_bite_count Number of bites reported in the right arm.. Default to 0.
    #' @param chest_bite_count Number of bites reported in the chest.. Default to 0.
    #' @param left_leg_bite_count Number of bites reported in the left leg.. Default to 0.
    #' @param right_leg_bite_count Number of bites reported in the right leg.. Default to 0.
    #' @param ... Other optional arguments.
    initialize = function(`created_at`, `sent_at`, `location`, `note` = NULL, `tags` = NULL, `package` = NULL, `device` = NULL, `event_environment` = NULL, `event_moment` = NULL, `head_bite_count` = 0, `left_arm_bite_count` = 0, `right_arm_bite_count` = 0, `chest_bite_count` = 0, `left_leg_bite_count` = 0, `right_leg_bite_count` = 0, ...) {
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
      if (!is.null(`event_environment`)) {
        if (!(`event_environment` %in% c("indoors", "outdoors", "vehicle", ""))) {
          stop(paste("Error! \"", `event_environment`, "\" cannot be assigned to `event_environment`. Must be \"indoors\", \"outdoors\", \"vehicle\", \"\".", sep = ""))
        }
        if (!(is.character(`event_environment`) && length(`event_environment`) == 1)) {
          stop(paste("Error! Invalid data for `event_environment`. Must be a string:", `event_environment`))
        }
        self$`event_environment` <- `event_environment`
      }
      if (!is.null(`event_moment`)) {
        if (!(`event_moment` %in% c("now", "last_morning", "last_midday", "last_afternoon", "last_night", ""))) {
          stop(paste("Error! \"", `event_moment`, "\" cannot be assigned to `event_moment`. Must be \"now\", \"last_morning\", \"last_midday\", \"last_afternoon\", \"last_night\", \"\".", sep = ""))
        }
        if (!(is.character(`event_moment`) && length(`event_moment`) == 1)) {
          stop(paste("Error! Invalid data for `event_moment`. Must be a string:", `event_moment`))
        }
        self$`event_moment` <- `event_moment`
      }
      if (!is.null(`head_bite_count`)) {
        if (!(is.numeric(`head_bite_count`) && length(`head_bite_count`) == 1)) {
          stop(paste("Error! Invalid data for `head_bite_count`. Must be an integer:", `head_bite_count`))
        }
        self$`head_bite_count` <- `head_bite_count`
      }
      if (!is.null(`left_arm_bite_count`)) {
        if (!(is.numeric(`left_arm_bite_count`) && length(`left_arm_bite_count`) == 1)) {
          stop(paste("Error! Invalid data for `left_arm_bite_count`. Must be an integer:", `left_arm_bite_count`))
        }
        self$`left_arm_bite_count` <- `left_arm_bite_count`
      }
      if (!is.null(`right_arm_bite_count`)) {
        if (!(is.numeric(`right_arm_bite_count`) && length(`right_arm_bite_count`) == 1)) {
          stop(paste("Error! Invalid data for `right_arm_bite_count`. Must be an integer:", `right_arm_bite_count`))
        }
        self$`right_arm_bite_count` <- `right_arm_bite_count`
      }
      if (!is.null(`chest_bite_count`)) {
        if (!(is.numeric(`chest_bite_count`) && length(`chest_bite_count`) == 1)) {
          stop(paste("Error! Invalid data for `chest_bite_count`. Must be an integer:", `chest_bite_count`))
        }
        self$`chest_bite_count` <- `chest_bite_count`
      }
      if (!is.null(`left_leg_bite_count`)) {
        if (!(is.numeric(`left_leg_bite_count`) && length(`left_leg_bite_count`) == 1)) {
          stop(paste("Error! Invalid data for `left_leg_bite_count`. Must be an integer:", `left_leg_bite_count`))
        }
        self$`left_leg_bite_count` <- `left_leg_bite_count`
      }
      if (!is.null(`right_leg_bite_count`)) {
        if (!(is.numeric(`right_leg_bite_count`) && length(`right_leg_bite_count`) == 1)) {
          stop(paste("Error! Invalid data for `right_leg_bite_count`. Must be an integer:", `right_leg_bite_count`))
        }
        self$`right_leg_bite_count` <- `right_leg_bite_count`
      }
    },

    #' @description
    #' To JSON String
    #'
    #' @return BiteRequest in JSON format
    toJSON = function() {
      BiteRequestObject <- list()
      if (!is.null(self$`created_at`)) {
        BiteRequestObject[["created_at"]] <-
          self$`created_at`
      }
      if (!is.null(self$`sent_at`)) {
        BiteRequestObject[["sent_at"]] <-
          self$`sent_at`
      }
      if (!is.null(self$`location`)) {
        BiteRequestObject[["location"]] <-
          self$`location`$toJSON()
      }
      if (!is.null(self$`note`)) {
        BiteRequestObject[["note"]] <-
          self$`note`
      }
      if (!is.null(self$`tags`)) {
        BiteRequestObject[["tags"]] <-
          self$`tags`
      }
      if (!is.null(self$`package`)) {
        BiteRequestObject[["package"]] <-
          self$`package`$toJSON()
      }
      if (!is.null(self$`device`)) {
        BiteRequestObject[["device"]] <-
          self$`device`$toJSON()
      }
      if (!is.null(self$`event_environment`)) {
        BiteRequestObject[["event_environment"]] <-
          self$`event_environment`
      }
      if (!is.null(self$`event_moment`)) {
        BiteRequestObject[["event_moment"]] <-
          self$`event_moment`
      }
      if (!is.null(self$`head_bite_count`)) {
        BiteRequestObject[["head_bite_count"]] <-
          self$`head_bite_count`
      }
      if (!is.null(self$`left_arm_bite_count`)) {
        BiteRequestObject[["left_arm_bite_count"]] <-
          self$`left_arm_bite_count`
      }
      if (!is.null(self$`right_arm_bite_count`)) {
        BiteRequestObject[["right_arm_bite_count"]] <-
          self$`right_arm_bite_count`
      }
      if (!is.null(self$`chest_bite_count`)) {
        BiteRequestObject[["chest_bite_count"]] <-
          self$`chest_bite_count`
      }
      if (!is.null(self$`left_leg_bite_count`)) {
        BiteRequestObject[["left_leg_bite_count"]] <-
          self$`left_leg_bite_count`
      }
      if (!is.null(self$`right_leg_bite_count`)) {
        BiteRequestObject[["right_leg_bite_count"]] <-
          self$`right_leg_bite_count`
      }
      BiteRequestObject
    },

    #' @description
    #' Deserialize JSON string into an instance of BiteRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of BiteRequest
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
      if (!is.null(this_object$`event_environment`)) {
        if (!is.null(this_object$`event_environment`) && !(this_object$`event_environment` %in% c("indoors", "outdoors", "vehicle", ""))) {
          stop(paste("Error! \"", this_object$`event_environment`, "\" cannot be assigned to `event_environment`. Must be \"indoors\", \"outdoors\", \"vehicle\", \"\".", sep = ""))
        }
        self$`event_environment` <- this_object$`event_environment`
      }
      if (!is.null(this_object$`event_moment`)) {
        if (!is.null(this_object$`event_moment`) && !(this_object$`event_moment` %in% c("now", "last_morning", "last_midday", "last_afternoon", "last_night", ""))) {
          stop(paste("Error! \"", this_object$`event_moment`, "\" cannot be assigned to `event_moment`. Must be \"now\", \"last_morning\", \"last_midday\", \"last_afternoon\", \"last_night\", \"\".", sep = ""))
        }
        self$`event_moment` <- this_object$`event_moment`
      }
      if (!is.null(this_object$`head_bite_count`)) {
        self$`head_bite_count` <- this_object$`head_bite_count`
      }
      if (!is.null(this_object$`left_arm_bite_count`)) {
        self$`left_arm_bite_count` <- this_object$`left_arm_bite_count`
      }
      if (!is.null(this_object$`right_arm_bite_count`)) {
        self$`right_arm_bite_count` <- this_object$`right_arm_bite_count`
      }
      if (!is.null(this_object$`chest_bite_count`)) {
        self$`chest_bite_count` <- this_object$`chest_bite_count`
      }
      if (!is.null(this_object$`left_leg_bite_count`)) {
        self$`left_leg_bite_count` <- this_object$`left_leg_bite_count`
      }
      if (!is.null(this_object$`right_leg_bite_count`)) {
        self$`right_leg_bite_count` <- this_object$`right_leg_bite_count`
      }
      self
    },

    #' @description
    #' To JSON String
    #'
    #' @return BiteRequest in JSON format
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
        if (!is.null(self$`event_environment`)) {
          sprintf(
          '"event_environment":
            "%s"
                    ',
          self$`event_environment`
          )
        },
        if (!is.null(self$`event_moment`)) {
          sprintf(
          '"event_moment":
            "%s"
                    ',
          self$`event_moment`
          )
        },
        if (!is.null(self$`head_bite_count`)) {
          sprintf(
          '"head_bite_count":
            %d
                    ',
          self$`head_bite_count`
          )
        },
        if (!is.null(self$`left_arm_bite_count`)) {
          sprintf(
          '"left_arm_bite_count":
            %d
                    ',
          self$`left_arm_bite_count`
          )
        },
        if (!is.null(self$`right_arm_bite_count`)) {
          sprintf(
          '"right_arm_bite_count":
            %d
                    ',
          self$`right_arm_bite_count`
          )
        },
        if (!is.null(self$`chest_bite_count`)) {
          sprintf(
          '"chest_bite_count":
            %d
                    ',
          self$`chest_bite_count`
          )
        },
        if (!is.null(self$`left_leg_bite_count`)) {
          sprintf(
          '"left_leg_bite_count":
            %d
                    ',
          self$`left_leg_bite_count`
          )
        },
        if (!is.null(self$`right_leg_bite_count`)) {
          sprintf(
          '"right_leg_bite_count":
            %d
                    ',
          self$`right_leg_bite_count`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },

    #' @description
    #' Deserialize JSON string into an instance of BiteRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of BiteRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`created_at` <- this_object$`created_at`
      self$`sent_at` <- this_object$`sent_at`
      self$`location` <- LocationRequest$new()$fromJSON(jsonlite::toJSON(this_object$`location`, auto_unbox = TRUE, digits = NA))
      self$`note` <- this_object$`note`
      self$`tags` <- ApiClient$new()$deserializeObj(this_object$`tags`, "array[character]", loadNamespace("MosquitoAlert"))
      self$`package` <- PackageRequest$new()$fromJSON(jsonlite::toJSON(this_object$`package`, auto_unbox = TRUE, digits = NA))
      self$`device` <- DeviceRequest$new()$fromJSON(jsonlite::toJSON(this_object$`device`, auto_unbox = TRUE, digits = NA))
      if (!is.null(this_object$`event_environment`) && !(this_object$`event_environment` %in% c("indoors", "outdoors", "vehicle", ""))) {
        stop(paste("Error! \"", this_object$`event_environment`, "\" cannot be assigned to `event_environment`. Must be \"indoors\", \"outdoors\", \"vehicle\", \"\".", sep = ""))
      }
      self$`event_environment` <- this_object$`event_environment`
      if (!is.null(this_object$`event_moment`) && !(this_object$`event_moment` %in% c("now", "last_morning", "last_midday", "last_afternoon", "last_night", ""))) {
        stop(paste("Error! \"", this_object$`event_moment`, "\" cannot be assigned to `event_moment`. Must be \"now\", \"last_morning\", \"last_midday\", \"last_afternoon\", \"last_night\", \"\".", sep = ""))
      }
      self$`event_moment` <- this_object$`event_moment`
      self$`head_bite_count` <- this_object$`head_bite_count`
      self$`left_arm_bite_count` <- this_object$`left_arm_bite_count`
      self$`right_arm_bite_count` <- this_object$`right_arm_bite_count`
      self$`chest_bite_count` <- this_object$`chest_bite_count`
      self$`left_leg_bite_count` <- this_object$`left_leg_bite_count`
      self$`right_leg_bite_count` <- this_object$`right_leg_bite_count`
      self
    },

    #' @description
    #' Validate JSON input with respect to BiteRequest and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for BiteRequest: the required field `created_at` is missing."))
      }
      # check the required field `sent_at`
      if (!is.null(input_json$`sent_at`)) {
        if (!(is.character(input_json$`sent_at`) && length(input_json$`sent_at`) == 1)) {
          stop(paste("Error! Invalid data for `sent_at`. Must be a string:", input_json$`sent_at`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for BiteRequest: the required field `sent_at` is missing."))
      }
      # check the required field `location`
      if (!is.null(input_json$`location`)) {
        stopifnot(R6::is.R6(input_json$`location`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for BiteRequest: the required field `location` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of BiteRequest
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
# BiteRequest$unlock()
#
## Below is an example to define the print function
# BiteRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# BiteRequest$lock()

