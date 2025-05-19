#' Create a new IdentificationtasksPredictionsCreatePredictedClassErrorComponent
#'
#' @description
#' IdentificationtasksPredictionsCreatePredictedClassErrorComponent Class
#'
#' @docType class
#' @title IdentificationtasksPredictionsCreatePredictedClassErrorComponent
#' @description IdentificationtasksPredictionsCreatePredictedClassErrorComponent Class
#' @format An \code{R6Class} generator object
#' @field attr  character
#' @field code  character
#' @field detail  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
IdentificationtasksPredictionsCreatePredictedClassErrorComponent <- R6::R6Class(
  "IdentificationtasksPredictionsCreatePredictedClassErrorComponent",
  public = list(
    `attr` = NULL,
    `code` = NULL,
    `detail` = NULL,

    #' @description
    #' Initialize a new IdentificationtasksPredictionsCreatePredictedClassErrorComponent class.
    #'
    #' @param attr attr
    #' @param code code
    #' @param detail detail
    #' @param ... Other optional arguments.
    initialize = function(`attr`, `code`, `detail`, ...) {
      if (!missing(`attr`)) {
        if (!(`attr` %in% c("predicted_class"))) {
          stop(paste("Error! \"", `attr`, "\" cannot be assigned to `attr`. Must be \"predicted_class\".", sep = ""))
        }
        if (!(is.character(`attr`) && length(`attr`) == 1)) {
          stop(paste("Error! Invalid data for `attr`. Must be a string:", `attr`))
        }
        self$`attr` <- `attr`
      }
      if (!missing(`code`)) {
        if (!(`code` %in% c("invalid_choice", "required"))) {
          stop(paste("Error! \"", `code`, "\" cannot be assigned to `code`. Must be \"invalid_choice\", \"required\".", sep = ""))
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
    },

    #' @description
    #' Convert to an R object. This method is deprecated. Use `toSimpleType()` instead.
    toJSON = function() {
      .Deprecated(new = "toSimpleType", msg = "Use the '$toSimpleType()' method instead since that is more clearly named. Use '$toJSONString()' to get a JSON string")
      return(self$toSimpleType())
    },

    #' @description
    #' Convert to a List
    #'
    #' Convert the R6 object to a list to work more easily with other tooling.
    #'
    #' @return IdentificationtasksPredictionsCreatePredictedClassErrorComponent as a base R list.
    #' @examples
    #' # convert array of IdentificationtasksPredictionsCreatePredictedClassErrorComponent (x) to a data frame
    #' \dontrun{
    #' library(purrr)
    #' library(tibble)
    #' df <- x |> map(\(y)y$toList()) |> map(as_tibble) |> list_rbind()
    #' df
    #' }
    toList = function() {
      return(self$toSimpleType())
    },

    #' @description
    #' Convert IdentificationtasksPredictionsCreatePredictedClassErrorComponent to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      IdentificationtasksPredictionsCreatePredictedClassErrorComponentObject <- list()
      if (!is.null(self$`attr`)) {
        IdentificationtasksPredictionsCreatePredictedClassErrorComponentObject[["attr"]] <-
          self$`attr`
      }
      if (!is.null(self$`code`)) {
        IdentificationtasksPredictionsCreatePredictedClassErrorComponentObject[["code"]] <-
          self$`code`
      }
      if (!is.null(self$`detail`)) {
        IdentificationtasksPredictionsCreatePredictedClassErrorComponentObject[["detail"]] <-
          self$`detail`
      }
      return(IdentificationtasksPredictionsCreatePredictedClassErrorComponentObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of IdentificationtasksPredictionsCreatePredictedClassErrorComponent
    #'
    #' @param input_json the JSON input
    #' @return the instance of IdentificationtasksPredictionsCreatePredictedClassErrorComponent
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`attr`)) {
        if (!is.null(this_object$`attr`) && !(this_object$`attr` %in% c("predicted_class"))) {
          stop(paste("Error! \"", this_object$`attr`, "\" cannot be assigned to `attr`. Must be \"predicted_class\".", sep = ""))
        }
        self$`attr` <- this_object$`attr`
      }
      if (!is.null(this_object$`code`)) {
        if (!is.null(this_object$`code`) && !(this_object$`code` %in% c("invalid_choice", "required"))) {
          stop(paste("Error! \"", this_object$`code`, "\" cannot be assigned to `code`. Must be \"invalid_choice\", \"required\".", sep = ""))
        }
        self$`code` <- this_object$`code`
      }
      if (!is.null(this_object$`detail`)) {
        self$`detail` <- this_object$`detail`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return IdentificationtasksPredictionsCreatePredictedClassErrorComponent in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of IdentificationtasksPredictionsCreatePredictedClassErrorComponent
    #'
    #' @param input_json the JSON input
    #' @return the instance of IdentificationtasksPredictionsCreatePredictedClassErrorComponent
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`attr`) && !(this_object$`attr` %in% c("predicted_class"))) {
        stop(paste("Error! \"", this_object$`attr`, "\" cannot be assigned to `attr`. Must be \"predicted_class\".", sep = ""))
      }
      self$`attr` <- this_object$`attr`
      if (!is.null(this_object$`code`) && !(this_object$`code` %in% c("invalid_choice", "required"))) {
        stop(paste("Error! \"", this_object$`code`, "\" cannot be assigned to `code`. Must be \"invalid_choice\", \"required\".", sep = ""))
      }
      self$`code` <- this_object$`code`
      self$`detail` <- this_object$`detail`
      self
    },

    #' @description
    #' Validate JSON input with respect to IdentificationtasksPredictionsCreatePredictedClassErrorComponent and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `attr`
      if (!is.null(input_json$`attr`)) {
        if (!(is.character(input_json$`attr`) && length(input_json$`attr`) == 1)) {
          stop(paste("Error! Invalid data for `attr`. Must be a string:", input_json$`attr`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for IdentificationtasksPredictionsCreatePredictedClassErrorComponent: the required field `attr` is missing."))
      }
      # check the required field `code`
      if (!is.null(input_json$`code`)) {
        if (!(is.character(input_json$`code`) && length(input_json$`code`) == 1)) {
          stop(paste("Error! Invalid data for `code`. Must be a string:", input_json$`code`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for IdentificationtasksPredictionsCreatePredictedClassErrorComponent: the required field `code` is missing."))
      }
      # check the required field `detail`
      if (!is.null(input_json$`detail`)) {
        if (!(is.character(input_json$`detail`) && length(input_json$`detail`) == 1)) {
          stop(paste("Error! Invalid data for `detail`. Must be a string:", input_json$`detail`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for IdentificationtasksPredictionsCreatePredictedClassErrorComponent: the required field `detail` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of IdentificationtasksPredictionsCreatePredictedClassErrorComponent
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `attr` is null
      if (is.null(self$`attr`)) {
        return(FALSE)
      }

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
      # check if the required `attr` is null
      if (is.null(self$`attr`)) {
        invalid_fields["attr"] <- "Non-nullable required field `attr` cannot be null."
      }

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
# IdentificationtasksPredictionsCreatePredictedClassErrorComponent$unlock()
#
## Below is an example to define the print function
# IdentificationtasksPredictionsCreatePredictedClassErrorComponent$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# IdentificationtasksPredictionsCreatePredictedClassErrorComponent$lock()

