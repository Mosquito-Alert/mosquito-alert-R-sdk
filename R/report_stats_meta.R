#' Create a new ReportStatsMeta
#'
#' @description
#' ReportStatsMeta Class
#'
#' @docType class
#' @title ReportStatsMeta
#' @description ReportStatsMeta Class
#' @format An \code{R6Class} generator object
#' @field group_by  list(character)
#' @field interval  character [optional]
#' @field cumulative  character [optional]
#' @field level  integer [optional]
#' @field area  \link{AreaMeta} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ReportStatsMeta <- R6::R6Class(
  "ReportStatsMeta",
  public = list(
    `group_by` = NULL,
    `interval` = NULL,
    `cumulative` = NULL,
    `level` = NULL,
    `area` = NULL,

    #' @description
    #' Initialize a new ReportStatsMeta class.
    #'
    #' @param group_by group_by
    #' @param interval interval
    #' @param cumulative cumulative
    #' @param level level
    #' @param area area
    #' @param ... Other optional arguments.
    initialize = function(`group_by`, `interval` = NULL, `cumulative` = NULL, `level` = NULL, `area` = NULL, ...) {
      if (!missing(`group_by`)) {
        stopifnot(is.vector(`group_by`), length(`group_by`) != 0)
        sapply(`group_by`, function(x) stopifnot(is.character(x)))
        self$`group_by` <- `group_by`
      }
      if (!is.null(`interval`)) {
        if (!(`interval` %in% c("day", "week", "month"))) {
          stop(paste("Error! \"", `interval`, "\" cannot be assigned to `interval`. Must be \"day\", \"week\", \"month\".", sep = ""))
        }
        if (!(is.character(`interval`) && length(`interval`) == 1)) {
          stop(paste("Error! Invalid data for `interval`. Must be a string:", `interval`))
        }
        self$`interval` <- `interval`
      }
      if (!is.null(`cumulative`)) {
        if (!(is.logical(`cumulative`) && length(`cumulative`) == 1)) {
          stop(paste("Error! Invalid data for `cumulative`. Must be a boolean:", `cumulative`))
        }
        self$`cumulative` <- `cumulative`
      }
      if (!is.null(`level`)) {
        if (!(`level` %in% c("2", "3"))) {
          stop(paste("Error! \"", `level`, "\" cannot be assigned to `level`. Must be \"2\", \"3\".", sep = ""))
        }
        if (!(is.numeric(`level`) && length(`level`) == 1)) {
          stop(paste("Error! Invalid data for `level`. Must be an integer:", `level`))
        }
        self$`level` <- `level`
      }
      if (!is.null(`area`)) {
        stopifnot(R6::is.R6(`area`))
        self$`area` <- `area`
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
    #' @return ReportStatsMeta as a base R list.
    #' @examples
    #' # convert array of ReportStatsMeta (x) to a data frame
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
    #' Convert ReportStatsMeta to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ReportStatsMetaObject <- list()
      if (!is.null(self$`group_by`)) {
        ReportStatsMetaObject[["group_by"]] <-
          self$`group_by`
      }
      if (!is.null(self$`interval`)) {
        ReportStatsMetaObject[["interval"]] <-
          self$`interval`
      }
      if (!is.null(self$`cumulative`)) {
        ReportStatsMetaObject[["cumulative"]] <-
          self$`cumulative`
      }
      if (!is.null(self$`level`)) {
        ReportStatsMetaObject[["level"]] <-
          self$`level`
      }
      if (!is.null(self$`area`)) {
        ReportStatsMetaObject[["area"]] <-
          self$extractSimpleType(self$`area`)
      }
      return(ReportStatsMetaObject)
    },

    extractSimpleType = function(x) {
      if (R6::is.R6(x)) {
        return(x$toSimpleType())
      } else if (!self$hasNestedR6(x)) {
        return(x)
      }
      lapply(x, self$extractSimpleType)
    },

    hasNestedR6 = function(x) {
      if (R6::is.R6(x)) {
        return(TRUE)
      }
      if (is.list(x)) {
        for (item in x) {
          if (self$hasNestedR6(item)) {
            return(TRUE)
          }
        }
      }
      FALSE
    },

    #' @description
    #' Deserialize JSON string into an instance of ReportStatsMeta
    #'
    #' @param input_json the JSON input
    #' @return the instance of ReportStatsMeta
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`group_by`)) {
        self$`group_by` <- ApiClient$new()$deserializeObj(this_object$`group_by`, "array[character]", loadNamespace("MosquitoAlert"))
      }
      if (!is.null(this_object$`interval`)) {
        if (!is.null(this_object$`interval`) && !(this_object$`interval` %in% c("day", "week", "month"))) {
          stop(paste("Error! \"", this_object$`interval`, "\" cannot be assigned to `interval`. Must be \"day\", \"week\", \"month\".", sep = ""))
        }
        self$`interval` <- this_object$`interval`
      }
      if (!is.null(this_object$`cumulative`)) {
        self$`cumulative` <- this_object$`cumulative`
      }
      if (!is.null(this_object$`level`)) {
        if (!is.null(this_object$`level`) && !(this_object$`level` %in% c("2", "3"))) {
          stop(paste("Error! \"", this_object$`level`, "\" cannot be assigned to `level`. Must be \"2\", \"3\".", sep = ""))
        }
        self$`level` <- this_object$`level`
      }
      if (!is.null(this_object$`area`)) {
        `area_object` <- AreaMeta$new()
        `area_object`$fromJSON(jsonlite::toJSON(this_object$`area`, auto_unbox = TRUE, digits = NA))
        self$`area` <- `area_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ReportStatsMeta in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ReportStatsMeta
    #'
    #' @param input_json the JSON input
    #' @return the instance of ReportStatsMeta
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`group_by` <- ApiClient$new()$deserializeObj(this_object$`group_by`, "array[character]", loadNamespace("MosquitoAlert"))
      if (!is.null(this_object$`interval`) && !(this_object$`interval` %in% c("day", "week", "month"))) {
        stop(paste("Error! \"", this_object$`interval`, "\" cannot be assigned to `interval`. Must be \"day\", \"week\", \"month\".", sep = ""))
      }
      self$`interval` <- this_object$`interval`
      self$`cumulative` <- this_object$`cumulative`
      if (!is.null(this_object$`level`) && !(this_object$`level` %in% c("2", "3"))) {
        stop(paste("Error! \"", this_object$`level`, "\" cannot be assigned to `level`. Must be \"2\", \"3\".", sep = ""))
      }
      self$`level` <- this_object$`level`
      self$`area` <- AreaMeta$new()$fromJSON(jsonlite::toJSON(this_object$`area`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to ReportStatsMeta and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `group_by`
      if (!is.null(input_json$`group_by`)) {
        stopifnot(is.vector(input_json$`group_by`), length(input_json$`group_by`) != 0)
        tmp <- sapply(input_json$`group_by`, function(x) stopifnot(is.character(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ReportStatsMeta: the required field `group_by` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ReportStatsMeta
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `group_by` is null
      if (is.null(self$`group_by`)) {
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
      # check if the required `group_by` is null
      if (is.null(self$`group_by`)) {
        invalid_fields["group_by"] <- "Non-nullable required field `group_by` cannot be null."
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
# ReportStatsMeta$unlock()
#
## Below is an example to define the print function
# ReportStatsMeta$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ReportStatsMeta$lock()

