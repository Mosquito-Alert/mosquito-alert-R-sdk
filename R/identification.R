#' Create a new Identification
#'
#' @description
#' Identification Class
#'
#' @docType class
#' @title Identification
#' @description Identification Class
#' @format An \code{R6Class} generator object
#' @field photo  \link{SimplePhoto}
#' @field num_annotations  integer
#' @field result  \link{IdentificationTaskResult}
#' @field public_note  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Identification <- R6::R6Class(
  "Identification",
  public = list(
    `photo` = NULL,
    `num_annotations` = NULL,
    `result` = NULL,
    `public_note` = NULL,

    #' @description
    #' Initialize a new Identification class.
    #'
    #' @param photo photo
    #' @param num_annotations num_annotations
    #' @param result result
    #' @param public_note public_note
    #' @param ... Other optional arguments.
    initialize = function(`photo`, `num_annotations`, `result`, `public_note`, ...) {
      if (!missing(`photo`)) {
        stopifnot(R6::is.R6(`photo`))
        self$`photo` <- `photo`
      }
      if (!missing(`num_annotations`)) {
        if (!(is.numeric(`num_annotations`) && length(`num_annotations`) == 1)) {
          stop(paste("Error! Invalid data for `num_annotations`. Must be an integer:", `num_annotations`))
        }
        self$`num_annotations` <- `num_annotations`
      }
      if (!missing(`result`)) {
        stopifnot(R6::is.R6(`result`))
        self$`result` <- `result`
      }
      if (!missing(`public_note`)) {
        if (!(is.character(`public_note`) && length(`public_note`) == 1)) {
          stop(paste("Error! Invalid data for `public_note`. Must be a string:", `public_note`))
        }
        self$`public_note` <- `public_note`
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
    #' @return Identification as a base R list.
    #' @examples
    #' # convert array of Identification (x) to a data frame
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
    #' Convert Identification to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      IdentificationObject <- list()
      if (!is.null(self$`photo`)) {
        IdentificationObject[["photo"]] <-
          self$`photo`$toSimpleType()
      }
      if (!is.null(self$`num_annotations`)) {
        IdentificationObject[["num_annotations"]] <-
          self$`num_annotations`
      }
      if (!is.null(self$`result`)) {
        IdentificationObject[["result"]] <-
          self$`result`$toSimpleType()
      }
      if (!is.null(self$`public_note`)) {
        IdentificationObject[["public_note"]] <-
          self$`public_note`
      }
      return(IdentificationObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of Identification
    #'
    #' @param input_json the JSON input
    #' @return the instance of Identification
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`photo`)) {
        `photo_object` <- SimplePhoto$new()
        `photo_object`$fromJSON(jsonlite::toJSON(this_object$`photo`, auto_unbox = TRUE, digits = NA))
        self$`photo` <- `photo_object`
      }
      if (!is.null(this_object$`num_annotations`)) {
        self$`num_annotations` <- this_object$`num_annotations`
      }
      if (!is.null(this_object$`result`)) {
        `result_object` <- IdentificationTaskResult$new()
        `result_object`$fromJSON(jsonlite::toJSON(this_object$`result`, auto_unbox = TRUE, digits = NA))
        self$`result` <- `result_object`
      }
      if (!is.null(this_object$`public_note`)) {
        self$`public_note` <- this_object$`public_note`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return Identification in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of Identification
    #'
    #' @param input_json the JSON input
    #' @return the instance of Identification
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`photo` <- SimplePhoto$new()$fromJSON(jsonlite::toJSON(this_object$`photo`, auto_unbox = TRUE, digits = NA))
      self$`num_annotations` <- this_object$`num_annotations`
      self$`result` <- IdentificationTaskResult$new()$fromJSON(jsonlite::toJSON(this_object$`result`, auto_unbox = TRUE, digits = NA))
      self$`public_note` <- this_object$`public_note`
      self
    },

    #' @description
    #' Validate JSON input with respect to Identification and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `photo`
      if (!is.null(input_json$`photo`)) {
        stopifnot(R6::is.R6(input_json$`photo`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Identification: the required field `photo` is missing."))
      }
      # check the required field `num_annotations`
      if (!is.null(input_json$`num_annotations`)) {
        if (!(is.numeric(input_json$`num_annotations`) && length(input_json$`num_annotations`) == 1)) {
          stop(paste("Error! Invalid data for `num_annotations`. Must be an integer:", input_json$`num_annotations`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Identification: the required field `num_annotations` is missing."))
      }
      # check the required field `result`
      if (!is.null(input_json$`result`)) {
        stopifnot(R6::is.R6(input_json$`result`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Identification: the required field `result` is missing."))
      }
      # check the required field `public_note`
      if (!is.null(input_json$`public_note`)) {
        if (!(is.character(input_json$`public_note`) && length(input_json$`public_note`) == 1)) {
          stop(paste("Error! Invalid data for `public_note`. Must be a string:", input_json$`public_note`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Identification: the required field `public_note` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Identification
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `photo` is null
      if (is.null(self$`photo`)) {
        return(FALSE)
      }

      # check if the required `num_annotations` is null
      if (is.null(self$`num_annotations`)) {
        return(FALSE)
      }

      if (self$`num_annotations` < 0) {
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
      # check if the required `photo` is null
      if (is.null(self$`photo`)) {
        invalid_fields["photo"] <- "Non-nullable required field `photo` cannot be null."
      }

      # check if the required `num_annotations` is null
      if (is.null(self$`num_annotations`)) {
        invalid_fields["num_annotations"] <- "Non-nullable required field `num_annotations` cannot be null."
      }

      if (self$`num_annotations` < 0) {
        invalid_fields["num_annotations"] <- "Invalid value for `num_annotations`, must be bigger than or equal to 0."
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
# Identification$unlock()
#
## Below is an example to define the print function
# Identification$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Identification$lock()

