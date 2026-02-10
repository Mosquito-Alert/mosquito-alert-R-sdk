#' Create a new BreedingSiteGeoJsonModelProperties
#'
#' @description
#' BreedingSiteGeoJsonModelProperties Class
#'
#' @docType class
#' @title BreedingSiteGeoJsonModelProperties
#' @description BreedingSiteGeoJsonModelProperties Class
#' @format An \code{R6Class} generator object
#' @field received_at  character [optional]
#' @field site_type  character [optional]
#' @field has_water Either if the user perceived water in the breeding site. character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
BreedingSiteGeoJsonModelProperties <- R6::R6Class(
  "BreedingSiteGeoJsonModelProperties",
  public = list(
    `received_at` = NULL,
    `site_type` = NULL,
    `has_water` = NULL,

    #' @description
    #' Initialize a new BreedingSiteGeoJsonModelProperties class.
    #'
    #' @param received_at received_at
    #' @param site_type site_type
    #' @param has_water Either if the user perceived water in the breeding site.
    #' @param ... Other optional arguments.
    initialize = function(`received_at` = NULL, `site_type` = NULL, `has_water` = NULL, ...) {
      if (!is.null(`received_at`)) {
        if (!is.character(`received_at`)) {
          stop(paste("Error! Invalid data for `received_at`. Must be a string:", `received_at`))
        }
        self$`received_at` <- `received_at`
      }
      if (!is.null(`site_type`)) {
        if (!(`site_type` %in% c("basin", "bucket", "fountain", "small_container", "storm_drain", "well", "other"))) {
          stop(paste("Error! \"", `site_type`, "\" cannot be assigned to `site_type`. Must be \"basin\", \"bucket\", \"fountain\", \"small_container\", \"storm_drain\", \"well\", \"other\".", sep = ""))
        }
        if (!(is.character(`site_type`) && length(`site_type`) == 1)) {
          stop(paste("Error! Invalid data for `site_type`. Must be a string:", `site_type`))
        }
        self$`site_type` <- `site_type`
      }
      if (!is.null(`has_water`)) {
        if (!(is.logical(`has_water`) && length(`has_water`) == 1)) {
          stop(paste("Error! Invalid data for `has_water`. Must be a boolean:", `has_water`))
        }
        self$`has_water` <- `has_water`
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
    #' @return BreedingSiteGeoJsonModelProperties as a base R list.
    #' @examples
    #' # convert array of BreedingSiteGeoJsonModelProperties (x) to a data frame
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
    #' Convert BreedingSiteGeoJsonModelProperties to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      BreedingSiteGeoJsonModelPropertiesObject <- list()
      if (!is.null(self$`received_at`)) {
        BreedingSiteGeoJsonModelPropertiesObject[["received_at"]] <-
          self$`received_at`
      }
      if (!is.null(self$`site_type`)) {
        BreedingSiteGeoJsonModelPropertiesObject[["site_type"]] <-
          self$`site_type`
      }
      if (!is.null(self$`has_water`)) {
        BreedingSiteGeoJsonModelPropertiesObject[["has_water"]] <-
          self$`has_water`
      }
      return(BreedingSiteGeoJsonModelPropertiesObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of BreedingSiteGeoJsonModelProperties
    #'
    #' @param input_json the JSON input
    #' @return the instance of BreedingSiteGeoJsonModelProperties
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`received_at`)) {
        self$`received_at` <- this_object$`received_at`
      }
      if (!is.null(this_object$`site_type`)) {
        if (!is.null(this_object$`site_type`) && !(this_object$`site_type` %in% c("basin", "bucket", "fountain", "small_container", "storm_drain", "well", "other"))) {
          stop(paste("Error! \"", this_object$`site_type`, "\" cannot be assigned to `site_type`. Must be \"basin\", \"bucket\", \"fountain\", \"small_container\", \"storm_drain\", \"well\", \"other\".", sep = ""))
        }
        self$`site_type` <- this_object$`site_type`
      }
      if (!is.null(this_object$`has_water`)) {
        self$`has_water` <- this_object$`has_water`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return BreedingSiteGeoJsonModelProperties in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of BreedingSiteGeoJsonModelProperties
    #'
    #' @param input_json the JSON input
    #' @return the instance of BreedingSiteGeoJsonModelProperties
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`received_at` <- this_object$`received_at`
      if (!is.null(this_object$`site_type`) && !(this_object$`site_type` %in% c("basin", "bucket", "fountain", "small_container", "storm_drain", "well", "other"))) {
        stop(paste("Error! \"", this_object$`site_type`, "\" cannot be assigned to `site_type`. Must be \"basin\", \"bucket\", \"fountain\", \"small_container\", \"storm_drain\", \"well\", \"other\".", sep = ""))
      }
      self$`site_type` <- this_object$`site_type`
      self$`has_water` <- this_object$`has_water`
      self
    },

    #' @description
    #' Validate JSON input with respect to BreedingSiteGeoJsonModelProperties and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of BreedingSiteGeoJsonModelProperties
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
# BreedingSiteGeoJsonModelProperties$unlock()
#
## Below is an example to define the print function
# BreedingSiteGeoJsonModelProperties$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# BreedingSiteGeoJsonModelProperties$lock()

