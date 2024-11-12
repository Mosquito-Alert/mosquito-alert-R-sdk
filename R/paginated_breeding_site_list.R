#' Create a new PaginatedBreedingSiteList
#'
#' @description
#' PaginatedBreedingSiteList Class
#'
#' @docType class
#' @title PaginatedBreedingSiteList
#' @description PaginatedBreedingSiteList Class
#' @format An \code{R6Class} generator object
#' @field count  integer [optional]
#' @field next  character [optional]
#' @field previous  character [optional]
#' @field results  list(\link{BreedingSite}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PaginatedBreedingSiteList <- R6::R6Class(
  "PaginatedBreedingSiteList",
  public = list(
    `count` = NULL,
    `next` = NULL,
    `previous` = NULL,
    `results` = NULL,

    #' @description
    #' Initialize a new PaginatedBreedingSiteList class.
    #'
    #' @param count count
    #' @param next next
    #' @param previous previous
    #' @param results results
    #' @param ... Other optional arguments.
    initialize = function(`count` = NULL, `next` = NULL, `previous` = NULL, `results` = NULL, ...) {
      if (!is.null(`count`)) {
        if (!(is.numeric(`count`) && length(`count`) == 1)) {
          stop(paste("Error! Invalid data for `count`. Must be an integer:", `count`))
        }
        self$`count` <- `count`
      }
      if (!is.null(`next`)) {
        if (!(is.character(`next`) && length(`next`) == 1)) {
          stop(paste("Error! Invalid data for `next`. Must be a string:", `next`))
        }
        self$`next` <- `next`
      }
      if (!is.null(`previous`)) {
        if (!(is.character(`previous`) && length(`previous`) == 1)) {
          stop(paste("Error! Invalid data for `previous`. Must be a string:", `previous`))
        }
        self$`previous` <- `previous`
      }
      if (!is.null(`results`)) {
        stopifnot(is.vector(`results`), length(`results`) != 0)
        sapply(`results`, function(x) stopifnot(R6::is.R6(x)))
        self$`results` <- `results`
      }
    },

    #' @description
    #' To JSON String
    #'
    #' @return PaginatedBreedingSiteList in JSON format
    toJSON = function() {
      PaginatedBreedingSiteListObject <- list()
      if (!is.null(self$`count`)) {
        PaginatedBreedingSiteListObject[["count"]] <-
          self$`count`
      }
      if (!is.null(self$`next`)) {
        PaginatedBreedingSiteListObject[["next"]] <-
          self$`next`
      }
      if (!is.null(self$`previous`)) {
        PaginatedBreedingSiteListObject[["previous"]] <-
          self$`previous`
      }
      if (!is.null(self$`results`)) {
        PaginatedBreedingSiteListObject[["results"]] <-
          lapply(self$`results`, function(x) x$toJSON())
      }
      PaginatedBreedingSiteListObject
    },

    #' @description
    #' Deserialize JSON string into an instance of PaginatedBreedingSiteList
    #'
    #' @param input_json the JSON input
    #' @return the instance of PaginatedBreedingSiteList
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`count`)) {
        self$`count` <- this_object$`count`
      }
      if (!is.null(this_object$`next`)) {
        self$`next` <- this_object$`next`
      }
      if (!is.null(this_object$`previous`)) {
        self$`previous` <- this_object$`previous`
      }
      if (!is.null(this_object$`results`)) {
        self$`results` <- ApiClient$new()$deserializeObj(this_object$`results`, "array[BreedingSite]", loadNamespace("MosquitoAlert"))
      }
      self
    },

    #' @description
    #' To JSON String
    #'
    #' @return PaginatedBreedingSiteList in JSON format
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`count`)) {
          sprintf(
          '"count":
            %d
                    ',
          self$`count`
          )
        },
        if (!is.null(self$`next`)) {
          sprintf(
          '"next":
            "%s"
                    ',
          self$`next`
          )
        },
        if (!is.null(self$`previous`)) {
          sprintf(
          '"previous":
            "%s"
                    ',
          self$`previous`
          )
        },
        if (!is.null(self$`results`)) {
          sprintf(
          '"results":
          [%s]
',
          paste(sapply(self$`results`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox = TRUE, digits = NA)), collapse = ",")
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },

    #' @description
    #' Deserialize JSON string into an instance of PaginatedBreedingSiteList
    #'
    #' @param input_json the JSON input
    #' @return the instance of PaginatedBreedingSiteList
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`count` <- this_object$`count`
      self$`next` <- this_object$`next`
      self$`previous` <- this_object$`previous`
      self$`results` <- ApiClient$new()$deserializeObj(this_object$`results`, "array[BreedingSite]", loadNamespace("MosquitoAlert"))
      self
    },

    #' @description
    #' Validate JSON input with respect to PaginatedBreedingSiteList and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of PaginatedBreedingSiteList
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
# PaginatedBreedingSiteList$unlock()
#
## Below is an example to define the print function
# PaginatedBreedingSiteList$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# PaginatedBreedingSiteList$lock()

