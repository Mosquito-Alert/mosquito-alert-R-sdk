#' Create a new FixLocationRequest
#'
#' @description
#' FixLocationRequest Class
#'
#' @docType class
#' @title FixLocationRequest
#' @description FixLocationRequest Class
#' @format An \code{R6Class} generator object
#' @field latitude Latitude rounded down to nearest 0.025 decimal degree. numeric
#' @field longitude Longitude rounded down to nearest 0.025 decimal degree. numeric
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
FixLocationRequest <- R6::R6Class(
  "FixLocationRequest",
  public = list(
    `latitude` = NULL,
    `longitude` = NULL,

    #' @description
    #' Initialize a new FixLocationRequest class.
    #'
    #' @param latitude Latitude rounded down to nearest 0.025 decimal degree.
    #' @param longitude Longitude rounded down to nearest 0.025 decimal degree.
    #' @param ... Other optional arguments.
    initialize = function(`latitude`, `longitude`, ...) {
      if (!missing(`latitude`)) {
        if (!(is.numeric(`latitude`) && length(`latitude`) == 1)) {
          stop(paste("Error! Invalid data for `latitude`. Must be a number:", `latitude`))
        }
        self$`latitude` <- `latitude`
      }
      if (!missing(`longitude`)) {
        if (!(is.numeric(`longitude`) && length(`longitude`) == 1)) {
          stop(paste("Error! Invalid data for `longitude`. Must be a number:", `longitude`))
        }
        self$`longitude` <- `longitude`
      }
    },

    #' @description
    #' To JSON String
    #'
    #' @return FixLocationRequest in JSON format
    toJSON = function() {
      FixLocationRequestObject <- list()
      if (!is.null(self$`latitude`)) {
        FixLocationRequestObject[["latitude"]] <-
          self$`latitude`
      }
      if (!is.null(self$`longitude`)) {
        FixLocationRequestObject[["longitude"]] <-
          self$`longitude`
      }
      FixLocationRequestObject
    },

    #' @description
    #' Deserialize JSON string into an instance of FixLocationRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of FixLocationRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`latitude`)) {
        self$`latitude` <- this_object$`latitude`
      }
      if (!is.null(this_object$`longitude`)) {
        self$`longitude` <- this_object$`longitude`
      }
      self
    },

    #' @description
    #' To JSON String
    #'
    #' @return FixLocationRequest in JSON format
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`latitude`)) {
          sprintf(
          '"latitude":
            %d
                    ',
          self$`latitude`
          )
        },
        if (!is.null(self$`longitude`)) {
          sprintf(
          '"longitude":
            %d
                    ',
          self$`longitude`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },

    #' @description
    #' Deserialize JSON string into an instance of FixLocationRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of FixLocationRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`latitude` <- this_object$`latitude`
      self$`longitude` <- this_object$`longitude`
      self
    },

    #' @description
    #' Validate JSON input with respect to FixLocationRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `latitude`
      if (!is.null(input_json$`latitude`)) {
        if (!(is.numeric(input_json$`latitude`) && length(input_json$`latitude`) == 1)) {
          stop(paste("Error! Invalid data for `latitude`. Must be a number:", input_json$`latitude`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for FixLocationRequest: the required field `latitude` is missing."))
      }
      # check the required field `longitude`
      if (!is.null(input_json$`longitude`)) {
        if (!(is.numeric(input_json$`longitude`) && length(input_json$`longitude`) == 1)) {
          stop(paste("Error! Invalid data for `longitude`. Must be a number:", input_json$`longitude`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for FixLocationRequest: the required field `longitude` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of FixLocationRequest
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `latitude` is null
      if (is.null(self$`latitude`)) {
        return(FALSE)
      }

      # check if the required `longitude` is null
      if (is.null(self$`longitude`)) {
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
      # check if the required `latitude` is null
      if (is.null(self$`latitude`)) {
        invalid_fields["latitude"] <- "Non-nullable required field `latitude` cannot be null."
      }

      # check if the required `longitude` is null
      if (is.null(self$`longitude`)) {
        invalid_fields["longitude"] <- "Non-nullable required field `longitude` cannot be null."
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
# FixLocationRequest$unlock()
#
## Below is an example to define the print function
# FixLocationRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# FixLocationRequest$lock()

