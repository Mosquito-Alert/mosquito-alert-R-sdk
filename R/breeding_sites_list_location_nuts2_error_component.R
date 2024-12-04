#' Create a new BreedingSitesListLocationNuts2ErrorComponent
#'
#' @description
#' BreedingSitesListLocationNuts2ErrorComponent Class
#'
#' @docType class
#' @title BreedingSitesListLocationNuts2ErrorComponent
#' @description BreedingSitesListLocationNuts2ErrorComponent Class
#' @format An \code{R6Class} generator object
#' @field attr  character
#' @field code  character
#' @field detail  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
BreedingSitesListLocationNuts2ErrorComponent <- R6::R6Class(
  "BreedingSitesListLocationNuts2ErrorComponent",
  public = list(
    `attr` = NULL,
    `code` = NULL,
    `detail` = NULL,

    #' @description
    #' Initialize a new BreedingSitesListLocationNuts2ErrorComponent class.
    #'
    #' @param attr attr
    #' @param code code
    #' @param detail detail
    #' @param ... Other optional arguments.
    initialize = function(`attr`, `code`, `detail`, ...) {
      if (!missing(`attr`)) {
        if (!(`attr` %in% c("location_nuts_2"))) {
          stop(paste("Error! \"", `attr`, "\" cannot be assigned to `attr`. Must be \"location_nuts_2\".", sep = ""))
        }
        if (!(is.character(`attr`) && length(`attr`) == 1)) {
          stop(paste("Error! Invalid data for `attr`. Must be a string:", `attr`))
        }
        self$`attr` <- `attr`
      }
      if (!missing(`code`)) {
        if (!(`code` %in% c("null_characters_not_allowed"))) {
          stop(paste("Error! \"", `code`, "\" cannot be assigned to `code`. Must be \"null_characters_not_allowed\".", sep = ""))
        }
        if (!(is.character(`code`) && length(`code`) == 1)) {
          stop(paste("Error! Invalid data for `code`. Must be a string:", `code`))
        }
        self$`code` <- `code`
      }
      if (!missing(`detail`)) {
        if (!(is.character(`detail`) && length(`detail`) == 1)) {
          stop(paste("Error! Invalid data for `detail`. Must be a string:", `detail`))
        }
        self$`detail` <- `detail`
      }
    },

    #' @description
    #' To JSON String
    #'
    #' @return BreedingSitesListLocationNuts2ErrorComponent in JSON format
    toJSON = function() {
      BreedingSitesListLocationNuts2ErrorComponentObject <- list()
      if (!is.null(self$`attr`)) {
        BreedingSitesListLocationNuts2ErrorComponentObject[["attr"]] <-
          self$`attr`
      }
      if (!is.null(self$`code`)) {
        BreedingSitesListLocationNuts2ErrorComponentObject[["code"]] <-
          self$`code`
      }
      if (!is.null(self$`detail`)) {
        BreedingSitesListLocationNuts2ErrorComponentObject[["detail"]] <-
          self$`detail`
      }
      BreedingSitesListLocationNuts2ErrorComponentObject
    },

    #' @description
    #' Deserialize JSON string into an instance of BreedingSitesListLocationNuts2ErrorComponent
    #'
    #' @param input_json the JSON input
    #' @return the instance of BreedingSitesListLocationNuts2ErrorComponent
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`attr`)) {
        if (!is.null(this_object$`attr`) && !(this_object$`attr` %in% c("location_nuts_2"))) {
          stop(paste("Error! \"", this_object$`attr`, "\" cannot be assigned to `attr`. Must be \"location_nuts_2\".", sep = ""))
        }
        self$`attr` <- this_object$`attr`
      }
      if (!is.null(this_object$`code`)) {
        if (!is.null(this_object$`code`) && !(this_object$`code` %in% c("null_characters_not_allowed"))) {
          stop(paste("Error! \"", this_object$`code`, "\" cannot be assigned to `code`. Must be \"null_characters_not_allowed\".", sep = ""))
        }
        self$`code` <- this_object$`code`
      }
      if (!is.null(this_object$`detail`)) {
        self$`detail` <- this_object$`detail`
      }
      self
    },

    #' @description
    #' To JSON String
    #'
    #' @return BreedingSitesListLocationNuts2ErrorComponent in JSON format
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`attr`)) {
          sprintf(
          '"attr":
            "%s"
                    ',
          self$`attr`
          )
        },
        if (!is.null(self$`code`)) {
          sprintf(
          '"code":
            "%s"
                    ',
          self$`code`
          )
        },
        if (!is.null(self$`detail`)) {
          sprintf(
          '"detail":
            "%s"
                    ',
          self$`detail`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },

    #' @description
    #' Deserialize JSON string into an instance of BreedingSitesListLocationNuts2ErrorComponent
    #'
    #' @param input_json the JSON input
    #' @return the instance of BreedingSitesListLocationNuts2ErrorComponent
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`attr`) && !(this_object$`attr` %in% c("location_nuts_2"))) {
        stop(paste("Error! \"", this_object$`attr`, "\" cannot be assigned to `attr`. Must be \"location_nuts_2\".", sep = ""))
      }
      self$`attr` <- this_object$`attr`
      if (!is.null(this_object$`code`) && !(this_object$`code` %in% c("null_characters_not_allowed"))) {
        stop(paste("Error! \"", this_object$`code`, "\" cannot be assigned to `code`. Must be \"null_characters_not_allowed\".", sep = ""))
      }
      self$`code` <- this_object$`code`
      self$`detail` <- this_object$`detail`
      self
    },

    #' @description
    #' Validate JSON input with respect to BreedingSitesListLocationNuts2ErrorComponent and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `attr`
      if (!is.null(input_json$`attr`)) {
        if (!(is.character(input_json$`attr`) && length(input_json$`attr`) == 1)) {
          stop(paste("Error! Invalid data for `attr`. Must be a string:", input_json$`attr`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for BreedingSitesListLocationNuts2ErrorComponent: the required field `attr` is missing."))
      }
      # check the required field `code`
      if (!is.null(input_json$`code`)) {
        if (!(is.character(input_json$`code`) && length(input_json$`code`) == 1)) {
          stop(paste("Error! Invalid data for `code`. Must be a string:", input_json$`code`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for BreedingSitesListLocationNuts2ErrorComponent: the required field `code` is missing."))
      }
      # check the required field `detail`
      if (!is.null(input_json$`detail`)) {
        if (!(is.character(input_json$`detail`) && length(input_json$`detail`) == 1)) {
          stop(paste("Error! Invalid data for `detail`. Must be a string:", input_json$`detail`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for BreedingSitesListLocationNuts2ErrorComponent: the required field `detail` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of BreedingSitesListLocationNuts2ErrorComponent
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `attr` is null
      if (is.null(self$`attr`)) {
        return(FALSE)
      }

      # check if the required `code` is null
      if (is.null(self$`code`)) {
        return(FALSE)
      }

      # check if the required `detail` is null
      if (is.null(self$`detail`)) {
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
      # check if the required `attr` is null
      if (is.null(self$`attr`)) {
        invalid_fields["attr"] <- "Non-nullable required field `attr` cannot be null."
      }

      # check if the required `code` is null
      if (is.null(self$`code`)) {
        invalid_fields["code"] <- "Non-nullable required field `code` cannot be null."
      }

      # check if the required `detail` is null
      if (is.null(self$`detail`)) {
        invalid_fields["detail"] <- "Non-nullable required field `detail` cannot be null."
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
# BreedingSitesListLocationNuts2ErrorComponent$unlock()
#
## Below is an example to define the print function
# BreedingSitesListLocationNuts2ErrorComponent$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# BreedingSitesListLocationNuts2ErrorComponent$lock()

