#' Create a new BiteCountsRequest
#'
#' @description
#' BiteCountsRequest Class
#'
#' @docType class
#' @title BiteCountsRequest
#' @description BiteCountsRequest Class
#' @format An \code{R6Class} generator object
#' @field head Number of bites reported in the head. integer [optional]
#' @field left_arm Number of bites reported in the left arm. integer [optional]
#' @field right_arm Number of bites reported in the right arm. integer [optional]
#' @field chest Number of bites reported in the chest. integer [optional]
#' @field left_leg Number of bites reported in the left leg. integer [optional]
#' @field right_leg Number of bites reported in the right leg. integer [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
BiteCountsRequest <- R6::R6Class(
  "BiteCountsRequest",
  public = list(
    `head` = NULL,
    `left_arm` = NULL,
    `right_arm` = NULL,
    `chest` = NULL,
    `left_leg` = NULL,
    `right_leg` = NULL,

    #' @description
    #' Initialize a new BiteCountsRequest class.
    #'
    #' @param head Number of bites reported in the head.. Default to 0.
    #' @param left_arm Number of bites reported in the left arm.. Default to 0.
    #' @param right_arm Number of bites reported in the right arm.. Default to 0.
    #' @param chest Number of bites reported in the chest.. Default to 0.
    #' @param left_leg Number of bites reported in the left leg.. Default to 0.
    #' @param right_leg Number of bites reported in the right leg.. Default to 0.
    #' @param ... Other optional arguments.
    initialize = function(`head` = 0, `left_arm` = 0, `right_arm` = 0, `chest` = 0, `left_leg` = 0, `right_leg` = 0, ...) {
      if (!is.null(`head`)) {
        if (!(is.numeric(`head`) && length(`head`) == 1)) {
          stop(paste("Error! Invalid data for `head`. Must be an integer:", `head`))
        }
        self$`head` <- `head`
      }
      if (!is.null(`left_arm`)) {
        if (!(is.numeric(`left_arm`) && length(`left_arm`) == 1)) {
          stop(paste("Error! Invalid data for `left_arm`. Must be an integer:", `left_arm`))
        }
        self$`left_arm` <- `left_arm`
      }
      if (!is.null(`right_arm`)) {
        if (!(is.numeric(`right_arm`) && length(`right_arm`) == 1)) {
          stop(paste("Error! Invalid data for `right_arm`. Must be an integer:", `right_arm`))
        }
        self$`right_arm` <- `right_arm`
      }
      if (!is.null(`chest`)) {
        if (!(is.numeric(`chest`) && length(`chest`) == 1)) {
          stop(paste("Error! Invalid data for `chest`. Must be an integer:", `chest`))
        }
        self$`chest` <- `chest`
      }
      if (!is.null(`left_leg`)) {
        if (!(is.numeric(`left_leg`) && length(`left_leg`) == 1)) {
          stop(paste("Error! Invalid data for `left_leg`. Must be an integer:", `left_leg`))
        }
        self$`left_leg` <- `left_leg`
      }
      if (!is.null(`right_leg`)) {
        if (!(is.numeric(`right_leg`) && length(`right_leg`) == 1)) {
          stop(paste("Error! Invalid data for `right_leg`. Must be an integer:", `right_leg`))
        }
        self$`right_leg` <- `right_leg`
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
    #' @return BiteCountsRequest as a base R list.
    #' @examples
    #' # convert array of BiteCountsRequest (x) to a data frame
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
    #' Convert BiteCountsRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      BiteCountsRequestObject <- list()
      if (!is.null(self$`head`)) {
        BiteCountsRequestObject[["head"]] <-
          self$`head`
      }
      if (!is.null(self$`left_arm`)) {
        BiteCountsRequestObject[["left_arm"]] <-
          self$`left_arm`
      }
      if (!is.null(self$`right_arm`)) {
        BiteCountsRequestObject[["right_arm"]] <-
          self$`right_arm`
      }
      if (!is.null(self$`chest`)) {
        BiteCountsRequestObject[["chest"]] <-
          self$`chest`
      }
      if (!is.null(self$`left_leg`)) {
        BiteCountsRequestObject[["left_leg"]] <-
          self$`left_leg`
      }
      if (!is.null(self$`right_leg`)) {
        BiteCountsRequestObject[["right_leg"]] <-
          self$`right_leg`
      }
      return(BiteCountsRequestObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of BiteCountsRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of BiteCountsRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`head`)) {
        self$`head` <- this_object$`head`
      }
      if (!is.null(this_object$`left_arm`)) {
        self$`left_arm` <- this_object$`left_arm`
      }
      if (!is.null(this_object$`right_arm`)) {
        self$`right_arm` <- this_object$`right_arm`
      }
      if (!is.null(this_object$`chest`)) {
        self$`chest` <- this_object$`chest`
      }
      if (!is.null(this_object$`left_leg`)) {
        self$`left_leg` <- this_object$`left_leg`
      }
      if (!is.null(this_object$`right_leg`)) {
        self$`right_leg` <- this_object$`right_leg`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return BiteCountsRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of BiteCountsRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of BiteCountsRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`head` <- this_object$`head`
      self$`left_arm` <- this_object$`left_arm`
      self$`right_arm` <- this_object$`right_arm`
      self$`chest` <- this_object$`chest`
      self$`left_leg` <- this_object$`left_leg`
      self$`right_leg` <- this_object$`right_leg`
      self
    },

    #' @description
    #' Validate JSON input with respect to BiteCountsRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of BiteCountsRequest
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
# BiteCountsRequest$unlock()
#
## Below is an example to define the print function
# BiteCountsRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# BiteCountsRequest$lock()

