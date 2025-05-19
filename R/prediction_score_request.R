#' Create a new PredictionScoreRequest
#'
#' @description
#' PredictionScoreRequest Class
#'
#' @docType class
#' @title PredictionScoreRequest
#' @description PredictionScoreRequest Class
#' @format An \code{R6Class} generator object
#' @field ae_albopictus Score value for the class Aedes albopictus numeric
#' @field ae_aegypti Score value for the class Aedes aegypti numeric
#' @field ae_japonicus Score value for the class Aedes japonicus numeric
#' @field ae_koreicus Score value for the class Aedes koreicus numeric
#' @field culex Score value for the class Culex (s.p) numeric
#' @field anopheles Score value for the class Anopheles (s.p.) numeric
#' @field culiseta Score value for the class Culiseta (s.p.) numeric
#' @field other_species Score value for the class Ohter species numeric
#' @field not_sure Score value for the class Unidentifiable numeric
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PredictionScoreRequest <- R6::R6Class(
  "PredictionScoreRequest",
  public = list(
    `ae_albopictus` = NULL,
    `ae_aegypti` = NULL,
    `ae_japonicus` = NULL,
    `ae_koreicus` = NULL,
    `culex` = NULL,
    `anopheles` = NULL,
    `culiseta` = NULL,
    `other_species` = NULL,
    `not_sure` = NULL,

    #' @description
    #' Initialize a new PredictionScoreRequest class.
    #'
    #' @param ae_albopictus Score value for the class Aedes albopictus
    #' @param ae_aegypti Score value for the class Aedes aegypti
    #' @param ae_japonicus Score value for the class Aedes japonicus
    #' @param ae_koreicus Score value for the class Aedes koreicus
    #' @param culex Score value for the class Culex (s.p)
    #' @param anopheles Score value for the class Anopheles (s.p.)
    #' @param culiseta Score value for the class Culiseta (s.p.)
    #' @param other_species Score value for the class Ohter species
    #' @param not_sure Score value for the class Unidentifiable
    #' @param ... Other optional arguments.
    initialize = function(`ae_albopictus`, `ae_aegypti`, `ae_japonicus`, `ae_koreicus`, `culex`, `anopheles`, `culiseta`, `other_species`, `not_sure`, ...) {
      if (!missing(`ae_albopictus`)) {
        if (!(is.numeric(`ae_albopictus`) && length(`ae_albopictus`) == 1)) {
          stop(paste("Error! Invalid data for `ae_albopictus`. Must be a number:", `ae_albopictus`))
        }
        self$`ae_albopictus` <- `ae_albopictus`
      }
      if (!missing(`ae_aegypti`)) {
        if (!(is.numeric(`ae_aegypti`) && length(`ae_aegypti`) == 1)) {
          stop(paste("Error! Invalid data for `ae_aegypti`. Must be a number:", `ae_aegypti`))
        }
        self$`ae_aegypti` <- `ae_aegypti`
      }
      if (!missing(`ae_japonicus`)) {
        if (!(is.numeric(`ae_japonicus`) && length(`ae_japonicus`) == 1)) {
          stop(paste("Error! Invalid data for `ae_japonicus`. Must be a number:", `ae_japonicus`))
        }
        self$`ae_japonicus` <- `ae_japonicus`
      }
      if (!missing(`ae_koreicus`)) {
        if (!(is.numeric(`ae_koreicus`) && length(`ae_koreicus`) == 1)) {
          stop(paste("Error! Invalid data for `ae_koreicus`. Must be a number:", `ae_koreicus`))
        }
        self$`ae_koreicus` <- `ae_koreicus`
      }
      if (!missing(`culex`)) {
        if (!(is.numeric(`culex`) && length(`culex`) == 1)) {
          stop(paste("Error! Invalid data for `culex`. Must be a number:", `culex`))
        }
        self$`culex` <- `culex`
      }
      if (!missing(`anopheles`)) {
        if (!(is.numeric(`anopheles`) && length(`anopheles`) == 1)) {
          stop(paste("Error! Invalid data for `anopheles`. Must be a number:", `anopheles`))
        }
        self$`anopheles` <- `anopheles`
      }
      if (!missing(`culiseta`)) {
        if (!(is.numeric(`culiseta`) && length(`culiseta`) == 1)) {
          stop(paste("Error! Invalid data for `culiseta`. Must be a number:", `culiseta`))
        }
        self$`culiseta` <- `culiseta`
      }
      if (!missing(`other_species`)) {
        if (!(is.numeric(`other_species`) && length(`other_species`) == 1)) {
          stop(paste("Error! Invalid data for `other_species`. Must be a number:", `other_species`))
        }
        self$`other_species` <- `other_species`
      }
      if (!missing(`not_sure`)) {
        if (!(is.numeric(`not_sure`) && length(`not_sure`) == 1)) {
          stop(paste("Error! Invalid data for `not_sure`. Must be a number:", `not_sure`))
        }
        self$`not_sure` <- `not_sure`
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
    #' @return PredictionScoreRequest as a base R list.
    #' @examples
    #' # convert array of PredictionScoreRequest (x) to a data frame
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
    #' Convert PredictionScoreRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      PredictionScoreRequestObject <- list()
      if (!is.null(self$`ae_albopictus`)) {
        PredictionScoreRequestObject[["ae_albopictus"]] <-
          self$`ae_albopictus`
      }
      if (!is.null(self$`ae_aegypti`)) {
        PredictionScoreRequestObject[["ae_aegypti"]] <-
          self$`ae_aegypti`
      }
      if (!is.null(self$`ae_japonicus`)) {
        PredictionScoreRequestObject[["ae_japonicus"]] <-
          self$`ae_japonicus`
      }
      if (!is.null(self$`ae_koreicus`)) {
        PredictionScoreRequestObject[["ae_koreicus"]] <-
          self$`ae_koreicus`
      }
      if (!is.null(self$`culex`)) {
        PredictionScoreRequestObject[["culex"]] <-
          self$`culex`
      }
      if (!is.null(self$`anopheles`)) {
        PredictionScoreRequestObject[["anopheles"]] <-
          self$`anopheles`
      }
      if (!is.null(self$`culiseta`)) {
        PredictionScoreRequestObject[["culiseta"]] <-
          self$`culiseta`
      }
      if (!is.null(self$`other_species`)) {
        PredictionScoreRequestObject[["other_species"]] <-
          self$`other_species`
      }
      if (!is.null(self$`not_sure`)) {
        PredictionScoreRequestObject[["not_sure"]] <-
          self$`not_sure`
      }
      return(PredictionScoreRequestObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of PredictionScoreRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of PredictionScoreRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`ae_albopictus`)) {
        self$`ae_albopictus` <- this_object$`ae_albopictus`
      }
      if (!is.null(this_object$`ae_aegypti`)) {
        self$`ae_aegypti` <- this_object$`ae_aegypti`
      }
      if (!is.null(this_object$`ae_japonicus`)) {
        self$`ae_japonicus` <- this_object$`ae_japonicus`
      }
      if (!is.null(this_object$`ae_koreicus`)) {
        self$`ae_koreicus` <- this_object$`ae_koreicus`
      }
      if (!is.null(this_object$`culex`)) {
        self$`culex` <- this_object$`culex`
      }
      if (!is.null(this_object$`anopheles`)) {
        self$`anopheles` <- this_object$`anopheles`
      }
      if (!is.null(this_object$`culiseta`)) {
        self$`culiseta` <- this_object$`culiseta`
      }
      if (!is.null(this_object$`other_species`)) {
        self$`other_species` <- this_object$`other_species`
      }
      if (!is.null(this_object$`not_sure`)) {
        self$`not_sure` <- this_object$`not_sure`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return PredictionScoreRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of PredictionScoreRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of PredictionScoreRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`ae_albopictus` <- this_object$`ae_albopictus`
      self$`ae_aegypti` <- this_object$`ae_aegypti`
      self$`ae_japonicus` <- this_object$`ae_japonicus`
      self$`ae_koreicus` <- this_object$`ae_koreicus`
      self$`culex` <- this_object$`culex`
      self$`anopheles` <- this_object$`anopheles`
      self$`culiseta` <- this_object$`culiseta`
      self$`other_species` <- this_object$`other_species`
      self$`not_sure` <- this_object$`not_sure`
      self
    },

    #' @description
    #' Validate JSON input with respect to PredictionScoreRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `ae_albopictus`
      if (!is.null(input_json$`ae_albopictus`)) {
        if (!(is.numeric(input_json$`ae_albopictus`) && length(input_json$`ae_albopictus`) == 1)) {
          stop(paste("Error! Invalid data for `ae_albopictus`. Must be a number:", input_json$`ae_albopictus`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PredictionScoreRequest: the required field `ae_albopictus` is missing."))
      }
      # check the required field `ae_aegypti`
      if (!is.null(input_json$`ae_aegypti`)) {
        if (!(is.numeric(input_json$`ae_aegypti`) && length(input_json$`ae_aegypti`) == 1)) {
          stop(paste("Error! Invalid data for `ae_aegypti`. Must be a number:", input_json$`ae_aegypti`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PredictionScoreRequest: the required field `ae_aegypti` is missing."))
      }
      # check the required field `ae_japonicus`
      if (!is.null(input_json$`ae_japonicus`)) {
        if (!(is.numeric(input_json$`ae_japonicus`) && length(input_json$`ae_japonicus`) == 1)) {
          stop(paste("Error! Invalid data for `ae_japonicus`. Must be a number:", input_json$`ae_japonicus`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PredictionScoreRequest: the required field `ae_japonicus` is missing."))
      }
      # check the required field `ae_koreicus`
      if (!is.null(input_json$`ae_koreicus`)) {
        if (!(is.numeric(input_json$`ae_koreicus`) && length(input_json$`ae_koreicus`) == 1)) {
          stop(paste("Error! Invalid data for `ae_koreicus`. Must be a number:", input_json$`ae_koreicus`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PredictionScoreRequest: the required field `ae_koreicus` is missing."))
      }
      # check the required field `culex`
      if (!is.null(input_json$`culex`)) {
        if (!(is.numeric(input_json$`culex`) && length(input_json$`culex`) == 1)) {
          stop(paste("Error! Invalid data for `culex`. Must be a number:", input_json$`culex`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PredictionScoreRequest: the required field `culex` is missing."))
      }
      # check the required field `anopheles`
      if (!is.null(input_json$`anopheles`)) {
        if (!(is.numeric(input_json$`anopheles`) && length(input_json$`anopheles`) == 1)) {
          stop(paste("Error! Invalid data for `anopheles`. Must be a number:", input_json$`anopheles`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PredictionScoreRequest: the required field `anopheles` is missing."))
      }
      # check the required field `culiseta`
      if (!is.null(input_json$`culiseta`)) {
        if (!(is.numeric(input_json$`culiseta`) && length(input_json$`culiseta`) == 1)) {
          stop(paste("Error! Invalid data for `culiseta`. Must be a number:", input_json$`culiseta`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PredictionScoreRequest: the required field `culiseta` is missing."))
      }
      # check the required field `other_species`
      if (!is.null(input_json$`other_species`)) {
        if (!(is.numeric(input_json$`other_species`) && length(input_json$`other_species`) == 1)) {
          stop(paste("Error! Invalid data for `other_species`. Must be a number:", input_json$`other_species`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PredictionScoreRequest: the required field `other_species` is missing."))
      }
      # check the required field `not_sure`
      if (!is.null(input_json$`not_sure`)) {
        if (!(is.numeric(input_json$`not_sure`) && length(input_json$`not_sure`) == 1)) {
          stop(paste("Error! Invalid data for `not_sure`. Must be a number:", input_json$`not_sure`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for PredictionScoreRequest: the required field `not_sure` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of PredictionScoreRequest
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `ae_albopictus` is null
      if (is.null(self$`ae_albopictus`)) {
        return(FALSE)
      }

      if (self$`ae_albopictus` > 1.0) {
        return(FALSE)
      }
      if (self$`ae_albopictus` < 0.0) {
        return(FALSE)
      }

      # check if the required `ae_aegypti` is null
      if (is.null(self$`ae_aegypti`)) {
        return(FALSE)
      }

      if (self$`ae_aegypti` > 1.0) {
        return(FALSE)
      }
      if (self$`ae_aegypti` < 0.0) {
        return(FALSE)
      }

      # check if the required `ae_japonicus` is null
      if (is.null(self$`ae_japonicus`)) {
        return(FALSE)
      }

      if (self$`ae_japonicus` > 1.0) {
        return(FALSE)
      }
      if (self$`ae_japonicus` < 0.0) {
        return(FALSE)
      }

      # check if the required `ae_koreicus` is null
      if (is.null(self$`ae_koreicus`)) {
        return(FALSE)
      }

      if (self$`ae_koreicus` > 1.0) {
        return(FALSE)
      }
      if (self$`ae_koreicus` < 0.0) {
        return(FALSE)
      }

      # check if the required `culex` is null
      if (is.null(self$`culex`)) {
        return(FALSE)
      }

      if (self$`culex` > 1.0) {
        return(FALSE)
      }
      if (self$`culex` < 0.0) {
        return(FALSE)
      }

      # check if the required `anopheles` is null
      if (is.null(self$`anopheles`)) {
        return(FALSE)
      }

      if (self$`anopheles` > 1.0) {
        return(FALSE)
      }
      if (self$`anopheles` < 0.0) {
        return(FALSE)
      }

      # check if the required `culiseta` is null
      if (is.null(self$`culiseta`)) {
        return(FALSE)
      }

      if (self$`culiseta` > 1.0) {
        return(FALSE)
      }
      if (self$`culiseta` < 0.0) {
        return(FALSE)
      }

      # check if the required `other_species` is null
      if (is.null(self$`other_species`)) {
        return(FALSE)
      }

      if (self$`other_species` > 1.0) {
        return(FALSE)
      }
      if (self$`other_species` < 0.0) {
        return(FALSE)
      }

      # check if the required `not_sure` is null
      if (is.null(self$`not_sure`)) {
        return(FALSE)
      }

      if (self$`not_sure` > 1.0) {
        return(FALSE)
      }
      if (self$`not_sure` < 0.0) {
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
      # check if the required `ae_albopictus` is null
      if (is.null(self$`ae_albopictus`)) {
        invalid_fields["ae_albopictus"] <- "Non-nullable required field `ae_albopictus` cannot be null."
      }

      if (self$`ae_albopictus` > 1.0) {
        invalid_fields["ae_albopictus"] <- "Invalid value for `ae_albopictus`, must be smaller than or equal to 1.0."
      }
      if (self$`ae_albopictus` < 0.0) {
        invalid_fields["ae_albopictus"] <- "Invalid value for `ae_albopictus`, must be bigger than or equal to 0.0."
      }

      # check if the required `ae_aegypti` is null
      if (is.null(self$`ae_aegypti`)) {
        invalid_fields["ae_aegypti"] <- "Non-nullable required field `ae_aegypti` cannot be null."
      }

      if (self$`ae_aegypti` > 1.0) {
        invalid_fields["ae_aegypti"] <- "Invalid value for `ae_aegypti`, must be smaller than or equal to 1.0."
      }
      if (self$`ae_aegypti` < 0.0) {
        invalid_fields["ae_aegypti"] <- "Invalid value for `ae_aegypti`, must be bigger than or equal to 0.0."
      }

      # check if the required `ae_japonicus` is null
      if (is.null(self$`ae_japonicus`)) {
        invalid_fields["ae_japonicus"] <- "Non-nullable required field `ae_japonicus` cannot be null."
      }

      if (self$`ae_japonicus` > 1.0) {
        invalid_fields["ae_japonicus"] <- "Invalid value for `ae_japonicus`, must be smaller than or equal to 1.0."
      }
      if (self$`ae_japonicus` < 0.0) {
        invalid_fields["ae_japonicus"] <- "Invalid value for `ae_japonicus`, must be bigger than or equal to 0.0."
      }

      # check if the required `ae_koreicus` is null
      if (is.null(self$`ae_koreicus`)) {
        invalid_fields["ae_koreicus"] <- "Non-nullable required field `ae_koreicus` cannot be null."
      }

      if (self$`ae_koreicus` > 1.0) {
        invalid_fields["ae_koreicus"] <- "Invalid value for `ae_koreicus`, must be smaller than or equal to 1.0."
      }
      if (self$`ae_koreicus` < 0.0) {
        invalid_fields["ae_koreicus"] <- "Invalid value for `ae_koreicus`, must be bigger than or equal to 0.0."
      }

      # check if the required `culex` is null
      if (is.null(self$`culex`)) {
        invalid_fields["culex"] <- "Non-nullable required field `culex` cannot be null."
      }

      if (self$`culex` > 1.0) {
        invalid_fields["culex"] <- "Invalid value for `culex`, must be smaller than or equal to 1.0."
      }
      if (self$`culex` < 0.0) {
        invalid_fields["culex"] <- "Invalid value for `culex`, must be bigger than or equal to 0.0."
      }

      # check if the required `anopheles` is null
      if (is.null(self$`anopheles`)) {
        invalid_fields["anopheles"] <- "Non-nullable required field `anopheles` cannot be null."
      }

      if (self$`anopheles` > 1.0) {
        invalid_fields["anopheles"] <- "Invalid value for `anopheles`, must be smaller than or equal to 1.0."
      }
      if (self$`anopheles` < 0.0) {
        invalid_fields["anopheles"] <- "Invalid value for `anopheles`, must be bigger than or equal to 0.0."
      }

      # check if the required `culiseta` is null
      if (is.null(self$`culiseta`)) {
        invalid_fields["culiseta"] <- "Non-nullable required field `culiseta` cannot be null."
      }

      if (self$`culiseta` > 1.0) {
        invalid_fields["culiseta"] <- "Invalid value for `culiseta`, must be smaller than or equal to 1.0."
      }
      if (self$`culiseta` < 0.0) {
        invalid_fields["culiseta"] <- "Invalid value for `culiseta`, must be bigger than or equal to 0.0."
      }

      # check if the required `other_species` is null
      if (is.null(self$`other_species`)) {
        invalid_fields["other_species"] <- "Non-nullable required field `other_species` cannot be null."
      }

      if (self$`other_species` > 1.0) {
        invalid_fields["other_species"] <- "Invalid value for `other_species`, must be smaller than or equal to 1.0."
      }
      if (self$`other_species` < 0.0) {
        invalid_fields["other_species"] <- "Invalid value for `other_species`, must be bigger than or equal to 0.0."
      }

      # check if the required `not_sure` is null
      if (is.null(self$`not_sure`)) {
        invalid_fields["not_sure"] <- "Non-nullable required field `not_sure` cannot be null."
      }

      if (self$`not_sure` > 1.0) {
        invalid_fields["not_sure"] <- "Invalid value for `not_sure`, must be smaller than or equal to 1.0."
      }
      if (self$`not_sure` < 0.0) {
        invalid_fields["not_sure"] <- "Invalid value for `not_sure`, must be bigger than or equal to 0.0."
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
# PredictionScoreRequest$unlock()
#
## Below is an example to define the print function
# PredictionScoreRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PredictionScoreRequest$lock()

