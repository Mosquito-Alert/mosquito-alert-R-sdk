#' Create a new BoundingBoxRequest
#'
#' @description
#' BoundingBoxRequest Class
#'
#' @docType class
#' @title BoundingBoxRequest
#' @description BoundingBoxRequest Class
#' @format An \code{R6Class} generator object
#' @field x_min photo bounding box relative coordinates top left x numeric
#' @field y_min photo bounding box relative coordinates top left y numeric
#' @field x_max photo bounding box relative coordinates bottom right x numeric
#' @field y_max photo bounding box relative coordinates bottom right y numeric
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
BoundingBoxRequest <- R6::R6Class(
  "BoundingBoxRequest",
  public = list(
    `x_min` = NULL,
    `y_min` = NULL,
    `x_max` = NULL,
    `y_max` = NULL,

    #' @description
    #' Initialize a new BoundingBoxRequest class.
    #'
    #' @param x_min photo bounding box relative coordinates top left x
    #' @param y_min photo bounding box relative coordinates top left y
    #' @param x_max photo bounding box relative coordinates bottom right x
    #' @param y_max photo bounding box relative coordinates bottom right y
    #' @param ... Other optional arguments.
    initialize = function(`x_min`, `y_min`, `x_max`, `y_max`, ...) {
      if (!missing(`x_min`)) {
        if (!(is.numeric(`x_min`) && length(`x_min`) == 1)) {
          stop(paste("Error! Invalid data for `x_min`. Must be a number:", `x_min`))
        }
        self$`x_min` <- `x_min`
      }
      if (!missing(`y_min`)) {
        if (!(is.numeric(`y_min`) && length(`y_min`) == 1)) {
          stop(paste("Error! Invalid data for `y_min`. Must be a number:", `y_min`))
        }
        self$`y_min` <- `y_min`
      }
      if (!missing(`x_max`)) {
        if (!(is.numeric(`x_max`) && length(`x_max`) == 1)) {
          stop(paste("Error! Invalid data for `x_max`. Must be a number:", `x_max`))
        }
        self$`x_max` <- `x_max`
      }
      if (!missing(`y_max`)) {
        if (!(is.numeric(`y_max`) && length(`y_max`) == 1)) {
          stop(paste("Error! Invalid data for `y_max`. Must be a number:", `y_max`))
        }
        self$`y_max` <- `y_max`
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
    #' @return BoundingBoxRequest as a base R list.
    #' @examples
    #' # convert array of BoundingBoxRequest (x) to a data frame
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
    #' Convert BoundingBoxRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      BoundingBoxRequestObject <- list()
      if (!is.null(self$`x_min`)) {
        BoundingBoxRequestObject[["x_min"]] <-
          self$`x_min`
      }
      if (!is.null(self$`y_min`)) {
        BoundingBoxRequestObject[["y_min"]] <-
          self$`y_min`
      }
      if (!is.null(self$`x_max`)) {
        BoundingBoxRequestObject[["x_max"]] <-
          self$`x_max`
      }
      if (!is.null(self$`y_max`)) {
        BoundingBoxRequestObject[["y_max"]] <-
          self$`y_max`
      }
      return(BoundingBoxRequestObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of BoundingBoxRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of BoundingBoxRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`x_min`)) {
        self$`x_min` <- this_object$`x_min`
      }
      if (!is.null(this_object$`y_min`)) {
        self$`y_min` <- this_object$`y_min`
      }
      if (!is.null(this_object$`x_max`)) {
        self$`x_max` <- this_object$`x_max`
      }
      if (!is.null(this_object$`y_max`)) {
        self$`y_max` <- this_object$`y_max`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return BoundingBoxRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of BoundingBoxRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of BoundingBoxRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`x_min` <- this_object$`x_min`
      self$`y_min` <- this_object$`y_min`
      self$`x_max` <- this_object$`x_max`
      self$`y_max` <- this_object$`y_max`
      self
    },

    #' @description
    #' Validate JSON input with respect to BoundingBoxRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `x_min`
      if (!is.null(input_json$`x_min`)) {
        if (!(is.numeric(input_json$`x_min`) && length(input_json$`x_min`) == 1)) {
          stop(paste("Error! Invalid data for `x_min`. Must be a number:", input_json$`x_min`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for BoundingBoxRequest: the required field `x_min` is missing."))
      }
      # check the required field `y_min`
      if (!is.null(input_json$`y_min`)) {
        if (!(is.numeric(input_json$`y_min`) && length(input_json$`y_min`) == 1)) {
          stop(paste("Error! Invalid data for `y_min`. Must be a number:", input_json$`y_min`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for BoundingBoxRequest: the required field `y_min` is missing."))
      }
      # check the required field `x_max`
      if (!is.null(input_json$`x_max`)) {
        if (!(is.numeric(input_json$`x_max`) && length(input_json$`x_max`) == 1)) {
          stop(paste("Error! Invalid data for `x_max`. Must be a number:", input_json$`x_max`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for BoundingBoxRequest: the required field `x_max` is missing."))
      }
      # check the required field `y_max`
      if (!is.null(input_json$`y_max`)) {
        if (!(is.numeric(input_json$`y_max`) && length(input_json$`y_max`) == 1)) {
          stop(paste("Error! Invalid data for `y_max`. Must be a number:", input_json$`y_max`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for BoundingBoxRequest: the required field `y_max` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of BoundingBoxRequest
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `x_min` is null
      if (is.null(self$`x_min`)) {
        return(FALSE)
      }

      if (self$`x_min` > 1.0) {
        return(FALSE)
      }
      if (self$`x_min` < 0.0) {
        return(FALSE)
      }

      # check if the required `y_min` is null
      if (is.null(self$`y_min`)) {
        return(FALSE)
      }

      if (self$`y_min` > 1.0) {
        return(FALSE)
      }
      if (self$`y_min` < 0.0) {
        return(FALSE)
      }

      # check if the required `x_max` is null
      if (is.null(self$`x_max`)) {
        return(FALSE)
      }

      if (self$`x_max` > 1.0) {
        return(FALSE)
      }
      if (self$`x_max` < 0.0) {
        return(FALSE)
      }

      # check if the required `y_max` is null
      if (is.null(self$`y_max`)) {
        return(FALSE)
      }

      if (self$`y_max` > 1.0) {
        return(FALSE)
      }
      if (self$`y_max` < 0.0) {
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
      # check if the required `x_min` is null
      if (is.null(self$`x_min`)) {
        invalid_fields["x_min"] <- "Non-nullable required field `x_min` cannot be null."
      }

      if (self$`x_min` > 1.0) {
        invalid_fields["x_min"] <- "Invalid value for `x_min`, must be smaller than or equal to 1.0."
      }
      if (self$`x_min` < 0.0) {
        invalid_fields["x_min"] <- "Invalid value for `x_min`, must be bigger than or equal to 0.0."
      }

      # check if the required `y_min` is null
      if (is.null(self$`y_min`)) {
        invalid_fields["y_min"] <- "Non-nullable required field `y_min` cannot be null."
      }

      if (self$`y_min` > 1.0) {
        invalid_fields["y_min"] <- "Invalid value for `y_min`, must be smaller than or equal to 1.0."
      }
      if (self$`y_min` < 0.0) {
        invalid_fields["y_min"] <- "Invalid value for `y_min`, must be bigger than or equal to 0.0."
      }

      # check if the required `x_max` is null
      if (is.null(self$`x_max`)) {
        invalid_fields["x_max"] <- "Non-nullable required field `x_max` cannot be null."
      }

      if (self$`x_max` > 1.0) {
        invalid_fields["x_max"] <- "Invalid value for `x_max`, must be smaller than or equal to 1.0."
      }
      if (self$`x_max` < 0.0) {
        invalid_fields["x_max"] <- "Invalid value for `x_max`, must be bigger than or equal to 0.0."
      }

      # check if the required `y_max` is null
      if (is.null(self$`y_max`)) {
        invalid_fields["y_max"] <- "Non-nullable required field `y_max` cannot be null."
      }

      if (self$`y_max` > 1.0) {
        invalid_fields["y_max"] <- "Invalid value for `y_max`, must be smaller than or equal to 1.0."
      }
      if (self$`y_max` < 0.0) {
        invalid_fields["y_max"] <- "Invalid value for `y_max`, must be bigger than or equal to 0.0."
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
# BoundingBoxRequest$unlock()
#
## Below is an example to define the print function
# BoundingBoxRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# BoundingBoxRequest$lock()

