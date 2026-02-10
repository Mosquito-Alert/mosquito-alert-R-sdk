#' Create a new ObservationGeoJsonModelProperties
#'
#' @description
#' ObservationGeoJsonModelProperties Class
#'
#' @docType class
#' @title ObservationGeoJsonModelProperties
#' @description ObservationGeoJsonModelProperties Class
#' @format An \code{R6Class} generator object
#' @field uuid  character [optional]
#' @field received_at  character [optional]
#' @field identification_taxon_id  integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ObservationGeoJsonModelProperties <- R6::R6Class(
  "ObservationGeoJsonModelProperties",
  public = list(
    `uuid` = NULL,
    `received_at` = NULL,
    `identification_taxon_id` = NULL,

    #' @description
    #' Initialize a new ObservationGeoJsonModelProperties class.
    #'
    #' @param uuid uuid
    #' @param received_at received_at
    #' @param identification_taxon_id identification_taxon_id
    #' @param ... Other optional arguments.
    initialize = function(`uuid` = NULL, `received_at` = NULL, `identification_taxon_id` = NULL, ...) {
      if (!is.null(`uuid`)) {
        if (!(is.character(`uuid`) && length(`uuid`) == 1)) {
          stop(paste("Error! Invalid data for `uuid`. Must be a string:", `uuid`))
        }
        self$`uuid` <- `uuid`
      }
      if (!is.null(`received_at`)) {
        if (!is.character(`received_at`)) {
          stop(paste("Error! Invalid data for `received_at`. Must be a string:", `received_at`))
        }
        self$`received_at` <- `received_at`
      }
      if (!is.null(`identification_taxon_id`)) {
        if (!(is.numeric(`identification_taxon_id`) && length(`identification_taxon_id`) == 1)) {
          stop(paste("Error! Invalid data for `identification_taxon_id`. Must be an integer:", `identification_taxon_id`))
        }
        self$`identification_taxon_id` <- `identification_taxon_id`
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
    #' @return ObservationGeoJsonModelProperties as a base R list.
    #' @examples
    #' # convert array of ObservationGeoJsonModelProperties (x) to a data frame
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
    #' Convert ObservationGeoJsonModelProperties to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ObservationGeoJsonModelPropertiesObject <- list()
      if (!is.null(self$`uuid`)) {
        ObservationGeoJsonModelPropertiesObject[["uuid"]] <-
          self$`uuid`
      }
      if (!is.null(self$`received_at`)) {
        ObservationGeoJsonModelPropertiesObject[["received_at"]] <-
          self$`received_at`
      }
      if (!is.null(self$`identification_taxon_id`)) {
        ObservationGeoJsonModelPropertiesObject[["identification_taxon_id"]] <-
          self$`identification_taxon_id`
      }
      return(ObservationGeoJsonModelPropertiesObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of ObservationGeoJsonModelProperties
    #'
    #' @param input_json the JSON input
    #' @return the instance of ObservationGeoJsonModelProperties
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`uuid`)) {
        self$`uuid` <- this_object$`uuid`
      }
      if (!is.null(this_object$`received_at`)) {
        self$`received_at` <- this_object$`received_at`
      }
      if (!is.null(this_object$`identification_taxon_id`)) {
        self$`identification_taxon_id` <- this_object$`identification_taxon_id`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ObservationGeoJsonModelProperties in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ObservationGeoJsonModelProperties
    #'
    #' @param input_json the JSON input
    #' @return the instance of ObservationGeoJsonModelProperties
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`uuid` <- this_object$`uuid`
      self$`received_at` <- this_object$`received_at`
      self$`identification_taxon_id` <- this_object$`identification_taxon_id`
      self
    },

    #' @description
    #' Validate JSON input with respect to ObservationGeoJsonModelProperties and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ObservationGeoJsonModelProperties
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
# ObservationGeoJsonModelProperties$unlock()
#
## Below is an example to define the print function
# ObservationGeoJsonModelProperties$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ObservationGeoJsonModelProperties$lock()

