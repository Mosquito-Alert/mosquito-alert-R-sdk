#' Create a new PackageRequest
#'
#' @description
#' PackageRequest Class
#'
#' @docType class
#' @title PackageRequest
#' @description PackageRequest Class
#' @format An \code{R6Class} generator object
#' @field name Name of tigatrapp package from which this report was submitted. character [optional]
#' @field version Version number of tigatrapp package from which this report was submitted. integer [optional]
#' @field language Language setting, within tigatrapp, of device from which this report was submitted. 2-digit ISO-639-1 language code. character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PackageRequest <- R6::R6Class(
  "PackageRequest",
  public = list(
    `name` = NULL,
    `version` = NULL,
    `language` = NULL,

    #' @description
    #' Initialize a new PackageRequest class.
    #'
    #' @param name Name of tigatrapp package from which this report was submitted.
    #' @param version Version number of tigatrapp package from which this report was submitted.
    #' @param language Language setting, within tigatrapp, of device from which this report was submitted. 2-digit ISO-639-1 language code.
    #' @param ... Other optional arguments.
    initialize = function(`name` = NULL, `version` = NULL, `language` = NULL, ...) {
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`version`)) {
        if (!(is.numeric(`version`) && length(`version`) == 1)) {
          stop(paste("Error! Invalid data for `version`. Must be an integer:", `version`))
        }
        self$`version` <- `version`
      }
      if (!is.null(`language`)) {
        if (!(is.character(`language`) && length(`language`) == 1)) {
          stop(paste("Error! Invalid data for `language`. Must be a string:", `language`))
        }
        self$`language` <- `language`
      }
    },

    #' @description
    #' To JSON String
    #'
    #' @return PackageRequest in JSON format
    toJSON = function() {
      PackageRequestObject <- list()
      if (!is.null(self$`name`)) {
        PackageRequestObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`version`)) {
        PackageRequestObject[["version"]] <-
          self$`version`
      }
      if (!is.null(self$`language`)) {
        PackageRequestObject[["language"]] <-
          self$`language`
      }
      PackageRequestObject
    },

    #' @description
    #' Deserialize JSON string into an instance of PackageRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of PackageRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`version`)) {
        self$`version` <- this_object$`version`
      }
      if (!is.null(this_object$`language`)) {
        self$`language` <- this_object$`language`
      }
      self
    },

    #' @description
    #' To JSON String
    #'
    #' @return PackageRequest in JSON format
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
            %d
                    ',
          self$`version`
          )
        },
        if (!is.null(self$`language`)) {
          sprintf(
          '"language":
            "%s"
                    ',
          self$`language`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },

    #' @description
    #' Deserialize JSON string into an instance of PackageRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of PackageRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`name` <- this_object$`name`
      self$`version` <- this_object$`version`
      self$`language` <- this_object$`language`
      self
    },

    #' @description
    #' Validate JSON input with respect to PackageRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of PackageRequest
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      if (nchar(self$`name`) > 400) {
        return(FALSE)
      }

      if (self$`version` > 2147483647) {
        return(FALSE)
      }
      if (self$`version` < -2147483648) {
        return(FALSE)
      }

      if (nchar(self$`language`) > 10) {
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
      if (nchar(self$`name`) > 400) {
        invalid_fields["name"] <- "Invalid length for `name`, must be smaller than or equal to 400."
      }

      if (self$`version` > 2147483647) {
        invalid_fields["version"] <- "Invalid value for `version`, must be smaller than or equal to 2147483647."
      }
      if (self$`version` < -2147483648) {
        invalid_fields["version"] <- "Invalid value for `version`, must be bigger than or equal to -2147483648."
      }

      if (nchar(self$`language`) > 10) {
        invalid_fields["language"] <- "Invalid length for `language`, must be smaller than or equal to 10."
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
# PackageRequest$unlock()
#
## Below is an example to define the print function
# PackageRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PackageRequest$lock()

