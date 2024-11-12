#' Create a new Bite
#'
#' @description
#' Bite Class
#'
#' @docType class
#' @title Bite
#' @description Bite Class
#' @format An \code{R6Class} generator object
#' @field uuid  character
#' @field short_id  character
#' @field user_uuid  character
#' @field created_at  character
#' @field created_at_local The date and time when the record was created, displayed in the local timezone specified for this entry. character
#' @field sent_at  character
#' @field received_at  character
#' @field updated_at Date and time when the report was last modified character
#' @field location  \link{Location}
#' @field note Note user attached to report. character [optional]
#' @field tags  list(character) [optional]
#' @field published  character
#' @field event_environment The environment where the event took place. character [optional]
#' @field event_moment The moment of the day when the event took place. character [optional]
#' @field bite_count Total number of bites reported. integer
#' @field head_bite_count Number of bites reported in the head. integer [optional]
#' @field left_arm_bite_count Number of bites reported in the left arm. integer [optional]
#' @field right_arm_bite_count Number of bites reported in the right arm. integer [optional]
#' @field chest_bite_count Number of bites reported in the chest. integer [optional]
#' @field left_leg_bite_count Number of bites reported in the left leg. integer [optional]
#' @field right_leg_bite_count Number of bites reported in the right leg. integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Bite <- R6::R6Class(
  "Bite",
  public = list(
    `uuid` = NULL,
    `short_id` = NULL,
    `user_uuid` = NULL,
    `created_at` = NULL,
    `created_at_local` = NULL,
    `sent_at` = NULL,
    `received_at` = NULL,
    `updated_at` = NULL,
    `location` = NULL,
    `note` = NULL,
    `tags` = NULL,
    `published` = NULL,
    `event_environment` = NULL,
    `event_moment` = NULL,
    `bite_count` = NULL,
    `head_bite_count` = NULL,
    `left_arm_bite_count` = NULL,
    `right_arm_bite_count` = NULL,
    `chest_bite_count` = NULL,
    `left_leg_bite_count` = NULL,
    `right_leg_bite_count` = NULL,

    #' @description
    #' Initialize a new Bite class.
    #'
    #' @param uuid uuid
    #' @param short_id short_id
    #' @param user_uuid user_uuid
    #' @param created_at created_at
    #' @param created_at_local The date and time when the record was created, displayed in the local timezone specified for this entry.
    #' @param sent_at sent_at
    #' @param received_at received_at
    #' @param updated_at Date and time when the report was last modified
    #' @param location location
    #' @param published published
    #' @param bite_count Total number of bites reported.
    #' @param note Note user attached to report.
    #' @param tags tags
    #' @param event_environment The environment where the event took place.
    #' @param event_moment The moment of the day when the event took place.
    #' @param head_bite_count Number of bites reported in the head.. Default to 0.
    #' @param left_arm_bite_count Number of bites reported in the left arm.. Default to 0.
    #' @param right_arm_bite_count Number of bites reported in the right arm.. Default to 0.
    #' @param chest_bite_count Number of bites reported in the chest.. Default to 0.
    #' @param left_leg_bite_count Number of bites reported in the left leg.. Default to 0.
    #' @param right_leg_bite_count Number of bites reported in the right leg.. Default to 0.
    #' @param ... Other optional arguments.
    initialize = function(`uuid`, `short_id`, `user_uuid`, `created_at`, `created_at_local`, `sent_at`, `received_at`, `updated_at`, `location`, `published`, `bite_count`, `note` = NULL, `tags` = NULL, `event_environment` = NULL, `event_moment` = NULL, `head_bite_count` = 0, `left_arm_bite_count` = 0, `right_arm_bite_count` = 0, `chest_bite_count` = 0, `left_leg_bite_count` = 0, `right_leg_bite_count` = 0, ...) {
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
      if (!missing(`sent_at`)) {
        if (!(is.character(`sent_at`) && length(`sent_at`) == 1)) {
          stop(paste("Error! Invalid data for `sent_at`. Must be a string:", `sent_at`))
        }
        self$`sent_at` <- `sent_at`
      }
      if (!missing(`received_at`)) {
        if (!(is.character(`received_at`) && length(`received_at`) == 1)) {
          stop(paste("Error! Invalid data for `received_at`. Must be a string:", `received_at`))
        }
        self$`received_at` <- `received_at`
      }
      if (!missing(`updated_at`)) {
        if (!(is.character(`updated_at`) && length(`updated_at`) == 1)) {
          stop(paste("Error! Invalid data for `updated_at`. Must be a string:", `updated_at`))
        }
        self$`updated_at` <- `updated_at`
      }
      if (!missing(`location`)) {
        stopifnot(R6::is.R6(`location`))
        self$`location` <- `location`
      }
      if (!missing(`published`)) {
        if (!(is.logical(`published`) && length(`published`) == 1)) {
          stop(paste("Error! Invalid data for `published`. Must be a boolean:", `published`))
        }
        self$`published` <- `published`
      }
      if (!missing(`bite_count`)) {
        if (!(is.numeric(`bite_count`) && length(`bite_count`) == 1)) {
          stop(paste("Error! Invalid data for `bite_count`. Must be an integer:", `bite_count`))
        }
        self$`bite_count` <- `bite_count`
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
    #' @return Bite in JSON format
    toJSON = function() {
      BiteObject <- list()
      if (!is.null(self$`uuid`)) {
        BiteObject[["uuid"]] <-
          self$`uuid`
      }
      if (!is.null(self$`short_id`)) {
        BiteObject[["short_id"]] <-
          self$`short_id`
      }
      if (!is.null(self$`user_uuid`)) {
        BiteObject[["user_uuid"]] <-
          self$`user_uuid`
      }
      if (!is.null(self$`created_at`)) {
        BiteObject[["created_at"]] <-
          self$`created_at`
      }
      if (!is.null(self$`created_at_local`)) {
        BiteObject[["created_at_local"]] <-
          self$`created_at_local`
      }
      if (!is.null(self$`sent_at`)) {
        BiteObject[["sent_at"]] <-
          self$`sent_at`
      }
      if (!is.null(self$`received_at`)) {
        BiteObject[["received_at"]] <-
          self$`received_at`
      }
      if (!is.null(self$`updated_at`)) {
        BiteObject[["updated_at"]] <-
          self$`updated_at`
      }
      if (!is.null(self$`location`)) {
        BiteObject[["location"]] <-
          self$`location`$toJSON()
      }
      if (!is.null(self$`note`)) {
        BiteObject[["note"]] <-
          self$`note`
      }
      if (!is.null(self$`tags`)) {
        BiteObject[["tags"]] <-
          self$`tags`
      }
      if (!is.null(self$`published`)) {
        BiteObject[["published"]] <-
          self$`published`
      }
      if (!is.null(self$`event_environment`)) {
        BiteObject[["event_environment"]] <-
          self$`event_environment`
      }
      if (!is.null(self$`event_moment`)) {
        BiteObject[["event_moment"]] <-
          self$`event_moment`
      }
      if (!is.null(self$`bite_count`)) {
        BiteObject[["bite_count"]] <-
          self$`bite_count`
      }
      if (!is.null(self$`head_bite_count`)) {
        BiteObject[["head_bite_count"]] <-
          self$`head_bite_count`
      }
      if (!is.null(self$`left_arm_bite_count`)) {
        BiteObject[["left_arm_bite_count"]] <-
          self$`left_arm_bite_count`
      }
      if (!is.null(self$`right_arm_bite_count`)) {
        BiteObject[["right_arm_bite_count"]] <-
          self$`right_arm_bite_count`
      }
      if (!is.null(self$`chest_bite_count`)) {
        BiteObject[["chest_bite_count"]] <-
          self$`chest_bite_count`
      }
      if (!is.null(self$`left_leg_bite_count`)) {
        BiteObject[["left_leg_bite_count"]] <-
          self$`left_leg_bite_count`
      }
      if (!is.null(self$`right_leg_bite_count`)) {
        BiteObject[["right_leg_bite_count"]] <-
          self$`right_leg_bite_count`
      }
      BiteObject
    },

    #' @description
    #' Deserialize JSON string into an instance of Bite
    #'
    #' @param input_json the JSON input
    #' @return the instance of Bite
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
      if (!is.null(this_object$`sent_at`)) {
        self$`sent_at` <- this_object$`sent_at`
      }
      if (!is.null(this_object$`received_at`)) {
        self$`received_at` <- this_object$`received_at`
      }
      if (!is.null(this_object$`updated_at`)) {
        self$`updated_at` <- this_object$`updated_at`
      }
      if (!is.null(this_object$`location`)) {
        `location_object` <- Location$new()
        `location_object`$fromJSON(jsonlite::toJSON(this_object$`location`, auto_unbox = TRUE, digits = NA))
        self$`location` <- `location_object`
      }
      if (!is.null(this_object$`note`)) {
        self$`note` <- this_object$`note`
      }
      if (!is.null(this_object$`tags`)) {
        self$`tags` <- ApiClient$new()$deserializeObj(this_object$`tags`, "array[character]", loadNamespace("MosquitoAlert"))
      }
      if (!is.null(this_object$`published`)) {
        self$`published` <- this_object$`published`
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
      if (!is.null(this_object$`bite_count`)) {
        self$`bite_count` <- this_object$`bite_count`
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
    #' @return Bite in JSON format
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`uuid`)) {
          sprintf(
          '"uuid":
            "%s"
                    ',
          self$`uuid`
          )
        },
        if (!is.null(self$`short_id`)) {
          sprintf(
          '"short_id":
            "%s"
                    ',
          self$`short_id`
          )
        },
        if (!is.null(self$`user_uuid`)) {
          sprintf(
          '"user_uuid":
            "%s"
                    ',
          self$`user_uuid`
          )
        },
        if (!is.null(self$`created_at`)) {
          sprintf(
          '"created_at":
            "%s"
                    ',
          self$`created_at`
          )
        },
        if (!is.null(self$`created_at_local`)) {
          sprintf(
          '"created_at_local":
            "%s"
                    ',
          self$`created_at_local`
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
        if (!is.null(self$`received_at`)) {
          sprintf(
          '"received_at":
            "%s"
                    ',
          self$`received_at`
          )
        },
        if (!is.null(self$`updated_at`)) {
          sprintf(
          '"updated_at":
            "%s"
                    ',
          self$`updated_at`
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
        if (!is.null(self$`published`)) {
          sprintf(
          '"published":
            %s
                    ',
          tolower(self$`published`)
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
        if (!is.null(self$`bite_count`)) {
          sprintf(
          '"bite_count":
            %d
                    ',
          self$`bite_count`
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
    #' Deserialize JSON string into an instance of Bite
    #'
    #' @param input_json the JSON input
    #' @return the instance of Bite
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`uuid` <- this_object$`uuid`
      self$`short_id` <- this_object$`short_id`
      self$`user_uuid` <- this_object$`user_uuid`
      self$`created_at` <- this_object$`created_at`
      self$`created_at_local` <- this_object$`created_at_local`
      self$`sent_at` <- this_object$`sent_at`
      self$`received_at` <- this_object$`received_at`
      self$`updated_at` <- this_object$`updated_at`
      self$`location` <- Location$new()$fromJSON(jsonlite::toJSON(this_object$`location`, auto_unbox = TRUE, digits = NA))
      self$`note` <- this_object$`note`
      self$`tags` <- ApiClient$new()$deserializeObj(this_object$`tags`, "array[character]", loadNamespace("MosquitoAlert"))
      self$`published` <- this_object$`published`
      if (!is.null(this_object$`event_environment`) && !(this_object$`event_environment` %in% c("indoors", "outdoors", "vehicle", ""))) {
        stop(paste("Error! \"", this_object$`event_environment`, "\" cannot be assigned to `event_environment`. Must be \"indoors\", \"outdoors\", \"vehicle\", \"\".", sep = ""))
      }
      self$`event_environment` <- this_object$`event_environment`
      if (!is.null(this_object$`event_moment`) && !(this_object$`event_moment` %in% c("now", "last_morning", "last_midday", "last_afternoon", "last_night", ""))) {
        stop(paste("Error! \"", this_object$`event_moment`, "\" cannot be assigned to `event_moment`. Must be \"now\", \"last_morning\", \"last_midday\", \"last_afternoon\", \"last_night\", \"\".", sep = ""))
      }
      self$`event_moment` <- this_object$`event_moment`
      self$`bite_count` <- this_object$`bite_count`
      self$`head_bite_count` <- this_object$`head_bite_count`
      self$`left_arm_bite_count` <- this_object$`left_arm_bite_count`
      self$`right_arm_bite_count` <- this_object$`right_arm_bite_count`
      self$`chest_bite_count` <- this_object$`chest_bite_count`
      self$`left_leg_bite_count` <- this_object$`left_leg_bite_count`
      self$`right_leg_bite_count` <- this_object$`right_leg_bite_count`
      self
    },

    #' @description
    #' Validate JSON input with respect to Bite and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for Bite: the required field `uuid` is missing."))
      }
      # check the required field `short_id`
      if (!is.null(input_json$`short_id`)) {
        if (!(is.character(input_json$`short_id`) && length(input_json$`short_id`) == 1)) {
          stop(paste("Error! Invalid data for `short_id`. Must be a string:", input_json$`short_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Bite: the required field `short_id` is missing."))
      }
      # check the required field `user_uuid`
      if (!is.null(input_json$`user_uuid`)) {
        if (!(is.character(input_json$`user_uuid`) && length(input_json$`user_uuid`) == 1)) {
          stop(paste("Error! Invalid data for `user_uuid`. Must be a string:", input_json$`user_uuid`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Bite: the required field `user_uuid` is missing."))
      }
      # check the required field `created_at`
      if (!is.null(input_json$`created_at`)) {
        if (!(is.character(input_json$`created_at`) && length(input_json$`created_at`) == 1)) {
          stop(paste("Error! Invalid data for `created_at`. Must be a string:", input_json$`created_at`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Bite: the required field `created_at` is missing."))
      }
      # check the required field `created_at_local`
      if (!is.null(input_json$`created_at_local`)) {
        if (!(is.character(input_json$`created_at_local`) && length(input_json$`created_at_local`) == 1)) {
          stop(paste("Error! Invalid data for `created_at_local`. Must be a string:", input_json$`created_at_local`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Bite: the required field `created_at_local` is missing."))
      }
      # check the required field `sent_at`
      if (!is.null(input_json$`sent_at`)) {
        if (!(is.character(input_json$`sent_at`) && length(input_json$`sent_at`) == 1)) {
          stop(paste("Error! Invalid data for `sent_at`. Must be a string:", input_json$`sent_at`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Bite: the required field `sent_at` is missing."))
      }
      # check the required field `received_at`
      if (!is.null(input_json$`received_at`)) {
        if (!(is.character(input_json$`received_at`) && length(input_json$`received_at`) == 1)) {
          stop(paste("Error! Invalid data for `received_at`. Must be a string:", input_json$`received_at`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Bite: the required field `received_at` is missing."))
      }
      # check the required field `updated_at`
      if (!is.null(input_json$`updated_at`)) {
        if (!(is.character(input_json$`updated_at`) && length(input_json$`updated_at`) == 1)) {
          stop(paste("Error! Invalid data for `updated_at`. Must be a string:", input_json$`updated_at`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Bite: the required field `updated_at` is missing."))
      }
      # check the required field `location`
      if (!is.null(input_json$`location`)) {
        stopifnot(R6::is.R6(input_json$`location`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Bite: the required field `location` is missing."))
      }
      # check the required field `published`
      if (!is.null(input_json$`published`)) {
        if (!(is.logical(input_json$`published`) && length(input_json$`published`) == 1)) {
          stop(paste("Error! Invalid data for `published`. Must be a boolean:", input_json$`published`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Bite: the required field `published` is missing."))
      }
      # check the required field `bite_count`
      if (!is.null(input_json$`bite_count`)) {
        if (!(is.numeric(input_json$`bite_count`) && length(input_json$`bite_count`) == 1)) {
          stop(paste("Error! Invalid data for `bite_count`. Must be an integer:", input_json$`bite_count`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Bite: the required field `bite_count` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Bite
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

      # check if the required `sent_at` is null
      if (is.null(self$`sent_at`)) {
        return(FALSE)
      }

      # check if the required `received_at` is null
      if (is.null(self$`received_at`)) {
        return(FALSE)
      }

      # check if the required `updated_at` is null
      if (is.null(self$`updated_at`)) {
        return(FALSE)
      }

      # check if the required `location` is null
      if (is.null(self$`location`)) {
        return(FALSE)
      }

      # check if the required `published` is null
      if (is.null(self$`published`)) {
        return(FALSE)
      }

      # check if the required `bite_count` is null
      if (is.null(self$`bite_count`)) {
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

      # check if the required `sent_at` is null
      if (is.null(self$`sent_at`)) {
        invalid_fields["sent_at"] <- "Non-nullable required field `sent_at` cannot be null."
      }

      # check if the required `received_at` is null
      if (is.null(self$`received_at`)) {
        invalid_fields["received_at"] <- "Non-nullable required field `received_at` cannot be null."
      }

      # check if the required `updated_at` is null
      if (is.null(self$`updated_at`)) {
        invalid_fields["updated_at"] <- "Non-nullable required field `updated_at` cannot be null."
      }

      # check if the required `location` is null
      if (is.null(self$`location`)) {
        invalid_fields["location"] <- "Non-nullable required field `location` cannot be null."
      }

      # check if the required `published` is null
      if (is.null(self$`published`)) {
        invalid_fields["published"] <- "Non-nullable required field `published` cannot be null."
      }

      # check if the required `bite_count` is null
      if (is.null(self$`bite_count`)) {
        invalid_fields["bite_count"] <- "Non-nullable required field `bite_count` cannot be null."
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
# Bite$unlock()
#
## Below is an example to define the print function
# Bite$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Bite$lock()

