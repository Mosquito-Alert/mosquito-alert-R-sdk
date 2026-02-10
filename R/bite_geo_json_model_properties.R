#' Create a new BiteGeoJsonModelProperties
#'
#' @description
#' BiteGeoJsonModelProperties Class
#'
#' @docType class
#' @title BiteGeoJsonModelProperties
#' @description BiteGeoJsonModelProperties Class
#' @format An \code{R6Class} generator object
#' @field received_at  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
BiteGeoJsonModelProperties <- R6::R6Class(
  "BiteGeoJsonModelProperties",
  public = list(
    `received_at` = NULL,

    #' @description
    #' Initialize a new BiteGeoJsonModelProperties class.
    #'
    #' @param received_at received_at
    #' @param ... Other optional arguments.
    initialize = function(`received_at` = NULL, ...) {
      if (!is.null(`received_at`)) {
        if (!is.character(`received_at`)) {
          stop(paste("Error! Invalid data for `received_at`. Must be a string:", `received_at`))
        }
        self$`received_at` <- `received_at`
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
    #' @return BiteGeoJsonModelProperties as a base R list.
    #' @examples
    #' # convert array of BiteGeoJsonModelProperties (x) to a data frame
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
    #' Convert BiteGeoJsonModelProperties to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      BiteGeoJsonModelPropertiesObject <- list()
      if (!is.null(self$`received_at`)) {
        BiteGeoJsonModelPropertiesObject[["received_at"]] <-
          self$`received_at`
      }
      return(BiteGeoJsonModelPropertiesObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of BiteGeoJsonModelProperties
    #'
    #' @param input_json the JSON input
    #' @return the instance of BiteGeoJsonModelProperties
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`received_at`)) {
        self$`received_at` <- this_object$`received_at`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return BiteGeoJsonModelProperties in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of BiteGeoJsonModelProperties
    #'
    #' @param input_json the JSON input
    #' @return the instance of BiteGeoJsonModelProperties
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`received_at` <- this_object$`received_at`
      self
    },

    #' @description
    #' Validate JSON input with respect to BiteGeoJsonModelProperties and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of BiteGeoJsonModelProperties
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
# BiteGeoJsonModelProperties$unlock()
#
## Below is an example to define the print function
# BiteGeoJsonModelProperties$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# BiteGeoJsonModelProperties$lock()

