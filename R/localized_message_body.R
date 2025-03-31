#' Create a new LocalizedMessageBody
#'
#' @description
#' A custom serializer field that supports localization for a dynamic field name. Allows calling with arguments such as 'title', 'message', max_length, help_text, etc.
#'
#' @docType class
#' @title LocalizedMessageBody
#' @description LocalizedMessageBody Class
#' @format An \code{R6Class} generator object
#' @field bg Български character [optional]
#' @field bn বাংলা character [optional]
#' @field ca Català character [optional]
#' @field de Deutsch character [optional]
#' @field el Ελληνικά character [optional]
#' @field en English character
#' @field es Español character [optional]
#' @field eu Euskara character [optional]
#' @field fr Français character [optional]
#' @field gl Galego character [optional]
#' @field hr Hrvatski character [optional]
#' @field hu Magyar character [optional]
#' @field it Italiano character [optional]
#' @field lb Lëtzebuergesch character [optional]
#' @field mk Македонски character [optional]
#' @field nl Nederlands character [optional]
#' @field pt Português character [optional]
#' @field ro Română character [optional]
#' @field sl Slovenščina character [optional]
#' @field sq Shqip character [optional]
#' @field sr Српски character [optional]
#' @field sv Svenska character [optional]
#' @field tr Türkçe character [optional]
#' @field zh-CN 中文（中国） character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
LocalizedMessageBody <- R6::R6Class(
  "LocalizedMessageBody",
  public = list(
    `bg` = NULL,
    `bn` = NULL,
    `ca` = NULL,
    `de` = NULL,
    `el` = NULL,
    `en` = NULL,
    `es` = NULL,
    `eu` = NULL,
    `fr` = NULL,
    `gl` = NULL,
    `hr` = NULL,
    `hu` = NULL,
    `it` = NULL,
    `lb` = NULL,
    `mk` = NULL,
    `nl` = NULL,
    `pt` = NULL,
    `ro` = NULL,
    `sl` = NULL,
    `sq` = NULL,
    `sr` = NULL,
    `sv` = NULL,
    `tr` = NULL,
    `zh-CN` = NULL,

    #' @description
    #' Initialize a new LocalizedMessageBody class.
    #'
    #' @param en English
    #' @param bg Български
    #' @param bn বাংলা
    #' @param ca Català
    #' @param de Deutsch
    #' @param el Ελληνικά
    #' @param es Español
    #' @param eu Euskara
    #' @param fr Français
    #' @param gl Galego
    #' @param hr Hrvatski
    #' @param hu Magyar
    #' @param it Italiano
    #' @param lb Lëtzebuergesch
    #' @param mk Македонски
    #' @param nl Nederlands
    #' @param pt Português
    #' @param ro Română
    #' @param sl Slovenščina
    #' @param sq Shqip
    #' @param sr Српски
    #' @param sv Svenska
    #' @param tr Türkçe
    #' @param zh-CN 中文（中国）
    #' @param ... Other optional arguments.
    initialize = function(`en`, `bg` = NULL, `bn` = NULL, `ca` = NULL, `de` = NULL, `el` = NULL, `es` = NULL, `eu` = NULL, `fr` = NULL, `gl` = NULL, `hr` = NULL, `hu` = NULL, `it` = NULL, `lb` = NULL, `mk` = NULL, `nl` = NULL, `pt` = NULL, `ro` = NULL, `sl` = NULL, `sq` = NULL, `sr` = NULL, `sv` = NULL, `tr` = NULL, `zh-CN` = NULL, ...) {
      if (!missing(`en`)) {
        if (!(is.character(`en`) && length(`en`) == 1)) {
          stop(paste("Error! Invalid data for `en`. Must be a string:", `en`))
        }
        self$`en` <- `en`
      }
      if (!is.null(`bg`)) {
        if (!(is.character(`bg`) && length(`bg`) == 1)) {
          stop(paste("Error! Invalid data for `bg`. Must be a string:", `bg`))
        }
        self$`bg` <- `bg`
      }
      if (!is.null(`bn`)) {
        if (!(is.character(`bn`) && length(`bn`) == 1)) {
          stop(paste("Error! Invalid data for `bn`. Must be a string:", `bn`))
        }
        self$`bn` <- `bn`
      }
      if (!is.null(`ca`)) {
        if (!(is.character(`ca`) && length(`ca`) == 1)) {
          stop(paste("Error! Invalid data for `ca`. Must be a string:", `ca`))
        }
        self$`ca` <- `ca`
      }
      if (!is.null(`de`)) {
        if (!(is.character(`de`) && length(`de`) == 1)) {
          stop(paste("Error! Invalid data for `de`. Must be a string:", `de`))
        }
        self$`de` <- `de`
      }
      if (!is.null(`el`)) {
        if (!(is.character(`el`) && length(`el`) == 1)) {
          stop(paste("Error! Invalid data for `el`. Must be a string:", `el`))
        }
        self$`el` <- `el`
      }
      if (!is.null(`es`)) {
        if (!(is.character(`es`) && length(`es`) == 1)) {
          stop(paste("Error! Invalid data for `es`. Must be a string:", `es`))
        }
        self$`es` <- `es`
      }
      if (!is.null(`eu`)) {
        if (!(is.character(`eu`) && length(`eu`) == 1)) {
          stop(paste("Error! Invalid data for `eu`. Must be a string:", `eu`))
        }
        self$`eu` <- `eu`
      }
      if (!is.null(`fr`)) {
        if (!(is.character(`fr`) && length(`fr`) == 1)) {
          stop(paste("Error! Invalid data for `fr`. Must be a string:", `fr`))
        }
        self$`fr` <- `fr`
      }
      if (!is.null(`gl`)) {
        if (!(is.character(`gl`) && length(`gl`) == 1)) {
          stop(paste("Error! Invalid data for `gl`. Must be a string:", `gl`))
        }
        self$`gl` <- `gl`
      }
      if (!is.null(`hr`)) {
        if (!(is.character(`hr`) && length(`hr`) == 1)) {
          stop(paste("Error! Invalid data for `hr`. Must be a string:", `hr`))
        }
        self$`hr` <- `hr`
      }
      if (!is.null(`hu`)) {
        if (!(is.character(`hu`) && length(`hu`) == 1)) {
          stop(paste("Error! Invalid data for `hu`. Must be a string:", `hu`))
        }
        self$`hu` <- `hu`
      }
      if (!is.null(`it`)) {
        if (!(is.character(`it`) && length(`it`) == 1)) {
          stop(paste("Error! Invalid data for `it`. Must be a string:", `it`))
        }
        self$`it` <- `it`
      }
      if (!is.null(`lb`)) {
        if (!(is.character(`lb`) && length(`lb`) == 1)) {
          stop(paste("Error! Invalid data for `lb`. Must be a string:", `lb`))
        }
        self$`lb` <- `lb`
      }
      if (!is.null(`mk`)) {
        if (!(is.character(`mk`) && length(`mk`) == 1)) {
          stop(paste("Error! Invalid data for `mk`. Must be a string:", `mk`))
        }
        self$`mk` <- `mk`
      }
      if (!is.null(`nl`)) {
        if (!(is.character(`nl`) && length(`nl`) == 1)) {
          stop(paste("Error! Invalid data for `nl`. Must be a string:", `nl`))
        }
        self$`nl` <- `nl`
      }
      if (!is.null(`pt`)) {
        if (!(is.character(`pt`) && length(`pt`) == 1)) {
          stop(paste("Error! Invalid data for `pt`. Must be a string:", `pt`))
        }
        self$`pt` <- `pt`
      }
      if (!is.null(`ro`)) {
        if (!(is.character(`ro`) && length(`ro`) == 1)) {
          stop(paste("Error! Invalid data for `ro`. Must be a string:", `ro`))
        }
        self$`ro` <- `ro`
      }
      if (!is.null(`sl`)) {
        if (!(is.character(`sl`) && length(`sl`) == 1)) {
          stop(paste("Error! Invalid data for `sl`. Must be a string:", `sl`))
        }
        self$`sl` <- `sl`
      }
      if (!is.null(`sq`)) {
        if (!(is.character(`sq`) && length(`sq`) == 1)) {
          stop(paste("Error! Invalid data for `sq`. Must be a string:", `sq`))
        }
        self$`sq` <- `sq`
      }
      if (!is.null(`sr`)) {
        if (!(is.character(`sr`) && length(`sr`) == 1)) {
          stop(paste("Error! Invalid data for `sr`. Must be a string:", `sr`))
        }
        self$`sr` <- `sr`
      }
      if (!is.null(`sv`)) {
        if (!(is.character(`sv`) && length(`sv`) == 1)) {
          stop(paste("Error! Invalid data for `sv`. Must be a string:", `sv`))
        }
        self$`sv` <- `sv`
      }
      if (!is.null(`tr`)) {
        if (!(is.character(`tr`) && length(`tr`) == 1)) {
          stop(paste("Error! Invalid data for `tr`. Must be a string:", `tr`))
        }
        self$`tr` <- `tr`
      }
      if (!is.null(`zh-CN`)) {
        if (!(is.character(`zh-CN`) && length(`zh-CN`) == 1)) {
          stop(paste("Error! Invalid data for `zh-CN`. Must be a string:", `zh-CN`))
        }
        self$`zh-CN` <- `zh-CN`
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
    #' @return LocalizedMessageBody as a base R list.
    #' @examples
    #' # convert array of LocalizedMessageBody (x) to a data frame
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
    #' Convert LocalizedMessageBody to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      LocalizedMessageBodyObject <- list()
      if (!is.null(self$`bg`)) {
        LocalizedMessageBodyObject[["bg"]] <-
          self$`bg`
      }
      if (!is.null(self$`bn`)) {
        LocalizedMessageBodyObject[["bn"]] <-
          self$`bn`
      }
      if (!is.null(self$`ca`)) {
        LocalizedMessageBodyObject[["ca"]] <-
          self$`ca`
      }
      if (!is.null(self$`de`)) {
        LocalizedMessageBodyObject[["de"]] <-
          self$`de`
      }
      if (!is.null(self$`el`)) {
        LocalizedMessageBodyObject[["el"]] <-
          self$`el`
      }
      if (!is.null(self$`en`)) {
        LocalizedMessageBodyObject[["en"]] <-
          self$`en`
      }
      if (!is.null(self$`es`)) {
        LocalizedMessageBodyObject[["es"]] <-
          self$`es`
      }
      if (!is.null(self$`eu`)) {
        LocalizedMessageBodyObject[["eu"]] <-
          self$`eu`
      }
      if (!is.null(self$`fr`)) {
        LocalizedMessageBodyObject[["fr"]] <-
          self$`fr`
      }
      if (!is.null(self$`gl`)) {
        LocalizedMessageBodyObject[["gl"]] <-
          self$`gl`
      }
      if (!is.null(self$`hr`)) {
        LocalizedMessageBodyObject[["hr"]] <-
          self$`hr`
      }
      if (!is.null(self$`hu`)) {
        LocalizedMessageBodyObject[["hu"]] <-
          self$`hu`
      }
      if (!is.null(self$`it`)) {
        LocalizedMessageBodyObject[["it"]] <-
          self$`it`
      }
      if (!is.null(self$`lb`)) {
        LocalizedMessageBodyObject[["lb"]] <-
          self$`lb`
      }
      if (!is.null(self$`mk`)) {
        LocalizedMessageBodyObject[["mk"]] <-
          self$`mk`
      }
      if (!is.null(self$`nl`)) {
        LocalizedMessageBodyObject[["nl"]] <-
          self$`nl`
      }
      if (!is.null(self$`pt`)) {
        LocalizedMessageBodyObject[["pt"]] <-
          self$`pt`
      }
      if (!is.null(self$`ro`)) {
        LocalizedMessageBodyObject[["ro"]] <-
          self$`ro`
      }
      if (!is.null(self$`sl`)) {
        LocalizedMessageBodyObject[["sl"]] <-
          self$`sl`
      }
      if (!is.null(self$`sq`)) {
        LocalizedMessageBodyObject[["sq"]] <-
          self$`sq`
      }
      if (!is.null(self$`sr`)) {
        LocalizedMessageBodyObject[["sr"]] <-
          self$`sr`
      }
      if (!is.null(self$`sv`)) {
        LocalizedMessageBodyObject[["sv"]] <-
          self$`sv`
      }
      if (!is.null(self$`tr`)) {
        LocalizedMessageBodyObject[["tr"]] <-
          self$`tr`
      }
      if (!is.null(self$`zh-CN`)) {
        LocalizedMessageBodyObject[["zh-CN"]] <-
          self$`zh-CN`
      }
      return(LocalizedMessageBodyObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of LocalizedMessageBody
    #'
    #' @param input_json the JSON input
    #' @return the instance of LocalizedMessageBody
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`bg`)) {
        self$`bg` <- this_object$`bg`
      }
      if (!is.null(this_object$`bn`)) {
        self$`bn` <- this_object$`bn`
      }
      if (!is.null(this_object$`ca`)) {
        self$`ca` <- this_object$`ca`
      }
      if (!is.null(this_object$`de`)) {
        self$`de` <- this_object$`de`
      }
      if (!is.null(this_object$`el`)) {
        self$`el` <- this_object$`el`
      }
      if (!is.null(this_object$`en`)) {
        self$`en` <- this_object$`en`
      }
      if (!is.null(this_object$`es`)) {
        self$`es` <- this_object$`es`
      }
      if (!is.null(this_object$`eu`)) {
        self$`eu` <- this_object$`eu`
      }
      if (!is.null(this_object$`fr`)) {
        self$`fr` <- this_object$`fr`
      }
      if (!is.null(this_object$`gl`)) {
        self$`gl` <- this_object$`gl`
      }
      if (!is.null(this_object$`hr`)) {
        self$`hr` <- this_object$`hr`
      }
      if (!is.null(this_object$`hu`)) {
        self$`hu` <- this_object$`hu`
      }
      if (!is.null(this_object$`it`)) {
        self$`it` <- this_object$`it`
      }
      if (!is.null(this_object$`lb`)) {
        self$`lb` <- this_object$`lb`
      }
      if (!is.null(this_object$`mk`)) {
        self$`mk` <- this_object$`mk`
      }
      if (!is.null(this_object$`nl`)) {
        self$`nl` <- this_object$`nl`
      }
      if (!is.null(this_object$`pt`)) {
        self$`pt` <- this_object$`pt`
      }
      if (!is.null(this_object$`ro`)) {
        self$`ro` <- this_object$`ro`
      }
      if (!is.null(this_object$`sl`)) {
        self$`sl` <- this_object$`sl`
      }
      if (!is.null(this_object$`sq`)) {
        self$`sq` <- this_object$`sq`
      }
      if (!is.null(this_object$`sr`)) {
        self$`sr` <- this_object$`sr`
      }
      if (!is.null(this_object$`sv`)) {
        self$`sv` <- this_object$`sv`
      }
      if (!is.null(this_object$`tr`)) {
        self$`tr` <- this_object$`tr`
      }
      if (!is.null(this_object$`zh-CN`)) {
        self$`zh-CN` <- this_object$`zh-CN`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return LocalizedMessageBody in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of LocalizedMessageBody
    #'
    #' @param input_json the JSON input
    #' @return the instance of LocalizedMessageBody
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`bg` <- this_object$`bg`
      self$`bn` <- this_object$`bn`
      self$`ca` <- this_object$`ca`
      self$`de` <- this_object$`de`
      self$`el` <- this_object$`el`
      self$`en` <- this_object$`en`
      self$`es` <- this_object$`es`
      self$`eu` <- this_object$`eu`
      self$`fr` <- this_object$`fr`
      self$`gl` <- this_object$`gl`
      self$`hr` <- this_object$`hr`
      self$`hu` <- this_object$`hu`
      self$`it` <- this_object$`it`
      self$`lb` <- this_object$`lb`
      self$`mk` <- this_object$`mk`
      self$`nl` <- this_object$`nl`
      self$`pt` <- this_object$`pt`
      self$`ro` <- this_object$`ro`
      self$`sl` <- this_object$`sl`
      self$`sq` <- this_object$`sq`
      self$`sr` <- this_object$`sr`
      self$`sv` <- this_object$`sv`
      self$`tr` <- this_object$`tr`
      self$`zh-CN` <- this_object$`zh-CN`
      self
    },

    #' @description
    #' Validate JSON input with respect to LocalizedMessageBody and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `en`
      if (!is.null(input_json$`en`)) {
        if (!(is.character(input_json$`en`) && length(input_json$`en`) == 1)) {
          stop(paste("Error! Invalid data for `en`. Must be a string:", input_json$`en`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for LocalizedMessageBody: the required field `en` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of LocalizedMessageBody
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `en` is null
      if (is.null(self$`en`)) {
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
      # check if the required `en` is null
      if (is.null(self$`en`)) {
        invalid_fields["en"] <- "Non-nullable required field `en` cannot be null."
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
# LocalizedMessageBody$unlock()
#
## Below is an example to define the print function
# LocalizedMessageBody$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# LocalizedMessageBody$lock()

