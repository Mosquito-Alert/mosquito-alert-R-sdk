#' Create a new DeviceRequest
#'
#' @description
#' DeviceRequest Class
#'
#' @docType class
#' @title DeviceRequest
#' @description DeviceRequest Class
#' @format An \code{R6Class} generator object
#' @field device_id Unique device identifier character
#' @field name  character [optional]
#' @field fcm_token  character
#' @field type  character
#' @field manufacturer The manufacturer of the device. character [optional]
#' @field model The end-user-visible name for the end product. character
#' @field os  \link{DeviceOsRequest}
#' @field mobile_app  \link{MobileAppRequest} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
DeviceRequest <- R6::R6Class(
  "DeviceRequest",
  public = list(
    `device_id` = NULL,
    `name` = NULL,
    `fcm_token` = NULL,
    `type` = NULL,
    `manufacturer` = NULL,
    `model` = NULL,
    `os` = NULL,
    `mobile_app` = NULL,

    #' @description
    #' Initialize a new DeviceRequest class.
    #'
    #' @param device_id Unique device identifier
    #' @param fcm_token fcm_token
    #' @param type type
    #' @param model The end-user-visible name for the end product.
    #' @param os os
    #' @param name name
    #' @param manufacturer The manufacturer of the device.
    #' @param mobile_app mobile_app
    #' @param ... Other optional arguments.
    initialize = function(`device_id`, `fcm_token`, `type`, `model`, `os`, `name` = NULL, `manufacturer` = NULL, `mobile_app` = NULL, ...) {
      if (!missing(`device_id`)) {
        if (!(is.character(`device_id`) && length(`device_id`) == 1)) {
          stop(paste("Error! Invalid data for `device_id`. Must be a string:", `device_id`))
        }
        self$`device_id` <- `device_id`
      }
      if (!missing(`fcm_token`)) {
        if (!(is.character(`fcm_token`) && length(`fcm_token`) == 1)) {
          stop(paste("Error! Invalid data for `fcm_token`. Must be a string:", `fcm_token`))
        }
        self$`fcm_token` <- `fcm_token`
      }
      if (!missing(`type`)) {
        if (!(`type` %in% c("ios", "android", "web"))) {
          stop(paste("Error! \"", `type`, "\" cannot be assigned to `type`. Must be \"ios\", \"android\", \"web\".", sep = ""))
        }
        if (!(is.character(`type`) && length(`type`) == 1)) {
          stop(paste("Error! Invalid data for `type`. Must be a string:", `type`))
        }
        self$`type` <- `type`
      }
      if (!missing(`model`)) {
        if (!(is.character(`model`) && length(`model`) == 1)) {
          stop(paste("Error! Invalid data for `model`. Must be a string:", `model`))
        }
        self$`model` <- `model`
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
      if (!is.null(`manufacturer`)) {
        if (!(is.character(`manufacturer`) && length(`manufacturer`) == 1)) {
          stop(paste("Error! Invalid data for `manufacturer`. Must be a string:", `manufacturer`))
        }
        self$`manufacturer` <- `manufacturer`
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
    #' @return DeviceRequest as a base R list.
    #' @examples
    #' # convert array of DeviceRequest (x) to a data frame
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
    #' Convert DeviceRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      DeviceRequestObject <- list()
      if (!is.null(self$`device_id`)) {
        DeviceRequestObject[["device_id"]] <-
          self$`device_id`
      }
      if (!is.null(self$`name`)) {
        DeviceRequestObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`fcm_token`)) {
        DeviceRequestObject[["fcm_token"]] <-
          self$`fcm_token`
      }
      if (!is.null(self$`type`)) {
        DeviceRequestObject[["type"]] <-
          self$`type`
      }
      if (!is.null(self$`manufacturer`)) {
        DeviceRequestObject[["manufacturer"]] <-
          self$`manufacturer`
      }
      if (!is.null(self$`model`)) {
        DeviceRequestObject[["model"]] <-
          self$`model`
      }
      if (!is.null(self$`os`)) {
        DeviceRequestObject[["os"]] <-
          self$`os`$toSimpleType()
      }
      if (!is.null(self$`mobile_app`)) {
        DeviceRequestObject[["mobile_app"]] <-
          self$`mobile_app`$toSimpleType()
      }
      return(DeviceRequestObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of DeviceRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of DeviceRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`device_id`)) {
        self$`device_id` <- this_object$`device_id`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`fcm_token`)) {
        self$`fcm_token` <- this_object$`fcm_token`
      }
      if (!is.null(this_object$`type`)) {
        if (!is.null(this_object$`type`) && !(this_object$`type` %in% c("ios", "android", "web"))) {
          stop(paste("Error! \"", this_object$`type`, "\" cannot be assigned to `type`. Must be \"ios\", \"android\", \"web\".", sep = ""))
        }
        self$`type` <- this_object$`type`
      }
      if (!is.null(this_object$`manufacturer`)) {
        self$`manufacturer` <- this_object$`manufacturer`
      }
      if (!is.null(this_object$`model`)) {
        self$`model` <- this_object$`model`
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
    #' @return DeviceRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of DeviceRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of DeviceRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`device_id` <- this_object$`device_id`
      self$`name` <- this_object$`name`
      self$`fcm_token` <- this_object$`fcm_token`
      if (!is.null(this_object$`type`) && !(this_object$`type` %in% c("ios", "android", "web"))) {
        stop(paste("Error! \"", this_object$`type`, "\" cannot be assigned to `type`. Must be \"ios\", \"android\", \"web\".", sep = ""))
      }
      self$`type` <- this_object$`type`
      self$`manufacturer` <- this_object$`manufacturer`
      self$`model` <- this_object$`model`
      self$`os` <- DeviceOsRequest$new()$fromJSON(jsonlite::toJSON(this_object$`os`, auto_unbox = TRUE, digits = NA))
      self$`mobile_app` <- MobileAppRequest$new()$fromJSON(jsonlite::toJSON(this_object$`mobile_app`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to DeviceRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `device_id`
      if (!is.null(input_json$`device_id`)) {
        if (!(is.character(input_json$`device_id`) && length(input_json$`device_id`) == 1)) {
          stop(paste("Error! Invalid data for `device_id`. Must be a string:", input_json$`device_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for DeviceRequest: the required field `device_id` is missing."))
      }
      # check the required field `fcm_token`
      if (!is.null(input_json$`fcm_token`)) {
        if (!(is.character(input_json$`fcm_token`) && length(input_json$`fcm_token`) == 1)) {
          stop(paste("Error! Invalid data for `fcm_token`. Must be a string:", input_json$`fcm_token`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for DeviceRequest: the required field `fcm_token` is missing."))
      }
      # check the required field `type`
      if (!is.null(input_json$`type`)) {
        if (!(is.character(input_json$`type`) && length(input_json$`type`) == 1)) {
          stop(paste("Error! Invalid data for `type`. Must be a string:", input_json$`type`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for DeviceRequest: the required field `type` is missing."))
      }
      # check the required field `model`
      if (!is.null(input_json$`model`)) {
        if (!(is.character(input_json$`model`) && length(input_json$`model`) == 1)) {
          stop(paste("Error! Invalid data for `model`. Must be a string:", input_json$`model`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for DeviceRequest: the required field `model` is missing."))
      }
      # check the required field `os`
      if (!is.null(input_json$`os`)) {
        stopifnot(R6::is.R6(input_json$`os`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for DeviceRequest: the required field `os` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of DeviceRequest
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `device_id` is null
      if (is.null(self$`device_id`)) {
        return(FALSE)
      }

      if (nchar(self$`device_id`) > 255) {
        return(FALSE)
      }
      if (nchar(self$`device_id`) < 1) {
        return(FALSE)
      }

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

      # check if the required `type` is null
      if (is.null(self$`type`)) {
        return(FALSE)
      }

      if (nchar(self$`manufacturer`) > 128) {
        return(FALSE)
      }

      # check if the required `model` is null
      if (is.null(self$`model`)) {
        return(FALSE)
      }

      if (nchar(self$`model`) > 128) {
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
      # check if the required `device_id` is null
      if (is.null(self$`device_id`)) {
        invalid_fields["device_id"] <- "Non-nullable required field `device_id` cannot be null."
      }

      if (nchar(self$`device_id`) > 255) {
        invalid_fields["device_id"] <- "Invalid length for `device_id`, must be smaller than or equal to 255."
      }
      if (nchar(self$`device_id`) < 1) {
        invalid_fields["device_id"] <- "Invalid length for `device_id`, must be bigger than or equal to 1."
      }

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

      # check if the required `type` is null
      if (is.null(self$`type`)) {
        invalid_fields["type"] <- "Non-nullable required field `type` cannot be null."
      }

      if (nchar(self$`manufacturer`) > 128) {
        invalid_fields["manufacturer"] <- "Invalid length for `manufacturer`, must be smaller than or equal to 128."
      }

      # check if the required `model` is null
      if (is.null(self$`model`)) {
        invalid_fields["model"] <- "Non-nullable required field `model` cannot be null."
      }

      if (nchar(self$`model`) > 128) {
        invalid_fields["model"] <- "Invalid length for `model`, must be smaller than or equal to 128."
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
# DeviceRequest$unlock()
#
## Below is an example to define the print function
# DeviceRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# DeviceRequest$lock()

