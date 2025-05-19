#' Create a new IdentificationTaskResultRequest
#'
#' @description
#' IdentificationTaskResultRequest Class
#'
#' @docType class
#' @title IdentificationTaskResultRequest
#' @description IdentificationTaskResultRequest Class
#' @format An \code{R6Class} generator object
#' @field source  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
IdentificationTaskResultRequest <- R6::R6Class(
  "IdentificationTaskResultRequest",
  public = list(
    `source` = NULL,

    #' @description
    #' Initialize a new IdentificationTaskResultRequest class.
    #'
    #' @param source source
    #' @param ... Other optional arguments.
    initialize = function(`source`, ...) {
      if (!missing(`source`)) {
        if (!(`source` %in% c("expert", "ai"))) {
          stop(paste("Error! \"", `source`, "\" cannot be assigned to `source`. Must be \"expert\", \"ai\".", sep = ""))
        }
        if (!(is.character(`source`) && length(`source`) == 1)) {
          stop(paste("Error! Invalid data for `source`. Must be a string:", `source`))
        }
        self$`source` <- `source`
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
    #' @return IdentificationTaskResultRequest as a base R list.
    #' @examples
    #' # convert array of IdentificationTaskResultRequest (x) to a data frame
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
    #' Convert IdentificationTaskResultRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      IdentificationTaskResultRequestObject <- list()
      if (!is.null(self$`source`)) {
        IdentificationTaskResultRequestObject[["source"]] <-
          self$`source`
      }
      return(IdentificationTaskResultRequestObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of IdentificationTaskResultRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of IdentificationTaskResultRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`source`)) {
        if (!is.null(this_object$`source`) && !(this_object$`source` %in% c("expert", "ai"))) {
          stop(paste("Error! \"", this_object$`source`, "\" cannot be assigned to `source`. Must be \"expert\", \"ai\".", sep = ""))
        }
        self$`source` <- this_object$`source`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return IdentificationTaskResultRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of IdentificationTaskResultRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of IdentificationTaskResultRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`source`) && !(this_object$`source` %in% c("expert", "ai"))) {
        stop(paste("Error! \"", this_object$`source`, "\" cannot be assigned to `source`. Must be \"expert\", \"ai\".", sep = ""))
      }
      self$`source` <- this_object$`source`
      self
    },

    #' @description
    #' Validate JSON input with respect to IdentificationTaskResultRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `source`
      if (!is.null(input_json$`source`)) {
        if (!(is.character(input_json$`source`) && length(input_json$`source`) == 1)) {
          stop(paste("Error! Invalid data for `source`. Must be a string:", input_json$`source`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for IdentificationTaskResultRequest: the required field `source` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of IdentificationTaskResultRequest
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      TRUE
    },

    #' @description
    #' Return a list of invalid fields (if any).
    #'
    #' @return A list of invalid fields (if any).
    getInvalidFields = function() {
      invalid_fields <- list()
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
# IdentificationTaskResultRequest$unlock()
#
## Below is an example to define the print function
# IdentificationTaskResultRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# IdentificationTaskResultRequest$lock()

