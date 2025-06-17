#' Create a new AnnotationCharacteristicsRequest
#'
#' @description
#' AnnotationCharacteristicsRequest Class
#'
#' @docType class
#' @title AnnotationCharacteristicsRequest
#' @description AnnotationCharacteristicsRequest Class
#' @format An \code{R6Class} generator object
#' @field sex  character [optional]
#' @field is_blood_fed  character [optional]
#' @field is_gravid  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AnnotationCharacteristicsRequest <- R6::R6Class(
  "AnnotationCharacteristicsRequest",
  public = list(
    `sex` = NULL,
    `is_blood_fed` = NULL,
    `is_gravid` = NULL,

    #' @description
    #' Initialize a new AnnotationCharacteristicsRequest class.
    #'
    #' @param sex sex
    #' @param is_blood_fed is_blood_fed. Default to FALSE.
    #' @param is_gravid is_gravid. Default to FALSE.
    #' @param ... Other optional arguments.
    initialize = function(`sex` = NULL, `is_blood_fed` = FALSE, `is_gravid` = FALSE, ...) {
      if (!is.null(`sex`)) {
        if (!(`sex` %in% c("male", "female"))) {
          stop(paste("Error! \"", `sex`, "\" cannot be assigned to `sex`. Must be \"male\", \"female\".", sep = ""))
        }
        if (!(is.character(`sex`) && length(`sex`) == 1)) {
          stop(paste("Error! Invalid data for `sex`. Must be a string:", `sex`))
        }
        self$`sex` <- `sex`
      }
      if (!is.null(`is_blood_fed`)) {
        if (!(is.logical(`is_blood_fed`) && length(`is_blood_fed`) == 1)) {
          stop(paste("Error! Invalid data for `is_blood_fed`. Must be a boolean:", `is_blood_fed`))
        }
        self$`is_blood_fed` <- `is_blood_fed`
      }
      if (!is.null(`is_gravid`)) {
        if (!(is.logical(`is_gravid`) && length(`is_gravid`) == 1)) {
          stop(paste("Error! Invalid data for `is_gravid`. Must be a boolean:", `is_gravid`))
        }
        self$`is_gravid` <- `is_gravid`
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
    #' @return AnnotationCharacteristicsRequest as a base R list.
    #' @examples
    #' # convert array of AnnotationCharacteristicsRequest (x) to a data frame
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
    #' Convert AnnotationCharacteristicsRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      AnnotationCharacteristicsRequestObject <- list()
      if (!is.null(self$`sex`)) {
        AnnotationCharacteristicsRequestObject[["sex"]] <-
          self$`sex`
      }
      if (!is.null(self$`is_blood_fed`)) {
        AnnotationCharacteristicsRequestObject[["is_blood_fed"]] <-
          self$`is_blood_fed`
      }
      if (!is.null(self$`is_gravid`)) {
        AnnotationCharacteristicsRequestObject[["is_gravid"]] <-
          self$`is_gravid`
      }
      return(AnnotationCharacteristicsRequestObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of AnnotationCharacteristicsRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of AnnotationCharacteristicsRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`sex`)) {
        if (!is.null(this_object$`sex`) && !(this_object$`sex` %in% c("male", "female"))) {
          stop(paste("Error! \"", this_object$`sex`, "\" cannot be assigned to `sex`. Must be \"male\", \"female\".", sep = ""))
        }
        self$`sex` <- this_object$`sex`
      }
      if (!is.null(this_object$`is_blood_fed`)) {
        self$`is_blood_fed` <- this_object$`is_blood_fed`
      }
      if (!is.null(this_object$`is_gravid`)) {
        self$`is_gravid` <- this_object$`is_gravid`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return AnnotationCharacteristicsRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of AnnotationCharacteristicsRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of AnnotationCharacteristicsRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`sex`) && !(this_object$`sex` %in% c("male", "female"))) {
        stop(paste("Error! \"", this_object$`sex`, "\" cannot be assigned to `sex`. Must be \"male\", \"female\".", sep = ""))
      }
      self$`sex` <- this_object$`sex`
      self$`is_blood_fed` <- this_object$`is_blood_fed`
      self$`is_gravid` <- this_object$`is_gravid`
      self
    },

    #' @description
    #' Validate JSON input with respect to AnnotationCharacteristicsRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of AnnotationCharacteristicsRequest
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      TRUE
    },

    #' @description
    #' Return a list of invalid fields (if any).
    #'
    #' @return A list of invalid fields (if any).
    getInvalidFields = function() {
      invalid_fields <- list()
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
# AnnotationCharacteristicsRequest$unlock()
#
## Below is an example to define the print function
# AnnotationCharacteristicsRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# AnnotationCharacteristicsRequest$lock()

