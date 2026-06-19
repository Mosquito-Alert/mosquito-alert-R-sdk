#' Create a new IdentificationTaskCapabilities
#'
#' @description
#' IdentificationTaskCapabilities Class
#'
#' @docType class
#' @title IdentificationTaskCapabilities
#' @description IdentificationTaskCapabilities Class
#' @format An \code{R6Class} generator object
#' @field review  character
#' @field annotate  character
#' @field annotate_executive  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
IdentificationTaskCapabilities <- R6::R6Class(
  "IdentificationTaskCapabilities",
  public = list(
    `review` = NULL,
    `annotate` = NULL,
    `annotate_executive` = NULL,

    #' @description
    #' Initialize a new IdentificationTaskCapabilities class.
    #'
    #' @param review review
    #' @param annotate annotate
    #' @param annotate_executive annotate_executive
    #' @param ... Other optional arguments.
    initialize = function(`review`, `annotate`, `annotate_executive`, ...) {
      if (!missing(`review`)) {
        if (!(is.logical(`review`) && length(`review`) == 1)) {
          stop(paste("Error! Invalid data for `review`. Must be a boolean:", `review`))
        }
        self$`review` <- `review`
      }
      if (!missing(`annotate`)) {
        if (!(is.logical(`annotate`) && length(`annotate`) == 1)) {
          stop(paste("Error! Invalid data for `annotate`. Must be a boolean:", `annotate`))
        }
        self$`annotate` <- `annotate`
      }
      if (!missing(`annotate_executive`)) {
        if (!(is.logical(`annotate_executive`) && length(`annotate_executive`) == 1)) {
          stop(paste("Error! Invalid data for `annotate_executive`. Must be a boolean:", `annotate_executive`))
        }
        self$`annotate_executive` <- `annotate_executive`
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
    #' @return IdentificationTaskCapabilities as a base R list.
    #' @examples
    #' # convert array of IdentificationTaskCapabilities (x) to a data frame
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
    #' Convert IdentificationTaskCapabilities to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      IdentificationTaskCapabilitiesObject <- list()
      if (!is.null(self$`review`)) {
        IdentificationTaskCapabilitiesObject[["review"]] <-
          self$`review`
      }
      if (!is.null(self$`annotate`)) {
        IdentificationTaskCapabilitiesObject[["annotate"]] <-
          self$`annotate`
      }
      if (!is.null(self$`annotate_executive`)) {
        IdentificationTaskCapabilitiesObject[["annotate_executive"]] <-
          self$`annotate_executive`
      }
      return(IdentificationTaskCapabilitiesObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of IdentificationTaskCapabilities
    #'
    #' @param input_json the JSON input
    #' @return the instance of IdentificationTaskCapabilities
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`review`)) {
        self$`review` <- this_object$`review`
      }
      if (!is.null(this_object$`annotate`)) {
        self$`annotate` <- this_object$`annotate`
      }
      if (!is.null(this_object$`annotate_executive`)) {
        self$`annotate_executive` <- this_object$`annotate_executive`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return IdentificationTaskCapabilities in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of IdentificationTaskCapabilities
    #'
    #' @param input_json the JSON input
    #' @return the instance of IdentificationTaskCapabilities
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`review` <- this_object$`review`
      self$`annotate` <- this_object$`annotate`
      self$`annotate_executive` <- this_object$`annotate_executive`
      self
    },

    #' @description
    #' Validate JSON input with respect to IdentificationTaskCapabilities and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `review`
      if (!is.null(input_json$`review`)) {
        if (!(is.logical(input_json$`review`) && length(input_json$`review`) == 1)) {
          stop(paste("Error! Invalid data for `review`. Must be a boolean:", input_json$`review`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for IdentificationTaskCapabilities: the required field `review` is missing."))
      }
      # check the required field `annotate`
      if (!is.null(input_json$`annotate`)) {
        if (!(is.logical(input_json$`annotate`) && length(input_json$`annotate`) == 1)) {
          stop(paste("Error! Invalid data for `annotate`. Must be a boolean:", input_json$`annotate`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for IdentificationTaskCapabilities: the required field `annotate` is missing."))
      }
      # check the required field `annotate_executive`
      if (!is.null(input_json$`annotate_executive`)) {
        if (!(is.logical(input_json$`annotate_executive`) && length(input_json$`annotate_executive`) == 1)) {
          stop(paste("Error! Invalid data for `annotate_executive`. Must be a boolean:", input_json$`annotate_executive`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for IdentificationTaskCapabilities: the required field `annotate_executive` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of IdentificationTaskCapabilities
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `review` is null
      if (is.null(self$`review`)) {
        return(FALSE)
      }

      # check if the required `annotate` is null
      if (is.null(self$`annotate`)) {
        return(FALSE)
      }

      # check if the required `annotate_executive` is null
      if (is.null(self$`annotate_executive`)) {
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
      # check if the required `review` is null
      if (is.null(self$`review`)) {
        invalid_fields["review"] <- "Non-nullable required field `review` cannot be null."
      }

      # check if the required `annotate` is null
      if (is.null(self$`annotate`)) {
        invalid_fields["annotate"] <- "Non-nullable required field `annotate` cannot be null."
      }

      # check if the required `annotate_executive` is null
      if (is.null(self$`annotate_executive`)) {
        invalid_fields["annotate_executive"] <- "Non-nullable required field `annotate_executive` cannot be null."
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
# IdentificationTaskCapabilities$unlock()
#
## Below is an example to define the print function
# IdentificationTaskCapabilities$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# IdentificationTaskCapabilities$lock()

