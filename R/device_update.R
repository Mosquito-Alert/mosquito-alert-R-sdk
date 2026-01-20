#' Create a new DeviceUpdate
#'
#' @description
#' DeviceUpdate Class
#'
#' @docType class
#' @title DeviceUpdate
#' @description DeviceUpdate Class
#' @format An \code{R6Class} generator object
#' @field device_id Unique device identifier character
#' @field name  character [optional]
#' @field type  character
#' @field manufacturer The manufacturer of the device. character
#' @field model The end-user-visible name for the end product. character
#' @field os  \link{DeviceOs}
#' @field mobile_app  \link{MobileApp} [optional]
#' @field user_uuid  character
#' @field last_login  character
#' @field created_at  character
#' @field updated_at  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
DeviceUpdate <- R6::R6Class(
  "DeviceUpdate",
  public = list(
    `device_id` = NULL,
    `name` = NULL,
    `type` = NULL,
    `manufacturer` = NULL,
    `model` = NULL,
    `os` = NULL,
    `mobile_app` = NULL,
    `user_uuid` = NULL,
    `last_login` = NULL,
    `created_at` = NULL,
    `updated_at` = NULL,

    #' @description
    #' Initialize a new DeviceUpdate class.
    #'
    #' @param device_id Unique device identifier
    #' @param type type
    #' @param manufacturer The manufacturer of the device.
    #' @param model The end-user-visible name for the end product.
    #' @param os os
    #' @param user_uuid user_uuid
    #' @param last_login last_login
    #' @param created_at created_at
    #' @param updated_at updated_at
    #' @param name name
    #' @param mobile_app mobile_app
    #' @param ... Other optional arguments.
    initialize = function(`device_id`, `type`, `manufacturer`, `model`, `os`, `user_uuid`, `last_login`, `created_at`, `updated_at`, `name` = NULL, `mobile_app` = NULL, ...) {
      if (!missing(`device_id`)) {
        if (!(is.character(`device_id`) && length(`device_id`) == 1)) {
          stop(paste("Error! Invalid data for `device_id`. Must be a string:", `device_id`))
        }
        self$`device_id` <- `device_id`
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
      if (!missing(`manufacturer`)) {
        if (!(is.character(`manufacturer`) && length(`manufacturer`) == 1)) {
          stop(paste("Error! Invalid data for `manufacturer`. Must be a string:", `manufacturer`))
        }
        self$`manufacturer` <- `manufacturer`
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
      if (!missing(`user_uuid`)) {
        if (!(is.character(`user_uuid`) && length(`user_uuid`) == 1)) {
          stop(paste("Error! Invalid data for `user_uuid`. Must be a string:", `user_uuid`))
        }
        self$`user_uuid` <- `user_uuid`
      }
      if (!missing(`last_login`)) {
        if (!(is.character(`last_login`) && length(`last_login`) == 1)) {
          stop(paste("Error! Invalid data for `last_login`. Must be a string:", `last_login`))
        }
        self$`last_login` <- `last_login`
      }
      if (!missing(`created_at`)) {
        if (!(is.character(`created_at`) && length(`created_at`) == 1)) {
          stop(paste("Error! Invalid data for `created_at`. Must be a string:", `created_at`))
        }
        self$`created_at` <- `created_at`
      }
      if (!missing(`updated_at`)) {
        if (!(is.character(`updated_at`) && length(`updated_at`) == 1)) {
          stop(paste("Error! Invalid data for `updated_at`. Must be a string:", `updated_at`))
        }
        self$`updated_at` <- `updated_at`
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
    #' @return DeviceUpdate as a base R list.
    #' @examples
    #' # convert array of DeviceUpdate (x) to a data frame
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
    #' Convert DeviceUpdate to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      DeviceUpdateObject <- list()
      if (!is.null(self$`device_id`)) {
        DeviceUpdateObject[["device_id"]] <-
          self$`device_id`
      }
      if (!is.null(self$`name`)) {
        DeviceUpdateObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`type`)) {
        DeviceUpdateObject[["type"]] <-
          self$`type`
      }
      if (!is.null(self$`manufacturer`)) {
        DeviceUpdateObject[["manufacturer"]] <-
          self$`manufacturer`
      }
      if (!is.null(self$`model`)) {
        DeviceUpdateObject[["model"]] <-
          self$`model`
      }
      if (!is.null(self$`os`)) {
        DeviceUpdateObject[["os"]] <-
          self$`os`$toSimpleType()
      }
      if (!is.null(self$`mobile_app`)) {
        DeviceUpdateObject[["mobile_app"]] <-
          self$`mobile_app`$toSimpleType()
      }
      if (!is.null(self$`user_uuid`)) {
        DeviceUpdateObject[["user_uuid"]] <-
          self$`user_uuid`
      }
      if (!is.null(self$`last_login`)) {
        DeviceUpdateObject[["last_login"]] <-
          self$`last_login`
      }
      if (!is.null(self$`created_at`)) {
        DeviceUpdateObject[["created_at"]] <-
          self$`created_at`
      }
      if (!is.null(self$`updated_at`)) {
        DeviceUpdateObject[["updated_at"]] <-
          self$`updated_at`
      }
      return(DeviceUpdateObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of DeviceUpdate
    #'
    #' @param input_json the JSON input
    #' @return the instance of DeviceUpdate
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`device_id`)) {
        self$`device_id` <- this_object$`device_id`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
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
        `os_object` <- DeviceOs$new()
        `os_object`$fromJSON(jsonlite::toJSON(this_object$`os`, auto_unbox = TRUE, digits = NA))
        self$`os` <- `os_object`
      }
      if (!is.null(this_object$`mobile_app`)) {
        `mobile_app_object` <- MobileApp$new()
        `mobile_app_object`$fromJSON(jsonlite::toJSON(this_object$`mobile_app`, auto_unbox = TRUE, digits = NA))
        self$`mobile_app` <- `mobile_app_object`
      }
      if (!is.null(this_object$`user_uuid`)) {
        self$`user_uuid` <- this_object$`user_uuid`
      }
      if (!is.null(this_object$`last_login`)) {
        self$`last_login` <- this_object$`last_login`
      }
      if (!is.null(this_object$`created_at`)) {
        self$`created_at` <- this_object$`created_at`
      }
      if (!is.null(this_object$`updated_at`)) {
        self$`updated_at` <- this_object$`updated_at`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return DeviceUpdate in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of DeviceUpdate
    #'
    #' @param input_json the JSON input
    #' @return the instance of DeviceUpdate
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`device_id` <- this_object$`device_id`
      self$`name` <- this_object$`name`
      if (!is.null(this_object$`type`) && !(this_object$`type` %in% c("ios", "android", "web"))) {
        stop(paste("Error! \"", this_object$`type`, "\" cannot be assigned to `type`. Must be \"ios\", \"android\", \"web\".", sep = ""))
      }
      self$`type` <- this_object$`type`
      self$`manufacturer` <- this_object$`manufacturer`
      self$`model` <- this_object$`model`
      self$`os` <- DeviceOs$new()$fromJSON(jsonlite::toJSON(this_object$`os`, auto_unbox = TRUE, digits = NA))
      self$`mobile_app` <- MobileApp$new()$fromJSON(jsonlite::toJSON(this_object$`mobile_app`, auto_unbox = TRUE, digits = NA))
      self$`user_uuid` <- this_object$`user_uuid`
      self$`last_login` <- this_object$`last_login`
      self$`created_at` <- this_object$`created_at`
      self$`updated_at` <- this_object$`updated_at`
      self
    },

    #' @description
    #' Validate JSON input with respect to DeviceUpdate and throw an exception if invalid
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
        stop(paste("The JSON input `", input, "` is invalid for DeviceUpdate: the required field `device_id` is missing."))
      }
      # check the required field `type`
      if (!is.null(input_json$`type`)) {
        if (!(is.character(input_json$`type`) && length(input_json$`type`) == 1)) {
          stop(paste("Error! Invalid data for `type`. Must be a string:", input_json$`type`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for DeviceUpdate: the required field `type` is missing."))
      }
      # check the required field `manufacturer`
      if (!is.null(input_json$`manufacturer`)) {
        if (!(is.character(input_json$`manufacturer`) && length(input_json$`manufacturer`) == 1)) {
          stop(paste("Error! Invalid data for `manufacturer`. Must be a string:", input_json$`manufacturer`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for DeviceUpdate: the required field `manufacturer` is missing."))
      }
      # check the required field `model`
      if (!is.null(input_json$`model`)) {
        if (!(is.character(input_json$`model`) && length(input_json$`model`) == 1)) {
          stop(paste("Error! Invalid data for `model`. Must be a string:", input_json$`model`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for DeviceUpdate: the required field `model` is missing."))
      }
      # check the required field `os`
      if (!is.null(input_json$`os`)) {
        stopifnot(R6::is.R6(input_json$`os`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for DeviceUpdate: the required field `os` is missing."))
      }
      # check the required field `user_uuid`
      if (!is.null(input_json$`user_uuid`)) {
        if (!(is.character(input_json$`user_uuid`) && length(input_json$`user_uuid`) == 1)) {
          stop(paste("Error! Invalid data for `user_uuid`. Must be a string:", input_json$`user_uuid`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for DeviceUpdate: the required field `user_uuid` is missing."))
      }
      # check the required field `last_login`
      if (!is.null(input_json$`last_login`)) {
        if (!(is.character(input_json$`last_login`) && length(input_json$`last_login`) == 1)) {
          stop(paste("Error! Invalid data for `last_login`. Must be a string:", input_json$`last_login`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for DeviceUpdate: the required field `last_login` is missing."))
      }
      # check the required field `created_at`
      if (!is.null(input_json$`created_at`)) {
        if (!(is.character(input_json$`created_at`) && length(input_json$`created_at`) == 1)) {
          stop(paste("Error! Invalid data for `created_at`. Must be a string:", input_json$`created_at`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for DeviceUpdate: the required field `created_at` is missing."))
      }
      # check the required field `updated_at`
      if (!is.null(input_json$`updated_at`)) {
        if (!(is.character(input_json$`updated_at`) && length(input_json$`updated_at`) == 1)) {
          stop(paste("Error! Invalid data for `updated_at`. Must be a string:", input_json$`updated_at`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for DeviceUpdate: the required field `updated_at` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of DeviceUpdate
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

      if (nchar(self$`name`) > 255) {
        return(FALSE)
      }

      # check if the required `type` is null
      if (is.null(self$`type`)) {
        return(FALSE)
      }

      # check if the required `model` is null
      if (is.null(self$`model`)) {
        return(FALSE)
      }

      # check if the required `os` is null
      if (is.null(self$`os`)) {
        return(FALSE)
      }

      # check if the required `user_uuid` is null
      if (is.null(self$`user_uuid`)) {
        return(FALSE)
      }

      # check if the required `created_at` is null
      if (is.null(self$`created_at`)) {
        return(FALSE)
      }

      # check if the required `updated_at` is null
      if (is.null(self$`updated_at`)) {
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

      if (nchar(self$`name`) > 255) {
        invalid_fields["name"] <- "Invalid length for `name`, must be smaller than or equal to 255."
      }

      # check if the required `type` is null
      if (is.null(self$`type`)) {
        invalid_fields["type"] <- "Non-nullable required field `type` cannot be null."
      }

      # check if the required `model` is null
      if (is.null(self$`model`)) {
        invalid_fields["model"] <- "Non-nullable required field `model` cannot be null."
      }

      # check if the required `os` is null
      if (is.null(self$`os`)) {
        invalid_fields["os"] <- "Non-nullable required field `os` cannot be null."
      }

      # check if the required `user_uuid` is null
      if (is.null(self$`user_uuid`)) {
        invalid_fields["user_uuid"] <- "Non-nullable required field `user_uuid` cannot be null."
      }

      # check if the required `created_at` is null
      if (is.null(self$`created_at`)) {
        invalid_fields["created_at"] <- "Non-nullable required field `created_at` cannot be null."
      }

      # check if the required `updated_at` is null
      if (is.null(self$`updated_at`)) {
        invalid_fields["updated_at"] <- "Non-nullable required field `updated_at` cannot be null."
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
# DeviceUpdate$unlock()
#
## Below is an example to define the print function
# DeviceUpdate$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# DeviceUpdate$lock()

