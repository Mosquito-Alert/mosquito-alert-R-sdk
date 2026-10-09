#' Create a new ReportStatsRow
#'
#' @description
#' ReportStatsRow Class
#'
#' @docType class
#' @title ReportStatsRow
#' @description ReportStatsRow Class
#' @format An \code{R6Class} generator object
#' @field date  character [optional]
#' @field region_id  integer [optional]
#' @field region_code  character [optional]
#' @field region_name  character [optional]
#' @field type  character [optional]
#' @field count  integer
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ReportStatsRow <- R6::R6Class(
  "ReportStatsRow",
  public = list(
    `date` = NULL,
    `region_id` = NULL,
    `region_code` = NULL,
    `region_name` = NULL,
    `type` = NULL,
    `count` = NULL,

    #' @description
    #' Initialize a new ReportStatsRow class.
    #'
    #' @param count count
    #' @param date date
    #' @param region_id region_id
    #' @param region_code region_code
    #' @param region_name region_name
    #' @param type type
    #' @param ... Other optional arguments.
    initialize = function(`count`, `date` = NULL, `region_id` = NULL, `region_code` = NULL, `region_name` = NULL, `type` = NULL, ...) {
      if (!missing(`count`)) {
        if (!(is.numeric(`count`) && length(`count`) == 1)) {
          stop(paste("Error! Invalid data for `count`. Must be an integer:", `count`))
        }
        self$`count` <- `count`
      }
      if (!is.null(`date`)) {
        if (!(is.character(`date`) && length(`date`) == 1)) {
          stop(paste("Error! Invalid data for `date`. Must be a string:", `date`))
        }
        self$`date` <- `date`
      }
      if (!is.null(`region_id`)) {
        if (!(is.numeric(`region_id`) && length(`region_id`) == 1)) {
          stop(paste("Error! Invalid data for `region_id`. Must be an integer:", `region_id`))
        }
        self$`region_id` <- `region_id`
      }
      if (!is.null(`region_code`)) {
        if (!(is.character(`region_code`) && length(`region_code`) == 1)) {
          stop(paste("Error! Invalid data for `region_code`. Must be a string:", `region_code`))
        }
        self$`region_code` <- `region_code`
      }
      if (!is.null(`region_name`)) {
        if (!(is.character(`region_name`) && length(`region_name`) == 1)) {
          stop(paste("Error! Invalid data for `region_name`. Must be a string:", `region_name`))
        }
        self$`region_name` <- `region_name`
      }
      if (!is.null(`type`)) {
        if (!(`type` %in% c("bite", "adult", "site"))) {
          stop(paste("Error! \"", `type`, "\" cannot be assigned to `type`. Must be \"bite\", \"adult\", \"site\".", sep = ""))
        }
        if (!(is.character(`type`) && length(`type`) == 1)) {
          stop(paste("Error! Invalid data for `type`. Must be a string:", `type`))
        }
        self$`type` <- `type`
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
    #' @return ReportStatsRow as a base R list.
    #' @examples
    #' # convert array of ReportStatsRow (x) to a data frame
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
    #' Convert ReportStatsRow to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ReportStatsRowObject <- list()
      if (!is.null(self$`date`)) {
        ReportStatsRowObject[["date"]] <-
          self$`date`
      }
      if (!is.null(self$`region_id`)) {
        ReportStatsRowObject[["region_id"]] <-
          self$`region_id`
      }
      if (!is.null(self$`region_code`)) {
        ReportStatsRowObject[["region_code"]] <-
          self$`region_code`
      }
      if (!is.null(self$`region_name`)) {
        ReportStatsRowObject[["region_name"]] <-
          self$`region_name`
      }
      if (!is.null(self$`type`)) {
        ReportStatsRowObject[["type"]] <-
          self$`type`
      }
      if (!is.null(self$`count`)) {
        ReportStatsRowObject[["count"]] <-
          self$`count`
      }
      return(ReportStatsRowObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of ReportStatsRow
    #'
    #' @param input_json the JSON input
    #' @return the instance of ReportStatsRow
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`date`)) {
        self$`date` <- this_object$`date`
      }
      if (!is.null(this_object$`region_id`)) {
        self$`region_id` <- this_object$`region_id`
      }
      if (!is.null(this_object$`region_code`)) {
        self$`region_code` <- this_object$`region_code`
      }
      if (!is.null(this_object$`region_name`)) {
        self$`region_name` <- this_object$`region_name`
      }
      if (!is.null(this_object$`type`)) {
        if (!is.null(this_object$`type`) && !(this_object$`type` %in% c("bite", "adult", "site"))) {
          stop(paste("Error! \"", this_object$`type`, "\" cannot be assigned to `type`. Must be \"bite\", \"adult\", \"site\".", sep = ""))
        }
        self$`type` <- this_object$`type`
      }
      if (!is.null(this_object$`count`)) {
        self$`count` <- this_object$`count`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ReportStatsRow in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ReportStatsRow
    #'
    #' @param input_json the JSON input
    #' @return the instance of ReportStatsRow
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`date` <- this_object$`date`
      self$`region_id` <- this_object$`region_id`
      self$`region_code` <- this_object$`region_code`
      self$`region_name` <- this_object$`region_name`
      if (!is.null(this_object$`type`) && !(this_object$`type` %in% c("bite", "adult", "site"))) {
        stop(paste("Error! \"", this_object$`type`, "\" cannot be assigned to `type`. Must be \"bite\", \"adult\", \"site\".", sep = ""))
      }
      self$`type` <- this_object$`type`
      self$`count` <- this_object$`count`
      self
    },

    #' @description
    #' Validate JSON input with respect to ReportStatsRow and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `count`
      if (!is.null(input_json$`count`)) {
        if (!(is.numeric(input_json$`count`) && length(input_json$`count`) == 1)) {
          stop(paste("Error! Invalid data for `count`. Must be an integer:", input_json$`count`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ReportStatsRow: the required field `count` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ReportStatsRow
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `count` is null
      if (is.null(self$`count`)) {
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
      # check if the required `count` is null
      if (is.null(self$`count`)) {
        invalid_fields["count"] <- "Non-nullable required field `count` cannot be null."
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
# ReportStatsRow$unlock()
#
## Below is an example to define the print function
# ReportStatsRow$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ReportStatsRow$lock()

