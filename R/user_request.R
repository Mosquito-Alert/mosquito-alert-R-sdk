#' Create a new UserRequest
#'
#' @description
#' UserRequest Class
#'
#' @docType class
#' @title UserRequest
#' @description UserRequest Class
#' @format An \code{R6Class} generator object
#' @field locale The locale code representing the language preference selected by the user for displaying the interface text. Enter the locale following the BCP 47 standard in 'language' or 'language-region' format (e.g., 'en' for English, 'en-US' for English (United States), 'fr' for French). The language is a two-letter ISO 639-1 code, and the region is an optional two-letter ISO 3166-1 alpha-2 code. character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
UserRequest <- R6::R6Class(
  "UserRequest",
  public = list(
    `locale` = NULL,

    #' @description
    #' Initialize a new UserRequest class.
    #'
    #' @param locale The locale code representing the language preference selected by the user for displaying the interface text. Enter the locale following the BCP 47 standard in 'language' or 'language-region' format (e.g., 'en' for English, 'en-US' for English (United States), 'fr' for French). The language is a two-letter ISO 639-1 code, and the region is an optional two-letter ISO 3166-1 alpha-2 code.. Default to "en".
    #' @param ... Other optional arguments.
    initialize = function(`locale` = "en", ...) {
      if (!is.null(`locale`)) {
        if (!(`locale` %in% c("es", "ca", "eu", "bn", "sv", "en", "de", "sq", "el", "gl", "hu", "pt", "sl", "it", "fr", "bg", "ro", "hr", "mk", "sr", "lb", "nl", "tr", "zh-CN"))) {
          stop(paste("Error! \"", `locale`, "\" cannot be assigned to `locale`. Must be \"es\", \"ca\", \"eu\", \"bn\", \"sv\", \"en\", \"de\", \"sq\", \"el\", \"gl\", \"hu\", \"pt\", \"sl\", \"it\", \"fr\", \"bg\", \"ro\", \"hr\", \"mk\", \"sr\", \"lb\", \"nl\", \"tr\", \"zh-CN\".", sep = ""))
        }
        if (!(is.character(`locale`) && length(`locale`) == 1)) {
          stop(paste("Error! Invalid data for `locale`. Must be a string:", `locale`))
        }
        self$`locale` <- `locale`
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
    #' @return UserRequest as a base R list.
    #' @examples
    #' # convert array of UserRequest (x) to a data frame
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
    #' Convert UserRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      UserRequestObject <- list()
      if (!is.null(self$`locale`)) {
        UserRequestObject[["locale"]] <-
          self$`locale`
      }
      return(UserRequestObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of UserRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of UserRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`locale`)) {
        if (!is.null(this_object$`locale`) && !(this_object$`locale` %in% c("es", "ca", "eu", "bn", "sv", "en", "de", "sq", "el", "gl", "hu", "pt", "sl", "it", "fr", "bg", "ro", "hr", "mk", "sr", "lb", "nl", "tr", "zh-CN"))) {
          stop(paste("Error! \"", this_object$`locale`, "\" cannot be assigned to `locale`. Must be \"es\", \"ca\", \"eu\", \"bn\", \"sv\", \"en\", \"de\", \"sq\", \"el\", \"gl\", \"hu\", \"pt\", \"sl\", \"it\", \"fr\", \"bg\", \"ro\", \"hr\", \"mk\", \"sr\", \"lb\", \"nl\", \"tr\", \"zh-CN\".", sep = ""))
        }
        self$`locale` <- this_object$`locale`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return UserRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of UserRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of UserRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`locale`) && !(this_object$`locale` %in% c("es", "ca", "eu", "bn", "sv", "en", "de", "sq", "el", "gl", "hu", "pt", "sl", "it", "fr", "bg", "ro", "hr", "mk", "sr", "lb", "nl", "tr", "zh-CN"))) {
        stop(paste("Error! \"", this_object$`locale`, "\" cannot be assigned to `locale`. Must be \"es\", \"ca\", \"eu\", \"bn\", \"sv\", \"en\", \"de\", \"sq\", \"el\", \"gl\", \"hu\", \"pt\", \"sl\", \"it\", \"fr\", \"bg\", \"ro\", \"hr\", \"mk\", \"sr\", \"lb\", \"nl\", \"tr\", \"zh-CN\".", sep = ""))
      }
      self$`locale` <- this_object$`locale`
      self
    },

    #' @description
    #' Validate JSON input with respect to UserRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of UserRequest
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
# UserRequest$unlock()
#
## Below is an example to define the print function
# UserRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# UserRequest$lock()

