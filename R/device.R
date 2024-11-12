#' Create a new Device
#'
#' @description
#' Device Class
#'
#' @docType class
#' @title Device
#' @description Device Class
#' @format An \code{R6Class} generator object
#' @field manufacturer Manufacturer of device from which this report was submitted. character [optional]
#' @field model Model of device from which this report was submitted. character [optional]
#' @field os Operating system of device from which this report was submitted. character [optional]
#' @field os_version Operating system version of device from which this report was submitted. character [optional]
#' @field os_language Language setting of operating system on device from which this report was submitted. 2-digit ISO-639-1 language code. character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Device <- R6::R6Class(
  "Device",
  public = list(
    `manufacturer` = NULL,
    `model` = NULL,
    `os` = NULL,
    `os_version` = NULL,
    `os_language` = NULL,

    #' @description
    #' Initialize a new Device class.
    #'
    #' @param manufacturer Manufacturer of device from which this report was submitted.
    #' @param model Model of device from which this report was submitted.
    #' @param os Operating system of device from which this report was submitted.
    #' @param os_version Operating system version of device from which this report was submitted.
    #' @param os_language Language setting of operating system on device from which this report was submitted. 2-digit ISO-639-1 language code.
    #' @param ... Other optional arguments.
    initialize = function(`manufacturer` = NULL, `model` = NULL, `os` = NULL, `os_version` = NULL, `os_language` = NULL, ...) {
      if (!is.null(`manufacturer`)) {
        if (!(is.character(`manufacturer`) && length(`manufacturer`) == 1)) {
          stop(paste("Error! Invalid data for `manufacturer`. Must be a string:", `manufacturer`))
        }
        self$`manufacturer` <- `manufacturer`
      }
      if (!is.null(`model`)) {
        if (!(is.character(`model`) && length(`model`) == 1)) {
          stop(paste("Error! Invalid data for `model`. Must be a string:", `model`))
        }
        self$`model` <- `model`
      }
      if (!is.null(`os`)) {
        if (!(is.character(`os`) && length(`os`) == 1)) {
          stop(paste("Error! Invalid data for `os`. Must be a string:", `os`))
        }
        self$`os` <- `os`
      }
      if (!is.null(`os_version`)) {
        if (!(is.character(`os_version`) && length(`os_version`) == 1)) {
          stop(paste("Error! Invalid data for `os_version`. Must be a string:", `os_version`))
        }
        self$`os_version` <- `os_version`
      }
      if (!is.null(`os_language`)) {
        if (!(is.character(`os_language`) && length(`os_language`) == 1)) {
          stop(paste("Error! Invalid data for `os_language`. Must be a string:", `os_language`))
        }
        self$`os_language` <- `os_language`
      }
    },

    #' @description
    #' To JSON String
    #'
    #' @return Device in JSON format
    toJSON = function() {
      DeviceObject <- list()
      if (!is.null(self$`manufacturer`)) {
        DeviceObject[["manufacturer"]] <-
          self$`manufacturer`
      }
      if (!is.null(self$`model`)) {
        DeviceObject[["model"]] <-
          self$`model`
      }
      if (!is.null(self$`os`)) {
        DeviceObject[["os"]] <-
          self$`os`
      }
      if (!is.null(self$`os_version`)) {
        DeviceObject[["os_version"]] <-
          self$`os_version`
      }
      if (!is.null(self$`os_language`)) {
        DeviceObject[["os_language"]] <-
          self$`os_language`
      }
      DeviceObject
    },

    #' @description
    #' Deserialize JSON string into an instance of Device
    #'
    #' @param input_json the JSON input
    #' @return the instance of Device
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`manufacturer`)) {
        self$`manufacturer` <- this_object$`manufacturer`
      }
      if (!is.null(this_object$`model`)) {
        self$`model` <- this_object$`model`
      }
      if (!is.null(this_object$`os`)) {
        self$`os` <- this_object$`os`
      }
      if (!is.null(this_object$`os_version`)) {
        self$`os_version` <- this_object$`os_version`
      }
      if (!is.null(this_object$`os_language`)) {
        self$`os_language` <- this_object$`os_language`
      }
      self
    },

    #' @description
    #' To JSON String
    #'
    #' @return Device in JSON format
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`manufacturer`)) {
          sprintf(
          '"manufacturer":
            "%s"
                    ',
          self$`manufacturer`
          )
        },
        if (!is.null(self$`model`)) {
          sprintf(
          '"model":
            "%s"
                    ',
          self$`model`
          )
        },
        if (!is.null(self$`os`)) {
          sprintf(
          '"os":
            "%s"
                    ',
          self$`os`
          )
        },
        if (!is.null(self$`os_version`)) {
          sprintf(
          '"os_version":
            "%s"
                    ',
          self$`os_version`
          )
        },
        if (!is.null(self$`os_language`)) {
          sprintf(
          '"os_language":
            "%s"
                    ',
          self$`os_language`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },

    #' @description
    #' Deserialize JSON string into an instance of Device
    #'
    #' @param input_json the JSON input
    #' @return the instance of Device
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`manufacturer` <- this_object$`manufacturer`
      self$`model` <- this_object$`model`
      self$`os` <- this_object$`os`
      self$`os_version` <- this_object$`os_version`
      self$`os_language` <- this_object$`os_language`
      self
    },

    #' @description
    #' Validate JSON input with respect to Device and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Device
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      if (nchar(self$`manufacturer`) > 200) {
        return(FALSE)
      }

      if (nchar(self$`model`) > 200) {
        return(FALSE)
      }

      if (nchar(self$`os`) > 200) {
        return(FALSE)
      }

      if (nchar(self$`os_version`) > 200) {
        return(FALSE)
      }

      if (nchar(self$`os_language`) > 10) {
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
      if (nchar(self$`manufacturer`) > 200) {
        invalid_fields["manufacturer"] <- "Invalid length for `manufacturer`, must be smaller than or equal to 200."
      }

      if (nchar(self$`model`) > 200) {
        invalid_fields["model"] <- "Invalid length for `model`, must be smaller than or equal to 200."
      }

      if (nchar(self$`os`) > 200) {
        invalid_fields["os"] <- "Invalid length for `os`, must be smaller than or equal to 200."
      }

      if (nchar(self$`os_version`) > 200) {
        invalid_fields["os_version"] <- "Invalid length for `os_version`, must be smaller than or equal to 200."
      }

      if (nchar(self$`os_language`) > 10) {
        invalid_fields["os_language"] <- "Invalid length for `os_language`, must be smaller than or equal to 10."
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
# Device$unlock()
#
## Below is an example to define the print function
# Device$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Device$lock()

