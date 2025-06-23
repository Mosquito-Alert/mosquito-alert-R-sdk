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
#' @field username  character
#' @field first_name  character
#' @field last_name  character
#' @field full_name  character
#' @field registration_time The date and time when user registered and consented to sharing data. Automatically set by server when user uploads registration. character
#' @field locale The locale code representing the language preference selected by the user for displaying the interface text. Enter the locale following the BCP 47 standard in 'language' or 'language-region' format (e.g., 'en' for English, 'en-US' for English (United States), 'fr' for French). The language is a two-letter ISO 639-1 code, and the region is an optional two-letter ISO 3166-1 alpha-2 code. character [optional]
#' @field language_iso ISO 639-1 code character
#' @field is_guest  character
#' @field score  \link{UserScore}
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
User <- R6::R6Class(
  "User",
  public = list(
    `uuid` = NULL,
    `username` = NULL,
    `first_name` = NULL,
    `last_name` = NULL,
    `full_name` = NULL,
    `registration_time` = NULL,
    `locale` = NULL,
    `language_iso` = NULL,
    `is_guest` = NULL,
    `score` = NULL,

    #' @description
    #' Initialize a new User class.
    #'
    #' @param uuid uuid
    #' @param username username
    #' @param first_name first_name
    #' @param last_name last_name
    #' @param full_name full_name
    #' @param registration_time The date and time when user registered and consented to sharing data. Automatically set by server when user uploads registration.
    #' @param language_iso ISO 639-1 code
    #' @param is_guest is_guest
    #' @param score score
    #' @param locale The locale code representing the language preference selected by the user for displaying the interface text. Enter the locale following the BCP 47 standard in 'language' or 'language-region' format (e.g., 'en' for English, 'en-US' for English (United States), 'fr' for French). The language is a two-letter ISO 639-1 code, and the region is an optional two-letter ISO 3166-1 alpha-2 code.. Default to "en".
    #' @param ... Other optional arguments.
    initialize = function(`uuid`, `username`, `first_name`, `last_name`, `full_name`, `registration_time`, `language_iso`, `is_guest`, `score`, `locale` = "en", ...) {
      if (!missing(`uuid`)) {
        if (!(is.character(`uuid`) && length(`uuid`) == 1)) {
          stop(paste("Error! Invalid data for `uuid`. Must be a string:", `uuid`))
        }
        self$`uuid` <- `uuid`
      }
      if (!missing(`username`)) {
        if (!(is.character(`username`) && length(`username`) == 1)) {
          stop(paste("Error! Invalid data for `username`. Must be a string:", `username`))
        }
        self$`username` <- `username`
      }
      if (!missing(`first_name`)) {
        if (!(is.character(`first_name`) && length(`first_name`) == 1)) {
          stop(paste("Error! Invalid data for `first_name`. Must be a string:", `first_name`))
        }
        self$`first_name` <- `first_name`
      }
      if (!missing(`last_name`)) {
        if (!(is.character(`last_name`) && length(`last_name`) == 1)) {
          stop(paste("Error! Invalid data for `last_name`. Must be a string:", `last_name`))
        }
        self$`last_name` <- `last_name`
      }
      if (!missing(`full_name`)) {
        if (!(is.character(`full_name`) && length(`full_name`) == 1)) {
          stop(paste("Error! Invalid data for `full_name`. Must be a string:", `full_name`))
        }
        self$`full_name` <- `full_name`
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
      if (!missing(`is_guest`)) {
        if (!(is.logical(`is_guest`) && length(`is_guest`) == 1)) {
          stop(paste("Error! Invalid data for `is_guest`. Must be a boolean:", `is_guest`))
        }
        self$`is_guest` <- `is_guest`
      }
      if (!missing(`score`)) {
        stopifnot(R6::is.R6(`score`))
        self$`score` <- `score`
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
    #' @return User as a base R list.
    #' @examples
    #' # convert array of User (x) to a data frame
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
    #' Convert User to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      UserObject <- list()
      if (!is.null(self$`uuid`)) {
        UserObject[["uuid"]] <-
          self$`uuid`
      }
      if (!is.null(self$`username`)) {
        UserObject[["username"]] <-
          self$`username`
      }
      if (!is.null(self$`first_name`)) {
        UserObject[["first_name"]] <-
          self$`first_name`
      }
      if (!is.null(self$`last_name`)) {
        UserObject[["last_name"]] <-
          self$`last_name`
      }
      if (!is.null(self$`full_name`)) {
        UserObject[["full_name"]] <-
          self$`full_name`
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
      if (!is.null(self$`is_guest`)) {
        UserObject[["is_guest"]] <-
          self$`is_guest`
      }
      if (!is.null(self$`score`)) {
        UserObject[["score"]] <-
          self$`score`$toSimpleType()
      }
      return(UserObject)
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
      if (!is.null(this_object$`username`)) {
        self$`username` <- this_object$`username`
      }
      if (!is.null(this_object$`first_name`)) {
        self$`first_name` <- this_object$`first_name`
      }
      if (!is.null(this_object$`last_name`)) {
        self$`last_name` <- this_object$`last_name`
      }
      if (!is.null(this_object$`full_name`)) {
        self$`full_name` <- this_object$`full_name`
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
      if (!is.null(this_object$`is_guest`)) {
        self$`is_guest` <- this_object$`is_guest`
      }
      if (!is.null(this_object$`score`)) {
        `score_object` <- UserScore$new()
        `score_object`$fromJSON(jsonlite::toJSON(this_object$`score`, auto_unbox = TRUE, digits = NA))
        self$`score` <- `score_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return User in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of User
    #'
    #' @param input_json the JSON input
    #' @return the instance of User
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`uuid` <- this_object$`uuid`
      self$`username` <- this_object$`username`
      self$`first_name` <- this_object$`first_name`
      self$`last_name` <- this_object$`last_name`
      self$`full_name` <- this_object$`full_name`
      self$`registration_time` <- this_object$`registration_time`
      if (!is.null(this_object$`locale`) && !(this_object$`locale` %in% c("es", "ca", "eu", "bn", "sv", "en", "de", "sq", "el", "gl", "hu", "pt", "sl", "it", "fr", "bg", "ro", "hr", "mk", "sr", "lb", "nl", "tr", "zh-CN"))) {
        stop(paste("Error! \"", this_object$`locale`, "\" cannot be assigned to `locale`. Must be \"es\", \"ca\", \"eu\", \"bn\", \"sv\", \"en\", \"de\", \"sq\", \"el\", \"gl\", \"hu\", \"pt\", \"sl\", \"it\", \"fr\", \"bg\", \"ro\", \"hr\", \"mk\", \"sr\", \"lb\", \"nl\", \"tr\", \"zh-CN\".", sep = ""))
      }
      self$`locale` <- this_object$`locale`
      self$`language_iso` <- this_object$`language_iso`
      self$`is_guest` <- this_object$`is_guest`
      self$`score` <- UserScore$new()$fromJSON(jsonlite::toJSON(this_object$`score`, auto_unbox = TRUE, digits = NA))
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
      # check the required field `username`
      if (!is.null(input_json$`username`)) {
        if (!(is.character(input_json$`username`) && length(input_json$`username`) == 1)) {
          stop(paste("Error! Invalid data for `username`. Must be a string:", input_json$`username`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for User: the required field `username` is missing."))
      }
      # check the required field `first_name`
      if (!is.null(input_json$`first_name`)) {
        if (!(is.character(input_json$`first_name`) && length(input_json$`first_name`) == 1)) {
          stop(paste("Error! Invalid data for `first_name`. Must be a string:", input_json$`first_name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for User: the required field `first_name` is missing."))
      }
      # check the required field `last_name`
      if (!is.null(input_json$`last_name`)) {
        if (!(is.character(input_json$`last_name`) && length(input_json$`last_name`) == 1)) {
          stop(paste("Error! Invalid data for `last_name`. Must be a string:", input_json$`last_name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for User: the required field `last_name` is missing."))
      }
      # check the required field `full_name`
      if (!is.null(input_json$`full_name`)) {
        if (!(is.character(input_json$`full_name`) && length(input_json$`full_name`) == 1)) {
          stop(paste("Error! Invalid data for `full_name`. Must be a string:", input_json$`full_name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for User: the required field `full_name` is missing."))
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
      # check the required field `is_guest`
      if (!is.null(input_json$`is_guest`)) {
        if (!(is.logical(input_json$`is_guest`) && length(input_json$`is_guest`) == 1)) {
          stop(paste("Error! Invalid data for `is_guest`. Must be a boolean:", input_json$`is_guest`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for User: the required field `is_guest` is missing."))
      }
      # check the required field `score`
      if (!is.null(input_json$`score`)) {
        stopifnot(R6::is.R6(input_json$`score`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for User: the required field `score` is missing."))
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

      # check if the required `username` is null
      if (is.null(self$`username`)) {
        return(FALSE)
      }

      # check if the required `first_name` is null
      if (is.null(self$`first_name`)) {
        return(FALSE)
      }

      # check if the required `last_name` is null
      if (is.null(self$`last_name`)) {
        return(FALSE)
      }

      # check if the required `full_name` is null
      if (is.null(self$`full_name`)) {
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

      # check if the required `is_guest` is null
      if (is.null(self$`is_guest`)) {
        return(FALSE)
      }

      # check if the required `score` is null
      if (is.null(self$`score`)) {
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

      # check if the required `username` is null
      if (is.null(self$`username`)) {
        invalid_fields["username"] <- "Non-nullable required field `username` cannot be null."
      }

      # check if the required `first_name` is null
      if (is.null(self$`first_name`)) {
        invalid_fields["first_name"] <- "Non-nullable required field `first_name` cannot be null."
      }

      # check if the required `last_name` is null
      if (is.null(self$`last_name`)) {
        invalid_fields["last_name"] <- "Non-nullable required field `last_name` cannot be null."
      }

      # check if the required `full_name` is null
      if (is.null(self$`full_name`)) {
        invalid_fields["full_name"] <- "Non-nullable required field `full_name` cannot be null."
      }

      # check if the required `registration_time` is null
      if (is.null(self$`registration_time`)) {
        invalid_fields["registration_time"] <- "Non-nullable required field `registration_time` cannot be null."
      }

      # check if the required `language_iso` is null
      if (is.null(self$`language_iso`)) {
        invalid_fields["language_iso"] <- "Non-nullable required field `language_iso` cannot be null."
      }

      # check if the required `is_guest` is null
      if (is.null(self$`is_guest`)) {
        invalid_fields["is_guest"] <- "Non-nullable required field `is_guest` cannot be null."
      }

      # check if the required `score` is null
      if (is.null(self$`score`)) {
        invalid_fields["score"] <- "Non-nullable required field `score` cannot be null."
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

