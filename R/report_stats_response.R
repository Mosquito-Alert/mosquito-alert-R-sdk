#' Create a new ReportStatsResponse
#'
#' @description
#' ReportStatsResponse Class
#'
#' @docType class
#' @title ReportStatsResponse
#' @description ReportStatsResponse Class
#' @format An \code{R6Class} generator object
#' @field meta  \link{ReportStatsMeta}
#' @field data  list(\link{ReportStatsRow})
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ReportStatsResponse <- R6::R6Class(
  "ReportStatsResponse",
  public = list(
    `meta` = NULL,
    `data` = NULL,

    #' @description
    #' Initialize a new ReportStatsResponse class.
    #'
    #' @param meta meta
    #' @param data data
    #' @param ... Other optional arguments.
    initialize = function(`meta`, `data`, ...) {
      if (!missing(`meta`)) {
        stopifnot(R6::is.R6(`meta`))
        self$`meta` <- `meta`
      }
      if (!missing(`data`)) {
        stopifnot(is.vector(`data`), length(`data`) != 0)
        sapply(`data`, function(x) stopifnot(R6::is.R6(x)))
        self$`data` <- `data`
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
    #' @return ReportStatsResponse as a base R list.
    #' @examples
    #' # convert array of ReportStatsResponse (x) to a data frame
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
    #' Convert ReportStatsResponse to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ReportStatsResponseObject <- list()
      if (!is.null(self$`meta`)) {
        ReportStatsResponseObject[["meta"]] <-
          self$extractSimpleType(self$`meta`)
      }
      if (!is.null(self$`data`)) {
        ReportStatsResponseObject[["data"]] <-
          self$extractSimpleType(self$`data`)
      }
      return(ReportStatsResponseObject)
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
    #' Deserialize JSON string into an instance of ReportStatsResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of ReportStatsResponse
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`meta`)) {
        `meta_object` <- ReportStatsMeta$new()
        `meta_object`$fromJSON(jsonlite::toJSON(this_object$`meta`, auto_unbox = TRUE, digits = NA))
        self$`meta` <- `meta_object`
      }
      if (!is.null(this_object$`data`)) {
        self$`data` <- ApiClient$new()$deserializeObj(this_object$`data`, "array[ReportStatsRow]", loadNamespace("MosquitoAlert"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ReportStatsResponse in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ReportStatsResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of ReportStatsResponse
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`meta` <- ReportStatsMeta$new()$fromJSON(jsonlite::toJSON(this_object$`meta`, auto_unbox = TRUE, digits = NA))
      self$`data` <- ApiClient$new()$deserializeObj(this_object$`data`, "array[ReportStatsRow]", loadNamespace("MosquitoAlert"))
      self
    },

    #' @description
    #' Validate JSON input with respect to ReportStatsResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `meta`
      if (!is.null(input_json$`meta`)) {
        stopifnot(R6::is.R6(input_json$`meta`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ReportStatsResponse: the required field `meta` is missing."))
      }
      # check the required field `data`
      if (!is.null(input_json$`data`)) {
        stopifnot(is.vector(input_json$`data`), length(input_json$`data`) != 0)
        tmp <- sapply(input_json$`data`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ReportStatsResponse: the required field `data` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ReportStatsResponse
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `meta` is null
      if (is.null(self$`meta`)) {
        return(FALSE)
      }

      # check if the required `data` is null
      if (is.null(self$`data`)) {
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
      # check if the required `meta` is null
      if (is.null(self$`meta`)) {
        invalid_fields["meta"] <- "Non-nullable required field `meta` cannot be null."
      }

      # check if the required `data` is null
      if (is.null(self$`data`)) {
        invalid_fields["data"] <- "Non-nullable required field `data` cannot be null."
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
# ReportStatsResponse$unlock()
#
## Below is an example to define the print function
# ReportStatsResponse$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ReportStatsResponse$lock()

