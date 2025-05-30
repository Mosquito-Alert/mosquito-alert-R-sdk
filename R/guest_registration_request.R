#' Create a new GuestRegistrationRequest
#'
#' @description
#' GuestRegistrationRequest Class
#'
#' @docType class
#' @title GuestRegistrationRequest
#' @description GuestRegistrationRequest Class
#' @format An \code{R6Class} generator object
#' @field password  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GuestRegistrationRequest <- R6::R6Class(
  "GuestRegistrationRequest",
  public = list(
    `password` = NULL,

    #' @description
    #' Initialize a new GuestRegistrationRequest class.
    #'
    #' @param password password
    #' @param ... Other optional arguments.
    initialize = function(`password`, ...) {
      if (!missing(`password`)) {
        if (!(is.character(`password`) && length(`password`) == 1)) {
          stop(paste("Error! Invalid data for `password`. Must be a string:", `password`))
        }
        self$`password` <- `password`
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
    #' @return GuestRegistrationRequest as a base R list.
    #' @examples
    #' # convert array of GuestRegistrationRequest (x) to a data frame
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
    #' Convert GuestRegistrationRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      GuestRegistrationRequestObject <- list()
      if (!is.null(self$`password`)) {
        GuestRegistrationRequestObject[["password"]] <-
          self$`password`
      }
      return(GuestRegistrationRequestObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of GuestRegistrationRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of GuestRegistrationRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`password`)) {
        self$`password` <- this_object$`password`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return GuestRegistrationRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of GuestRegistrationRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of GuestRegistrationRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`password` <- this_object$`password`
      self
    },

    #' @description
    #' Validate JSON input with respect to GuestRegistrationRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `password`
      if (!is.null(input_json$`password`)) {
        if (!(is.character(input_json$`password`) && length(input_json$`password`) == 1)) {
          stop(paste("Error! Invalid data for `password`. Must be a string:", input_json$`password`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GuestRegistrationRequest: the required field `password` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of GuestRegistrationRequest
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `password` is null
      if (is.null(self$`password`)) {
        return(FALSE)
      }

      if (nchar(self$`password`) < 8) {
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
      # check if the required `password` is null
      if (is.null(self$`password`)) {
        invalid_fields["password"] <- "Non-nullable required field `password` cannot be null."
      }

      if (nchar(self$`password`) < 8) {
        invalid_fields["password"] <- "Invalid length for `password`, must be bigger than or equal to 8."
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
# GuestRegistrationRequest$unlock()
#
## Below is an example to define the print function
# GuestRegistrationRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# GuestRegistrationRequest$lock()

