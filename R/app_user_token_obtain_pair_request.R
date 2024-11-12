#' Create a new AppUserTokenObtainPairRequest
#'
#' @description
#' AppUserTokenObtainPairRequest Class
#'
#' @docType class
#' @title AppUserTokenObtainPairRequest
#' @description AppUserTokenObtainPairRequest Class
#' @format An \code{R6Class} generator object
#' @field uuid  character
#' @field password  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AppUserTokenObtainPairRequest <- R6::R6Class(
  "AppUserTokenObtainPairRequest",
  public = list(
    `uuid` = NULL,
    `password` = NULL,

    #' @description
    #' Initialize a new AppUserTokenObtainPairRequest class.
    #'
    #' @param uuid uuid
    #' @param password password
    #' @param ... Other optional arguments.
    initialize = function(`uuid`, `password`, ...) {
      if (!missing(`uuid`)) {
        if (!(is.character(`uuid`) && length(`uuid`) == 1)) {
          stop(paste("Error! Invalid data for `uuid`. Must be a string:", `uuid`))
        }
        self$`uuid` <- `uuid`
      }
      if (!missing(`password`)) {
        if (!(is.character(`password`) && length(`password`) == 1)) {
          stop(paste("Error! Invalid data for `password`. Must be a string:", `password`))
        }
        self$`password` <- `password`
      }
    },

    #' @description
    #' To JSON String
    #'
    #' @return AppUserTokenObtainPairRequest in JSON format
    toJSON = function() {
      AppUserTokenObtainPairRequestObject <- list()
      if (!is.null(self$`uuid`)) {
        AppUserTokenObtainPairRequestObject[["uuid"]] <-
          self$`uuid`
      }
      if (!is.null(self$`password`)) {
        AppUserTokenObtainPairRequestObject[["password"]] <-
          self$`password`
      }
      AppUserTokenObtainPairRequestObject
    },

    #' @description
    #' Deserialize JSON string into an instance of AppUserTokenObtainPairRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of AppUserTokenObtainPairRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`uuid`)) {
        self$`uuid` <- this_object$`uuid`
      }
      if (!is.null(this_object$`password`)) {
        self$`password` <- this_object$`password`
      }
      self
    },

    #' @description
    #' To JSON String
    #'
    #' @return AppUserTokenObtainPairRequest in JSON format
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
        if (!is.null(self$`password`)) {
          sprintf(
          '"password":
            "%s"
                    ',
          self$`password`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },

    #' @description
    #' Deserialize JSON string into an instance of AppUserTokenObtainPairRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of AppUserTokenObtainPairRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`uuid` <- this_object$`uuid`
      self$`password` <- this_object$`password`
      self
    },

    #' @description
    #' Validate JSON input with respect to AppUserTokenObtainPairRequest and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for AppUserTokenObtainPairRequest: the required field `uuid` is missing."))
      }
      # check the required field `password`
      if (!is.null(input_json$`password`)) {
        if (!(is.character(input_json$`password`) && length(input_json$`password`) == 1)) {
          stop(paste("Error! Invalid data for `password`. Must be a string:", input_json$`password`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AppUserTokenObtainPairRequest: the required field `password` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AppUserTokenObtainPairRequest
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

      # check if the required `password` is null
      if (is.null(self$`password`)) {
        return(FALSE)
      }

      if (nchar(self$`password`) < 1) {
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

      # check if the required `password` is null
      if (is.null(self$`password`)) {
        invalid_fields["password"] <- "Non-nullable required field `password` cannot be null."
      }

      if (nchar(self$`password`) < 1) {
        invalid_fields["password"] <- "Invalid length for `password`, must be bigger than or equal to 1."
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
# AppUserTokenObtainPairRequest$unlock()
#
## Below is an example to define the print function
# AppUserTokenObtainPairRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AppUserTokenObtainPairRequest$lock()

