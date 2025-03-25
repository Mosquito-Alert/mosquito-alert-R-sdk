#' Create a new NutsAdmBoundaries
#'
#' @description
#' NutsAdmBoundaries Class
#'
#' @docType class
#' @title NutsAdmBoundaries
#' @description NutsAdmBoundaries Class
#' @format An \code{R6Class} generator object
#' @field nuts2 Basic regions for economic applications (e.g., Spanish autonomous communities). character
#' @field nuts3 Small regions for specific analyses (e.g., French départements). character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
NutsAdmBoundaries <- R6::R6Class(
  "NutsAdmBoundaries",
  public = list(
    `nuts2` = NULL,
    `nuts3` = NULL,

    #' @description
    #' Initialize a new NutsAdmBoundaries class.
    #'
    #' @param nuts2 Basic regions for economic applications (e.g., Spanish autonomous communities).
    #' @param nuts3 Small regions for specific analyses (e.g., French départements).
    #' @param ... Other optional arguments.
    initialize = function(`nuts2`, `nuts3`, ...) {
      if (!missing(`nuts2`)) {
        if (!(is.character(`nuts2`) && length(`nuts2`) == 1)) {
          stop(paste("Error! Invalid data for `nuts2`. Must be a string:", `nuts2`))
        }
        self$`nuts2` <- `nuts2`
      }
      if (!missing(`nuts3`)) {
        if (!(is.character(`nuts3`) && length(`nuts3`) == 1)) {
          stop(paste("Error! Invalid data for `nuts3`. Must be a string:", `nuts3`))
        }
        self$`nuts3` <- `nuts3`
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
    #' @return NutsAdmBoundaries as a base R list.
    #' @examples
    #' # convert array of NutsAdmBoundaries (x) to a data frame
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
    #' Convert NutsAdmBoundaries to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      NutsAdmBoundariesObject <- list()
      if (!is.null(self$`nuts2`)) {
        NutsAdmBoundariesObject[["nuts2"]] <-
          self$`nuts2`
      }
      if (!is.null(self$`nuts3`)) {
        NutsAdmBoundariesObject[["nuts3"]] <-
          self$`nuts3`
      }
      return(NutsAdmBoundariesObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of NutsAdmBoundaries
    #'
    #' @param input_json the JSON input
    #' @return the instance of NutsAdmBoundaries
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`nuts2`)) {
        self$`nuts2` <- this_object$`nuts2`
      }
      if (!is.null(this_object$`nuts3`)) {
        self$`nuts3` <- this_object$`nuts3`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return NutsAdmBoundaries in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of NutsAdmBoundaries
    #'
    #' @param input_json the JSON input
    #' @return the instance of NutsAdmBoundaries
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`nuts2` <- this_object$`nuts2`
      self$`nuts3` <- this_object$`nuts3`
      self
    },

    #' @description
    #' Validate JSON input with respect to NutsAdmBoundaries and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `nuts2`
      if (!is.null(input_json$`nuts2`)) {
        if (!(is.character(input_json$`nuts2`) && length(input_json$`nuts2`) == 1)) {
          stop(paste("Error! Invalid data for `nuts2`. Must be a string:", input_json$`nuts2`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for NutsAdmBoundaries: the required field `nuts2` is missing."))
      }
      # check the required field `nuts3`
      if (!is.null(input_json$`nuts3`)) {
        if (!(is.character(input_json$`nuts3`) && length(input_json$`nuts3`) == 1)) {
          stop(paste("Error! Invalid data for `nuts3`. Must be a string:", input_json$`nuts3`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for NutsAdmBoundaries: the required field `nuts3` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of NutsAdmBoundaries
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `nuts2` is null
      if (is.null(self$`nuts2`)) {
        return(FALSE)
      }

      if (nchar(self$`nuts2`) > 4) {
        return(FALSE)
      }

      # check if the required `nuts3` is null
      if (is.null(self$`nuts3`)) {
        return(FALSE)
      }

      if (nchar(self$`nuts3`) > 5) {
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
      # check if the required `nuts2` is null
      if (is.null(self$`nuts2`)) {
        invalid_fields["nuts2"] <- "Non-nullable required field `nuts2` cannot be null."
      }

      if (nchar(self$`nuts2`) > 4) {
        invalid_fields["nuts2"] <- "Invalid length for `nuts2`, must be smaller than or equal to 4."
      }

      # check if the required `nuts3` is null
      if (is.null(self$`nuts3`)) {
        invalid_fields["nuts3"] <- "Non-nullable required field `nuts3` cannot be null."
      }

      if (nchar(self$`nuts3`) > 5) {
        invalid_fields["nuts3"] <- "Invalid length for `nuts3`, must be smaller than or equal to 5."
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
# NutsAdmBoundaries$unlock()
#
## Below is an example to define the print function
# NutsAdmBoundaries$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# NutsAdmBoundaries$lock()

