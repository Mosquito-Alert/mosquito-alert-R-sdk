#' Create a new FixLocation
#'
#' @description
#' FixLocation Class
#'
#' @docType class
#' @title FixLocation
#' @description FixLocation Class
#' @format An \code{R6Class} generator object
#' @field latitude Latitude rounded down to nearest 0.025 decimal degree. numeric
#' @field longitude Longitude rounded down to nearest 0.025 decimal degree. numeric
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
FixLocation <- R6::R6Class(
  "FixLocation",
  public = list(
    `latitude` = NULL,
    `longitude` = NULL,

    #' @description
    #' Initialize a new FixLocation class.
    #'
    #' @param latitude Latitude rounded down to nearest 0.025 decimal degree.
    #' @param longitude Longitude rounded down to nearest 0.025 decimal degree.
    #' @param ... Other optional arguments.
    initialize = function(`latitude`, `longitude`, ...) {
      if (!missing(`latitude`)) {
        if (!(is.numeric(`latitude`) && length(`latitude`) == 1)) {
          stop(paste("Error! Invalid data for `latitude`. Must be a number:", `latitude`))
        }
        self$`latitude` <- `latitude`
      }
      if (!missing(`longitude`)) {
        if (!(is.numeric(`longitude`) && length(`longitude`) == 1)) {
          stop(paste("Error! Invalid data for `longitude`. Must be a number:", `longitude`))
        }
        self$`longitude` <- `longitude`
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
    #' @return FixLocation as a base R list.
    #' @examples
    #' # convert array of FixLocation (x) to a data frame
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
    #' Convert FixLocation to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      FixLocationObject <- list()
      if (!is.null(self$`latitude`)) {
        FixLocationObject[["latitude"]] <-
          self$`latitude`
      }
      if (!is.null(self$`longitude`)) {
        FixLocationObject[["longitude"]] <-
          self$`longitude`
      }
      return(FixLocationObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of FixLocation
    #'
    #' @param input_json the JSON input
    #' @return the instance of FixLocation
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`latitude`)) {
        self$`latitude` <- this_object$`latitude`
      }
      if (!is.null(this_object$`longitude`)) {
        self$`longitude` <- this_object$`longitude`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return FixLocation in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of FixLocation
    #'
    #' @param input_json the JSON input
    #' @return the instance of FixLocation
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`latitude` <- this_object$`latitude`
      self$`longitude` <- this_object$`longitude`
      self
    },

    #' @description
    #' Validate JSON input with respect to FixLocation and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `latitude`
      if (!is.null(input_json$`latitude`)) {
        if (!(is.numeric(input_json$`latitude`) && length(input_json$`latitude`) == 1)) {
          stop(paste("Error! Invalid data for `latitude`. Must be a number:", input_json$`latitude`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for FixLocation: the required field `latitude` is missing."))
      }
      # check the required field `longitude`
      if (!is.null(input_json$`longitude`)) {
        if (!(is.numeric(input_json$`longitude`) && length(input_json$`longitude`) == 1)) {
          stop(paste("Error! Invalid data for `longitude`. Must be a number:", input_json$`longitude`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for FixLocation: the required field `longitude` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of FixLocation
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `latitude` is null
      if (is.null(self$`latitude`)) {
        return(FALSE)
      }

      # check if the required `longitude` is null
      if (is.null(self$`longitude`)) {
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
      # check if the required `latitude` is null
      if (is.null(self$`latitude`)) {
        invalid_fields["latitude"] <- "Non-nullable required field `latitude` cannot be null."
      }

      # check if the required `longitude` is null
      if (is.null(self$`longitude`)) {
        invalid_fields["longitude"] <- "Non-nullable required field `longitude` cannot be null."
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
# FixLocation$unlock()
#
## Below is an example to define the print function
# FixLocation$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# FixLocation$lock()

