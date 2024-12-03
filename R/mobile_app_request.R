#' Create a new MobileAppRequest
#'
#' @description
#' MobileAppRequest Class
#'
#' @docType class
#' @title MobileAppRequest
#' @description MobileAppRequest Class
#' @format An \code{R6Class} generator object
#' @field package_name  character
#' @field package_version  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
MobileAppRequest <- R6::R6Class(
  "MobileAppRequest",
  public = list(
    `package_name` = NULL,
    `package_version` = NULL,

    #' @description
    #' Initialize a new MobileAppRequest class.
    #'
    #' @param package_name package_name
    #' @param package_version package_version
    #' @param ... Other optional arguments.
    initialize = function(`package_name`, `package_version`, ...) {
      if (!missing(`package_name`)) {
        if (!(is.character(`package_name`) && length(`package_name`) == 1)) {
          stop(paste("Error! Invalid data for `package_name`. Must be a string:", `package_name`))
        }
        self$`package_name` <- `package_name`
      }
      if (!missing(`package_version`)) {
        if (!(is.character(`package_version`) && length(`package_version`) == 1)) {
          stop(paste("Error! Invalid data for `package_version`. Must be a string:", `package_version`))
        }
        self$`package_version` <- `package_version`
      }
    },

    #' @description
    #' To JSON String
    #'
    #' @return MobileAppRequest in JSON format
    toJSON = function() {
      MobileAppRequestObject <- list()
      if (!is.null(self$`package_name`)) {
        MobileAppRequestObject[["package_name"]] <-
          self$`package_name`
      }
      if (!is.null(self$`package_version`)) {
        MobileAppRequestObject[["package_version"]] <-
          self$`package_version`
      }
      MobileAppRequestObject
    },

    #' @description
    #' Deserialize JSON string into an instance of MobileAppRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of MobileAppRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`package_name`)) {
        self$`package_name` <- this_object$`package_name`
      }
      if (!is.null(this_object$`package_version`)) {
        self$`package_version` <- this_object$`package_version`
      }
      self
    },

    #' @description
    #' To JSON String
    #'
    #' @return MobileAppRequest in JSON format
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`package_name`)) {
          sprintf(
          '"package_name":
            "%s"
                    ',
          self$`package_name`
          )
        },
        if (!is.null(self$`package_version`)) {
          sprintf(
          '"package_version":
            "%s"
                    ',
          self$`package_version`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },

    #' @description
    #' Deserialize JSON string into an instance of MobileAppRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of MobileAppRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`package_name` <- this_object$`package_name`
      self$`package_version` <- this_object$`package_version`
      self
    },

    #' @description
    #' Validate JSON input with respect to MobileAppRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `package_name`
      if (!is.null(input_json$`package_name`)) {
        if (!(is.character(input_json$`package_name`) && length(input_json$`package_name`) == 1)) {
          stop(paste("Error! Invalid data for `package_name`. Must be a string:", input_json$`package_name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for MobileAppRequest: the required field `package_name` is missing."))
      }
      # check the required field `package_version`
      if (!is.null(input_json$`package_version`)) {
        if (!(is.character(input_json$`package_version`) && length(input_json$`package_version`) == 1)) {
          stop(paste("Error! Invalid data for `package_version`. Must be a string:", input_json$`package_version`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for MobileAppRequest: the required field `package_version` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of MobileAppRequest
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `package_name` is null
      if (is.null(self$`package_name`)) {
        return(FALSE)
      }

      if (nchar(self$`package_name`) > 128) {
        return(FALSE)
      }
      if (nchar(self$`package_name`) < 1) {
        return(FALSE)
      }

      # check if the required `package_version` is null
      if (is.null(self$`package_version`)) {
        return(FALSE)
      }

      if (nchar(self$`package_version`) > 32) {
        return(FALSE)
      }
      if (nchar(self$`package_version`) < 1) {
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
      # check if the required `package_name` is null
      if (is.null(self$`package_name`)) {
        invalid_fields["package_name"] <- "Non-nullable required field `package_name` cannot be null."
      }

      if (nchar(self$`package_name`) > 128) {
        invalid_fields["package_name"] <- "Invalid length for `package_name`, must be smaller than or equal to 128."
      }
      if (nchar(self$`package_name`) < 1) {
        invalid_fields["package_name"] <- "Invalid length for `package_name`, must be bigger than or equal to 1."
      }

      # check if the required `package_version` is null
      if (is.null(self$`package_version`)) {
        invalid_fields["package_version"] <- "Non-nullable required field `package_version` cannot be null."
      }

      if (nchar(self$`package_version`) > 32) {
        invalid_fields["package_version"] <- "Invalid length for `package_version`, must be smaller than or equal to 32."
      }
      if (nchar(self$`package_version`) < 1) {
        invalid_fields["package_version"] <- "Invalid length for `package_version`, must be bigger than or equal to 1."
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
# MobileAppRequest$unlock()
#
## Below is an example to define the print function
# MobileAppRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# MobileAppRequest$lock()

