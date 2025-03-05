#' Create a new ObservationRequest
#'
#' @description
#' ObservationRequest Class
#'
#' @docType class
#' @title ObservationRequest
#' @description ObservationRequest Class
#' @format An \code{R6Class} generator object
#' @field created_at  character
#' @field sent_at  character
#' @field location  \link{LocationRequest}
#' @field note Note user attached to report. character [optional]
#' @field tags  list(character) [optional]
#' @field photos  list(\link{SimplePhotoRequest})
#' @field event_environment The environment where the event took place. character [optional]
#' @field event_moment The moment of the day when the event took place. character [optional]
#' @field user_perceived_mosquito_specie The mosquito specie perceived by the user. character [optional]
#' @field user_perceived_mosquito_thorax The species of mosquito that the thorax resembles, according to the user. character [optional]
#' @field user_perceived_mosquito_abdomen The species of mosquito that the abdomen resembles, according to the user. character [optional]
#' @field user_perceived_mosquito_legs The species of mosquito that the leg resembles, according to the user. character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ObservationRequest <- R6::R6Class(
  "ObservationRequest",
  public = list(
    `created_at` = NULL,
    `sent_at` = NULL,
    `location` = NULL,
    `note` = NULL,
    `tags` = NULL,
    `photos` = NULL,
    `event_environment` = NULL,
    `event_moment` = NULL,
    `user_perceived_mosquito_specie` = NULL,
    `user_perceived_mosquito_thorax` = NULL,
    `user_perceived_mosquito_abdomen` = NULL,
    `user_perceived_mosquito_legs` = NULL,

    #' @description
    #' Initialize a new ObservationRequest class.
    #'
    #' @param created_at created_at
    #' @param sent_at sent_at
    #' @param location location
    #' @param photos photos
    #' @param note Note user attached to report.
    #' @param tags tags
    #' @param event_environment The environment where the event took place.
    #' @param event_moment The moment of the day when the event took place.
    #' @param user_perceived_mosquito_specie The mosquito specie perceived by the user.
    #' @param user_perceived_mosquito_thorax The species of mosquito that the thorax resembles, according to the user.
    #' @param user_perceived_mosquito_abdomen The species of mosquito that the abdomen resembles, according to the user.
    #' @param user_perceived_mosquito_legs The species of mosquito that the leg resembles, according to the user.
    #' @param ... Other optional arguments.
    initialize = function(`created_at`, `sent_at`, `location`, `photos`, `note` = NULL, `tags` = NULL, `event_environment` = NULL, `event_moment` = NULL, `user_perceived_mosquito_specie` = NULL, `user_perceived_mosquito_thorax` = NULL, `user_perceived_mosquito_abdomen` = NULL, `user_perceived_mosquito_legs` = NULL, ...) {
      if (!missing(`created_at`)) {
        if (!(is.character(`created_at`) && length(`created_at`) == 1)) {
          stop(paste("Error! Invalid data for `created_at`. Must be a string:", `created_at`))
        }
        self$`created_at` <- `created_at`
      }
      if (!missing(`sent_at`)) {
        if (!(is.character(`sent_at`) && length(`sent_at`) == 1)) {
          stop(paste("Error! Invalid data for `sent_at`. Must be a string:", `sent_at`))
        }
        self$`sent_at` <- `sent_at`
      }
      if (!missing(`location`)) {
        stopifnot(R6::is.R6(`location`))
        self$`location` <- `location`
      }
      if (!missing(`photos`)) {
        stopifnot(is.vector(`photos`), length(`photos`) != 0)
        sapply(`photos`, function(x) stopifnot(R6::is.R6(x)))
        self$`photos` <- `photos`
      }
      if (!is.null(`note`)) {
        if (!(is.character(`note`) && length(`note`) == 1)) {
          stop(paste("Error! Invalid data for `note`. Must be a string:", `note`))
        }
        self$`note` <- `note`
      }
      if (!is.null(`tags`)) {
        stopifnot(is.vector(`tags`), length(`tags`) != 0)
        sapply(`tags`, function(x) stopifnot(is.character(x)))
        self$`tags` <- `tags`
      }
      if (!is.null(`event_environment`)) {
        if (!(`event_environment` %in% c("indoors", "outdoors", "vehicle", ""))) {
          stop(paste("Error! \"", `event_environment`, "\" cannot be assigned to `event_environment`. Must be \"indoors\", \"outdoors\", \"vehicle\", \"\".", sep = ""))
        }
        if (!(is.character(`event_environment`) && length(`event_environment`) == 1)) {
          stop(paste("Error! Invalid data for `event_environment`. Must be a string:", `event_environment`))
        }
        self$`event_environment` <- `event_environment`
      }
      if (!is.null(`event_moment`)) {
        if (!(`event_moment` %in% c("now", "last_morning", "last_midday", "last_afternoon", "last_night", ""))) {
          stop(paste("Error! \"", `event_moment`, "\" cannot be assigned to `event_moment`. Must be \"now\", \"last_morning\", \"last_midday\", \"last_afternoon\", \"last_night\", \"\".", sep = ""))
        }
        if (!(is.character(`event_moment`) && length(`event_moment`) == 1)) {
          stop(paste("Error! Invalid data for `event_moment`. Must be a string:", `event_moment`))
        }
        self$`event_moment` <- `event_moment`
      }
      if (!is.null(`user_perceived_mosquito_specie`)) {
        if (!(`user_perceived_mosquito_specie` %in% c("albopictus", "aegypti", "japonicus", "koreicus", "culex", "other", ""))) {
          stop(paste("Error! \"", `user_perceived_mosquito_specie`, "\" cannot be assigned to `user_perceived_mosquito_specie`. Must be \"albopictus\", \"aegypti\", \"japonicus\", \"koreicus\", \"culex\", \"other\", \"\".", sep = ""))
        }
        if (!(is.character(`user_perceived_mosquito_specie`) && length(`user_perceived_mosquito_specie`) == 1)) {
          stop(paste("Error! Invalid data for `user_perceived_mosquito_specie`. Must be a string:", `user_perceived_mosquito_specie`))
        }
        self$`user_perceived_mosquito_specie` <- `user_perceived_mosquito_specie`
      }
      if (!is.null(`user_perceived_mosquito_thorax`)) {
        if (!(`user_perceived_mosquito_thorax` %in% c("albopictus", "aegypti", "japonicus", "koreicus", "culex", "other", ""))) {
          stop(paste("Error! \"", `user_perceived_mosquito_thorax`, "\" cannot be assigned to `user_perceived_mosquito_thorax`. Must be \"albopictus\", \"aegypti\", \"japonicus\", \"koreicus\", \"culex\", \"other\", \"\".", sep = ""))
        }
        if (!(is.character(`user_perceived_mosquito_thorax`) && length(`user_perceived_mosquito_thorax`) == 1)) {
          stop(paste("Error! Invalid data for `user_perceived_mosquito_thorax`. Must be a string:", `user_perceived_mosquito_thorax`))
        }
        self$`user_perceived_mosquito_thorax` <- `user_perceived_mosquito_thorax`
      }
      if (!is.null(`user_perceived_mosquito_abdomen`)) {
        if (!(`user_perceived_mosquito_abdomen` %in% c("albopictus", "aegypti", "japonicus", "koreicus", "culex", "other", ""))) {
          stop(paste("Error! \"", `user_perceived_mosquito_abdomen`, "\" cannot be assigned to `user_perceived_mosquito_abdomen`. Must be \"albopictus\", \"aegypti\", \"japonicus\", \"koreicus\", \"culex\", \"other\", \"\".", sep = ""))
        }
        if (!(is.character(`user_perceived_mosquito_abdomen`) && length(`user_perceived_mosquito_abdomen`) == 1)) {
          stop(paste("Error! Invalid data for `user_perceived_mosquito_abdomen`. Must be a string:", `user_perceived_mosquito_abdomen`))
        }
        self$`user_perceived_mosquito_abdomen` <- `user_perceived_mosquito_abdomen`
      }
      if (!is.null(`user_perceived_mosquito_legs`)) {
        if (!(`user_perceived_mosquito_legs` %in% c("albopictus", "aegypti", "japonicus", "koreicus", "culex", "other", ""))) {
          stop(paste("Error! \"", `user_perceived_mosquito_legs`, "\" cannot be assigned to `user_perceived_mosquito_legs`. Must be \"albopictus\", \"aegypti\", \"japonicus\", \"koreicus\", \"culex\", \"other\", \"\".", sep = ""))
        }
        if (!(is.character(`user_perceived_mosquito_legs`) && length(`user_perceived_mosquito_legs`) == 1)) {
          stop(paste("Error! Invalid data for `user_perceived_mosquito_legs`. Must be a string:", `user_perceived_mosquito_legs`))
        }
        self$`user_perceived_mosquito_legs` <- `user_perceived_mosquito_legs`
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
    #' @return ObservationRequest as a base R list.
    #' @examples
    #' # convert array of ObservationRequest (x) to a data frame
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
    #' Convert ObservationRequest to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ObservationRequestObject <- list()
      if (!is.null(self$`created_at`)) {
        ObservationRequestObject[["created_at"]] <-
          self$`created_at`
      }
      if (!is.null(self$`sent_at`)) {
        ObservationRequestObject[["sent_at"]] <-
          self$`sent_at`
      }
      if (!is.null(self$`location`)) {
        ObservationRequestObject[["location"]] <-
          self$`location`$toSimpleType()
      }
      if (!is.null(self$`note`)) {
        ObservationRequestObject[["note"]] <-
          self$`note`
      }
      if (!is.null(self$`tags`)) {
        ObservationRequestObject[["tags"]] <-
          self$`tags`
      }
      if (!is.null(self$`photos`)) {
        ObservationRequestObject[["photos"]] <-
          lapply(self$`photos`, function(x) x$toSimpleType())
      }
      if (!is.null(self$`event_environment`)) {
        ObservationRequestObject[["event_environment"]] <-
          self$`event_environment`
      }
      if (!is.null(self$`event_moment`)) {
        ObservationRequestObject[["event_moment"]] <-
          self$`event_moment`
      }
      if (!is.null(self$`user_perceived_mosquito_specie`)) {
        ObservationRequestObject[["user_perceived_mosquito_specie"]] <-
          self$`user_perceived_mosquito_specie`
      }
      if (!is.null(self$`user_perceived_mosquito_thorax`)) {
        ObservationRequestObject[["user_perceived_mosquito_thorax"]] <-
          self$`user_perceived_mosquito_thorax`
      }
      if (!is.null(self$`user_perceived_mosquito_abdomen`)) {
        ObservationRequestObject[["user_perceived_mosquito_abdomen"]] <-
          self$`user_perceived_mosquito_abdomen`
      }
      if (!is.null(self$`user_perceived_mosquito_legs`)) {
        ObservationRequestObject[["user_perceived_mosquito_legs"]] <-
          self$`user_perceived_mosquito_legs`
      }
      return(ObservationRequestObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of ObservationRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of ObservationRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`created_at`)) {
        self$`created_at` <- this_object$`created_at`
      }
      if (!is.null(this_object$`sent_at`)) {
        self$`sent_at` <- this_object$`sent_at`
      }
      if (!is.null(this_object$`location`)) {
        `location_object` <- LocationRequest$new()
        `location_object`$fromJSON(jsonlite::toJSON(this_object$`location`, auto_unbox = TRUE, digits = NA))
        self$`location` <- `location_object`
      }
      if (!is.null(this_object$`note`)) {
        self$`note` <- this_object$`note`
      }
      if (!is.null(this_object$`tags`)) {
        self$`tags` <- ApiClient$new()$deserializeObj(this_object$`tags`, "array[character]", loadNamespace("MosquitoAlert"))
      }
      if (!is.null(this_object$`photos`)) {
        self$`photos` <- ApiClient$new()$deserializeObj(this_object$`photos`, "array[SimplePhotoRequest]", loadNamespace("MosquitoAlert"))
      }
      if (!is.null(this_object$`event_environment`)) {
        if (!is.null(this_object$`event_environment`) && !(this_object$`event_environment` %in% c("indoors", "outdoors", "vehicle", ""))) {
          stop(paste("Error! \"", this_object$`event_environment`, "\" cannot be assigned to `event_environment`. Must be \"indoors\", \"outdoors\", \"vehicle\", \"\".", sep = ""))
        }
        self$`event_environment` <- this_object$`event_environment`
      }
      if (!is.null(this_object$`event_moment`)) {
        if (!is.null(this_object$`event_moment`) && !(this_object$`event_moment` %in% c("now", "last_morning", "last_midday", "last_afternoon", "last_night", ""))) {
          stop(paste("Error! \"", this_object$`event_moment`, "\" cannot be assigned to `event_moment`. Must be \"now\", \"last_morning\", \"last_midday\", \"last_afternoon\", \"last_night\", \"\".", sep = ""))
        }
        self$`event_moment` <- this_object$`event_moment`
      }
      if (!is.null(this_object$`user_perceived_mosquito_specie`)) {
        if (!is.null(this_object$`user_perceived_mosquito_specie`) && !(this_object$`user_perceived_mosquito_specie` %in% c("albopictus", "aegypti", "japonicus", "koreicus", "culex", "other", ""))) {
          stop(paste("Error! \"", this_object$`user_perceived_mosquito_specie`, "\" cannot be assigned to `user_perceived_mosquito_specie`. Must be \"albopictus\", \"aegypti\", \"japonicus\", \"koreicus\", \"culex\", \"other\", \"\".", sep = ""))
        }
        self$`user_perceived_mosquito_specie` <- this_object$`user_perceived_mosquito_specie`
      }
      if (!is.null(this_object$`user_perceived_mosquito_thorax`)) {
        if (!is.null(this_object$`user_perceived_mosquito_thorax`) && !(this_object$`user_perceived_mosquito_thorax` %in% c("albopictus", "aegypti", "japonicus", "koreicus", "culex", "other", ""))) {
          stop(paste("Error! \"", this_object$`user_perceived_mosquito_thorax`, "\" cannot be assigned to `user_perceived_mosquito_thorax`. Must be \"albopictus\", \"aegypti\", \"japonicus\", \"koreicus\", \"culex\", \"other\", \"\".", sep = ""))
        }
        self$`user_perceived_mosquito_thorax` <- this_object$`user_perceived_mosquito_thorax`
      }
      if (!is.null(this_object$`user_perceived_mosquito_abdomen`)) {
        if (!is.null(this_object$`user_perceived_mosquito_abdomen`) && !(this_object$`user_perceived_mosquito_abdomen` %in% c("albopictus", "aegypti", "japonicus", "koreicus", "culex", "other", ""))) {
          stop(paste("Error! \"", this_object$`user_perceived_mosquito_abdomen`, "\" cannot be assigned to `user_perceived_mosquito_abdomen`. Must be \"albopictus\", \"aegypti\", \"japonicus\", \"koreicus\", \"culex\", \"other\", \"\".", sep = ""))
        }
        self$`user_perceived_mosquito_abdomen` <- this_object$`user_perceived_mosquito_abdomen`
      }
      if (!is.null(this_object$`user_perceived_mosquito_legs`)) {
        if (!is.null(this_object$`user_perceived_mosquito_legs`) && !(this_object$`user_perceived_mosquito_legs` %in% c("albopictus", "aegypti", "japonicus", "koreicus", "culex", "other", ""))) {
          stop(paste("Error! \"", this_object$`user_perceived_mosquito_legs`, "\" cannot be assigned to `user_perceived_mosquito_legs`. Must be \"albopictus\", \"aegypti\", \"japonicus\", \"koreicus\", \"culex\", \"other\", \"\".", sep = ""))
        }
        self$`user_perceived_mosquito_legs` <- this_object$`user_perceived_mosquito_legs`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ObservationRequest in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ObservationRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of ObservationRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`created_at` <- this_object$`created_at`
      self$`sent_at` <- this_object$`sent_at`
      self$`location` <- LocationRequest$new()$fromJSON(jsonlite::toJSON(this_object$`location`, auto_unbox = TRUE, digits = NA))
      self$`note` <- this_object$`note`
      self$`tags` <- ApiClient$new()$deserializeObj(this_object$`tags`, "array[character]", loadNamespace("MosquitoAlert"))
      self$`photos` <- ApiClient$new()$deserializeObj(this_object$`photos`, "array[SimplePhotoRequest]", loadNamespace("MosquitoAlert"))
      if (!is.null(this_object$`event_environment`) && !(this_object$`event_environment` %in% c("indoors", "outdoors", "vehicle", ""))) {
        stop(paste("Error! \"", this_object$`event_environment`, "\" cannot be assigned to `event_environment`. Must be \"indoors\", \"outdoors\", \"vehicle\", \"\".", sep = ""))
      }
      self$`event_environment` <- this_object$`event_environment`
      if (!is.null(this_object$`event_moment`) && !(this_object$`event_moment` %in% c("now", "last_morning", "last_midday", "last_afternoon", "last_night", ""))) {
        stop(paste("Error! \"", this_object$`event_moment`, "\" cannot be assigned to `event_moment`. Must be \"now\", \"last_morning\", \"last_midday\", \"last_afternoon\", \"last_night\", \"\".", sep = ""))
      }
      self$`event_moment` <- this_object$`event_moment`
      if (!is.null(this_object$`user_perceived_mosquito_specie`) && !(this_object$`user_perceived_mosquito_specie` %in% c("albopictus", "aegypti", "japonicus", "koreicus", "culex", "other", ""))) {
        stop(paste("Error! \"", this_object$`user_perceived_mosquito_specie`, "\" cannot be assigned to `user_perceived_mosquito_specie`. Must be \"albopictus\", \"aegypti\", \"japonicus\", \"koreicus\", \"culex\", \"other\", \"\".", sep = ""))
      }
      self$`user_perceived_mosquito_specie` <- this_object$`user_perceived_mosquito_specie`
      if (!is.null(this_object$`user_perceived_mosquito_thorax`) && !(this_object$`user_perceived_mosquito_thorax` %in% c("albopictus", "aegypti", "japonicus", "koreicus", "culex", "other", ""))) {
        stop(paste("Error! \"", this_object$`user_perceived_mosquito_thorax`, "\" cannot be assigned to `user_perceived_mosquito_thorax`. Must be \"albopictus\", \"aegypti\", \"japonicus\", \"koreicus\", \"culex\", \"other\", \"\".", sep = ""))
      }
      self$`user_perceived_mosquito_thorax` <- this_object$`user_perceived_mosquito_thorax`
      if (!is.null(this_object$`user_perceived_mosquito_abdomen`) && !(this_object$`user_perceived_mosquito_abdomen` %in% c("albopictus", "aegypti", "japonicus", "koreicus", "culex", "other", ""))) {
        stop(paste("Error! \"", this_object$`user_perceived_mosquito_abdomen`, "\" cannot be assigned to `user_perceived_mosquito_abdomen`. Must be \"albopictus\", \"aegypti\", \"japonicus\", \"koreicus\", \"culex\", \"other\", \"\".", sep = ""))
      }
      self$`user_perceived_mosquito_abdomen` <- this_object$`user_perceived_mosquito_abdomen`
      if (!is.null(this_object$`user_perceived_mosquito_legs`) && !(this_object$`user_perceived_mosquito_legs` %in% c("albopictus", "aegypti", "japonicus", "koreicus", "culex", "other", ""))) {
        stop(paste("Error! \"", this_object$`user_perceived_mosquito_legs`, "\" cannot be assigned to `user_perceived_mosquito_legs`. Must be \"albopictus\", \"aegypti\", \"japonicus\", \"koreicus\", \"culex\", \"other\", \"\".", sep = ""))
      }
      self$`user_perceived_mosquito_legs` <- this_object$`user_perceived_mosquito_legs`
      self
    },

    #' @description
    #' Validate JSON input with respect to ObservationRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `created_at`
      if (!is.null(input_json$`created_at`)) {
        if (!(is.character(input_json$`created_at`) && length(input_json$`created_at`) == 1)) {
          stop(paste("Error! Invalid data for `created_at`. Must be a string:", input_json$`created_at`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ObservationRequest: the required field `created_at` is missing."))
      }
      # check the required field `sent_at`
      if (!is.null(input_json$`sent_at`)) {
        if (!(is.character(input_json$`sent_at`) && length(input_json$`sent_at`) == 1)) {
          stop(paste("Error! Invalid data for `sent_at`. Must be a string:", input_json$`sent_at`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ObservationRequest: the required field `sent_at` is missing."))
      }
      # check the required field `location`
      if (!is.null(input_json$`location`)) {
        stopifnot(R6::is.R6(input_json$`location`))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ObservationRequest: the required field `location` is missing."))
      }
      # check the required field `photos`
      if (!is.null(input_json$`photos`)) {
        stopifnot(is.vector(input_json$`photos`), length(input_json$`photos`) != 0)
        tmp <- sapply(input_json$`photos`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ObservationRequest: the required field `photos` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ObservationRequest
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `created_at` is null
      if (is.null(self$`created_at`)) {
        return(FALSE)
      }

      # check if the required `sent_at` is null
      if (is.null(self$`sent_at`)) {
        return(FALSE)
      }

      # check if the required `location` is null
      if (is.null(self$`location`)) {
        return(FALSE)
      }

      # check if the required `photos` is null
      if (is.null(self$`photos`)) {
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
      # check if the required `created_at` is null
      if (is.null(self$`created_at`)) {
        invalid_fields["created_at"] <- "Non-nullable required field `created_at` cannot be null."
      }

      # check if the required `sent_at` is null
      if (is.null(self$`sent_at`)) {
        invalid_fields["sent_at"] <- "Non-nullable required field `sent_at` cannot be null."
      }

      # check if the required `location` is null
      if (is.null(self$`location`)) {
        invalid_fields["location"] <- "Non-nullable required field `location` cannot be null."
      }

      # check if the required `photos` is null
      if (is.null(self$`photos`)) {
        invalid_fields["photos"] <- "Non-nullable required field `photos` cannot be null."
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
# ObservationRequest$unlock()
#
## Below is an example to define the print function
# ObservationRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ObservationRequest$lock()

