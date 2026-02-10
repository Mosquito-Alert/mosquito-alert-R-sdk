#' Create a new ObservationGeoJsonModel
#'
#' @description
#' ObservationGeoJsonModel Class
#'
#' @docType class
#' @title ObservationGeoJsonModel
#' @description ObservationGeoJsonModel Class
#' @format An \code{R6Class} generator object
#' @field type  character [optional]
#' @field id  character [optional]
#' @field geometry  \link{BiteGeoJsonModelGeometry} [optional]
#' @field properties  \link{ObservationGeoJsonModelProperties} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ObservationGeoJsonModel <- R6::R6Class(
  "ObservationGeoJsonModel",
  public = list(
    `type` = NULL,
    `id` = NULL,
    `geometry` = NULL,
    `properties` = NULL,

    #' @description
    #' Initialize a new ObservationGeoJsonModel class.
    #'
    #' @param type type
    #' @param id id
    #' @param geometry geometry
    #' @param properties properties
    #' @param ... Other optional arguments.
    initialize = function(`type` = NULL, `id` = NULL, `geometry` = NULL, `properties` = NULL, ...) {
      if (!is.null(`type`)) {
        if (!(`type` %in% c("Feature"))) {
          stop(paste("Error! \"", `type`, "\" cannot be assigned to `type`. Must be \"Feature\".", sep = ""))
        }
        if (!(is.character(`type`) && length(`type`) == 1)) {
          stop(paste("Error! Invalid data for `type`. Must be a string:", `type`))
        }
        self$`type` <- `type`
      }
      if (!is.null(`id`)) {
        if (!(is.character(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be a string:", `id`))
        }
        self$`id` <- `id`
      }
      if (!is.null(`geometry`)) {
        stopifnot(R6::is.R6(`geometry`))
        self$`geometry` <- `geometry`
      }
      if (!is.null(`properties`)) {
        stopifnot(R6::is.R6(`properties`))
        self$`properties` <- `properties`
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
    #' @return ObservationGeoJsonModel as a base R list.
    #' @examples
    #' # convert array of ObservationGeoJsonModel (x) to a data frame
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
    #' Convert ObservationGeoJsonModel to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ObservationGeoJsonModelObject <- list()
      if (!is.null(self$`type`)) {
        ObservationGeoJsonModelObject[["type"]] <-
          self$`type`
      }
      if (!is.null(self$`id`)) {
        ObservationGeoJsonModelObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`geometry`)) {
        ObservationGeoJsonModelObject[["geometry"]] <-
          self$`geometry`$toSimpleType()
      }
      if (!is.null(self$`properties`)) {
        ObservationGeoJsonModelObject[["properties"]] <-
          self$`properties`$toSimpleType()
      }
      return(ObservationGeoJsonModelObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of ObservationGeoJsonModel
    #'
    #' @param input_json the JSON input
    #' @return the instance of ObservationGeoJsonModel
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`type`)) {
        if (!is.null(this_object$`type`) && !(this_object$`type` %in% c("Feature"))) {
          stop(paste("Error! \"", this_object$`type`, "\" cannot be assigned to `type`. Must be \"Feature\".", sep = ""))
        }
        self$`type` <- this_object$`type`
      }
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`geometry`)) {
        `geometry_object` <- BiteGeoJsonModelGeometry$new()
        `geometry_object`$fromJSON(jsonlite::toJSON(this_object$`geometry`, auto_unbox = TRUE, digits = NA))
        self$`geometry` <- `geometry_object`
      }
      if (!is.null(this_object$`properties`)) {
        `properties_object` <- ObservationGeoJsonModelProperties$new()
        `properties_object`$fromJSON(jsonlite::toJSON(this_object$`properties`, auto_unbox = TRUE, digits = NA))
        self$`properties` <- `properties_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ObservationGeoJsonModel in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ObservationGeoJsonModel
    #'
    #' @param input_json the JSON input
    #' @return the instance of ObservationGeoJsonModel
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`type`) && !(this_object$`type` %in% c("Feature"))) {
        stop(paste("Error! \"", this_object$`type`, "\" cannot be assigned to `type`. Must be \"Feature\".", sep = ""))
      }
      self$`type` <- this_object$`type`
      self$`id` <- this_object$`id`
      self$`geometry` <- BiteGeoJsonModelGeometry$new()$fromJSON(jsonlite::toJSON(this_object$`geometry`, auto_unbox = TRUE, digits = NA))
      self$`properties` <- ObservationGeoJsonModelProperties$new()$fromJSON(jsonlite::toJSON(this_object$`properties`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to ObservationGeoJsonModel and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ObservationGeoJsonModel
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
# ObservationGeoJsonModel$unlock()
#
## Below is an example to define the print function
# ObservationGeoJsonModel$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ObservationGeoJsonModel$lock()

