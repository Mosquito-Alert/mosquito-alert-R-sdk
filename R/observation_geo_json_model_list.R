#' Create a new ObservationGeoJsonModelList
#'
#' @description
#' ObservationGeoJsonModelList Class
#'
#' @docType class
#' @title ObservationGeoJsonModelList
#' @description ObservationGeoJsonModelList Class
#' @format An \code{R6Class} generator object
#' @field type  character [optional]
#' @field features  list(\link{ObservationGeoJsonModel}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ObservationGeoJsonModelList <- R6::R6Class(
  "ObservationGeoJsonModelList",
  public = list(
    `type` = NULL,
    `features` = NULL,

    #' @description
    #' Initialize a new ObservationGeoJsonModelList class.
    #'
    #' @param type type
    #' @param features features
    #' @param ... Other optional arguments.
    initialize = function(`type` = NULL, `features` = NULL, ...) {
      if (!is.null(`type`)) {
        if (!(`type` %in% c("FeatureCollection"))) {
          stop(paste("Error! \"", `type`, "\" cannot be assigned to `type`. Must be \"FeatureCollection\".", sep = ""))
        }
        if (!(is.character(`type`) && length(`type`) == 1)) {
          stop(paste("Error! Invalid data for `type`. Must be a string:", `type`))
        }
        self$`type` <- `type`
      }
      if (!is.null(`features`)) {
        stopifnot(is.vector(`features`), length(`features`) != 0)
        sapply(`features`, function(x) stopifnot(R6::is.R6(x)))
        self$`features` <- `features`
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
    #' @return ObservationGeoJsonModelList as a base R list.
    #' @examples
    #' # convert array of ObservationGeoJsonModelList (x) to a data frame
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
    #' Convert ObservationGeoJsonModelList to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ObservationGeoJsonModelListObject <- list()
      if (!is.null(self$`type`)) {
        ObservationGeoJsonModelListObject[["type"]] <-
          self$`type`
      }
      if (!is.null(self$`features`)) {
        ObservationGeoJsonModelListObject[["features"]] <-
          lapply(self$`features`, function(x) x$toSimpleType())
      }
      return(ObservationGeoJsonModelListObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of ObservationGeoJsonModelList
    #'
    #' @param input_json the JSON input
    #' @return the instance of ObservationGeoJsonModelList
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`type`)) {
        if (!is.null(this_object$`type`) && !(this_object$`type` %in% c("FeatureCollection"))) {
          stop(paste("Error! \"", this_object$`type`, "\" cannot be assigned to `type`. Must be \"FeatureCollection\".", sep = ""))
        }
        self$`type` <- this_object$`type`
      }
      if (!is.null(this_object$`features`)) {
        self$`features` <- ApiClient$new()$deserializeObj(this_object$`features`, "array[ObservationGeoJsonModel]", loadNamespace("MosquitoAlert"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ObservationGeoJsonModelList in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ObservationGeoJsonModelList
    #'
    #' @param input_json the JSON input
    #' @return the instance of ObservationGeoJsonModelList
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`type`) && !(this_object$`type` %in% c("FeatureCollection"))) {
        stop(paste("Error! \"", this_object$`type`, "\" cannot be assigned to `type`. Must be \"FeatureCollection\".", sep = ""))
      }
      self$`type` <- this_object$`type`
      self$`features` <- ApiClient$new()$deserializeObj(this_object$`features`, "array[ObservationGeoJsonModel]", loadNamespace("MosquitoAlert"))
      self
    },

    #' @description
    #' Validate JSON input with respect to ObservationGeoJsonModelList and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ObservationGeoJsonModelList
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
# ObservationGeoJsonModelList$unlock()
#
## Below is an example to define the print function
# ObservationGeoJsonModelList$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ObservationGeoJsonModelList$lock()

