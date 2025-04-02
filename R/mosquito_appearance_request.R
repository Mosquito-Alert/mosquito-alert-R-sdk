#' Create a new MosquitoAppearanceRequest
#'
#' @description
#' MosquitoAppearanceRequest Class
#'
#' @docType class
#' @title MosquitoAppearanceRequest
#' @description MosquitoAppearanceRequest Class
#' @format An \code{R6Class} generator object
#' @field specie The mosquito specie perceived by the user. character [optional]
#' @field thorax The species of mosquito that the thorax resembles, according to the user. character [optional]
#' @field abdomen The species of mosquito that the abdomen resembles, according to the user. character [optional]
#' @field legs The species of mosquito that the leg resembles, according to the user. character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
MosquitoAppearanceRequest <- R6::R6Class(
  "MosquitoAppearanceRequest",
  public = list(
    `specie` = NULL,
    `thorax` = NULL,
    `abdomen` = NULL,
    `legs` = NULL,

    #' @description
    #' Initialize a new MosquitoAppearanceRequest class.
    #'
    #' @param specie The mosquito specie perceived by the user.
    #' @param thorax The species of mosquito that the thorax resembles, according to the user.
    #' @param abdomen The species of mosquito that the abdomen resembles, according to the user.
    #' @param legs The species of mosquito that the leg resembles, according to the user.
    #' @param ... Other optional arguments.
    initialize = function(`specie` = NULL, `thorax` = NULL, `abdomen` = NULL, `legs` = NULL, ...) {
      if (!is.null(`specie`)) {
        if (!(`specie` %in% c("albopictus", "aegypti", "japonicus", "koreicus", "culex", "other", ""))) {
          stop(paste("Error! \"", `specie`, "\" cannot be assigned to `specie`. Must be \"albopictus\", \"aegypti\", \"japonicus\", \"koreicus\", \"culex\", \"other\", \"\".", sep = ""))
        }
        if (!(is.character(`specie`) && length(`specie`) == 1)) {
          stop(paste("Error! Invalid data for `specie`. Must be a string:", `specie`))
        }
        self$`specie` <- `specie`
      }
      if (!is.null(`thorax`)) {
        if (!(`thorax` %in% c("albopictus", "aegypti", "japonicus", "koreicus", "culex", "other", ""))) {
          stop(paste("Error! \"", `thorax`, "\" cannot be assigned to `thorax`. Must be \"albopictus\", \"aegypti\", \"japonicus\", \"koreicus\", \"culex\", \"other\", \"\".", sep = ""))
        }
        if (!(is.character(`thorax`) && length(`thorax`) == 1)) {
          stop(paste("Error! Invalid data for `thorax`. Must be a string:", `thorax`))
        }
        self$`thorax` <- `thorax`
      }
      if (!is.null(`abdomen`)) {
        if (!(`abdomen` %in% c("albopictus", "aegypti", "japonicus", "koreicus", "culex", "other", ""))) {
          stop(paste("Error! \"", `abdomen`, "\" cannot be assigned to `abdomen`. Must be \"albopictus\", \"aegypti\", \"japonicus\", \"koreicus\", \"culex\", \"other\", \"\".", sep = ""))
        }
        if (!(is.character(`abdomen`) && length(`abdomen`) == 1)) {
          stop(paste("Error! Invalid data for `abdomen`. Must be a string:", `abdomen`))
        }
        self$`abdomen` <- `abdomen`
      }
      if (!is.null(`legs`)) {
        if (!(`legs` %in% c("albopictus", "aegypti", "japonicus", "koreicus", "culex", "other", ""))) {
          stop(paste("Error! \"", `legs`, "\" cannot be assigned to `legs`. Must be \"albopictus\", \"aegypti\", \"japonicus\", \"koreicus\", \"culex\", \"other\", \"\".", sep = ""))
        }
        if (!(is.character(`legs`) && length(`legs`) == 1)) {
          stop(paste("Error! Invalid data for `legs`. Must be a string:", `legs`))
        }
        self$`legs` <- `legs`
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
    #' @return MosquitoAppearanceRequest as a base R list.
    #' @examples
    #' # convert array of MosquitoAppearanceRequest (x) to a data frame
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
    #' Convert MosquitoAppearanceRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      MosquitoAppearanceRequestObject <- list()
      if (!is.null(self$`specie`)) {
        MosquitoAppearanceRequestObject[["specie"]] <-
          self$`specie`
      }
      if (!is.null(self$`thorax`)) {
        MosquitoAppearanceRequestObject[["thorax"]] <-
          self$`thorax`
      }
      if (!is.null(self$`abdomen`)) {
        MosquitoAppearanceRequestObject[["abdomen"]] <-
          self$`abdomen`
      }
      if (!is.null(self$`legs`)) {
        MosquitoAppearanceRequestObject[["legs"]] <-
          self$`legs`
      }
      return(MosquitoAppearanceRequestObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of MosquitoAppearanceRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of MosquitoAppearanceRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`specie`)) {
        if (!is.null(this_object$`specie`) && !(this_object$`specie` %in% c("albopictus", "aegypti", "japonicus", "koreicus", "culex", "other", ""))) {
          stop(paste("Error! \"", this_object$`specie`, "\" cannot be assigned to `specie`. Must be \"albopictus\", \"aegypti\", \"japonicus\", \"koreicus\", \"culex\", \"other\", \"\".", sep = ""))
        }
        self$`specie` <- this_object$`specie`
      }
      if (!is.null(this_object$`thorax`)) {
        if (!is.null(this_object$`thorax`) && !(this_object$`thorax` %in% c("albopictus", "aegypti", "japonicus", "koreicus", "culex", "other", ""))) {
          stop(paste("Error! \"", this_object$`thorax`, "\" cannot be assigned to `thorax`. Must be \"albopictus\", \"aegypti\", \"japonicus\", \"koreicus\", \"culex\", \"other\", \"\".", sep = ""))
        }
        self$`thorax` <- this_object$`thorax`
      }
      if (!is.null(this_object$`abdomen`)) {
        if (!is.null(this_object$`abdomen`) && !(this_object$`abdomen` %in% c("albopictus", "aegypti", "japonicus", "koreicus", "culex", "other", ""))) {
          stop(paste("Error! \"", this_object$`abdomen`, "\" cannot be assigned to `abdomen`. Must be \"albopictus\", \"aegypti\", \"japonicus\", \"koreicus\", \"culex\", \"other\", \"\".", sep = ""))
        }
        self$`abdomen` <- this_object$`abdomen`
      }
      if (!is.null(this_object$`legs`)) {
        if (!is.null(this_object$`legs`) && !(this_object$`legs` %in% c("albopictus", "aegypti", "japonicus", "koreicus", "culex", "other", ""))) {
          stop(paste("Error! \"", this_object$`legs`, "\" cannot be assigned to `legs`. Must be \"albopictus\", \"aegypti\", \"japonicus\", \"koreicus\", \"culex\", \"other\", \"\".", sep = ""))
        }
        self$`legs` <- this_object$`legs`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return MosquitoAppearanceRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of MosquitoAppearanceRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of MosquitoAppearanceRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`specie`) && !(this_object$`specie` %in% c("albopictus", "aegypti", "japonicus", "koreicus", "culex", "other", ""))) {
        stop(paste("Error! \"", this_object$`specie`, "\" cannot be assigned to `specie`. Must be \"albopictus\", \"aegypti\", \"japonicus\", \"koreicus\", \"culex\", \"other\", \"\".", sep = ""))
      }
      self$`specie` <- this_object$`specie`
      if (!is.null(this_object$`thorax`) && !(this_object$`thorax` %in% c("albopictus", "aegypti", "japonicus", "koreicus", "culex", "other", ""))) {
        stop(paste("Error! \"", this_object$`thorax`, "\" cannot be assigned to `thorax`. Must be \"albopictus\", \"aegypti\", \"japonicus\", \"koreicus\", \"culex\", \"other\", \"\".", sep = ""))
      }
      self$`thorax` <- this_object$`thorax`
      if (!is.null(this_object$`abdomen`) && !(this_object$`abdomen` %in% c("albopictus", "aegypti", "japonicus", "koreicus", "culex", "other", ""))) {
        stop(paste("Error! \"", this_object$`abdomen`, "\" cannot be assigned to `abdomen`. Must be \"albopictus\", \"aegypti\", \"japonicus\", \"koreicus\", \"culex\", \"other\", \"\".", sep = ""))
      }
      self$`abdomen` <- this_object$`abdomen`
      if (!is.null(this_object$`legs`) && !(this_object$`legs` %in% c("albopictus", "aegypti", "japonicus", "koreicus", "culex", "other", ""))) {
        stop(paste("Error! \"", this_object$`legs`, "\" cannot be assigned to `legs`. Must be \"albopictus\", \"aegypti\", \"japonicus\", \"koreicus\", \"culex\", \"other\", \"\".", sep = ""))
      }
      self$`legs` <- this_object$`legs`
      self
    },

    #' @description
    #' Validate JSON input with respect to MosquitoAppearanceRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of MosquitoAppearanceRequest
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
# MosquitoAppearanceRequest$unlock()
#
## Below is an example to define the print function
# MosquitoAppearanceRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# MosquitoAppearanceRequest$lock()

