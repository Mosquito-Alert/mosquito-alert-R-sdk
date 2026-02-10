#' Create a new BiteGeoJsonModelGeometry
#'
#' @description
#' BiteGeoJsonModelGeometry Class
#'
#' @docType class
#' @title BiteGeoJsonModelGeometry
#' @description BiteGeoJsonModelGeometry Class
#' @format An \code{R6Class} generator object
#' @field type  character [optional]
#' @field coordinates  list(numeric) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
BiteGeoJsonModelGeometry <- R6::R6Class(
  "BiteGeoJsonModelGeometry",
  public = list(
    `type` = NULL,
    `coordinates` = NULL,

    #' @description
    #' Initialize a new BiteGeoJsonModelGeometry class.
    #'
    #' @param type type
    #' @param coordinates coordinates
    #' @param ... Other optional arguments.
    initialize = function(`type` = NULL, `coordinates` = NULL, ...) {
      if (!is.null(`type`)) {
        if (!(`type` %in% c("Point"))) {
          stop(paste("Error! \"", `type`, "\" cannot be assigned to `type`. Must be \"Point\".", sep = ""))
        }
        if (!(is.character(`type`) && length(`type`) == 1)) {
          stop(paste("Error! Invalid data for `type`. Must be a string:", `type`))
        }
        self$`type` <- `type`
      }
      if (!is.null(`coordinates`)) {
        stopifnot(is.vector(`coordinates`), length(`coordinates`) != 0)
        sapply(`coordinates`, function(x) stopifnot(is.character(x)))
        self$`coordinates` <- `coordinates`
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
    #' @return BiteGeoJsonModelGeometry as a base R list.
    #' @examples
    #' # convert array of BiteGeoJsonModelGeometry (x) to a data frame
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
    #' Convert BiteGeoJsonModelGeometry to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      BiteGeoJsonModelGeometryObject <- list()
      if (!is.null(self$`type`)) {
        BiteGeoJsonModelGeometryObject[["type"]] <-
          self$`type`
      }
      if (!is.null(self$`coordinates`)) {
        BiteGeoJsonModelGeometryObject[["coordinates"]] <-
          self$`coordinates`
      }
      return(BiteGeoJsonModelGeometryObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of BiteGeoJsonModelGeometry
    #'
    #' @param input_json the JSON input
    #' @return the instance of BiteGeoJsonModelGeometry
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`type`)) {
        if (!is.null(this_object$`type`) && !(this_object$`type` %in% c("Point"))) {
          stop(paste("Error! \"", this_object$`type`, "\" cannot be assigned to `type`. Must be \"Point\".", sep = ""))
        }
        self$`type` <- this_object$`type`
      }
      if (!is.null(this_object$`coordinates`)) {
        self$`coordinates` <- ApiClient$new()$deserializeObj(this_object$`coordinates`, "array[numeric]", loadNamespace("MosquitoAlert"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return BiteGeoJsonModelGeometry in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of BiteGeoJsonModelGeometry
    #'
    #' @param input_json the JSON input
    #' @return the instance of BiteGeoJsonModelGeometry
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`type`) && !(this_object$`type` %in% c("Point"))) {
        stop(paste("Error! \"", this_object$`type`, "\" cannot be assigned to `type`. Must be \"Point\".", sep = ""))
      }
      self$`type` <- this_object$`type`
      self$`coordinates` <- ApiClient$new()$deserializeObj(this_object$`coordinates`, "array[numeric]", loadNamespace("MosquitoAlert"))
      self
    },

    #' @description
    #' Validate JSON input with respect to BiteGeoJsonModelGeometry and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of BiteGeoJsonModelGeometry
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      if (length(self$`coordinates`) > 3) {
        return(FALSE)
      }
      if (length(self$`coordinates`) < 2) {
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
      if (length(self$`coordinates`) > 3) {
        invalid_fields["coordinates"] <- "Invalid length for `coordinates`, number of items must be less than or equal to 3."
      }
      if (length(self$`coordinates`) < 2) {
        invalid_fields["coordinates"] <- "Invalid length for ``, number of items must be greater than or equal to 2."
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
# BiteGeoJsonModelGeometry$unlock()
#
## Below is an example to define the print function
# BiteGeoJsonModelGeometry$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# BiteGeoJsonModelGeometry$lock()

