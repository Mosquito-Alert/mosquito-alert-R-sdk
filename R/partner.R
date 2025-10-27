#' Create a new Partner
#'
#' @description
#' Partner Class
#'
#' @docType class
#' @title Partner
#' @description Partner Class
#' @format An \code{R6Class} generator object
#' @field id  integer
#' @field point  \link{PartnerPoint}
#' @field description Text desription on the pin. This text is meant to be visualized as the text body of the dialog on the map character
#' @field url URL link to the organization page character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Partner <- R6::R6Class(
  "Partner",
  public = list(
    `id` = NULL,
    `point` = NULL,
    `description` = NULL,
    `url` = NULL,

    #' @description
    #' Initialize a new Partner class.
    #'
    #' @param id id
    #' @param point point
    #' @param description Text desription on the pin. This text is meant to be visualized as the text body of the dialog on the map
    #' @param url URL link to the organization page
    #' @param ... Other optional arguments.
    initialize = function(`id`, `point`, `description`, `url`, ...) {
      if (!missing(`id`)) {
        if (!(is.numeric(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be an integer:", `id`))
        }
        self$`id` <- `id`
      }
      if (!missing(`point`)) {
        stopifnot(R6::is.R6(`point`))
        self$`point` <- `point`
      }
      if (!missing(`description`)) {
        if (!(is.character(`description`) && length(`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", `description`))
        }
        self$`description` <- `description`
      }
      if (!missing(`url`)) {
        if (!(is.character(`url`) && length(`url`) == 1)) {
          stop(paste("Error! Invalid data for `url`. Must be a string:", `url`))
        }
        # to validate URL. ref: https://stackoverflow.com/questions/73952024/url-validation-in-r
        if (!stringr::str_detect(`url`, "(https?|ftp)://[^ /$.?#].[^\\s]*")) {
          stop(paste("Error! Invalid data for `url`. Must be a URL:", `url`))
        }
        self$`url` <- `url`
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
    #' @return Partner as a base R list.
    #' @examples
    #' # convert array of Partner (x) to a data frame
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
    #' Convert Partner to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      PartnerObject <- list()
      if (!is.null(self$`id`)) {
        PartnerObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`point`)) {
        PartnerObject[["point"]] <-
          self$`point`$toSimpleType()
      }
      if (!is.null(self$`description`)) {
        PartnerObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`url`)) {
        PartnerObject[["url"]] <-
          self$`url`
      }
      return(PartnerObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of Partner
    #'
    #' @param input_json the JSON input
    #' @return the instance of Partner
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`point`)) {
        `point_object` <- PartnerPoint$new()
        `point_object`$fromJSON(jsonlite::toJSON(this_object$`point`, auto_unbox = TRUE, digits = NA))
        self$`point` <- `point_object`
      }
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`url`)) {
        # to validate URL. ref: https://stackoverflow.com/questions/73952024/url-validation-in-r
        if (!stringr::str_detect(this_object$`url`, "(https?|ftp)://[^ /$.?#].[^\\s]*")) {
          stop(paste("Error! Invalid data for `url`. Must be a URL:", this_object$`url`))
        }
        self$`url` <- this_object$`url`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return Partner in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of Partner
    #'
    #' @param input_json the JSON input
    #' @return the instance of Partner
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`point` <- PartnerPoint$new()$fromJSON(jsonlite::toJSON(this_object$`point`, auto_unbox = TRUE, digits = NA))
      self$`description` <- this_object$`description`
      # to validate URL. ref: https://stackoverflow.com/questions/73952024/url-validation-in-r
      if (!stringr::str_detect(this_object$`url`, "(https?|ftp)://[^ /$.?#].[^\\s]*")) {
        stop(paste("Error! Invalid data for `url`. Must be a URL:", this_object$`url`))
      }
      self$`url` <- this_object$`url`
      self
    },

    #' @description
    #' Validate JSON input with respect to Partner and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `id`
      if (!is.null(input_json$`id`)) {
        if (!(is.numeric(input_json$`id`) && length(input_json$`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be an integer:", input_json$`id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Partner: the required field `id` is missing."))
      }
      # check the required field `point`
      if (!is.null(input_json$`point`)) {
        stopifnot(R6::is.R6(input_json$`point`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Partner: the required field `point` is missing."))
      }
      # check the required field `description`
      if (!is.null(input_json$`description`)) {
        if (!(is.character(input_json$`description`) && length(input_json$`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", input_json$`description`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Partner: the required field `description` is missing."))
      }
      # check the required field `url`
      if (!is.null(input_json$`url`)) {
        if (!(is.character(input_json$`url`) && length(input_json$`url`) == 1)) {
          stop(paste("Error! Invalid data for `url`. Must be a string:", input_json$`url`))
        }
        # to validate URL. ref: https://stackoverflow.com/questions/73952024/url-validation-in-r
        if (!stringr::str_detect(input_json$`url`, "(https?|ftp)://[^ /$.?#].[^\\s]*")) {
          stop(paste("Error! Invalid data for `url`. Must be a URL:", input_json$`url`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Partner: the required field `url` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Partner
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `id` is null
      if (is.null(self$`id`)) {
        return(FALSE)
      }

      # check if the required `point` is null
      if (is.null(self$`point`)) {
        return(FALSE)
      }

      # check if the required `description` is null
      if (is.null(self$`description`)) {
        return(FALSE)
      }

      # check if the required `url` is null
      if (is.null(self$`url`)) {
        return(FALSE)
      }

      if (nchar(self$`url`) > 200) {
        return(FALSE)
      }
      # to validate URL. ref: https://stackoverflow.com/questions/73952024/url-validation-in-r
      if (!stringr::str_detect(self$`url`, "(https?|ftp)://[^ /$.?#].[^\\s]*")) {
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
      # check if the required `id` is null
      if (is.null(self$`id`)) {
        invalid_fields["id"] <- "Non-nullable required field `id` cannot be null."
      }

      # check if the required `point` is null
      if (is.null(self$`point`)) {
        invalid_fields["point"] <- "Non-nullable required field `point` cannot be null."
      }

      # check if the required `description` is null
      if (is.null(self$`description`)) {
        invalid_fields["description"] <- "Non-nullable required field `description` cannot be null."
      }

      # check if the required `url` is null
      if (is.null(self$`url`)) {
        invalid_fields["url"] <- "Non-nullable required field `url` cannot be null."
      }

      if (nchar(self$`url`) > 200) {
        invalid_fields["url"] <- "Invalid length for `url`, must be smaller than or equal to 200."
      }
      # to validate URL. ref: https://stackoverflow.com/questions/73952024/url-validation-in-r
      if (!stringr::str_detect(self$`url`, "(https?|ftp)://[^ /$.?#].[^\\s]*")) {
        invalid_fields["url"] <- "Invalid value for `url`, must be URL."
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
# Partner$unlock()
#
## Below is an example to define the print function
# Partner$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Partner$lock()

