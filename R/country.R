#' Create a new Country
#'
#' @description
#' Country Class
#'
#' @docType class
#' @title Country
#' @description Country Class
#' @format An \code{R6Class} generator object
#' @field id  integer
#' @field name_en Full name of the country in English (e.g., Spain). character
#' @field iso3_code ISO 3166-1 alpha-3 country code (3-letter code, e.g., ESP). character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Country <- R6::R6Class(
  "Country",
  public = list(
    `id` = NULL,
    `name_en` = NULL,
    `iso3_code` = NULL,

    #' @description
    #' Initialize a new Country class.
    #'
    #' @param id id
    #' @param name_en Full name of the country in English (e.g., Spain).
    #' @param iso3_code ISO 3166-1 alpha-3 country code (3-letter code, e.g., ESP).
    #' @param ... Other optional arguments.
    initialize = function(`id`, `name_en`, `iso3_code`, ...) {
      if (!missing(`id`)) {
        if (!(is.numeric(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be an integer:", `id`))
        }
        self$`id` <- `id`
      }
      if (!missing(`name_en`)) {
        if (!(is.character(`name_en`) && length(`name_en`) == 1)) {
          stop(paste("Error! Invalid data for `name_en`. Must be a string:", `name_en`))
        }
        self$`name_en` <- `name_en`
      }
      if (!missing(`iso3_code`)) {
        if (!(is.character(`iso3_code`) && length(`iso3_code`) == 1)) {
          stop(paste("Error! Invalid data for `iso3_code`. Must be a string:", `iso3_code`))
        }
        self$`iso3_code` <- `iso3_code`
      }
    },

    #' @description
    #' To JSON String
    #'
    #' @return Country in JSON format
    toJSON = function() {
      CountryObject <- list()
      if (!is.null(self$`id`)) {
        CountryObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`name_en`)) {
        CountryObject[["name_en"]] <-
          self$`name_en`
      }
      if (!is.null(self$`iso3_code`)) {
        CountryObject[["iso3_code"]] <-
          self$`iso3_code`
      }
      CountryObject
    },

    #' @description
    #' Deserialize JSON string into an instance of Country
    #'
    #' @param input_json the JSON input
    #' @return the instance of Country
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`name_en`)) {
        self$`name_en` <- this_object$`name_en`
      }
      if (!is.null(this_object$`iso3_code`)) {
        self$`iso3_code` <- this_object$`iso3_code`
      }
      self
    },

    #' @description
    #' To JSON String
    #'
    #' @return Country in JSON format
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
        if (!is.null(self$`name_en`)) {
          sprintf(
          '"name_en":
            "%s"
                    ',
          self$`name_en`
          )
        },
        if (!is.null(self$`iso3_code`)) {
          sprintf(
          '"iso3_code":
            "%s"
                    ',
          self$`iso3_code`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },

    #' @description
    #' Deserialize JSON string into an instance of Country
    #'
    #' @param input_json the JSON input
    #' @return the instance of Country
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`name_en` <- this_object$`name_en`
      self$`iso3_code` <- this_object$`iso3_code`
      self
    },

    #' @description
    #' Validate JSON input with respect to Country and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for Country: the required field `id` is missing."))
      }
      # check the required field `name_en`
      if (!is.null(input_json$`name_en`)) {
        if (!(is.character(input_json$`name_en`) && length(input_json$`name_en`) == 1)) {
          stop(paste("Error! Invalid data for `name_en`. Must be a string:", input_json$`name_en`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Country: the required field `name_en` is missing."))
      }
      # check the required field `iso3_code`
      if (!is.null(input_json$`iso3_code`)) {
        if (!(is.character(input_json$`iso3_code`) && length(input_json$`iso3_code`) == 1)) {
          stop(paste("Error! Invalid data for `iso3_code`. Must be a string:", input_json$`iso3_code`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Country: the required field `iso3_code` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Country
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

      # check if the required `name_en` is null
      if (is.null(self$`name_en`)) {
        return(FALSE)
      }

      if (nchar(self$`name_en`) > 44) {
        return(FALSE)
      }

      # check if the required `iso3_code` is null
      if (is.null(self$`iso3_code`)) {
        return(FALSE)
      }

      if (nchar(self$`iso3_code`) > 3) {
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

      # check if the required `name_en` is null
      if (is.null(self$`name_en`)) {
        invalid_fields["name_en"] <- "Non-nullable required field `name_en` cannot be null."
      }

      if (nchar(self$`name_en`) > 44) {
        invalid_fields["name_en"] <- "Invalid length for `name_en`, must be smaller than or equal to 44."
      }

      # check if the required `iso3_code` is null
      if (is.null(self$`iso3_code`)) {
        invalid_fields["iso3_code"] <- "Non-nullable required field `iso3_code` cannot be null."
      }

      if (nchar(self$`iso3_code`) > 3) {
        invalid_fields["iso3_code"] <- "Invalid length for `iso3_code`, must be smaller than or equal to 3."
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
# Country$unlock()
#
## Below is an example to define the print function
# Country$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Country$lock()

