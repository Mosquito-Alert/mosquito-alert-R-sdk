#' Create a new DeviceOs
#'
#' @description
#' DeviceOs Class
#'
#' @docType class
#' @title DeviceOs
#' @description DeviceOs Class
#' @format An \code{R6Class} generator object
#' @field name Operating system of device from which this report was submitted. character
#' @field version Operating system version of device from which this report was submitted. character
#' @field locale The locale configured in the device following the BCP 47 standard in 'language' or 'language-region' format (e.g., 'en' for English, 'en-US' for English (United States), 'fr' for French). The language is a two-letter ISO 639-1 code, and the region is an optional two-letter ISO 3166-1 alpha-2 code. character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
DeviceOs <- R6::R6Class(
  "DeviceOs",
  public = list(
    `name` = NULL,
    `version` = NULL,
    `locale` = NULL,

    #' @description
    #' Initialize a new DeviceOs class.
    #'
    #' @param name Operating system of device from which this report was submitted.
    #' @param version Operating system version of device from which this report was submitted.
    #' @param locale The locale configured in the device following the BCP 47 standard in 'language' or 'language-region' format (e.g., 'en' for English, 'en-US' for English (United States), 'fr' for French). The language is a two-letter ISO 639-1 code, and the region is an optional two-letter ISO 3166-1 alpha-2 code.
    #' @param ... Other optional arguments.
    initialize = function(`name`, `version`, `locale` = NULL, ...) {
      if (!missing(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!missing(`version`)) {
        if (!(is.character(`version`) && length(`version`) == 1)) {
          stop(paste("Error! Invalid data for `version`. Must be a string:", `version`))
        }
        self$`version` <- `version`
      }
      if (!is.null(`locale`)) {
        if (!(is.character(`locale`) && length(`locale`) == 1)) {
          stop(paste("Error! Invalid data for `locale`. Must be a string:", `locale`))
        }
        self$`locale` <- `locale`
      }
    },

    #' @description
    #' To JSON String
    #'
    #' @return DeviceOs in JSON format
    toJSON = function() {
      DeviceOsObject <- list()
      if (!is.null(self$`name`)) {
        DeviceOsObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`version`)) {
        DeviceOsObject[["version"]] <-
          self$`version`
      }
      if (!is.null(self$`locale`)) {
        DeviceOsObject[["locale"]] <-
          self$`locale`
      }
      DeviceOsObject
    },

    #' @description
    #' Deserialize JSON string into an instance of DeviceOs
    #'
    #' @param input_json the JSON input
    #' @return the instance of DeviceOs
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`version`)) {
        self$`version` <- this_object$`version`
      }
      if (!is.null(this_object$`locale`)) {
        self$`locale` <- this_object$`locale`
      }
      self
    },

    #' @description
    #' To JSON String
    #'
    #' @return DeviceOs in JSON format
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`name`)) {
          sprintf(
          '"name":
            "%s"
                    ',
          self$`name`
          )
        },
        if (!is.null(self$`version`)) {
          sprintf(
          '"version":
            "%s"
                    ',
          self$`version`
          )
        },
        if (!is.null(self$`locale`)) {
          sprintf(
          '"locale":
            "%s"
                    ',
          self$`locale`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },

    #' @description
    #' Deserialize JSON string into an instance of DeviceOs
    #'
    #' @param input_json the JSON input
    #' @return the instance of DeviceOs
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`name` <- this_object$`name`
      self$`version` <- this_object$`version`
      self$`locale` <- this_object$`locale`
      self
    },

    #' @description
    #' Validate JSON input with respect to DeviceOs and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `name`
      if (!is.null(input_json$`name`)) {
        if (!(is.character(input_json$`name`) && length(input_json$`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", input_json$`name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for DeviceOs: the required field `name` is missing."))
      }
      # check the required field `version`
      if (!is.null(input_json$`version`)) {
        if (!(is.character(input_json$`version`) && length(input_json$`version`) == 1)) {
          stop(paste("Error! Invalid data for `version`. Must be a string:", input_json$`version`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for DeviceOs: the required field `version` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of DeviceOs
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `name` is null
      if (is.null(self$`name`)) {
        return(FALSE)
      }

      if (nchar(self$`name`) > 64) {
        return(FALSE)
      }

      # check if the required `version` is null
      if (is.null(self$`version`)) {
        return(FALSE)
      }

      if (nchar(self$`version`) > 16) {
        return(FALSE)
      }

      if (nchar(self$`locale`) > 16) {
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
      # check if the required `name` is null
      if (is.null(self$`name`)) {
        invalid_fields["name"] <- "Non-nullable required field `name` cannot be null."
      }

      if (nchar(self$`name`) > 64) {
        invalid_fields["name"] <- "Invalid length for `name`, must be smaller than or equal to 64."
      }

      # check if the required `version` is null
      if (is.null(self$`version`)) {
        invalid_fields["version"] <- "Non-nullable required field `version` cannot be null."
      }

      if (nchar(self$`version`) > 16) {
        invalid_fields["version"] <- "Invalid length for `version`, must be smaller than or equal to 16."
      }

      if (nchar(self$`locale`) > 16) {
        invalid_fields["locale"] <- "Invalid length for `locale`, must be smaller than or equal to 16."
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
# DeviceOs$unlock()
#
## Below is an example to define the print function
# DeviceOs$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# DeviceOs$lock()

