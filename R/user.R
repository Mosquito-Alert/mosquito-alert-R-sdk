#' Create a new User
#'
#' @description
#' User Class
#'
#' @docType class
#' @title User
#' @description User Class
#' @format An \code{R6Class} generator object
#' @field uuid  character
#' @field registration_time The date and time when user registered and consented to sharing data. Automatically set by server when user uploads registration. character
#' @field locale The locale code representing the language preference selected by the user for displaying the interface text. Enter the locale following the BCP 47 standard in 'language' or 'language-region' format (e.g., 'en' for English, 'en-US' for English (United States), 'fr' for French). The language is a two-letter ISO 639-1 code, and the region is an optional two-letter ISO 3166-1 alpha-2 code. character [optional]
#' @field language_iso ISO 639-1 code character
#' @field score Global XP Score. This field is updated whenever the user asks for the score, and is only stored here. The content must equal score_v2_adult + score_v2_bite + score_v2_site integer
#' @field last_score_update Last time score was updated character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
User <- R6::R6Class(
  "User",
  public = list(
    `uuid` = NULL,
    `registration_time` = NULL,
    `locale` = NULL,
    `language_iso` = NULL,
    `score` = NULL,
    `last_score_update` = NULL,

    #' @description
    #' Initialize a new User class.
    #'
    #' @param uuid uuid
    #' @param registration_time The date and time when user registered and consented to sharing data. Automatically set by server when user uploads registration.
    #' @param language_iso ISO 639-1 code
    #' @param score Global XP Score. This field is updated whenever the user asks for the score, and is only stored here. The content must equal score_v2_adult + score_v2_bite + score_v2_site
    #' @param last_score_update Last time score was updated
    #' @param locale The locale code representing the language preference selected by the user for displaying the interface text. Enter the locale following the BCP 47 standard in 'language' or 'language-region' format (e.g., 'en' for English, 'en-US' for English (United States), 'fr' for French). The language is a two-letter ISO 639-1 code, and the region is an optional two-letter ISO 3166-1 alpha-2 code.
    #' @param ... Other optional arguments.
    initialize = function(`uuid`, `registration_time`, `language_iso`, `score`, `last_score_update`, `locale` = NULL, ...) {
      if (!missing(`uuid`)) {
        if (!(is.character(`uuid`) && length(`uuid`) == 1)) {
          stop(paste("Error! Invalid data for `uuid`. Must be a string:", `uuid`))
        }
        self$`uuid` <- `uuid`
      }
      if (!missing(`registration_time`)) {
        if (!(is.character(`registration_time`) && length(`registration_time`) == 1)) {
          stop(paste("Error! Invalid data for `registration_time`. Must be a string:", `registration_time`))
        }
        self$`registration_time` <- `registration_time`
      }
      if (!missing(`language_iso`)) {
        if (!(is.character(`language_iso`) && length(`language_iso`) == 1)) {
          stop(paste("Error! Invalid data for `language_iso`. Must be a string:", `language_iso`))
        }
        self$`language_iso` <- `language_iso`
      }
      if (!missing(`score`)) {
        if (!(is.numeric(`score`) && length(`score`) == 1)) {
          stop(paste("Error! Invalid data for `score`. Must be an integer:", `score`))
        }
        self$`score` <- `score`
      }
      if (!missing(`last_score_update`)) {
        if (!(is.character(`last_score_update`) && length(`last_score_update`) == 1)) {
          stop(paste("Error! Invalid data for `last_score_update`. Must be a string:", `last_score_update`))
        }
        self$`last_score_update` <- `last_score_update`
      }
      if (!is.null(`locale`)) {
        if (!(`locale` %in% c("es", "ca", "eu", "bn", "sv", "en", "de", "sq", "el", "gl", "hu", "pt", "sl", "it", "fr", "bg", "ro", "hr", "mk", "sr", "lb", "nl", "tr", "zh-CN"))) {
          stop(paste("Error! \"", `locale`, "\" cannot be assigned to `locale`. Must be \"es\", \"ca\", \"eu\", \"bn\", \"sv\", \"en\", \"de\", \"sq\", \"el\", \"gl\", \"hu\", \"pt\", \"sl\", \"it\", \"fr\", \"bg\", \"ro\", \"hr\", \"mk\", \"sr\", \"lb\", \"nl\", \"tr\", \"zh-CN\".", sep = ""))
        }
        if (!(is.character(`locale`) && length(`locale`) == 1)) {
          stop(paste("Error! Invalid data for `locale`. Must be a string:", `locale`))
        }
        self$`locale` <- `locale`
      }
    },

    #' @description
    #' To JSON String
    #'
    #' @return User in JSON format
    toJSON = function() {
      UserObject <- list()
      if (!is.null(self$`uuid`)) {
        UserObject[["uuid"]] <-
          self$`uuid`
      }
      if (!is.null(self$`registration_time`)) {
        UserObject[["registration_time"]] <-
          self$`registration_time`
      }
      if (!is.null(self$`locale`)) {
        UserObject[["locale"]] <-
          self$`locale`
      }
      if (!is.null(self$`language_iso`)) {
        UserObject[["language_iso"]] <-
          self$`language_iso`
      }
      if (!is.null(self$`score`)) {
        UserObject[["score"]] <-
          self$`score`
      }
      if (!is.null(self$`last_score_update`)) {
        UserObject[["last_score_update"]] <-
          self$`last_score_update`
      }
      UserObject
    },

    #' @description
    #' Deserialize JSON string into an instance of User
    #'
    #' @param input_json the JSON input
    #' @return the instance of User
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`uuid`)) {
        self$`uuid` <- this_object$`uuid`
      }
      if (!is.null(this_object$`registration_time`)) {
        self$`registration_time` <- this_object$`registration_time`
      }
      if (!is.null(this_object$`locale`)) {
        if (!is.null(this_object$`locale`) && !(this_object$`locale` %in% c("es", "ca", "eu", "bn", "sv", "en", "de", "sq", "el", "gl", "hu", "pt", "sl", "it", "fr", "bg", "ro", "hr", "mk", "sr", "lb", "nl", "tr", "zh-CN"))) {
          stop(paste("Error! \"", this_object$`locale`, "\" cannot be assigned to `locale`. Must be \"es\", \"ca\", \"eu\", \"bn\", \"sv\", \"en\", \"de\", \"sq\", \"el\", \"gl\", \"hu\", \"pt\", \"sl\", \"it\", \"fr\", \"bg\", \"ro\", \"hr\", \"mk\", \"sr\", \"lb\", \"nl\", \"tr\", \"zh-CN\".", sep = ""))
        }
        self$`locale` <- this_object$`locale`
      }
      if (!is.null(this_object$`language_iso`)) {
        self$`language_iso` <- this_object$`language_iso`
      }
      if (!is.null(this_object$`score`)) {
        self$`score` <- this_object$`score`
      }
      if (!is.null(this_object$`last_score_update`)) {
        self$`last_score_update` <- this_object$`last_score_update`
      }
      self
    },

    #' @description
    #' To JSON String
    #'
    #' @return User in JSON format
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
        if (!is.null(self$`registration_time`)) {
          sprintf(
          '"registration_time":
            "%s"
                    ',
          self$`registration_time`
          )
        },
        if (!is.null(self$`locale`)) {
          sprintf(
          '"locale":
            "%s"
                    ',
          self$`locale`
          )
        },
        if (!is.null(self$`language_iso`)) {
          sprintf(
          '"language_iso":
            "%s"
                    ',
          self$`language_iso`
          )
        },
        if (!is.null(self$`score`)) {
          sprintf(
          '"score":
            %d
                    ',
          self$`score`
          )
        },
        if (!is.null(self$`last_score_update`)) {
          sprintf(
          '"last_score_update":
            "%s"
                    ',
          self$`last_score_update`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },

    #' @description
    #' Deserialize JSON string into an instance of User
    #'
    #' @param input_json the JSON input
    #' @return the instance of User
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`uuid` <- this_object$`uuid`
      self$`registration_time` <- this_object$`registration_time`
      if (!is.null(this_object$`locale`) && !(this_object$`locale` %in% c("es", "ca", "eu", "bn", "sv", "en", "de", "sq", "el", "gl", "hu", "pt", "sl", "it", "fr", "bg", "ro", "hr", "mk", "sr", "lb", "nl", "tr", "zh-CN"))) {
        stop(paste("Error! \"", this_object$`locale`, "\" cannot be assigned to `locale`. Must be \"es\", \"ca\", \"eu\", \"bn\", \"sv\", \"en\", \"de\", \"sq\", \"el\", \"gl\", \"hu\", \"pt\", \"sl\", \"it\", \"fr\", \"bg\", \"ro\", \"hr\", \"mk\", \"sr\", \"lb\", \"nl\", \"tr\", \"zh-CN\".", sep = ""))
      }
      self$`locale` <- this_object$`locale`
      self$`language_iso` <- this_object$`language_iso`
      self$`score` <- this_object$`score`
      self$`last_score_update` <- this_object$`last_score_update`
      self
    },

    #' @description
    #' Validate JSON input with respect to User and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for User: the required field `uuid` is missing."))
      }
      # check the required field `registration_time`
      if (!is.null(input_json$`registration_time`)) {
        if (!(is.character(input_json$`registration_time`) && length(input_json$`registration_time`) == 1)) {
          stop(paste("Error! Invalid data for `registration_time`. Must be a string:", input_json$`registration_time`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for User: the required field `registration_time` is missing."))
      }
      # check the required field `language_iso`
      if (!is.null(input_json$`language_iso`)) {
        if (!(is.character(input_json$`language_iso`) && length(input_json$`language_iso`) == 1)) {
          stop(paste("Error! Invalid data for `language_iso`. Must be a string:", input_json$`language_iso`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for User: the required field `language_iso` is missing."))
      }
      # check the required field `score`
      if (!is.null(input_json$`score`)) {
        if (!(is.numeric(input_json$`score`) && length(input_json$`score`) == 1)) {
          stop(paste("Error! Invalid data for `score`. Must be an integer:", input_json$`score`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for User: the required field `score` is missing."))
      }
      # check the required field `last_score_update`
      if (!is.null(input_json$`last_score_update`)) {
        if (!(is.character(input_json$`last_score_update`) && length(input_json$`last_score_update`) == 1)) {
          stop(paste("Error! Invalid data for `last_score_update`. Must be a string:", input_json$`last_score_update`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for User: the required field `last_score_update` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of User
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

      # check if the required `registration_time` is null
      if (is.null(self$`registration_time`)) {
        return(FALSE)
      }

      # check if the required `language_iso` is null
      if (is.null(self$`language_iso`)) {
        return(FALSE)
      }

      # check if the required `score` is null
      if (is.null(self$`score`)) {
        return(FALSE)
      }

      # check if the required `last_score_update` is null
      if (is.null(self$`last_score_update`)) {
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

      # check if the required `registration_time` is null
      if (is.null(self$`registration_time`)) {
        invalid_fields["registration_time"] <- "Non-nullable required field `registration_time` cannot be null."
      }

      # check if the required `language_iso` is null
      if (is.null(self$`language_iso`)) {
        invalid_fields["language_iso"] <- "Non-nullable required field `language_iso` cannot be null."
      }

      # check if the required `score` is null
      if (is.null(self$`score`)) {
        invalid_fields["score"] <- "Non-nullable required field `score` cannot be null."
      }

      # check if the required `last_score_update` is null
      if (is.null(self$`last_score_update`)) {
        invalid_fields["last_score_update"] <- "Non-nullable required field `last_score_update` cannot be null."
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
# User$unlock()
#
## Below is an example to define the print function
# User$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# User$lock()

