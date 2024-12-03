#' Create a new CreateUserRequest
#'
#' @description
#' CreateUserRequest Class
#'
#' @docType class
#' @title CreateUserRequest
#' @description CreateUserRequest Class
#' @format An \code{R6Class} generator object
#' @field locale The locale code representing the language preference selected by the user for displaying the interface text. Enter the locale following the BCP 47 standard in 'language' or 'language-region' format (e.g., 'en' for English, 'en-US' for English (United States), 'fr' for French). The language is a two-letter ISO 639-1 code, and the region is an optional two-letter ISO 3166-1 alpha-2 code. character [optional]
#' @field password  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CreateUserRequest <- R6::R6Class(
  "CreateUserRequest",
  public = list(
    `locale` = NULL,
    `password` = NULL,

    #' @description
    #' Initialize a new CreateUserRequest class.
    #'
    #' @param password password
    #' @param locale The locale code representing the language preference selected by the user for displaying the interface text. Enter the locale following the BCP 47 standard in 'language' or 'language-region' format (e.g., 'en' for English, 'en-US' for English (United States), 'fr' for French). The language is a two-letter ISO 639-1 code, and the region is an optional two-letter ISO 3166-1 alpha-2 code.
    #' @param ... Other optional arguments.
    initialize = function(`password`, `locale` = NULL, ...) {
      if (!missing(`password`)) {
        if (!(is.character(`password`) && length(`password`) == 1)) {
          stop(paste("Error! Invalid data for `password`. Must be a string:", `password`))
        }
        self$`password` <- `password`
      }
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
    #' To JSON String
    #'
    #' @return CreateUserRequest in JSON format
    toJSON = function() {
      CreateUserRequestObject <- list()
      if (!is.null(self$`locale`)) {
        CreateUserRequestObject[["locale"]] <-
          self$`locale`
      }
      if (!is.null(self$`password`)) {
        CreateUserRequestObject[["password"]] <-
          self$`password`
      }
      CreateUserRequestObject
    },

    #' @description
    #' Deserialize JSON string into an instance of CreateUserRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of CreateUserRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`locale`)) {
        if (!is.null(this_object$`locale`) && !(this_object$`locale` %in% c("es", "ca", "eu", "bn", "sv", "en", "de", "sq", "el", "gl", "hu", "pt", "sl", "it", "fr", "bg", "ro", "hr", "mk", "sr", "lb", "nl", "tr", "zh-CN"))) {
          stop(paste("Error! \"", this_object$`locale`, "\" cannot be assigned to `locale`. Must be \"es\", \"ca\", \"eu\", \"bn\", \"sv\", \"en\", \"de\", \"sq\", \"el\", \"gl\", \"hu\", \"pt\", \"sl\", \"it\", \"fr\", \"bg\", \"ro\", \"hr\", \"mk\", \"sr\", \"lb\", \"nl\", \"tr\", \"zh-CN\".", sep = ""))
        }
        self$`locale` <- this_object$`locale`
      }
      if (!is.null(this_object$`password`)) {
        self$`password` <- this_object$`password`
      }
      self
    },

    #' @description
    #' To JSON String
    #'
    #' @return CreateUserRequest in JSON format
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`locale`)) {
          sprintf(
          '"locale":
            "%s"
                    ',
          self$`locale`
          )
        },
        if (!is.null(self$`password`)) {
          sprintf(
          '"password":
            "%s"
                    ',
          self$`password`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },

    #' @description
    #' Deserialize JSON string into an instance of CreateUserRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of CreateUserRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`locale`) && !(this_object$`locale` %in% c("es", "ca", "eu", "bn", "sv", "en", "de", "sq", "el", "gl", "hu", "pt", "sl", "it", "fr", "bg", "ro", "hr", "mk", "sr", "lb", "nl", "tr", "zh-CN"))) {
        stop(paste("Error! \"", this_object$`locale`, "\" cannot be assigned to `locale`. Must be \"es\", \"ca\", \"eu\", \"bn\", \"sv\", \"en\", \"de\", \"sq\", \"el\", \"gl\", \"hu\", \"pt\", \"sl\", \"it\", \"fr\", \"bg\", \"ro\", \"hr\", \"mk\", \"sr\", \"lb\", \"nl\", \"tr\", \"zh-CN\".", sep = ""))
      }
      self$`locale` <- this_object$`locale`
      self$`password` <- this_object$`password`
      self
    },

    #' @description
    #' Validate JSON input with respect to CreateUserRequest and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for CreateUserRequest: the required field `password` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CreateUserRequest
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

      if (nchar(self$`password`) < 1) {
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

      if (nchar(self$`password`) < 1) {
        invalid_fields["password"] <- "Invalid length for `password`, must be bigger than or equal to 1."
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
# CreateUserRequest$unlock()
#
## Below is an example to define the print function
# CreateUserRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CreateUserRequest$lock()

