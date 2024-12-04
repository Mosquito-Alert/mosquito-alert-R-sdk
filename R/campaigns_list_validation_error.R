#' Create a new CampaignsListValidationError
#'
#' @description
#' CampaignsListValidationError Class
#'
#' @docType class
#' @title CampaignsListValidationError
#' @description CampaignsListValidationError Class
#' @format An \code{R6Class} generator object
#' @field type  character
#' @field errors  list(\link{CampaignsListError})
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CampaignsListValidationError <- R6::R6Class(
  "CampaignsListValidationError",
  public = list(
    `type` = NULL,
    `errors` = NULL,

    #' @description
    #' Initialize a new CampaignsListValidationError class.
    #'
    #' @param type type
    #' @param errors errors
    #' @param ... Other optional arguments.
    initialize = function(`type`, `errors`, ...) {
      if (!missing(`type`)) {
        if (!(`type` %in% c("validation_error"))) {
          stop(paste("Error! \"", `type`, "\" cannot be assigned to `type`. Must be \"validation_error\".", sep = ""))
        }
        if (!(is.character(`type`) && length(`type`) == 1)) {
          stop(paste("Error! Invalid data for `type`. Must be a string:", `type`))
        }
        self$`type` <- `type`
      }
      if (!missing(`errors`)) {
        stopifnot(is.vector(`errors`), length(`errors`) != 0)
        sapply(`errors`, function(x) stopifnot(R6::is.R6(x)))
        self$`errors` <- `errors`
      }
    },

    #' @description
    #' To JSON String
    #'
    #' @return CampaignsListValidationError in JSON format
    toJSON = function() {
      CampaignsListValidationErrorObject <- list()
      if (!is.null(self$`type`)) {
        CampaignsListValidationErrorObject[["type"]] <-
          self$`type`
      }
      if (!is.null(self$`errors`)) {
        CampaignsListValidationErrorObject[["errors"]] <-
          lapply(self$`errors`, function(x) x$toJSON())
      }
      CampaignsListValidationErrorObject
    },

    #' @description
    #' Deserialize JSON string into an instance of CampaignsListValidationError
    #'
    #' @param input_json the JSON input
    #' @return the instance of CampaignsListValidationError
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`type`)) {
        if (!is.null(this_object$`type`) && !(this_object$`type` %in% c("validation_error"))) {
          stop(paste("Error! \"", this_object$`type`, "\" cannot be assigned to `type`. Must be \"validation_error\".", sep = ""))
        }
        self$`type` <- this_object$`type`
      }
      if (!is.null(this_object$`errors`)) {
        self$`errors` <- ApiClient$new()$deserializeObj(this_object$`errors`, "array[CampaignsListError]", loadNamespace("MosquitoAlert"))
      }
      self
    },

    #' @description
    #' To JSON String
    #'
    #' @return CampaignsListValidationError in JSON format
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`type`)) {
          sprintf(
          '"type":
            "%s"
                    ',
          self$`type`
          )
        },
        if (!is.null(self$`errors`)) {
          sprintf(
          '"errors":
          [%s]
',
          paste(sapply(self$`errors`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox = TRUE, digits = NA)), collapse = ",")
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },

    #' @description
    #' Deserialize JSON string into an instance of CampaignsListValidationError
    #'
    #' @param input_json the JSON input
    #' @return the instance of CampaignsListValidationError
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`type`) && !(this_object$`type` %in% c("validation_error"))) {
        stop(paste("Error! \"", this_object$`type`, "\" cannot be assigned to `type`. Must be \"validation_error\".", sep = ""))
      }
      self$`type` <- this_object$`type`
      self$`errors` <- ApiClient$new()$deserializeObj(this_object$`errors`, "array[CampaignsListError]", loadNamespace("MosquitoAlert"))
      self
    },

    #' @description
    #' Validate JSON input with respect to CampaignsListValidationError and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `type`
      if (!is.null(input_json$`type`)) {
        if (!(is.character(input_json$`type`) && length(input_json$`type`) == 1)) {
          stop(paste("Error! Invalid data for `type`. Must be a string:", input_json$`type`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CampaignsListValidationError: the required field `type` is missing."))
      }
      # check the required field `errors`
      if (!is.null(input_json$`errors`)) {
        stopifnot(is.vector(input_json$`errors`), length(input_json$`errors`) != 0)
        tmp <- sapply(input_json$`errors`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CampaignsListValidationError: the required field `errors` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CampaignsListValidationError
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `type` is null
      if (is.null(self$`type`)) {
        return(FALSE)
      }

      # check if the required `errors` is null
      if (is.null(self$`errors`)) {
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
      # check if the required `type` is null
      if (is.null(self$`type`)) {
        invalid_fields["type"] <- "Non-nullable required field `type` cannot be null."
      }

      # check if the required `errors` is null
      if (is.null(self$`errors`)) {
        invalid_fields["errors"] <- "Non-nullable required field `errors` cannot be null."
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
# CampaignsListValidationError$unlock()
#
## Below is an example to define the print function
# CampaignsListValidationError$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CampaignsListValidationError$lock()

