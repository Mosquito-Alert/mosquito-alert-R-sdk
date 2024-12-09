#' Create a new TokenVerifyRequest
#'
#' @description
#' TokenVerifyRequest Class
#'
#' @docType class
#' @title TokenVerifyRequest
#' @description TokenVerifyRequest Class
#' @format An \code{R6Class} generator object
#' @field token  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
TokenVerifyRequest <- R6::R6Class(
  "TokenVerifyRequest",
  public = list(
    `token` = NULL,

    #' @description
    #' Initialize a new TokenVerifyRequest class.
    #'
    #' @param token token
    #' @param ... Other optional arguments.
    initialize = function(`token`, ...) {
      if (!missing(`token`)) {
        if (!(is.character(`token`) && length(`token`) == 1)) {
          stop(paste("Error! Invalid data for `token`. Must be a string:", `token`))
        }
        self$`token` <- `token`
      }
    },

    #' @description
    #' To JSON String
    #'
    #' @return TokenVerifyRequest in JSON format
    toJSON = function() {
      TokenVerifyRequestObject <- list()
      if (!is.null(self$`token`)) {
        TokenVerifyRequestObject[["token"]] <-
          self$`token`
      }
      TokenVerifyRequestObject
    },

    #' @description
    #' Deserialize JSON string into an instance of TokenVerifyRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of TokenVerifyRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`token`)) {
        self$`token` <- this_object$`token`
      }
      self
    },

    #' @description
    #' To JSON String
    #'
    #' @return TokenVerifyRequest in JSON format
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`token`)) {
          sprintf(
          '"token":
            "%s"
                    ',
          self$`token`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },

    #' @description
    #' Deserialize JSON string into an instance of TokenVerifyRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of TokenVerifyRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`token` <- this_object$`token`
      self
    },

    #' @description
    #' Validate JSON input with respect to TokenVerifyRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `token`
      if (!is.null(input_json$`token`)) {
        if (!(is.character(input_json$`token`) && length(input_json$`token`) == 1)) {
          stop(paste("Error! Invalid data for `token`. Must be a string:", input_json$`token`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TokenVerifyRequest: the required field `token` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of TokenVerifyRequest
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `token` is null
      if (is.null(self$`token`)) {
        return(FALSE)
      }

      if (nchar(self$`token`) < 1) {
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
      # check if the required `token` is null
      if (is.null(self$`token`)) {
        invalid_fields["token"] <- "Non-nullable required field `token` cannot be null."
      }

      if (nchar(self$`token`) < 1) {
        invalid_fields["token"] <- "Invalid length for `token`, must be bigger than or equal to 1."
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
# TokenVerifyRequest$unlock()
#
## Below is an example to define the print function
# TokenVerifyRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# TokenVerifyRequest$lock()

