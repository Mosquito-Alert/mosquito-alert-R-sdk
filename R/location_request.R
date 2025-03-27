#' Create a new LocationRequest
#'
#' @description
#' LocationRequest Class
#'
#' @docType class
#' @title LocationRequest
#' @description LocationRequest Class
#' @format An \code{R6Class} generator object
#' @field source Indicates how the location was obtained. Use 'Auto (GPS)' if the location was automatically retrieved from the device's GPS, or 'Manual (User-selected)' if the location was selected by the user on a map. character
#' @field point  \link{LocationPoint}
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
LocationRequest <- R6::R6Class(
  "LocationRequest",
  public = list(
    `source` = NULL,
    `point` = NULL,

    #' @description
    #' Initialize a new LocationRequest class.
    #'
    #' @param source Indicates how the location was obtained. Use 'Auto (GPS)' if the location was automatically retrieved from the device's GPS, or 'Manual (User-selected)' if the location was selected by the user on a map.
    #' @param point point
    #' @param ... Other optional arguments.
    initialize = function(`source`, `point`, ...) {
      if (!missing(`source`)) {
        if (!(`source` %in% c("auto", "manual"))) {
          stop(paste("Error! \"", `source`, "\" cannot be assigned to `source`. Must be \"auto\", \"manual\".", sep = ""))
        }
        if (!(is.character(`source`) && length(`source`) == 1)) {
          stop(paste("Error! Invalid data for `source`. Must be a string:", `source`))
        }
        self$`source` <- `source`
      }
      if (!missing(`point`)) {
        stopifnot(R6::is.R6(`point`))
        self$`point` <- `point`
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
    #' @return LocationRequest as a base R list.
    #' @examples
    #' # convert array of LocationRequest (x) to a data frame
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
    #' Convert LocationRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      LocationRequestObject <- list()
      if (!is.null(self$`source`)) {
        LocationRequestObject[["source"]] <-
          self$`source`
      }
      if (!is.null(self$`point`)) {
        LocationRequestObject[["point"]] <-
          self$`point`$toSimpleType()
      }
      return(LocationRequestObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of LocationRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of LocationRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`source`)) {
        if (!is.null(this_object$`source`) && !(this_object$`source` %in% c("auto", "manual"))) {
          stop(paste("Error! \"", this_object$`source`, "\" cannot be assigned to `source`. Must be \"auto\", \"manual\".", sep = ""))
        }
        self$`source` <- this_object$`source`
      }
      if (!is.null(this_object$`point`)) {
        `point_object` <- LocationPoint$new()
        `point_object`$fromJSON(jsonlite::toJSON(this_object$`point`, auto_unbox = TRUE, digits = NA))
        self$`point` <- `point_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return LocationRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of LocationRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of LocationRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`source`) && !(this_object$`source` %in% c("auto", "manual"))) {
        stop(paste("Error! \"", this_object$`source`, "\" cannot be assigned to `source`. Must be \"auto\", \"manual\".", sep = ""))
      }
      self$`source` <- this_object$`source`
      self$`point` <- LocationPoint$new()$fromJSON(jsonlite::toJSON(this_object$`point`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to LocationRequest and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for LocationRequest: the required field `source` is missing."))
      }
      # check the required field `point`
      if (!is.null(input_json$`point`)) {
        stopifnot(R6::is.R6(input_json$`point`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for LocationRequest: the required field `point` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of LocationRequest
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `source` is null
      if (is.null(self$`source`)) {
        return(FALSE)
      }

      # check if the required `point` is null
      if (is.null(self$`point`)) {
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
      # check if the required `source` is null
      if (is.null(self$`source`)) {
        invalid_fields["source"] <- "Non-nullable required field `source` cannot be null."
      }

      # check if the required `point` is null
      if (is.null(self$`point`)) {
        invalid_fields["point"] <- "Non-nullable required field `point` cannot be null."
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
# LocationRequest$unlock()
#
## Below is an example to define the print function
# LocationRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# LocationRequest$lock()

