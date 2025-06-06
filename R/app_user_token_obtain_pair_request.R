#' Create a new AppUserTokenObtainPairRequest
#'
#' @description
#' AppUserTokenObtainPairRequest Class
#'
#' @docType class
#' @title AppUserTokenObtainPairRequest
#' @description AppUserTokenObtainPairRequest Class
#' @format An \code{R6Class} generator object
#' @field username  character
#' @field password  character
#' @field device_id  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AppUserTokenObtainPairRequest <- R6::R6Class(
  "AppUserTokenObtainPairRequest",
  public = list(
    `username` = NULL,
    `password` = NULL,
    `device_id` = NULL,

    #' @description
    #' Initialize a new AppUserTokenObtainPairRequest class.
    #'
    #' @param username username
    #' @param password password
    #' @param device_id device_id
    #' @param ... Other optional arguments.
    initialize = function(`username`, `password`, `device_id` = NULL, ...) {
      if (!missing(`username`)) {
        if (!(is.character(`username`) && length(`username`) == 1)) {
          stop(paste("Error! Invalid data for `username`. Must be a string:", `username`))
        }
        self$`username` <- `username`
      }
      if (!missing(`password`)) {
        if (!(is.character(`password`) && length(`password`) == 1)) {
          stop(paste("Error! Invalid data for `password`. Must be a string:", `password`))
        }
        self$`password` <- `password`
      }
      if (!is.null(`device_id`)) {
        if (!(is.character(`device_id`) && length(`device_id`) == 1)) {
          stop(paste("Error! Invalid data for `device_id`. Must be a string:", `device_id`))
        }
        self$`device_id` <- `device_id`
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
    #' @return AppUserTokenObtainPairRequest as a base R list.
    #' @examples
    #' # convert array of AppUserTokenObtainPairRequest (x) to a data frame
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
    #' Convert AppUserTokenObtainPairRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AppUserTokenObtainPairRequestObject <- list()
      if (!is.null(self$`username`)) {
        AppUserTokenObtainPairRequestObject[["username"]] <-
          self$`username`
      }
      if (!is.null(self$`password`)) {
        AppUserTokenObtainPairRequestObject[["password"]] <-
          self$`password`
      }
      if (!is.null(self$`device_id`)) {
        AppUserTokenObtainPairRequestObject[["device_id"]] <-
          self$`device_id`
      }
      return(AppUserTokenObtainPairRequestObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of AppUserTokenObtainPairRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of AppUserTokenObtainPairRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`username`)) {
        self$`username` <- this_object$`username`
      }
      if (!is.null(this_object$`password`)) {
        self$`password` <- this_object$`password`
      }
      if (!is.null(this_object$`device_id`)) {
        self$`device_id` <- this_object$`device_id`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return AppUserTokenObtainPairRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of AppUserTokenObtainPairRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of AppUserTokenObtainPairRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`username` <- this_object$`username`
      self$`password` <- this_object$`password`
      self$`device_id` <- this_object$`device_id`
      self
    },

    #' @description
    #' Validate JSON input with respect to AppUserTokenObtainPairRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `username`
      if (!is.null(input_json$`username`)) {
        if (!(is.character(input_json$`username`) && length(input_json$`username`) == 1)) {
          stop(paste("Error! Invalid data for `username`. Must be a string:", input_json$`username`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AppUserTokenObtainPairRequest: the required field `username` is missing."))
      }
      # check the required field `password`
      if (!is.null(input_json$`password`)) {
        if (!(is.character(input_json$`password`) && length(input_json$`password`) == 1)) {
          stop(paste("Error! Invalid data for `password`. Must be a string:", input_json$`password`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for AppUserTokenObtainPairRequest: the required field `password` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AppUserTokenObtainPairRequest
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `username` is null
      if (is.null(self$`username`)) {
        return(FALSE)
      }

      if (nchar(self$`username`) < 1) {
        return(FALSE)
      }

      # check if the required `password` is null
      if (is.null(self$`password`)) {
        return(FALSE)
      }

      if (nchar(self$`password`) < 1) {
        return(FALSE)
      }

      if (nchar(self$`device_id`) < 1) {
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
      # check if the required `username` is null
      if (is.null(self$`username`)) {
        invalid_fields["username"] <- "Non-nullable required field `username` cannot be null."
      }

      if (nchar(self$`username`) < 1) {
        invalid_fields["username"] <- "Invalid length for `username`, must be bigger than or equal to 1."
      }

      # check if the required `password` is null
      if (is.null(self$`password`)) {
        invalid_fields["password"] <- "Non-nullable required field `password` cannot be null."
      }

      if (nchar(self$`password`) < 1) {
        invalid_fields["password"] <- "Invalid length for `password`, must be bigger than or equal to 1."
      }

      if (nchar(self$`device_id`) < 1) {
        invalid_fields["device_id"] <- "Invalid length for `device_id`, must be bigger than or equal to 1."
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
# AppUserTokenObtainPairRequest$unlock()
#
## Below is an example to define the print function
# AppUserTokenObtainPairRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AppUserTokenObtainPairRequest$lock()

