#' Create a new SimpleTaxonRequest
#'
#' @description
#' SimpleTaxonRequest Class
#'
#' @docType class
#' @title SimpleTaxonRequest
#' @description SimpleTaxonRequest Class
#' @format An \code{R6Class} generator object
#' @field name  character
#' @field common_name  character [optional]
#' @field rank  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SimpleTaxonRequest <- R6::R6Class(
  "SimpleTaxonRequest",
  public = list(
    `name` = NULL,
    `common_name` = NULL,
    `rank` = NULL,

    #' @description
    #' Initialize a new SimpleTaxonRequest class.
    #'
    #' @param name name
    #' @param rank rank
    #' @param common_name common_name
    #' @param ... Other optional arguments.
    initialize = function(`name`, `rank`, `common_name` = NULL, ...) {
      if (!missing(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!missing(`rank`)) {
        if (!(`rank` %in% c("class", "order", "family", "genus", "subgenus", "species_complex", "species"))) {
          stop(paste("Error! \"", `rank`, "\" cannot be assigned to `rank`. Must be \"class\", \"order\", \"family\", \"genus\", \"subgenus\", \"species_complex\", \"species\".", sep = ""))
        }
        if (!(is.character(`rank`) && length(`rank`) == 1)) {
          stop(paste("Error! Invalid data for `rank`. Must be a string:", `rank`))
        }
        self$`rank` <- `rank`
      }
      if (!is.null(`common_name`)) {
        if (!(is.character(`common_name`) && length(`common_name`) == 1)) {
          stop(paste("Error! Invalid data for `common_name`. Must be a string:", `common_name`))
        }
        self$`common_name` <- `common_name`
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
    #' @return SimpleTaxonRequest as a base R list.
    #' @examples
    #' # convert array of SimpleTaxonRequest (x) to a data frame
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
    #' Convert SimpleTaxonRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      SimpleTaxonRequestObject <- list()
      if (!is.null(self$`name`)) {
        SimpleTaxonRequestObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`common_name`)) {
        SimpleTaxonRequestObject[["common_name"]] <-
          self$`common_name`
      }
      if (!is.null(self$`rank`)) {
        SimpleTaxonRequestObject[["rank"]] <-
          self$`rank`
      }
      return(SimpleTaxonRequestObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of SimpleTaxonRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of SimpleTaxonRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`common_name`)) {
        self$`common_name` <- this_object$`common_name`
      }
      if (!is.null(this_object$`rank`)) {
        if (!is.null(this_object$`rank`) && !(this_object$`rank` %in% c("class", "order", "family", "genus", "subgenus", "species_complex", "species"))) {
          stop(paste("Error! \"", this_object$`rank`, "\" cannot be assigned to `rank`. Must be \"class\", \"order\", \"family\", \"genus\", \"subgenus\", \"species_complex\", \"species\".", sep = ""))
        }
        self$`rank` <- this_object$`rank`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return SimpleTaxonRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of SimpleTaxonRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of SimpleTaxonRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`name` <- this_object$`name`
      self$`common_name` <- this_object$`common_name`
      if (!is.null(this_object$`rank`) && !(this_object$`rank` %in% c("class", "order", "family", "genus", "subgenus", "species_complex", "species"))) {
        stop(paste("Error! \"", this_object$`rank`, "\" cannot be assigned to `rank`. Must be \"class\", \"order\", \"family\", \"genus\", \"subgenus\", \"species_complex\", \"species\".", sep = ""))
      }
      self$`rank` <- this_object$`rank`
      self
    },

    #' @description
    #' Validate JSON input with respect to SimpleTaxonRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `name`
      if (!is.null(input_json$`name`)) {
        if (!(is.character(input_json$`name`) && length(input_json$`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", input_json$`name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SimpleTaxonRequest: the required field `name` is missing."))
      }
      # check the required field `rank`
      if (!is.null(input_json$`rank`)) {
        if (!(is.character(input_json$`rank`) && length(input_json$`rank`) == 1)) {
          stop(paste("Error! Invalid data for `rank`. Must be a string:", input_json$`rank`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for SimpleTaxonRequest: the required field `rank` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of SimpleTaxonRequest
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `name` is null
      if (is.null(self$`name`)) {
        return(FALSE)
      }

      if (nchar(self$`name`) > 32) {
        return(FALSE)
      }
      if (nchar(self$`name`) < 1) {
        return(FALSE)
      }

      if (nchar(self$`common_name`) > 64) {
        return(FALSE)
      }

      # check if the required `rank` is null
      if (is.null(self$`rank`)) {
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
      # check if the required `name` is null
      if (is.null(self$`name`)) {
        invalid_fields["name"] <- "Non-nullable required field `name` cannot be null."
      }

      if (nchar(self$`name`) > 32) {
        invalid_fields["name"] <- "Invalid length for `name`, must be smaller than or equal to 32."
      }
      if (nchar(self$`name`) < 1) {
        invalid_fields["name"] <- "Invalid length for `name`, must be bigger than or equal to 1."
      }

      if (nchar(self$`common_name`) > 64) {
        invalid_fields["common_name"] <- "Invalid length for `common_name`, must be smaller than or equal to 64."
      }

      # check if the required `rank` is null
      if (is.null(self$`rank`)) {
        invalid_fields["rank"] <- "Non-nullable required field `rank` cannot be null."
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
# SimpleTaxonRequest$unlock()
#
## Below is an example to define the print function
# SimpleTaxonRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# SimpleTaxonRequest$lock()

