#' Create a new DeviceUpdateRequest
#'
#' @description
#' DeviceUpdateRequest Class
#'
#' @docType class
#' @title DeviceUpdateRequest
#' @description DeviceUpdateRequest Class
#' @format An \code{R6Class} generator object
#' @field name  character [optional]
#' @field fcm_token  character
#' @field os  \link{DeviceOsRequest}
#' @field mobile_app  \link{MobileAppRequest} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
DeviceUpdateRequest <- R6::R6Class(
  "DeviceUpdateRequest",
  public = list(
    `name` = NULL,
    `fcm_token` = NULL,
    `os` = NULL,
    `mobile_app` = NULL,

    #' @description
    #' Initialize a new DeviceUpdateRequest class.
    #'
    #' @param fcm_token fcm_token
    #' @param os os
    #' @param name name
    #' @param mobile_app mobile_app
    #' @param ... Other optional arguments.
    initialize = function(`fcm_token`, `os`, `name` = NULL, `mobile_app` = NULL, ...) {
      if (!missing(`fcm_token`)) {
        if (!(is.character(`fcm_token`) && length(`fcm_token`) == 1)) {
          stop(paste("Error! Invalid data for `fcm_token`. Must be a string:", `fcm_token`))
        }
        self$`fcm_token` <- `fcm_token`
      }
      if (!missing(`os`)) {
        stopifnot(R6::is.R6(`os`))
        self$`os` <- `os`
      }
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`mobile_app`)) {
        stopifnot(R6::is.R6(`mobile_app`))
        self$`mobile_app` <- `mobile_app`
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
    #' @return DeviceUpdateRequest as a base R list.
    #' @examples
    #' # convert array of DeviceUpdateRequest (x) to a data frame
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
    #' Convert DeviceUpdateRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      DeviceUpdateRequestObject <- list()
      if (!is.null(self$`name`)) {
        DeviceUpdateRequestObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`fcm_token`)) {
        DeviceUpdateRequestObject[["fcm_token"]] <-
          self$`fcm_token`
      }
      if (!is.null(self$`os`)) {
        DeviceUpdateRequestObject[["os"]] <-
          self$`os`$toSimpleType()
      }
      if (!is.null(self$`mobile_app`)) {
        DeviceUpdateRequestObject[["mobile_app"]] <-
          self$`mobile_app`$toSimpleType()
      }
      return(DeviceUpdateRequestObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of DeviceUpdateRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of DeviceUpdateRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`fcm_token`)) {
        self$`fcm_token` <- this_object$`fcm_token`
      }
      if (!is.null(this_object$`os`)) {
        `os_object` <- DeviceOsRequest$new()
        `os_object`$fromJSON(jsonlite::toJSON(this_object$`os`, auto_unbox = TRUE, digits = NA))
        self$`os` <- `os_object`
      }
      if (!is.null(this_object$`mobile_app`)) {
        `mobile_app_object` <- MobileAppRequest$new()
        `mobile_app_object`$fromJSON(jsonlite::toJSON(this_object$`mobile_app`, auto_unbox = TRUE, digits = NA))
        self$`mobile_app` <- `mobile_app_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return DeviceUpdateRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of DeviceUpdateRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of DeviceUpdateRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`name` <- this_object$`name`
      self$`fcm_token` <- this_object$`fcm_token`
      self$`os` <- DeviceOsRequest$new()$fromJSON(jsonlite::toJSON(this_object$`os`, auto_unbox = TRUE, digits = NA))
      self$`mobile_app` <- MobileAppRequest$new()$fromJSON(jsonlite::toJSON(this_object$`mobile_app`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to DeviceUpdateRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `fcm_token`
      if (!is.null(input_json$`fcm_token`)) {
        if (!(is.character(input_json$`fcm_token`) && length(input_json$`fcm_token`) == 1)) {
          stop(paste("Error! Invalid data for `fcm_token`. Must be a string:", input_json$`fcm_token`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for DeviceUpdateRequest: the required field `fcm_token` is missing."))
      }
      # check the required field `os`
      if (!is.null(input_json$`os`)) {
        stopifnot(R6::is.R6(input_json$`os`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for DeviceUpdateRequest: the required field `os` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of DeviceUpdateRequest
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      if (nchar(self$`name`) > 255) {
        return(FALSE)
      }

      # check if the required `fcm_token` is null
      if (is.null(self$`fcm_token`)) {
        return(FALSE)
      }

      if (nchar(self$`fcm_token`) < 1) {
        return(FALSE)
      }

      # check if the required `os` is null
      if (is.null(self$`os`)) {
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
      if (nchar(self$`name`) > 255) {
        invalid_fields["name"] <- "Invalid length for `name`, must be smaller than or equal to 255."
      }

      # check if the required `fcm_token` is null
      if (is.null(self$`fcm_token`)) {
        invalid_fields["fcm_token"] <- "Non-nullable required field `fcm_token` cannot be null."
      }

      if (nchar(self$`fcm_token`) < 1) {
        invalid_fields["fcm_token"] <- "Invalid length for `fcm_token`, must be bigger than or equal to 1."
      }

      # check if the required `os` is null
      if (is.null(self$`os`)) {
        invalid_fields["os"] <- "Non-nullable required field `os` cannot be null."
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
# DeviceUpdateRequest$unlock()
#
## Below is an example to define the print function
# DeviceUpdateRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# DeviceUpdateRequest$lock()

