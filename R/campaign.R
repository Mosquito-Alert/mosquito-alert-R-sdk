#' Create a new Campaign
#'
#' @description
#' Campaign Class
#'
#' @docType class
#' @title Campaign
#' @description Campaign Class
#' @format An \code{R6Class} generator object
#' @field id  integer
#' @field country_id Country in which the campaign is taking place integer
#' @field posting_address Full posting address of the place where the samples will be sent character
#' @field start_date Date when the campaign starts. No samples should be collected BEFORE this date. character
#' @field end_date Date when the campaign ends. No samples should be collected AFTER this date. character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Campaign <- R6::R6Class(
  "Campaign",
  public = list(
    `id` = NULL,
    `country_id` = NULL,
    `posting_address` = NULL,
    `start_date` = NULL,
    `end_date` = NULL,

    #' @description
    #' Initialize a new Campaign class.
    #'
    #' @param id id
    #' @param country_id Country in which the campaign is taking place
    #' @param posting_address Full posting address of the place where the samples will be sent
    #' @param start_date Date when the campaign starts. No samples should be collected BEFORE this date.
    #' @param end_date Date when the campaign ends. No samples should be collected AFTER this date.
    #' @param ... Other optional arguments.
    initialize = function(`id`, `country_id`, `posting_address`, `start_date`, `end_date`, ...) {
      if (!missing(`id`)) {
        if (!(is.numeric(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be an integer:", `id`))
        }
        self$`id` <- `id`
      }
      if (!missing(`country_id`)) {
        if (!(is.numeric(`country_id`) && length(`country_id`) == 1)) {
          stop(paste("Error! Invalid data for `country_id`. Must be an integer:", `country_id`))
        }
        self$`country_id` <- `country_id`
      }
      if (!missing(`posting_address`)) {
        if (!(is.character(`posting_address`) && length(`posting_address`) == 1)) {
          stop(paste("Error! Invalid data for `posting_address`. Must be a string:", `posting_address`))
        }
        self$`posting_address` <- `posting_address`
      }
      if (!missing(`start_date`)) {
        if (!(is.character(`start_date`) && length(`start_date`) == 1)) {
          stop(paste("Error! Invalid data for `start_date`. Must be a string:", `start_date`))
        }
        self$`start_date` <- `start_date`
      }
      if (!missing(`end_date`)) {
        if (!(is.character(`end_date`) && length(`end_date`) == 1)) {
          stop(paste("Error! Invalid data for `end_date`. Must be a string:", `end_date`))
        }
        self$`end_date` <- `end_date`
      }
    },

    #' @description
    #' To JSON String
    #'
    #' @return Campaign in JSON format
    toJSON = function() {
      CampaignObject <- list()
      if (!is.null(self$`id`)) {
        CampaignObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`country_id`)) {
        CampaignObject[["country_id"]] <-
          self$`country_id`
      }
      if (!is.null(self$`posting_address`)) {
        CampaignObject[["posting_address"]] <-
          self$`posting_address`
      }
      if (!is.null(self$`start_date`)) {
        CampaignObject[["start_date"]] <-
          self$`start_date`
      }
      if (!is.null(self$`end_date`)) {
        CampaignObject[["end_date"]] <-
          self$`end_date`
      }
      CampaignObject
    },

    #' @description
    #' Deserialize JSON string into an instance of Campaign
    #'
    #' @param input_json the JSON input
    #' @return the instance of Campaign
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`country_id`)) {
        self$`country_id` <- this_object$`country_id`
      }
      if (!is.null(this_object$`posting_address`)) {
        self$`posting_address` <- this_object$`posting_address`
      }
      if (!is.null(this_object$`start_date`)) {
        self$`start_date` <- this_object$`start_date`
      }
      if (!is.null(this_object$`end_date`)) {
        self$`end_date` <- this_object$`end_date`
      }
      self
    },

    #' @description
    #' To JSON String
    #'
    #' @return Campaign in JSON format
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`id`)) {
          sprintf(
          '"id":
            %d
                    ',
          self$`id`
          )
        },
        if (!is.null(self$`country_id`)) {
          sprintf(
          '"country_id":
            %d
                    ',
          self$`country_id`
          )
        },
        if (!is.null(self$`posting_address`)) {
          sprintf(
          '"posting_address":
            "%s"
                    ',
          self$`posting_address`
          )
        },
        if (!is.null(self$`start_date`)) {
          sprintf(
          '"start_date":
            "%s"
                    ',
          self$`start_date`
          )
        },
        if (!is.null(self$`end_date`)) {
          sprintf(
          '"end_date":
            "%s"
                    ',
          self$`end_date`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },

    #' @description
    #' Deserialize JSON string into an instance of Campaign
    #'
    #' @param input_json the JSON input
    #' @return the instance of Campaign
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`country_id` <- this_object$`country_id`
      self$`posting_address` <- this_object$`posting_address`
      self$`start_date` <- this_object$`start_date`
      self$`end_date` <- this_object$`end_date`
      self
    },

    #' @description
    #' Validate JSON input with respect to Campaign and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for Campaign: the required field `id` is missing."))
      }
      # check the required field `country_id`
      if (!is.null(input_json$`country_id`)) {
        if (!(is.numeric(input_json$`country_id`) && length(input_json$`country_id`) == 1)) {
          stop(paste("Error! Invalid data for `country_id`. Must be an integer:", input_json$`country_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Campaign: the required field `country_id` is missing."))
      }
      # check the required field `posting_address`
      if (!is.null(input_json$`posting_address`)) {
        if (!(is.character(input_json$`posting_address`) && length(input_json$`posting_address`) == 1)) {
          stop(paste("Error! Invalid data for `posting_address`. Must be a string:", input_json$`posting_address`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Campaign: the required field `posting_address` is missing."))
      }
      # check the required field `start_date`
      if (!is.null(input_json$`start_date`)) {
        if (!(is.character(input_json$`start_date`) && length(input_json$`start_date`) == 1)) {
          stop(paste("Error! Invalid data for `start_date`. Must be a string:", input_json$`start_date`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Campaign: the required field `start_date` is missing."))
      }
      # check the required field `end_date`
      if (!is.null(input_json$`end_date`)) {
        if (!(is.character(input_json$`end_date`) && length(input_json$`end_date`) == 1)) {
          stop(paste("Error! Invalid data for `end_date`. Must be a string:", input_json$`end_date`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Campaign: the required field `end_date` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Campaign
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

      # check if the required `country_id` is null
      if (is.null(self$`country_id`)) {
        return(FALSE)
      }

      # check if the required `posting_address` is null
      if (is.null(self$`posting_address`)) {
        return(FALSE)
      }

      # check if the required `start_date` is null
      if (is.null(self$`start_date`)) {
        return(FALSE)
      }

      # check if the required `end_date` is null
      if (is.null(self$`end_date`)) {
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

      # check if the required `country_id` is null
      if (is.null(self$`country_id`)) {
        invalid_fields["country_id"] <- "Non-nullable required field `country_id` cannot be null."
      }

      # check if the required `posting_address` is null
      if (is.null(self$`posting_address`)) {
        invalid_fields["posting_address"] <- "Non-nullable required field `posting_address` cannot be null."
      }

      # check if the required `start_date` is null
      if (is.null(self$`start_date`)) {
        invalid_fields["start_date"] <- "Non-nullable required field `start_date` cannot be null."
      }

      # check if the required `end_date` is null
      if (is.null(self$`end_date`)) {
        invalid_fields["end_date"] <- "Non-nullable required field `end_date` cannot be null."
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
# Campaign$unlock()
#
## Below is an example to define the print function
# Campaign$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Campaign$lock()

