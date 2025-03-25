#' Create a new AdmBoundariesRequest
#'
#' @description
#' AdmBoundariesRequest Class
#'
#' @docType class
#' @title AdmBoundariesRequest
#' @description AdmBoundariesRequest Class
#' @format An \code{R6Class} generator object
#' @field nuts NUTS (Nomenclature of Territorial Units for Statistics). A hierarchical system used by the European Union to divide its territory into comparable regions for statistical purposes. \link{NutsAdmBoundariesRequest} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AdmBoundariesRequest <- R6::R6Class(
  "AdmBoundariesRequest",
  public = list(
    `nuts` = NULL,

    #' @description
    #' Initialize a new AdmBoundariesRequest class.
    #'
    #' @param nuts NUTS (Nomenclature of Territorial Units for Statistics). A hierarchical system used by the European Union to divide its territory into comparable regions for statistical purposes.
    #' @param ... Other optional arguments.
    initialize = function(`nuts` = NULL, ...) {
      if (!is.null(`nuts`)) {
        stopifnot(R6::is.R6(`nuts`))
        self$`nuts` <- `nuts`
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
    #' @return AdmBoundariesRequest as a base R list.
    #' @examples
    #' # convert array of AdmBoundariesRequest (x) to a data frame
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
    #' Convert AdmBoundariesRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AdmBoundariesRequestObject <- list()
      if (!is.null(self$`nuts`)) {
        AdmBoundariesRequestObject[["nuts"]] <-
          self$`nuts`$toSimpleType()
      }
      return(AdmBoundariesRequestObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of AdmBoundariesRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of AdmBoundariesRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`nuts`)) {
        `nuts_object` <- NutsAdmBoundariesRequest$new()
        `nuts_object`$fromJSON(jsonlite::toJSON(this_object$`nuts`, auto_unbox = TRUE, digits = NA))
        self$`nuts` <- `nuts_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return AdmBoundariesRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of AdmBoundariesRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of AdmBoundariesRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`nuts` <- NutsAdmBoundariesRequest$new()$fromJSON(jsonlite::toJSON(this_object$`nuts`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to AdmBoundariesRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AdmBoundariesRequest
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
# AdmBoundariesRequest$unlock()
#
## Below is an example to define the print function
# AdmBoundariesRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AdmBoundariesRequest$lock()

