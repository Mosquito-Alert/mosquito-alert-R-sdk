#' Create a new IdentificationTaskResult
#'
#' @description
#' IdentificationTaskResult Class
#'
#' @docType class
#' @title IdentificationTaskResult
#' @description IdentificationTaskResult Class
#' @format An \code{R6Class} generator object
#' @field source  character
#' @field taxon  \link{SimpleTaxon}
#' @field is_high_confidence  character
#' @field confidence  numeric
#' @field confidence_label  character
#' @field uncertainty  numeric
#' @field agreement  numeric
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
IdentificationTaskResult <- R6::R6Class(
  "IdentificationTaskResult",
  public = list(
    `source` = NULL,
    `taxon` = NULL,
    `is_high_confidence` = NULL,
    `confidence` = NULL,
    `confidence_label` = NULL,
    `uncertainty` = NULL,
    `agreement` = NULL,

    #' @description
    #' Initialize a new IdentificationTaskResult class.
    #'
    #' @param source source
    #' @param taxon taxon
    #' @param is_high_confidence is_high_confidence
    #' @param confidence confidence
    #' @param confidence_label confidence_label
    #' @param uncertainty uncertainty
    #' @param agreement agreement
    #' @param ... Other optional arguments.
    initialize = function(`source`, `taxon`, `is_high_confidence`, `confidence`, `confidence_label`, `uncertainty`, `agreement`, ...) {
      if (!missing(`source`)) {
        if (!(`source` %in% c("expert", "ai"))) {
          stop(paste("Error! \"", `source`, "\" cannot be assigned to `source`. Must be \"expert\", \"ai\".", sep = ""))
        }
        if (!(is.character(`source`) && length(`source`) == 1)) {
          stop(paste("Error! Invalid data for `source`. Must be a string:", `source`))
        }
        self$`source` <- `source`
      }
      if (!missing(`taxon`)) {
        stopifnot(R6::is.R6(`taxon`))
        self$`taxon` <- `taxon`
      }
      if (!missing(`is_high_confidence`)) {
        if (!(is.logical(`is_high_confidence`) && length(`is_high_confidence`) == 1)) {
          stop(paste("Error! Invalid data for `is_high_confidence`. Must be a boolean:", `is_high_confidence`))
        }
        self$`is_high_confidence` <- `is_high_confidence`
      }
      if (!missing(`confidence`)) {
        if (!(is.numeric(`confidence`) && length(`confidence`) == 1)) {
          stop(paste("Error! Invalid data for `confidence`. Must be a number:", `confidence`))
        }
        self$`confidence` <- `confidence`
      }
      if (!missing(`confidence_label`)) {
        if (!(is.character(`confidence_label`) && length(`confidence_label`) == 1)) {
          stop(paste("Error! Invalid data for `confidence_label`. Must be a string:", `confidence_label`))
        }
        self$`confidence_label` <- `confidence_label`
      }
      if (!missing(`uncertainty`)) {
        if (!(is.numeric(`uncertainty`) && length(`uncertainty`) == 1)) {
          stop(paste("Error! Invalid data for `uncertainty`. Must be a number:", `uncertainty`))
        }
        self$`uncertainty` <- `uncertainty`
      }
      if (!missing(`agreement`)) {
        if (!(is.numeric(`agreement`) && length(`agreement`) == 1)) {
          stop(paste("Error! Invalid data for `agreement`. Must be a number:", `agreement`))
        }
        self$`agreement` <- `agreement`
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
    #' @return IdentificationTaskResult as a base R list.
    #' @examples
    #' # convert array of IdentificationTaskResult (x) to a data frame
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
    #' Convert IdentificationTaskResult to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      IdentificationTaskResultObject <- list()
      if (!is.null(self$`source`)) {
        IdentificationTaskResultObject[["source"]] <-
          self$`source`
      }
      if (!is.null(self$`taxon`)) {
        IdentificationTaskResultObject[["taxon"]] <-
          self$`taxon`$toSimpleType()
      }
      if (!is.null(self$`is_high_confidence`)) {
        IdentificationTaskResultObject[["is_high_confidence"]] <-
          self$`is_high_confidence`
      }
      if (!is.null(self$`confidence`)) {
        IdentificationTaskResultObject[["confidence"]] <-
          self$`confidence`
      }
      if (!is.null(self$`confidence_label`)) {
        IdentificationTaskResultObject[["confidence_label"]] <-
          self$`confidence_label`
      }
      if (!is.null(self$`uncertainty`)) {
        IdentificationTaskResultObject[["uncertainty"]] <-
          self$`uncertainty`
      }
      if (!is.null(self$`agreement`)) {
        IdentificationTaskResultObject[["agreement"]] <-
          self$`agreement`
      }
      return(IdentificationTaskResultObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of IdentificationTaskResult
    #'
    #' @param input_json the JSON input
    #' @return the instance of IdentificationTaskResult
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`source`)) {
        if (!is.null(this_object$`source`) && !(this_object$`source` %in% c("expert", "ai"))) {
          stop(paste("Error! \"", this_object$`source`, "\" cannot be assigned to `source`. Must be \"expert\", \"ai\".", sep = ""))
        }
        self$`source` <- this_object$`source`
      }
      if (!is.null(this_object$`taxon`)) {
        `taxon_object` <- SimpleTaxon$new()
        `taxon_object`$fromJSON(jsonlite::toJSON(this_object$`taxon`, auto_unbox = TRUE, digits = NA))
        self$`taxon` <- `taxon_object`
      }
      if (!is.null(this_object$`is_high_confidence`)) {
        self$`is_high_confidence` <- this_object$`is_high_confidence`
      }
      if (!is.null(this_object$`confidence`)) {
        self$`confidence` <- this_object$`confidence`
      }
      if (!is.null(this_object$`confidence_label`)) {
        self$`confidence_label` <- this_object$`confidence_label`
      }
      if (!is.null(this_object$`uncertainty`)) {
        self$`uncertainty` <- this_object$`uncertainty`
      }
      if (!is.null(this_object$`agreement`)) {
        self$`agreement` <- this_object$`agreement`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return IdentificationTaskResult in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of IdentificationTaskResult
    #'
    #' @param input_json the JSON input
    #' @return the instance of IdentificationTaskResult
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`source`) && !(this_object$`source` %in% c("expert", "ai"))) {
        stop(paste("Error! \"", this_object$`source`, "\" cannot be assigned to `source`. Must be \"expert\", \"ai\".", sep = ""))
      }
      self$`source` <- this_object$`source`
      self$`taxon` <- SimpleTaxon$new()$fromJSON(jsonlite::toJSON(this_object$`taxon`, auto_unbox = TRUE, digits = NA))
      self$`is_high_confidence` <- this_object$`is_high_confidence`
      self$`confidence` <- this_object$`confidence`
      self$`confidence_label` <- this_object$`confidence_label`
      self$`uncertainty` <- this_object$`uncertainty`
      self$`agreement` <- this_object$`agreement`
      self
    },

    #' @description
    #' Validate JSON input with respect to IdentificationTaskResult and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `source`
      if (!is.null(input_json$`source`)) {
        if (!(is.character(input_json$`source`) && length(input_json$`source`) == 1)) {
          stop(paste("Error! Invalid data for `source`. Must be a string:", input_json$`source`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for IdentificationTaskResult: the required field `source` is missing."))
      }
      # check the required field `taxon`
      if (!is.null(input_json$`taxon`)) {
        stopifnot(R6::is.R6(input_json$`taxon`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for IdentificationTaskResult: the required field `taxon` is missing."))
      }
      # check the required field `is_high_confidence`
      if (!is.null(input_json$`is_high_confidence`)) {
        if (!(is.logical(input_json$`is_high_confidence`) && length(input_json$`is_high_confidence`) == 1)) {
          stop(paste("Error! Invalid data for `is_high_confidence`. Must be a boolean:", input_json$`is_high_confidence`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for IdentificationTaskResult: the required field `is_high_confidence` is missing."))
      }
      # check the required field `confidence`
      if (!is.null(input_json$`confidence`)) {
        if (!(is.numeric(input_json$`confidence`) && length(input_json$`confidence`) == 1)) {
          stop(paste("Error! Invalid data for `confidence`. Must be a number:", input_json$`confidence`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for IdentificationTaskResult: the required field `confidence` is missing."))
      }
      # check the required field `confidence_label`
      if (!is.null(input_json$`confidence_label`)) {
        if (!(is.character(input_json$`confidence_label`) && length(input_json$`confidence_label`) == 1)) {
          stop(paste("Error! Invalid data for `confidence_label`. Must be a string:", input_json$`confidence_label`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for IdentificationTaskResult: the required field `confidence_label` is missing."))
      }
      # check the required field `uncertainty`
      if (!is.null(input_json$`uncertainty`)) {
        if (!(is.numeric(input_json$`uncertainty`) && length(input_json$`uncertainty`) == 1)) {
          stop(paste("Error! Invalid data for `uncertainty`. Must be a number:", input_json$`uncertainty`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for IdentificationTaskResult: the required field `uncertainty` is missing."))
      }
      # check the required field `agreement`
      if (!is.null(input_json$`agreement`)) {
        if (!(is.numeric(input_json$`agreement`) && length(input_json$`agreement`) == 1)) {
          stop(paste("Error! Invalid data for `agreement`. Must be a number:", input_json$`agreement`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for IdentificationTaskResult: the required field `agreement` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of IdentificationTaskResult
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `is_high_confidence` is null
      if (is.null(self$`is_high_confidence`)) {
        return(FALSE)
      }

      # check if the required `confidence` is null
      if (is.null(self$`confidence`)) {
        return(FALSE)
      }

      if (self$`confidence` > 1) {
        return(FALSE)
      }
      if (self$`confidence` < 0) {
        return(FALSE)
      }

      # check if the required `confidence_label` is null
      if (is.null(self$`confidence_label`)) {
        return(FALSE)
      }

      # check if the required `uncertainty` is null
      if (is.null(self$`uncertainty`)) {
        return(FALSE)
      }

      if (self$`uncertainty` > 1) {
        return(FALSE)
      }
      if (self$`uncertainty` < 0) {
        return(FALSE)
      }

      # check if the required `agreement` is null
      if (is.null(self$`agreement`)) {
        return(FALSE)
      }

      if (self$`agreement` > 1) {
        return(FALSE)
      }
      if (self$`agreement` < 0) {
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
      # check if the required `is_high_confidence` is null
      if (is.null(self$`is_high_confidence`)) {
        invalid_fields["is_high_confidence"] <- "Non-nullable required field `is_high_confidence` cannot be null."
      }

      # check if the required `confidence` is null
      if (is.null(self$`confidence`)) {
        invalid_fields["confidence"] <- "Non-nullable required field `confidence` cannot be null."
      }

      if (self$`confidence` > 1) {
        invalid_fields["confidence"] <- "Invalid value for `confidence`, must be smaller than or equal to 1."
      }
      if (self$`confidence` < 0) {
        invalid_fields["confidence"] <- "Invalid value for `confidence`, must be bigger than or equal to 0."
      }

      # check if the required `confidence_label` is null
      if (is.null(self$`confidence_label`)) {
        invalid_fields["confidence_label"] <- "Non-nullable required field `confidence_label` cannot be null."
      }

      # check if the required `uncertainty` is null
      if (is.null(self$`uncertainty`)) {
        invalid_fields["uncertainty"] <- "Non-nullable required field `uncertainty` cannot be null."
      }

      if (self$`uncertainty` > 1) {
        invalid_fields["uncertainty"] <- "Invalid value for `uncertainty`, must be smaller than or equal to 1."
      }
      if (self$`uncertainty` < 0) {
        invalid_fields["uncertainty"] <- "Invalid value for `uncertainty`, must be bigger than or equal to 0."
      }

      # check if the required `agreement` is null
      if (is.null(self$`agreement`)) {
        invalid_fields["agreement"] <- "Non-nullable required field `agreement` cannot be null."
      }

      if (self$`agreement` > 1) {
        invalid_fields["agreement"] <- "Invalid value for `agreement`, must be smaller than or equal to 1."
      }
      if (self$`agreement` < 0) {
        invalid_fields["agreement"] <- "Invalid value for `agreement`, must be bigger than or equal to 0."
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
# IdentificationTaskResult$unlock()
#
## Below is an example to define the print function
# IdentificationTaskResult$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# IdentificationTaskResult$lock()

