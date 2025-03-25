#' Create a new Photo
#'
#' @description
#' Photo Class
#'
#' @docType class
#' @title Photo
#' @description Photo Class
#' @format An \code{R6Class} generator object
#' @field uuid  character
#' @field image_url Photo uploaded by user. character
#' @field image_path Internal server path of the image. character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Photo <- R6::R6Class(
  "Photo",
  public = list(
    `uuid` = NULL,
    `image_url` = NULL,
    `image_path` = NULL,

    #' @description
    #' Initialize a new Photo class.
    #'
    #' @param uuid uuid
    #' @param image_url Photo uploaded by user.
    #' @param image_path Internal server path of the image.
    #' @param ... Other optional arguments.
    initialize = function(`uuid`, `image_url`, `image_path`, ...) {
      if (!missing(`uuid`)) {
        if (!(is.character(`uuid`) && length(`uuid`) == 1)) {
          stop(paste("Error! Invalid data for `uuid`. Must be a string:", `uuid`))
        }
        self$`uuid` <- `uuid`
      }
      if (!missing(`image_url`)) {
        if (!(is.character(`image_url`) && length(`image_url`) == 1)) {
          stop(paste("Error! Invalid data for `image_url`. Must be a string:", `image_url`))
        }
        # to validate URL. ref: https://stackoverflow.com/questions/73952024/url-validation-in-r
        if (!stringr::str_detect(`image_url`, "(https?|ftp)://[^ /$.?#].[^\\s]*")) {
          stop(paste("Error! Invalid data for `image_url`. Must be a URL:", `image_url`))
        }
        self$`image_url` <- `image_url`
      }
      if (!missing(`image_path`)) {
        if (!(is.character(`image_path`) && length(`image_path`) == 1)) {
          stop(paste("Error! Invalid data for `image_path`. Must be a string:", `image_path`))
        }
        self$`image_path` <- `image_path`
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
    #' @return Photo as a base R list.
    #' @examples
    #' # convert array of Photo (x) to a data frame
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
    #' Convert Photo to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      PhotoObject <- list()
      if (!is.null(self$`uuid`)) {
        PhotoObject[["uuid"]] <-
          self$`uuid`
      }
      if (!is.null(self$`image_url`)) {
        PhotoObject[["image_url"]] <-
          self$`image_url`
      }
      if (!is.null(self$`image_path`)) {
        PhotoObject[["image_path"]] <-
          self$`image_path`
      }
      return(PhotoObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of Photo
    #'
    #' @param input_json the JSON input
    #' @return the instance of Photo
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`uuid`)) {
        self$`uuid` <- this_object$`uuid`
      }
      if (!is.null(this_object$`image_url`)) {
        # to validate URL. ref: https://stackoverflow.com/questions/73952024/url-validation-in-r
        if (!stringr::str_detect(this_object$`image_url`, "(https?|ftp)://[^ /$.?#].[^\\s]*")) {
          stop(paste("Error! Invalid data for `image_url`. Must be a URL:", this_object$`image_url`))
        }
        self$`image_url` <- this_object$`image_url`
      }
      if (!is.null(this_object$`image_path`)) {
        self$`image_path` <- this_object$`image_path`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return Photo in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of Photo
    #'
    #' @param input_json the JSON input
    #' @return the instance of Photo
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`uuid` <- this_object$`uuid`
      # to validate URL. ref: https://stackoverflow.com/questions/73952024/url-validation-in-r
      if (!stringr::str_detect(this_object$`image_url`, "(https?|ftp)://[^ /$.?#].[^\\s]*")) {
        stop(paste("Error! Invalid data for `image_url`. Must be a URL:", this_object$`image_url`))
      }
      self$`image_url` <- this_object$`image_url`
      self$`image_path` <- this_object$`image_path`
      self
    },

    #' @description
    #' Validate JSON input with respect to Photo and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `uuid`
      if (!is.null(input_json$`uuid`)) {
        if (!(is.character(input_json$`uuid`) && length(input_json$`uuid`) == 1)) {
          stop(paste("Error! Invalid data for `uuid`. Must be a string:", input_json$`uuid`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Photo: the required field `uuid` is missing."))
      }
      # check the required field `image_url`
      if (!is.null(input_json$`image_url`)) {
        if (!(is.character(input_json$`image_url`) && length(input_json$`image_url`) == 1)) {
          stop(paste("Error! Invalid data for `image_url`. Must be a string:", input_json$`image_url`))
        }
        # to validate URL. ref: https://stackoverflow.com/questions/73952024/url-validation-in-r
        if (!stringr::str_detect(input_json$`image_url`, "(https?|ftp)://[^ /$.?#].[^\\s]*")) {
          stop(paste("Error! Invalid data for `image_url`. Must be a URL:", input_json$`image_url`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Photo: the required field `image_url` is missing."))
      }
      # check the required field `image_path`
      if (!is.null(input_json$`image_path`)) {
        if (!(is.character(input_json$`image_path`) && length(input_json$`image_path`) == 1)) {
          stop(paste("Error! Invalid data for `image_path`. Must be a string:", input_json$`image_path`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Photo: the required field `image_path` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Photo
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `uuid` is null
      if (is.null(self$`uuid`)) {
        return(FALSE)
      }

      # check if the required `image_url` is null
      if (is.null(self$`image_url`)) {
        return(FALSE)
      }

      # check if the required `image_path` is null
      if (is.null(self$`image_path`)) {
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
      # check if the required `uuid` is null
      if (is.null(self$`uuid`)) {
        invalid_fields["uuid"] <- "Non-nullable required field `uuid` cannot be null."
      }

      # check if the required `image_url` is null
      if (is.null(self$`image_url`)) {
        invalid_fields["image_url"] <- "Non-nullable required field `image_url` cannot be null."
      }

      # check if the required `image_path` is null
      if (is.null(self$`image_path`)) {
        invalid_fields["image_path"] <- "Non-nullable required field `image_path` cannot be null."
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
# Photo$unlock()
#
## Below is an example to define the print function
# Photo$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Photo$lock()

