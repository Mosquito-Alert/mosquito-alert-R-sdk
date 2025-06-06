#' Create a new TaxonTreeNode
#'
#' @description
#' TaxonTreeNode Class
#'
#' @docType class
#' @title TaxonTreeNode
#' @description TaxonTreeNode Class
#' @format An \code{R6Class} generator object
#' @field id  integer
#' @field name  character
#' @field common_name  character [optional]
#' @field rank  character
#' @field italicize Display the name in italics when rendering. character
#' @field is_relevant Indicates if this taxon is relevant for the application. Will be shown first and will set task to conflict if final taxon is not this. character
#' @field children  list(\link{TaxonTreeNode})
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
TaxonTreeNode <- R6::R6Class(
  "TaxonTreeNode",
  public = list(
    `id` = NULL,
    `name` = NULL,
    `common_name` = NULL,
    `rank` = NULL,
    `italicize` = NULL,
    `is_relevant` = NULL,
    `children` = NULL,

    #' @description
    #' Initialize a new TaxonTreeNode class.
    #'
    #' @param id id
    #' @param name name
    #' @param rank rank
    #' @param italicize Display the name in italics when rendering.
    #' @param is_relevant Indicates if this taxon is relevant for the application. Will be shown first and will set task to conflict if final taxon is not this.
    #' @param children children
    #' @param common_name common_name
    #' @param ... Other optional arguments.
    initialize = function(`id`, `name`, `rank`, `italicize`, `is_relevant`, `children`, `common_name` = NULL, ...) {
      if (!missing(`id`)) {
        if (!(is.numeric(`id`) && length(`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be an integer:", `id`))
        }
        self$`id` <- `id`
      }
      if (!missing(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!missing(`rank`)) {
        if (!(`rank` %in% c("class", "order", "family", "genus", "subgenus", "species_complex", "species"))) {
          stop(paste("Error! \"", `rank`, "\" cannot be assigned to `rank`. Must be \"class\", \"order\", \"family\", \"genus\", \"subgenus\", \"species_complex\", \"species\".", sep = ""))
        }
        if (!(is.character(`rank`) && length(`rank`) == 1)) {
          stop(paste("Error! Invalid data for `rank`. Must be a string:", `rank`))
        }
        self$`rank` <- `rank`
      }
      if (!missing(`italicize`)) {
        if (!(is.logical(`italicize`) && length(`italicize`) == 1)) {
          stop(paste("Error! Invalid data for `italicize`. Must be a boolean:", `italicize`))
        }
        self$`italicize` <- `italicize`
      }
      if (!missing(`is_relevant`)) {
        if (!(is.logical(`is_relevant`) && length(`is_relevant`) == 1)) {
          stop(paste("Error! Invalid data for `is_relevant`. Must be a boolean:", `is_relevant`))
        }
        self$`is_relevant` <- `is_relevant`
      }
      if (!missing(`children`)) {
        stopifnot(is.vector(`children`), length(`children`) != 0)
        sapply(`children`, function(x) stopifnot(R6::is.R6(x)))
        self$`children` <- `children`
      }
      if (!is.null(`common_name`)) {
        if (!(is.character(`common_name`) && length(`common_name`) == 1)) {
          stop(paste("Error! Invalid data for `common_name`. Must be a string:", `common_name`))
        }
        self$`common_name` <- `common_name`
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
    #' @return TaxonTreeNode as a base R list.
    #' @examples
    #' # convert array of TaxonTreeNode (x) to a data frame
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
    #' Convert TaxonTreeNode to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      TaxonTreeNodeObject <- list()
      if (!is.null(self$`id`)) {
        TaxonTreeNodeObject[["id"]] <-
          self$`id`
      }
      if (!is.null(self$`name`)) {
        TaxonTreeNodeObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`common_name`)) {
        TaxonTreeNodeObject[["common_name"]] <-
          self$`common_name`
      }
      if (!is.null(self$`rank`)) {
        TaxonTreeNodeObject[["rank"]] <-
          self$`rank`
      }
      if (!is.null(self$`italicize`)) {
        TaxonTreeNodeObject[["italicize"]] <-
          self$`italicize`
      }
      if (!is.null(self$`is_relevant`)) {
        TaxonTreeNodeObject[["is_relevant"]] <-
          self$`is_relevant`
      }
      if (!is.null(self$`children`)) {
        TaxonTreeNodeObject[["children"]] <-
          lapply(self$`children`, function(x) x$toSimpleType())
      }
      return(TaxonTreeNodeObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of TaxonTreeNode
    #'
    #' @param input_json the JSON input
    #' @return the instance of TaxonTreeNode
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`id`)) {
        self$`id` <- this_object$`id`
      }
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`common_name`)) {
        self$`common_name` <- this_object$`common_name`
      }
      if (!is.null(this_object$`rank`)) {
        if (!is.null(this_object$`rank`) && !(this_object$`rank` %in% c("class", "order", "family", "genus", "subgenus", "species_complex", "species"))) {
          stop(paste("Error! \"", this_object$`rank`, "\" cannot be assigned to `rank`. Must be \"class\", \"order\", \"family\", \"genus\", \"subgenus\", \"species_complex\", \"species\".", sep = ""))
        }
        self$`rank` <- this_object$`rank`
      }
      if (!is.null(this_object$`italicize`)) {
        self$`italicize` <- this_object$`italicize`
      }
      if (!is.null(this_object$`is_relevant`)) {
        self$`is_relevant` <- this_object$`is_relevant`
      }
      if (!is.null(this_object$`children`)) {
        self$`children` <- ApiClient$new()$deserializeObj(this_object$`children`, "array[TaxonTreeNode]", loadNamespace("MosquitoAlert"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return TaxonTreeNode in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of TaxonTreeNode
    #'
    #' @param input_json the JSON input
    #' @return the instance of TaxonTreeNode
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`id` <- this_object$`id`
      self$`name` <- this_object$`name`
      self$`common_name` <- this_object$`common_name`
      if (!is.null(this_object$`rank`) && !(this_object$`rank` %in% c("class", "order", "family", "genus", "subgenus", "species_complex", "species"))) {
        stop(paste("Error! \"", this_object$`rank`, "\" cannot be assigned to `rank`. Must be \"class\", \"order\", \"family\", \"genus\", \"subgenus\", \"species_complex\", \"species\".", sep = ""))
      }
      self$`rank` <- this_object$`rank`
      self$`italicize` <- this_object$`italicize`
      self$`is_relevant` <- this_object$`is_relevant`
      self$`children` <- ApiClient$new()$deserializeObj(this_object$`children`, "array[TaxonTreeNode]", loadNamespace("MosquitoAlert"))
      self
    },

    #' @description
    #' Validate JSON input with respect to TaxonTreeNode and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `id`
      if (!is.null(input_json$`id`)) {
        if (!(is.numeric(input_json$`id`) && length(input_json$`id`) == 1)) {
          stop(paste("Error! Invalid data for `id`. Must be an integer:", input_json$`id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TaxonTreeNode: the required field `id` is missing."))
      }
      # check the required field `name`
      if (!is.null(input_json$`name`)) {
        if (!(is.character(input_json$`name`) && length(input_json$`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", input_json$`name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TaxonTreeNode: the required field `name` is missing."))
      }
      # check the required field `rank`
      if (!is.null(input_json$`rank`)) {
        if (!(is.character(input_json$`rank`) && length(input_json$`rank`) == 1)) {
          stop(paste("Error! Invalid data for `rank`. Must be a string:", input_json$`rank`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TaxonTreeNode: the required field `rank` is missing."))
      }
      # check the required field `italicize`
      if (!is.null(input_json$`italicize`)) {
        if (!(is.logical(input_json$`italicize`) && length(input_json$`italicize`) == 1)) {
          stop(paste("Error! Invalid data for `italicize`. Must be a boolean:", input_json$`italicize`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TaxonTreeNode: the required field `italicize` is missing."))
      }
      # check the required field `is_relevant`
      if (!is.null(input_json$`is_relevant`)) {
        if (!(is.logical(input_json$`is_relevant`) && length(input_json$`is_relevant`) == 1)) {
          stop(paste("Error! Invalid data for `is_relevant`. Must be a boolean:", input_json$`is_relevant`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TaxonTreeNode: the required field `is_relevant` is missing."))
      }
      # check the required field `children`
      if (!is.null(input_json$`children`)) {
        stopifnot(is.vector(input_json$`children`), length(input_json$`children`) != 0)
        tmp <- sapply(input_json$`children`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for TaxonTreeNode: the required field `children` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of TaxonTreeNode
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `id` is null
      if (is.null(self$`id`)) {
        return(FALSE)
      }

      # check if the required `name` is null
      if (is.null(self$`name`)) {
        return(FALSE)
      }

      if (nchar(self$`name`) > 32) {
        return(FALSE)
      }

      if (nchar(self$`common_name`) > 64) {
        return(FALSE)
      }

      # check if the required `rank` is null
      if (is.null(self$`rank`)) {
        return(FALSE)
      }

      # check if the required `italicize` is null
      if (is.null(self$`italicize`)) {
        return(FALSE)
      }

      # check if the required `is_relevant` is null
      if (is.null(self$`is_relevant`)) {
        return(FALSE)
      }

      # check if the required `children` is null
      if (is.null(self$`children`)) {
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
      # check if the required `id` is null
      if (is.null(self$`id`)) {
        invalid_fields["id"] <- "Non-nullable required field `id` cannot be null."
      }

      # check if the required `name` is null
      if (is.null(self$`name`)) {
        invalid_fields["name"] <- "Non-nullable required field `name` cannot be null."
      }

      if (nchar(self$`name`) > 32) {
        invalid_fields["name"] <- "Invalid length for `name`, must be smaller than or equal to 32."
      }

      if (nchar(self$`common_name`) > 64) {
        invalid_fields["common_name"] <- "Invalid length for `common_name`, must be smaller than or equal to 64."
      }

      # check if the required `rank` is null
      if (is.null(self$`rank`)) {
        invalid_fields["rank"] <- "Non-nullable required field `rank` cannot be null."
      }

      # check if the required `italicize` is null
      if (is.null(self$`italicize`)) {
        invalid_fields["italicize"] <- "Non-nullable required field `italicize` cannot be null."
      }

      # check if the required `is_relevant` is null
      if (is.null(self$`is_relevant`)) {
        invalid_fields["is_relevant"] <- "Non-nullable required field `is_relevant` cannot be null."
      }

      # check if the required `children` is null
      if (is.null(self$`children`)) {
        invalid_fields["children"] <- "Non-nullable required field `children` cannot be null."
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
# TaxonTreeNode$unlock()
#
## Below is an example to define the print function
# TaxonTreeNode$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# TaxonTreeNode$lock()

