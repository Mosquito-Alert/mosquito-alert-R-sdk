#' Create a new CountryRequest
#'
#' @description
#' CountryRequest Class
#'
#' @docType class
#' @title CountryRequest
#' @description CountryRequest Class
#' @format An \code{R6Class} generator object
#' @field name_en Full name of the country in English (e.g., Spain). character
#' @field iso3_code ISO 3166-1 alpha-3 country code (3-letter code, e.g., ESP). character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CountryRequest <- R6::R6Class(
  "CountryRequest",
  public = list(
    `name_en` = NULL,
    `iso3_code` = NULL,

    #' @description
    #' Initialize a new CountryRequest class.
    #'
    #' @param name_en Full name of the country in English (e.g., Spain).
    #' @param iso3_code ISO 3166-1 alpha-3 country code (3-letter code, e.g., ESP).
    #' @param ... Other optional arguments.
    initialize = function(`name_en`, `iso3_code`, ...) {
      if (!missing(`name_en`)) {
        if (!(is.character(`name_en`) && length(`name_en`) == 1)) {
          stop(paste("Error! Invalid data for `name_en`. Must be a string:", `name_en`))
        }
        self$`name_en` <- `name_en`
      }
      if (!missing(`iso3_code`)) {
        if (!(is.character(`iso3_code`) && length(`iso3_code`) == 1)) {
          stop(paste("Error! Invalid data for `iso3_code`. Must be a string:", `iso3_code`))
        }
        self$`iso3_code` <- `iso3_code`
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
    #' @return CountryRequest as a base R list.
    #' @examples
    #' # convert array of CountryRequest (x) to a data frame
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
    #' Convert CountryRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      CountryRequestObject <- list()
      if (!is.null(self$`name_en`)) {
        CountryRequestObject[["name_en"]] <-
          self$`name_en`
      }
      if (!is.null(self$`iso3_code`)) {
        CountryRequestObject[["iso3_code"]] <-
          self$`iso3_code`
      }
      return(CountryRequestObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of CountryRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of CountryRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`name_en`)) {
        self$`name_en` <- this_object$`name_en`
      }
      if (!is.null(this_object$`iso3_code`)) {
        self$`iso3_code` <- this_object$`iso3_code`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return CountryRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of CountryRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of CountryRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`name_en` <- this_object$`name_en`
      self$`iso3_code` <- this_object$`iso3_code`
      self
    },

    #' @description
    #' Validate JSON input with respect to CountryRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `name_en`
      if (!is.null(input_json$`name_en`)) {
        if (!(is.character(input_json$`name_en`) && length(input_json$`name_en`) == 1)) {
          stop(paste("Error! Invalid data for `name_en`. Must be a string:", input_json$`name_en`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CountryRequest: the required field `name_en` is missing."))
      }
      # check the required field `iso3_code`
      if (!is.null(input_json$`iso3_code`)) {
        if (!(is.character(input_json$`iso3_code`) && length(input_json$`iso3_code`) == 1)) {
          stop(paste("Error! Invalid data for `iso3_code`. Must be a string:", input_json$`iso3_code`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for CountryRequest: the required field `iso3_code` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CountryRequest
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `name_en` is null
      if (is.null(self$`name_en`)) {
        return(FALSE)
      }

      if (nchar(self$`name_en`) > 44) {
        return(FALSE)
      }
      if (nchar(self$`name_en`) < 1) {
        return(FALSE)
      }

      # check if the required `iso3_code` is null
      if (is.null(self$`iso3_code`)) {
        return(FALSE)
      }

      if (nchar(self$`iso3_code`) > 3) {
        return(FALSE)
      }
      if (nchar(self$`iso3_code`) < 1) {
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
      # check if the required `name_en` is null
      if (is.null(self$`name_en`)) {
        invalid_fields["name_en"] <- "Non-nullable required field `name_en` cannot be null."
      }

      if (nchar(self$`name_en`) > 44) {
        invalid_fields["name_en"] <- "Invalid length for `name_en`, must be smaller than or equal to 44."
      }
      if (nchar(self$`name_en`) < 1) {
        invalid_fields["name_en"] <- "Invalid length for `name_en`, must be bigger than or equal to 1."
      }

      # check if the required `iso3_code` is null
      if (is.null(self$`iso3_code`)) {
        invalid_fields["iso3_code"] <- "Non-nullable required field `iso3_code` cannot be null."
      }

      if (nchar(self$`iso3_code`) > 3) {
        invalid_fields["iso3_code"] <- "Invalid length for `iso3_code`, must be smaller than or equal to 3."
      }
      if (nchar(self$`iso3_code`) < 1) {
        invalid_fields["iso3_code"] <- "Invalid length for `iso3_code`, must be bigger than or equal to 1."
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
# CountryRequest$unlock()
#
## Below is an example to define the print function
# CountryRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CountryRequest$lock()

