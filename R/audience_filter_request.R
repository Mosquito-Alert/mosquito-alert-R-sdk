#' Create a new AudienceFilterRequest
#'
#' @description
#' AudienceFilterRequest Class
#'
#' @docType class
#' @title AudienceFilterRequest
#' @description AudienceFilterRequest Class
#' @format An \code{R6Class} generator object
#' @field last_login_before  character [optional]
#' @field last_login_after  character [optional]
#' @field in_area Filter users whose last known location is within the specified area. The area should be provided as a GeoJSON geometry object. \link{AnyType} [optional]
#' @field locale  character [optional]
#' @field notification_topics Filter users subscribed to any of the provided notification topics. list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AudienceFilterRequest <- R6::R6Class(
  "AudienceFilterRequest",
  public = list(
    `last_login_before` = NULL,
    `last_login_after` = NULL,
    `in_area` = NULL,
    `locale` = NULL,
    `notification_topics` = NULL,

    #' @description
    #' Initialize a new AudienceFilterRequest class.
    #'
    #' @param last_login_before last_login_before
    #' @param last_login_after last_login_after
    #' @param in_area Filter users whose last known location is within the specified area. The area should be provided as a GeoJSON geometry object.
    #' @param locale locale
    #' @param notification_topics Filter users subscribed to any of the provided notification topics.
    #' @param ... Other optional arguments.
    initialize = function(`last_login_before` = NULL, `last_login_after` = NULL, `in_area` = NULL, `locale` = NULL, `notification_topics` = NULL, ...) {
      if (!is.null(`last_login_before`)) {
        if (!is.character(`last_login_before`)) {
          stop(paste("Error! Invalid data for `last_login_before`. Must be a string:", `last_login_before`))
        }
        self$`last_login_before` <- `last_login_before`
      }
      if (!is.null(`last_login_after`)) {
        if (!is.character(`last_login_after`)) {
          stop(paste("Error! Invalid data for `last_login_after`. Must be a string:", `last_login_after`))
        }
        self$`last_login_after` <- `last_login_after`
      }
      if (!is.null(`in_area`)) {
        stopifnot(R6::is.R6(`in_area`))
        self$`in_area` <- `in_area`
      }
      if (!is.null(`locale`)) {
        if (!(`locale` %in% c("en", "es", "ca", "eu", "bn", "sv", "de", "sq", "el", "gl", "hu", "pt", "sl", "it", "fr", "bg", "ro", "hr", "mk", "sr", "lb", "nl", "tr", "zh-CN"))) {
          stop(paste("Error! \"", `locale`, "\" cannot be assigned to `locale`. Must be \"en\", \"es\", \"ca\", \"eu\", \"bn\", \"sv\", \"de\", \"sq\", \"el\", \"gl\", \"hu\", \"pt\", \"sl\", \"it\", \"fr\", \"bg\", \"ro\", \"hr\", \"mk\", \"sr\", \"lb\", \"nl\", \"tr\", \"zh-CN\".", sep = ""))
        }
        if (!(is.character(`locale`) && length(`locale`) == 1)) {
          stop(paste("Error! Invalid data for `locale`. Must be a string:", `locale`))
        }
        self$`locale` <- `locale`
      }
      if (!is.null(`notification_topics`)) {
        stopifnot(is.vector(`notification_topics`), length(`notification_topics`) != 0)
        sapply(`notification_topics`, function(x) stopifnot(is.character(x)))
        self$`notification_topics` <- `notification_topics`
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
    #' @return AudienceFilterRequest as a base R list.
    #' @examples
    #' # convert array of AudienceFilterRequest (x) to a data frame
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
    #' Convert AudienceFilterRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AudienceFilterRequestObject <- list()
      if (!is.null(self$`last_login_before`)) {
        AudienceFilterRequestObject[["last_login_before"]] <-
          self$`last_login_before`
      }
      if (!is.null(self$`last_login_after`)) {
        AudienceFilterRequestObject[["last_login_after"]] <-
          self$`last_login_after`
      }
      if (!is.null(self$`in_area`)) {
        AudienceFilterRequestObject[["in_area"]] <-
          self$extractSimpleType(self$`in_area`)
      }
      if (!is.null(self$`locale`)) {
        AudienceFilterRequestObject[["locale"]] <-
          self$`locale`
      }
      if (!is.null(self$`notification_topics`)) {
        AudienceFilterRequestObject[["notification_topics"]] <-
          self$`notification_topics`
      }
      return(AudienceFilterRequestObject)
    },

    extractSimpleType = function(x) {
      if (R6::is.R6(x)) {
        return(x$toSimpleType())
      } else if (!self$hasNestedR6(x)) {
        return(x)
      }
      lapply(x, self$extractSimpleType)
    },

    hasNestedR6 = function(x) {
      if (R6::is.R6(x)) {
        return(TRUE)
      }
      if (is.list(x)) {
        for (item in x) {
          if (self$hasNestedR6(item)) {
            return(TRUE)
          }
        }
      }
      FALSE
    },

    #' @description
    #' Deserialize JSON string into an instance of AudienceFilterRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of AudienceFilterRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`last_login_before`)) {
        self$`last_login_before` <- this_object$`last_login_before`
      }
      if (!is.null(this_object$`last_login_after`)) {
        self$`last_login_after` <- this_object$`last_login_after`
      }
      if (!is.null(this_object$`in_area`)) {
        `in_area_object` <- AnyType$new()
        `in_area_object`$fromJSON(jsonlite::toJSON(this_object$`in_area`, auto_unbox = TRUE, digits = NA))
        self$`in_area` <- `in_area_object`
      }
      if (!is.null(this_object$`locale`)) {
        if (!is.null(this_object$`locale`) && !(this_object$`locale` %in% c("en", "es", "ca", "eu", "bn", "sv", "de", "sq", "el", "gl", "hu", "pt", "sl", "it", "fr", "bg", "ro", "hr", "mk", "sr", "lb", "nl", "tr", "zh-CN"))) {
          stop(paste("Error! \"", this_object$`locale`, "\" cannot be assigned to `locale`. Must be \"en\", \"es\", \"ca\", \"eu\", \"bn\", \"sv\", \"de\", \"sq\", \"el\", \"gl\", \"hu\", \"pt\", \"sl\", \"it\", \"fr\", \"bg\", \"ro\", \"hr\", \"mk\", \"sr\", \"lb\", \"nl\", \"tr\", \"zh-CN\".", sep = ""))
        }
        self$`locale` <- this_object$`locale`
      }
      if (!is.null(this_object$`notification_topics`)) {
        self$`notification_topics` <- ApiClient$new()$deserializeObj(this_object$`notification_topics`, "array[character]", loadNamespace("MosquitoAlert"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return AudienceFilterRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of AudienceFilterRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of AudienceFilterRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`last_login_before` <- this_object$`last_login_before`
      self$`last_login_after` <- this_object$`last_login_after`
      self$`in_area` <- AnyType$new()$fromJSON(jsonlite::toJSON(this_object$`in_area`, auto_unbox = TRUE, digits = NA))
      if (!is.null(this_object$`locale`) && !(this_object$`locale` %in% c("en", "es", "ca", "eu", "bn", "sv", "de", "sq", "el", "gl", "hu", "pt", "sl", "it", "fr", "bg", "ro", "hr", "mk", "sr", "lb", "nl", "tr", "zh-CN"))) {
        stop(paste("Error! \"", this_object$`locale`, "\" cannot be assigned to `locale`. Must be \"en\", \"es\", \"ca\", \"eu\", \"bn\", \"sv\", \"de\", \"sq\", \"el\", \"gl\", \"hu\", \"pt\", \"sl\", \"it\", \"fr\", \"bg\", \"ro\", \"hr\", \"mk\", \"sr\", \"lb\", \"nl\", \"tr\", \"zh-CN\".", sep = ""))
      }
      self$`locale` <- this_object$`locale`
      self$`notification_topics` <- ApiClient$new()$deserializeObj(this_object$`notification_topics`, "array[character]", loadNamespace("MosquitoAlert"))
      self
    },

    #' @description
    #' Validate JSON input with respect to AudienceFilterRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AudienceFilterRequest
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
# AudienceFilterRequest$unlock()
#
## Below is an example to define the print function
# AudienceFilterRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AudienceFilterRequest$lock()

