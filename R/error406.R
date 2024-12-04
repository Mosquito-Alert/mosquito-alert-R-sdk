#' Create a new Error406
#'
#' @description
#' Error406 Class
#'
#' @docType class
#' @title Error406
#' @description Error406 Class
#' @format An \code{R6Class} generator object
#' @field code  character
#' @field detail  character
#' @field attr  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Error406 <- R6::R6Class(
  "Error406",
  public = list(
    `code` = NULL,
    `detail` = NULL,
    `attr` = NULL,

    #' @description
    #' Initialize a new Error406 class.
    #'
    #' @param code code
    #' @param detail detail
    #' @param attr attr
    #' @param ... Other optional arguments.
    initialize = function(`code`, `detail`, `attr`, ...) {
      if (!missing(`code`)) {
        if (!(`code` %in% c("not_acceptable"))) {
          stop(paste("Error! \"", `code`, "\" cannot be assigned to `code`. Must be \"not_acceptable\".", sep = ""))
        }
        if (!(is.character(`code`) && length(`code`) == 1)) {
          stop(paste("Error! Invalid data for `code`. Must be a string:", `code`))
        }
        self$`code` <- `code`
      }
      if (!missing(`detail`)) {
        if (!(is.character(`detail`) && length(`detail`) == 1)) {
          stop(paste("Error! Invalid data for `detail`. Must be a string:", `detail`))
        }
        self$`detail` <- `detail`
      }
      if (!missing(`attr`)) {
        if (!(is.character(`attr`) && length(`attr`) == 1)) {
          stop(paste("Error! Invalid data for `attr`. Must be a string:", `attr`))
        }
        self$`attr` <- `attr`
      }
    },

    #' @description
    #' To JSON String
    #'
    #' @return Error406 in JSON format
    toJSON = function() {
      Error406Object <- list()
      if (!is.null(self$`code`)) {
        Error406Object[["code"]] <-
          self$`code`
      }
      if (!is.null(self$`detail`)) {
        Error406Object[["detail"]] <-
          self$`detail`
      }
      if (!is.null(self$`attr`)) {
        Error406Object[["attr"]] <-
          self$`attr`
      }
      Error406Object
    },

    #' @description
    #' Deserialize JSON string into an instance of Error406
    #'
    #' @param input_json the JSON input
    #' @return the instance of Error406
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`code`)) {
        if (!is.null(this_object$`code`) && !(this_object$`code` %in% c("not_acceptable"))) {
          stop(paste("Error! \"", this_object$`code`, "\" cannot be assigned to `code`. Must be \"not_acceptable\".", sep = ""))
        }
        self$`code` <- this_object$`code`
      }
      if (!is.null(this_object$`detail`)) {
        self$`detail` <- this_object$`detail`
      }
      if (!is.null(this_object$`attr`)) {
        self$`attr` <- this_object$`attr`
      }
      self
    },

    #' @description
    #' To JSON String
    #'
    #' @return Error406 in JSON format
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`code`)) {
          sprintf(
          '"code":
            "%s"
                    ',
          self$`code`
          )
        },
        if (!is.null(self$`detail`)) {
          sprintf(
          '"detail":
            "%s"
                    ',
          self$`detail`
          )
        },
        if (!is.null(self$`attr`)) {
          sprintf(
          '"attr":
            "%s"
                    ',
          self$`attr`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },

    #' @description
    #' Deserialize JSON string into an instance of Error406
    #'
    #' @param input_json the JSON input
    #' @return the instance of Error406
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`code`) && !(this_object$`code` %in% c("not_acceptable"))) {
        stop(paste("Error! \"", this_object$`code`, "\" cannot be assigned to `code`. Must be \"not_acceptable\".", sep = ""))
      }
      self$`code` <- this_object$`code`
      self$`detail` <- this_object$`detail`
      self$`attr` <- this_object$`attr`
      self
    },

    #' @description
    #' Validate JSON input with respect to Error406 and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `code`
      if (!is.null(input_json$`code`)) {
        if (!(is.character(input_json$`code`) && length(input_json$`code`) == 1)) {
          stop(paste("Error! Invalid data for `code`. Must be a string:", input_json$`code`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Error406: the required field `code` is missing."))
      }
      # check the required field `detail`
      if (!is.null(input_json$`detail`)) {
        if (!(is.character(input_json$`detail`) && length(input_json$`detail`) == 1)) {
          stop(paste("Error! Invalid data for `detail`. Must be a string:", input_json$`detail`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Error406: the required field `detail` is missing."))
      }
      # check the required field `attr`
      if (!is.null(input_json$`attr`)) {
        if (!(is.character(input_json$`attr`) && length(input_json$`attr`) == 1)) {
          stop(paste("Error! Invalid data for `attr`. Must be a string:", input_json$`attr`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Error406: the required field `attr` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Error406
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `code` is null
      if (is.null(self$`code`)) {
        return(FALSE)
      }

      # check if the required `detail` is null
      if (is.null(self$`detail`)) {
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
      # check if the required `code` is null
      if (is.null(self$`code`)) {
        invalid_fields["code"] <- "Non-nullable required field `code` cannot be null."
      }

      # check if the required `detail` is null
      if (is.null(self$`detail`)) {
        invalid_fields["detail"] <- "Non-nullable required field `detail` cannot be null."
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
# Error406$unlock()
#
## Below is an example to define the print function
# Error406$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Error406$lock()

