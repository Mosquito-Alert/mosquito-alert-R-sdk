#' @docType class
#' @title MessagesCreateError
#'
#' @description MessagesCreateError Class
#'
#' @format An \code{R6Class} generator object
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
MessagesCreateError <- R6::R6Class(
  "MessagesCreateError",
  public = list(
    #' @field actual_instance the object stored in this instance.
    actual_instance = NULL,
    #' @field actual_type the type of the object stored in this instance.
    actual_type = NULL,
    #' @field one_of  a list of types defined in the oneOf schema.
    one_of = list("MessagesCreateContentBodyBgErrorComponent", "MessagesCreateContentBodyBnErrorComponent", "MessagesCreateContentBodyCaErrorComponent", "MessagesCreateContentBodyDeErrorComponent", "MessagesCreateContentBodyElErrorComponent", "MessagesCreateContentBodyEnErrorComponent", "MessagesCreateContentBodyEsErrorComponent", "MessagesCreateContentBodyEuErrorComponent", "MessagesCreateContentBodyFrErrorComponent", "MessagesCreateContentBodyGlErrorComponent", "MessagesCreateContentBodyHrErrorComponent", "MessagesCreateContentBodyHuErrorComponent", "MessagesCreateContentBodyItErrorComponent", "MessagesCreateContentBodyLbErrorComponent", "MessagesCreateContentBodyMkErrorComponent", "MessagesCreateContentBodyNlErrorComponent", "MessagesCreateContentBodyNonFieldErrorsErrorComponent", "MessagesCreateContentBodyPtErrorComponent", "MessagesCreateContentBodyRoErrorComponent", "MessagesCreateContentBodySlErrorComponent", "MessagesCreateContentBodySqErrorComponent", "MessagesCreateContentBodySrErrorComponent", "MessagesCreateContentBodySvErrorComponent", "MessagesCreateContentBodyTrErrorComponent", "MessagesCreateContentBodyZhCnErrorComponent", "MessagesCreateContentNonFieldErrorsErrorComponent", "MessagesCreateContentTitleBgErrorComponent", "MessagesCreateContentTitleBnErrorComponent", "MessagesCreateContentTitleCaErrorComponent", "MessagesCreateContentTitleDeErrorComponent", "MessagesCreateContentTitleElErrorComponent", "MessagesCreateContentTitleEnErrorComponent", "MessagesCreateContentTitleEsErrorComponent", "MessagesCreateContentTitleEuErrorComponent", "MessagesCreateContentTitleFrErrorComponent", "MessagesCreateContentTitleGlErrorComponent", "MessagesCreateContentTitleHrErrorComponent", "MessagesCreateContentTitleHuErrorComponent", "MessagesCreateContentTitleItErrorComponent", "MessagesCreateContentTitleLbErrorComponent", "MessagesCreateContentTitleMkErrorComponent", "MessagesCreateContentTitleNlErrorComponent", "MessagesCreateContentTitleNonFieldErrorsErrorComponent", "MessagesCreateContentTitlePtErrorComponent", "MessagesCreateContentTitleRoErrorComponent", "MessagesCreateContentTitleSlErrorComponent", "MessagesCreateContentTitleSqErrorComponent", "MessagesCreateContentTitleSrErrorComponent", "MessagesCreateContentTitleSvErrorComponent", "MessagesCreateContentTitleTrErrorComponent", "MessagesCreateContentTitleZhCnErrorComponent", "MessagesCreateNonFieldErrorsErrorComponent", "MessagesCreateUserUuidsErrorComponent", "MessagesCreateUserUuidsINDEXErrorComponent"),

    #' @description
    #' Initialize a new MessagesCreateError.
    #'
    #' @param instance an instance of the object defined in the oneOf schemas: "MessagesCreateContentBodyBgErrorComponent", "MessagesCreateContentBodyBnErrorComponent", "MessagesCreateContentBodyCaErrorComponent", "MessagesCreateContentBodyDeErrorComponent", "MessagesCreateContentBodyElErrorComponent", "MessagesCreateContentBodyEnErrorComponent", "MessagesCreateContentBodyEsErrorComponent", "MessagesCreateContentBodyEuErrorComponent", "MessagesCreateContentBodyFrErrorComponent", "MessagesCreateContentBodyGlErrorComponent", "MessagesCreateContentBodyHrErrorComponent", "MessagesCreateContentBodyHuErrorComponent", "MessagesCreateContentBodyItErrorComponent", "MessagesCreateContentBodyLbErrorComponent", "MessagesCreateContentBodyMkErrorComponent", "MessagesCreateContentBodyNlErrorComponent", "MessagesCreateContentBodyNonFieldErrorsErrorComponent", "MessagesCreateContentBodyPtErrorComponent", "MessagesCreateContentBodyRoErrorComponent", "MessagesCreateContentBodySlErrorComponent", "MessagesCreateContentBodySqErrorComponent", "MessagesCreateContentBodySrErrorComponent", "MessagesCreateContentBodySvErrorComponent", "MessagesCreateContentBodyTrErrorComponent", "MessagesCreateContentBodyZhCnErrorComponent", "MessagesCreateContentNonFieldErrorsErrorComponent", "MessagesCreateContentTitleBgErrorComponent", "MessagesCreateContentTitleBnErrorComponent", "MessagesCreateContentTitleCaErrorComponent", "MessagesCreateContentTitleDeErrorComponent", "MessagesCreateContentTitleElErrorComponent", "MessagesCreateContentTitleEnErrorComponent", "MessagesCreateContentTitleEsErrorComponent", "MessagesCreateContentTitleEuErrorComponent", "MessagesCreateContentTitleFrErrorComponent", "MessagesCreateContentTitleGlErrorComponent", "MessagesCreateContentTitleHrErrorComponent", "MessagesCreateContentTitleHuErrorComponent", "MessagesCreateContentTitleItErrorComponent", "MessagesCreateContentTitleLbErrorComponent", "MessagesCreateContentTitleMkErrorComponent", "MessagesCreateContentTitleNlErrorComponent", "MessagesCreateContentTitleNonFieldErrorsErrorComponent", "MessagesCreateContentTitlePtErrorComponent", "MessagesCreateContentTitleRoErrorComponent", "MessagesCreateContentTitleSlErrorComponent", "MessagesCreateContentTitleSqErrorComponent", "MessagesCreateContentTitleSrErrorComponent", "MessagesCreateContentTitleSvErrorComponent", "MessagesCreateContentTitleTrErrorComponent", "MessagesCreateContentTitleZhCnErrorComponent", "MessagesCreateNonFieldErrorsErrorComponent", "MessagesCreateUserUuidsErrorComponent", "MessagesCreateUserUuidsINDEXErrorComponent"
    initialize = function(instance = NULL) {
      if (is.null(instance)) {
        # do nothing
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "MessagesCreateContentBodyBgErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "MessagesCreateContentBodyBgErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "MessagesCreateContentBodyBnErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "MessagesCreateContentBodyBnErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "MessagesCreateContentBodyCaErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "MessagesCreateContentBodyCaErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "MessagesCreateContentBodyDeErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "MessagesCreateContentBodyDeErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "MessagesCreateContentBodyElErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "MessagesCreateContentBodyElErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "MessagesCreateContentBodyEnErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "MessagesCreateContentBodyEnErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "MessagesCreateContentBodyEsErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "MessagesCreateContentBodyEsErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "MessagesCreateContentBodyEuErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "MessagesCreateContentBodyEuErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "MessagesCreateContentBodyFrErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "MessagesCreateContentBodyFrErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "MessagesCreateContentBodyGlErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "MessagesCreateContentBodyGlErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "MessagesCreateContentBodyHrErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "MessagesCreateContentBodyHrErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "MessagesCreateContentBodyHuErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "MessagesCreateContentBodyHuErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "MessagesCreateContentBodyItErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "MessagesCreateContentBodyItErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "MessagesCreateContentBodyLbErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "MessagesCreateContentBodyLbErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "MessagesCreateContentBodyMkErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "MessagesCreateContentBodyMkErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "MessagesCreateContentBodyNlErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "MessagesCreateContentBodyNlErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "MessagesCreateContentBodyNonFieldErrorsErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "MessagesCreateContentBodyNonFieldErrorsErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "MessagesCreateContentBodyPtErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "MessagesCreateContentBodyPtErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "MessagesCreateContentBodyRoErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "MessagesCreateContentBodyRoErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "MessagesCreateContentBodySlErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "MessagesCreateContentBodySlErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "MessagesCreateContentBodySqErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "MessagesCreateContentBodySqErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "MessagesCreateContentBodySrErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "MessagesCreateContentBodySrErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "MessagesCreateContentBodySvErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "MessagesCreateContentBodySvErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "MessagesCreateContentBodyTrErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "MessagesCreateContentBodyTrErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "MessagesCreateContentBodyZhCnErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "MessagesCreateContentBodyZhCnErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "MessagesCreateContentNonFieldErrorsErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "MessagesCreateContentNonFieldErrorsErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "MessagesCreateContentTitleBgErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "MessagesCreateContentTitleBgErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "MessagesCreateContentTitleBnErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "MessagesCreateContentTitleBnErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "MessagesCreateContentTitleCaErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "MessagesCreateContentTitleCaErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "MessagesCreateContentTitleDeErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "MessagesCreateContentTitleDeErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "MessagesCreateContentTitleElErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "MessagesCreateContentTitleElErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "MessagesCreateContentTitleEnErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "MessagesCreateContentTitleEnErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "MessagesCreateContentTitleEsErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "MessagesCreateContentTitleEsErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "MessagesCreateContentTitleEuErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "MessagesCreateContentTitleEuErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "MessagesCreateContentTitleFrErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "MessagesCreateContentTitleFrErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "MessagesCreateContentTitleGlErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "MessagesCreateContentTitleGlErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "MessagesCreateContentTitleHrErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "MessagesCreateContentTitleHrErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "MessagesCreateContentTitleHuErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "MessagesCreateContentTitleHuErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "MessagesCreateContentTitleItErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "MessagesCreateContentTitleItErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "MessagesCreateContentTitleLbErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "MessagesCreateContentTitleLbErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "MessagesCreateContentTitleMkErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "MessagesCreateContentTitleMkErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "MessagesCreateContentTitleNlErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "MessagesCreateContentTitleNlErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "MessagesCreateContentTitleNonFieldErrorsErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "MessagesCreateContentTitleNonFieldErrorsErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "MessagesCreateContentTitlePtErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "MessagesCreateContentTitlePtErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "MessagesCreateContentTitleRoErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "MessagesCreateContentTitleRoErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "MessagesCreateContentTitleSlErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "MessagesCreateContentTitleSlErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "MessagesCreateContentTitleSqErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "MessagesCreateContentTitleSqErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "MessagesCreateContentTitleSrErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "MessagesCreateContentTitleSrErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "MessagesCreateContentTitleSvErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "MessagesCreateContentTitleSvErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "MessagesCreateContentTitleTrErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "MessagesCreateContentTitleTrErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "MessagesCreateContentTitleZhCnErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "MessagesCreateContentTitleZhCnErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "MessagesCreateNonFieldErrorsErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "MessagesCreateNonFieldErrorsErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "MessagesCreateUserUuidsErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "MessagesCreateUserUuidsErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "MessagesCreateUserUuidsINDEXErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "MessagesCreateUserUuidsINDEXErrorComponent"
      } else {
        stop(paste("Failed to initialize MessagesCreateError with oneOf schemas MessagesCreateContentBodyBgErrorComponent, MessagesCreateContentBodyBnErrorComponent, MessagesCreateContentBodyCaErrorComponent, MessagesCreateContentBodyDeErrorComponent, MessagesCreateContentBodyElErrorComponent, MessagesCreateContentBodyEnErrorComponent, MessagesCreateContentBodyEsErrorComponent, MessagesCreateContentBodyEuErrorComponent, MessagesCreateContentBodyFrErrorComponent, MessagesCreateContentBodyGlErrorComponent, MessagesCreateContentBodyHrErrorComponent, MessagesCreateContentBodyHuErrorComponent, MessagesCreateContentBodyItErrorComponent, MessagesCreateContentBodyLbErrorComponent, MessagesCreateContentBodyMkErrorComponent, MessagesCreateContentBodyNlErrorComponent, MessagesCreateContentBodyNonFieldErrorsErrorComponent, MessagesCreateContentBodyPtErrorComponent, MessagesCreateContentBodyRoErrorComponent, MessagesCreateContentBodySlErrorComponent, MessagesCreateContentBodySqErrorComponent, MessagesCreateContentBodySrErrorComponent, MessagesCreateContentBodySvErrorComponent, MessagesCreateContentBodyTrErrorComponent, MessagesCreateContentBodyZhCnErrorComponent, MessagesCreateContentNonFieldErrorsErrorComponent, MessagesCreateContentTitleBgErrorComponent, MessagesCreateContentTitleBnErrorComponent, MessagesCreateContentTitleCaErrorComponent, MessagesCreateContentTitleDeErrorComponent, MessagesCreateContentTitleElErrorComponent, MessagesCreateContentTitleEnErrorComponent, MessagesCreateContentTitleEsErrorComponent, MessagesCreateContentTitleEuErrorComponent, MessagesCreateContentTitleFrErrorComponent, MessagesCreateContentTitleGlErrorComponent, MessagesCreateContentTitleHrErrorComponent, MessagesCreateContentTitleHuErrorComponent, MessagesCreateContentTitleItErrorComponent, MessagesCreateContentTitleLbErrorComponent, MessagesCreateContentTitleMkErrorComponent, MessagesCreateContentTitleNlErrorComponent, MessagesCreateContentTitleNonFieldErrorsErrorComponent, MessagesCreateContentTitlePtErrorComponent, MessagesCreateContentTitleRoErrorComponent, MessagesCreateContentTitleSlErrorComponent, MessagesCreateContentTitleSqErrorComponent, MessagesCreateContentTitleSrErrorComponent, MessagesCreateContentTitleSvErrorComponent, MessagesCreateContentTitleTrErrorComponent, MessagesCreateContentTitleZhCnErrorComponent, MessagesCreateNonFieldErrorsErrorComponent, MessagesCreateUserUuidsErrorComponent, MessagesCreateUserUuidsINDEXErrorComponent. Provided class name: ",
                   get(class(instance)[[1]], pos = -1)$classname))
      }
    },

    #' @description
    #' Deserialize JSON string into an instance of MessagesCreateError.
    #' An alias to the method `fromJSON` .
    #'
    #' @param input The input JSON.
    #'
    #' @return An instance of MessagesCreateError.
    fromJSONString = function(input) {
      self$fromJSON(input)
    },

    #' @description
    #' Deserialize JSON string into an instance of MessagesCreateError.
    #'
    #' @param input The input JSON.
    #'
    #' @return An instance of MessagesCreateError.
    fromJSON = function(input) {
      matched <- 0 # match counter
      matched_schemas <- list() #names of matched schemas
      error_messages <- list()
      instance <- NULL

      `MessagesCreateNonFieldErrorsErrorComponent_result` <- tryCatch({
          `MessagesCreateNonFieldErrorsErrorComponent`$public_methods$validateJSON(input)
          `MessagesCreateNonFieldErrorsErrorComponent_instance` <- `MessagesCreateNonFieldErrorsErrorComponent`$new()
          instance <- `MessagesCreateNonFieldErrorsErrorComponent_instance`$fromJSON(input)
          instance_type <- "MessagesCreateNonFieldErrorsErrorComponent"
          matched_schemas <- append(matched_schemas, "MessagesCreateNonFieldErrorsErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`MessagesCreateNonFieldErrorsErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `MessagesCreateNonFieldErrorsErrorComponent_result`["message"])
      }

      `MessagesCreateUserUuidsErrorComponent_result` <- tryCatch({
          `MessagesCreateUserUuidsErrorComponent`$public_methods$validateJSON(input)
          `MessagesCreateUserUuidsErrorComponent_instance` <- `MessagesCreateUserUuidsErrorComponent`$new()
          instance <- `MessagesCreateUserUuidsErrorComponent_instance`$fromJSON(input)
          instance_type <- "MessagesCreateUserUuidsErrorComponent"
          matched_schemas <- append(matched_schemas, "MessagesCreateUserUuidsErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`MessagesCreateUserUuidsErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `MessagesCreateUserUuidsErrorComponent_result`["message"])
      }

      `MessagesCreateUserUuidsINDEXErrorComponent_result` <- tryCatch({
          `MessagesCreateUserUuidsINDEXErrorComponent`$public_methods$validateJSON(input)
          `MessagesCreateUserUuidsINDEXErrorComponent_instance` <- `MessagesCreateUserUuidsINDEXErrorComponent`$new()
          instance <- `MessagesCreateUserUuidsINDEXErrorComponent_instance`$fromJSON(input)
          instance_type <- "MessagesCreateUserUuidsINDEXErrorComponent"
          matched_schemas <- append(matched_schemas, "MessagesCreateUserUuidsINDEXErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`MessagesCreateUserUuidsINDEXErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `MessagesCreateUserUuidsINDEXErrorComponent_result`["message"])
      }

      `MessagesCreateContentNonFieldErrorsErrorComponent_result` <- tryCatch({
          `MessagesCreateContentNonFieldErrorsErrorComponent`$public_methods$validateJSON(input)
          `MessagesCreateContentNonFieldErrorsErrorComponent_instance` <- `MessagesCreateContentNonFieldErrorsErrorComponent`$new()
          instance <- `MessagesCreateContentNonFieldErrorsErrorComponent_instance`$fromJSON(input)
          instance_type <- "MessagesCreateContentNonFieldErrorsErrorComponent"
          matched_schemas <- append(matched_schemas, "MessagesCreateContentNonFieldErrorsErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`MessagesCreateContentNonFieldErrorsErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `MessagesCreateContentNonFieldErrorsErrorComponent_result`["message"])
      }

      `MessagesCreateContentTitleNonFieldErrorsErrorComponent_result` <- tryCatch({
          `MessagesCreateContentTitleNonFieldErrorsErrorComponent`$public_methods$validateJSON(input)
          `MessagesCreateContentTitleNonFieldErrorsErrorComponent_instance` <- `MessagesCreateContentTitleNonFieldErrorsErrorComponent`$new()
          instance <- `MessagesCreateContentTitleNonFieldErrorsErrorComponent_instance`$fromJSON(input)
          instance_type <- "MessagesCreateContentTitleNonFieldErrorsErrorComponent"
          matched_schemas <- append(matched_schemas, "MessagesCreateContentTitleNonFieldErrorsErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`MessagesCreateContentTitleNonFieldErrorsErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `MessagesCreateContentTitleNonFieldErrorsErrorComponent_result`["message"])
      }

      `MessagesCreateContentTitleBgErrorComponent_result` <- tryCatch({
          `MessagesCreateContentTitleBgErrorComponent`$public_methods$validateJSON(input)
          `MessagesCreateContentTitleBgErrorComponent_instance` <- `MessagesCreateContentTitleBgErrorComponent`$new()
          instance <- `MessagesCreateContentTitleBgErrorComponent_instance`$fromJSON(input)
          instance_type <- "MessagesCreateContentTitleBgErrorComponent"
          matched_schemas <- append(matched_schemas, "MessagesCreateContentTitleBgErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`MessagesCreateContentTitleBgErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `MessagesCreateContentTitleBgErrorComponent_result`["message"])
      }

      `MessagesCreateContentTitleBnErrorComponent_result` <- tryCatch({
          `MessagesCreateContentTitleBnErrorComponent`$public_methods$validateJSON(input)
          `MessagesCreateContentTitleBnErrorComponent_instance` <- `MessagesCreateContentTitleBnErrorComponent`$new()
          instance <- `MessagesCreateContentTitleBnErrorComponent_instance`$fromJSON(input)
          instance_type <- "MessagesCreateContentTitleBnErrorComponent"
          matched_schemas <- append(matched_schemas, "MessagesCreateContentTitleBnErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`MessagesCreateContentTitleBnErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `MessagesCreateContentTitleBnErrorComponent_result`["message"])
      }

      `MessagesCreateContentTitleCaErrorComponent_result` <- tryCatch({
          `MessagesCreateContentTitleCaErrorComponent`$public_methods$validateJSON(input)
          `MessagesCreateContentTitleCaErrorComponent_instance` <- `MessagesCreateContentTitleCaErrorComponent`$new()
          instance <- `MessagesCreateContentTitleCaErrorComponent_instance`$fromJSON(input)
          instance_type <- "MessagesCreateContentTitleCaErrorComponent"
          matched_schemas <- append(matched_schemas, "MessagesCreateContentTitleCaErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`MessagesCreateContentTitleCaErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `MessagesCreateContentTitleCaErrorComponent_result`["message"])
      }

      `MessagesCreateContentTitleDeErrorComponent_result` <- tryCatch({
          `MessagesCreateContentTitleDeErrorComponent`$public_methods$validateJSON(input)
          `MessagesCreateContentTitleDeErrorComponent_instance` <- `MessagesCreateContentTitleDeErrorComponent`$new()
          instance <- `MessagesCreateContentTitleDeErrorComponent_instance`$fromJSON(input)
          instance_type <- "MessagesCreateContentTitleDeErrorComponent"
          matched_schemas <- append(matched_schemas, "MessagesCreateContentTitleDeErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`MessagesCreateContentTitleDeErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `MessagesCreateContentTitleDeErrorComponent_result`["message"])
      }

      `MessagesCreateContentTitleElErrorComponent_result` <- tryCatch({
          `MessagesCreateContentTitleElErrorComponent`$public_methods$validateJSON(input)
          `MessagesCreateContentTitleElErrorComponent_instance` <- `MessagesCreateContentTitleElErrorComponent`$new()
          instance <- `MessagesCreateContentTitleElErrorComponent_instance`$fromJSON(input)
          instance_type <- "MessagesCreateContentTitleElErrorComponent"
          matched_schemas <- append(matched_schemas, "MessagesCreateContentTitleElErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`MessagesCreateContentTitleElErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `MessagesCreateContentTitleElErrorComponent_result`["message"])
      }

      `MessagesCreateContentTitleEnErrorComponent_result` <- tryCatch({
          `MessagesCreateContentTitleEnErrorComponent`$public_methods$validateJSON(input)
          `MessagesCreateContentTitleEnErrorComponent_instance` <- `MessagesCreateContentTitleEnErrorComponent`$new()
          instance <- `MessagesCreateContentTitleEnErrorComponent_instance`$fromJSON(input)
          instance_type <- "MessagesCreateContentTitleEnErrorComponent"
          matched_schemas <- append(matched_schemas, "MessagesCreateContentTitleEnErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`MessagesCreateContentTitleEnErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `MessagesCreateContentTitleEnErrorComponent_result`["message"])
      }

      `MessagesCreateContentTitleEsErrorComponent_result` <- tryCatch({
          `MessagesCreateContentTitleEsErrorComponent`$public_methods$validateJSON(input)
          `MessagesCreateContentTitleEsErrorComponent_instance` <- `MessagesCreateContentTitleEsErrorComponent`$new()
          instance <- `MessagesCreateContentTitleEsErrorComponent_instance`$fromJSON(input)
          instance_type <- "MessagesCreateContentTitleEsErrorComponent"
          matched_schemas <- append(matched_schemas, "MessagesCreateContentTitleEsErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`MessagesCreateContentTitleEsErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `MessagesCreateContentTitleEsErrorComponent_result`["message"])
      }

      `MessagesCreateContentTitleEuErrorComponent_result` <- tryCatch({
          `MessagesCreateContentTitleEuErrorComponent`$public_methods$validateJSON(input)
          `MessagesCreateContentTitleEuErrorComponent_instance` <- `MessagesCreateContentTitleEuErrorComponent`$new()
          instance <- `MessagesCreateContentTitleEuErrorComponent_instance`$fromJSON(input)
          instance_type <- "MessagesCreateContentTitleEuErrorComponent"
          matched_schemas <- append(matched_schemas, "MessagesCreateContentTitleEuErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`MessagesCreateContentTitleEuErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `MessagesCreateContentTitleEuErrorComponent_result`["message"])
      }

      `MessagesCreateContentTitleFrErrorComponent_result` <- tryCatch({
          `MessagesCreateContentTitleFrErrorComponent`$public_methods$validateJSON(input)
          `MessagesCreateContentTitleFrErrorComponent_instance` <- `MessagesCreateContentTitleFrErrorComponent`$new()
          instance <- `MessagesCreateContentTitleFrErrorComponent_instance`$fromJSON(input)
          instance_type <- "MessagesCreateContentTitleFrErrorComponent"
          matched_schemas <- append(matched_schemas, "MessagesCreateContentTitleFrErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`MessagesCreateContentTitleFrErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `MessagesCreateContentTitleFrErrorComponent_result`["message"])
      }

      `MessagesCreateContentTitleGlErrorComponent_result` <- tryCatch({
          `MessagesCreateContentTitleGlErrorComponent`$public_methods$validateJSON(input)
          `MessagesCreateContentTitleGlErrorComponent_instance` <- `MessagesCreateContentTitleGlErrorComponent`$new()
          instance <- `MessagesCreateContentTitleGlErrorComponent_instance`$fromJSON(input)
          instance_type <- "MessagesCreateContentTitleGlErrorComponent"
          matched_schemas <- append(matched_schemas, "MessagesCreateContentTitleGlErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`MessagesCreateContentTitleGlErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `MessagesCreateContentTitleGlErrorComponent_result`["message"])
      }

      `MessagesCreateContentTitleHrErrorComponent_result` <- tryCatch({
          `MessagesCreateContentTitleHrErrorComponent`$public_methods$validateJSON(input)
          `MessagesCreateContentTitleHrErrorComponent_instance` <- `MessagesCreateContentTitleHrErrorComponent`$new()
          instance <- `MessagesCreateContentTitleHrErrorComponent_instance`$fromJSON(input)
          instance_type <- "MessagesCreateContentTitleHrErrorComponent"
          matched_schemas <- append(matched_schemas, "MessagesCreateContentTitleHrErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`MessagesCreateContentTitleHrErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `MessagesCreateContentTitleHrErrorComponent_result`["message"])
      }

      `MessagesCreateContentTitleHuErrorComponent_result` <- tryCatch({
          `MessagesCreateContentTitleHuErrorComponent`$public_methods$validateJSON(input)
          `MessagesCreateContentTitleHuErrorComponent_instance` <- `MessagesCreateContentTitleHuErrorComponent`$new()
          instance <- `MessagesCreateContentTitleHuErrorComponent_instance`$fromJSON(input)
          instance_type <- "MessagesCreateContentTitleHuErrorComponent"
          matched_schemas <- append(matched_schemas, "MessagesCreateContentTitleHuErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`MessagesCreateContentTitleHuErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `MessagesCreateContentTitleHuErrorComponent_result`["message"])
      }

      `MessagesCreateContentTitleItErrorComponent_result` <- tryCatch({
          `MessagesCreateContentTitleItErrorComponent`$public_methods$validateJSON(input)
          `MessagesCreateContentTitleItErrorComponent_instance` <- `MessagesCreateContentTitleItErrorComponent`$new()
          instance <- `MessagesCreateContentTitleItErrorComponent_instance`$fromJSON(input)
          instance_type <- "MessagesCreateContentTitleItErrorComponent"
          matched_schemas <- append(matched_schemas, "MessagesCreateContentTitleItErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`MessagesCreateContentTitleItErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `MessagesCreateContentTitleItErrorComponent_result`["message"])
      }

      `MessagesCreateContentTitleLbErrorComponent_result` <- tryCatch({
          `MessagesCreateContentTitleLbErrorComponent`$public_methods$validateJSON(input)
          `MessagesCreateContentTitleLbErrorComponent_instance` <- `MessagesCreateContentTitleLbErrorComponent`$new()
          instance <- `MessagesCreateContentTitleLbErrorComponent_instance`$fromJSON(input)
          instance_type <- "MessagesCreateContentTitleLbErrorComponent"
          matched_schemas <- append(matched_schemas, "MessagesCreateContentTitleLbErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`MessagesCreateContentTitleLbErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `MessagesCreateContentTitleLbErrorComponent_result`["message"])
      }

      `MessagesCreateContentTitleMkErrorComponent_result` <- tryCatch({
          `MessagesCreateContentTitleMkErrorComponent`$public_methods$validateJSON(input)
          `MessagesCreateContentTitleMkErrorComponent_instance` <- `MessagesCreateContentTitleMkErrorComponent`$new()
          instance <- `MessagesCreateContentTitleMkErrorComponent_instance`$fromJSON(input)
          instance_type <- "MessagesCreateContentTitleMkErrorComponent"
          matched_schemas <- append(matched_schemas, "MessagesCreateContentTitleMkErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`MessagesCreateContentTitleMkErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `MessagesCreateContentTitleMkErrorComponent_result`["message"])
      }

      `MessagesCreateContentTitleNlErrorComponent_result` <- tryCatch({
          `MessagesCreateContentTitleNlErrorComponent`$public_methods$validateJSON(input)
          `MessagesCreateContentTitleNlErrorComponent_instance` <- `MessagesCreateContentTitleNlErrorComponent`$new()
          instance <- `MessagesCreateContentTitleNlErrorComponent_instance`$fromJSON(input)
          instance_type <- "MessagesCreateContentTitleNlErrorComponent"
          matched_schemas <- append(matched_schemas, "MessagesCreateContentTitleNlErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`MessagesCreateContentTitleNlErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `MessagesCreateContentTitleNlErrorComponent_result`["message"])
      }

      `MessagesCreateContentTitlePtErrorComponent_result` <- tryCatch({
          `MessagesCreateContentTitlePtErrorComponent`$public_methods$validateJSON(input)
          `MessagesCreateContentTitlePtErrorComponent_instance` <- `MessagesCreateContentTitlePtErrorComponent`$new()
          instance <- `MessagesCreateContentTitlePtErrorComponent_instance`$fromJSON(input)
          instance_type <- "MessagesCreateContentTitlePtErrorComponent"
          matched_schemas <- append(matched_schemas, "MessagesCreateContentTitlePtErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`MessagesCreateContentTitlePtErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `MessagesCreateContentTitlePtErrorComponent_result`["message"])
      }

      `MessagesCreateContentTitleRoErrorComponent_result` <- tryCatch({
          `MessagesCreateContentTitleRoErrorComponent`$public_methods$validateJSON(input)
          `MessagesCreateContentTitleRoErrorComponent_instance` <- `MessagesCreateContentTitleRoErrorComponent`$new()
          instance <- `MessagesCreateContentTitleRoErrorComponent_instance`$fromJSON(input)
          instance_type <- "MessagesCreateContentTitleRoErrorComponent"
          matched_schemas <- append(matched_schemas, "MessagesCreateContentTitleRoErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`MessagesCreateContentTitleRoErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `MessagesCreateContentTitleRoErrorComponent_result`["message"])
      }

      `MessagesCreateContentTitleSlErrorComponent_result` <- tryCatch({
          `MessagesCreateContentTitleSlErrorComponent`$public_methods$validateJSON(input)
          `MessagesCreateContentTitleSlErrorComponent_instance` <- `MessagesCreateContentTitleSlErrorComponent`$new()
          instance <- `MessagesCreateContentTitleSlErrorComponent_instance`$fromJSON(input)
          instance_type <- "MessagesCreateContentTitleSlErrorComponent"
          matched_schemas <- append(matched_schemas, "MessagesCreateContentTitleSlErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`MessagesCreateContentTitleSlErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `MessagesCreateContentTitleSlErrorComponent_result`["message"])
      }

      `MessagesCreateContentTitleSqErrorComponent_result` <- tryCatch({
          `MessagesCreateContentTitleSqErrorComponent`$public_methods$validateJSON(input)
          `MessagesCreateContentTitleSqErrorComponent_instance` <- `MessagesCreateContentTitleSqErrorComponent`$new()
          instance <- `MessagesCreateContentTitleSqErrorComponent_instance`$fromJSON(input)
          instance_type <- "MessagesCreateContentTitleSqErrorComponent"
          matched_schemas <- append(matched_schemas, "MessagesCreateContentTitleSqErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`MessagesCreateContentTitleSqErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `MessagesCreateContentTitleSqErrorComponent_result`["message"])
      }

      `MessagesCreateContentTitleSrErrorComponent_result` <- tryCatch({
          `MessagesCreateContentTitleSrErrorComponent`$public_methods$validateJSON(input)
          `MessagesCreateContentTitleSrErrorComponent_instance` <- `MessagesCreateContentTitleSrErrorComponent`$new()
          instance <- `MessagesCreateContentTitleSrErrorComponent_instance`$fromJSON(input)
          instance_type <- "MessagesCreateContentTitleSrErrorComponent"
          matched_schemas <- append(matched_schemas, "MessagesCreateContentTitleSrErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`MessagesCreateContentTitleSrErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `MessagesCreateContentTitleSrErrorComponent_result`["message"])
      }

      `MessagesCreateContentTitleSvErrorComponent_result` <- tryCatch({
          `MessagesCreateContentTitleSvErrorComponent`$public_methods$validateJSON(input)
          `MessagesCreateContentTitleSvErrorComponent_instance` <- `MessagesCreateContentTitleSvErrorComponent`$new()
          instance <- `MessagesCreateContentTitleSvErrorComponent_instance`$fromJSON(input)
          instance_type <- "MessagesCreateContentTitleSvErrorComponent"
          matched_schemas <- append(matched_schemas, "MessagesCreateContentTitleSvErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`MessagesCreateContentTitleSvErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `MessagesCreateContentTitleSvErrorComponent_result`["message"])
      }

      `MessagesCreateContentTitleTrErrorComponent_result` <- tryCatch({
          `MessagesCreateContentTitleTrErrorComponent`$public_methods$validateJSON(input)
          `MessagesCreateContentTitleTrErrorComponent_instance` <- `MessagesCreateContentTitleTrErrorComponent`$new()
          instance <- `MessagesCreateContentTitleTrErrorComponent_instance`$fromJSON(input)
          instance_type <- "MessagesCreateContentTitleTrErrorComponent"
          matched_schemas <- append(matched_schemas, "MessagesCreateContentTitleTrErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`MessagesCreateContentTitleTrErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `MessagesCreateContentTitleTrErrorComponent_result`["message"])
      }

      `MessagesCreateContentTitleZhCnErrorComponent_result` <- tryCatch({
          `MessagesCreateContentTitleZhCnErrorComponent`$public_methods$validateJSON(input)
          `MessagesCreateContentTitleZhCnErrorComponent_instance` <- `MessagesCreateContentTitleZhCnErrorComponent`$new()
          instance <- `MessagesCreateContentTitleZhCnErrorComponent_instance`$fromJSON(input)
          instance_type <- "MessagesCreateContentTitleZhCnErrorComponent"
          matched_schemas <- append(matched_schemas, "MessagesCreateContentTitleZhCnErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`MessagesCreateContentTitleZhCnErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `MessagesCreateContentTitleZhCnErrorComponent_result`["message"])
      }

      `MessagesCreateContentBodyNonFieldErrorsErrorComponent_result` <- tryCatch({
          `MessagesCreateContentBodyNonFieldErrorsErrorComponent`$public_methods$validateJSON(input)
          `MessagesCreateContentBodyNonFieldErrorsErrorComponent_instance` <- `MessagesCreateContentBodyNonFieldErrorsErrorComponent`$new()
          instance <- `MessagesCreateContentBodyNonFieldErrorsErrorComponent_instance`$fromJSON(input)
          instance_type <- "MessagesCreateContentBodyNonFieldErrorsErrorComponent"
          matched_schemas <- append(matched_schemas, "MessagesCreateContentBodyNonFieldErrorsErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`MessagesCreateContentBodyNonFieldErrorsErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `MessagesCreateContentBodyNonFieldErrorsErrorComponent_result`["message"])
      }

      `MessagesCreateContentBodyBgErrorComponent_result` <- tryCatch({
          `MessagesCreateContentBodyBgErrorComponent`$public_methods$validateJSON(input)
          `MessagesCreateContentBodyBgErrorComponent_instance` <- `MessagesCreateContentBodyBgErrorComponent`$new()
          instance <- `MessagesCreateContentBodyBgErrorComponent_instance`$fromJSON(input)
          instance_type <- "MessagesCreateContentBodyBgErrorComponent"
          matched_schemas <- append(matched_schemas, "MessagesCreateContentBodyBgErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`MessagesCreateContentBodyBgErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `MessagesCreateContentBodyBgErrorComponent_result`["message"])
      }

      `MessagesCreateContentBodyBnErrorComponent_result` <- tryCatch({
          `MessagesCreateContentBodyBnErrorComponent`$public_methods$validateJSON(input)
          `MessagesCreateContentBodyBnErrorComponent_instance` <- `MessagesCreateContentBodyBnErrorComponent`$new()
          instance <- `MessagesCreateContentBodyBnErrorComponent_instance`$fromJSON(input)
          instance_type <- "MessagesCreateContentBodyBnErrorComponent"
          matched_schemas <- append(matched_schemas, "MessagesCreateContentBodyBnErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`MessagesCreateContentBodyBnErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `MessagesCreateContentBodyBnErrorComponent_result`["message"])
      }

      `MessagesCreateContentBodyCaErrorComponent_result` <- tryCatch({
          `MessagesCreateContentBodyCaErrorComponent`$public_methods$validateJSON(input)
          `MessagesCreateContentBodyCaErrorComponent_instance` <- `MessagesCreateContentBodyCaErrorComponent`$new()
          instance <- `MessagesCreateContentBodyCaErrorComponent_instance`$fromJSON(input)
          instance_type <- "MessagesCreateContentBodyCaErrorComponent"
          matched_schemas <- append(matched_schemas, "MessagesCreateContentBodyCaErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`MessagesCreateContentBodyCaErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `MessagesCreateContentBodyCaErrorComponent_result`["message"])
      }

      `MessagesCreateContentBodyDeErrorComponent_result` <- tryCatch({
          `MessagesCreateContentBodyDeErrorComponent`$public_methods$validateJSON(input)
          `MessagesCreateContentBodyDeErrorComponent_instance` <- `MessagesCreateContentBodyDeErrorComponent`$new()
          instance <- `MessagesCreateContentBodyDeErrorComponent_instance`$fromJSON(input)
          instance_type <- "MessagesCreateContentBodyDeErrorComponent"
          matched_schemas <- append(matched_schemas, "MessagesCreateContentBodyDeErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`MessagesCreateContentBodyDeErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `MessagesCreateContentBodyDeErrorComponent_result`["message"])
      }

      `MessagesCreateContentBodyElErrorComponent_result` <- tryCatch({
          `MessagesCreateContentBodyElErrorComponent`$public_methods$validateJSON(input)
          `MessagesCreateContentBodyElErrorComponent_instance` <- `MessagesCreateContentBodyElErrorComponent`$new()
          instance <- `MessagesCreateContentBodyElErrorComponent_instance`$fromJSON(input)
          instance_type <- "MessagesCreateContentBodyElErrorComponent"
          matched_schemas <- append(matched_schemas, "MessagesCreateContentBodyElErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`MessagesCreateContentBodyElErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `MessagesCreateContentBodyElErrorComponent_result`["message"])
      }

      `MessagesCreateContentBodyEnErrorComponent_result` <- tryCatch({
          `MessagesCreateContentBodyEnErrorComponent`$public_methods$validateJSON(input)
          `MessagesCreateContentBodyEnErrorComponent_instance` <- `MessagesCreateContentBodyEnErrorComponent`$new()
          instance <- `MessagesCreateContentBodyEnErrorComponent_instance`$fromJSON(input)
          instance_type <- "MessagesCreateContentBodyEnErrorComponent"
          matched_schemas <- append(matched_schemas, "MessagesCreateContentBodyEnErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`MessagesCreateContentBodyEnErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `MessagesCreateContentBodyEnErrorComponent_result`["message"])
      }

      `MessagesCreateContentBodyEsErrorComponent_result` <- tryCatch({
          `MessagesCreateContentBodyEsErrorComponent`$public_methods$validateJSON(input)
          `MessagesCreateContentBodyEsErrorComponent_instance` <- `MessagesCreateContentBodyEsErrorComponent`$new()
          instance <- `MessagesCreateContentBodyEsErrorComponent_instance`$fromJSON(input)
          instance_type <- "MessagesCreateContentBodyEsErrorComponent"
          matched_schemas <- append(matched_schemas, "MessagesCreateContentBodyEsErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`MessagesCreateContentBodyEsErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `MessagesCreateContentBodyEsErrorComponent_result`["message"])
      }

      `MessagesCreateContentBodyEuErrorComponent_result` <- tryCatch({
          `MessagesCreateContentBodyEuErrorComponent`$public_methods$validateJSON(input)
          `MessagesCreateContentBodyEuErrorComponent_instance` <- `MessagesCreateContentBodyEuErrorComponent`$new()
          instance <- `MessagesCreateContentBodyEuErrorComponent_instance`$fromJSON(input)
          instance_type <- "MessagesCreateContentBodyEuErrorComponent"
          matched_schemas <- append(matched_schemas, "MessagesCreateContentBodyEuErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`MessagesCreateContentBodyEuErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `MessagesCreateContentBodyEuErrorComponent_result`["message"])
      }

      `MessagesCreateContentBodyFrErrorComponent_result` <- tryCatch({
          `MessagesCreateContentBodyFrErrorComponent`$public_methods$validateJSON(input)
          `MessagesCreateContentBodyFrErrorComponent_instance` <- `MessagesCreateContentBodyFrErrorComponent`$new()
          instance <- `MessagesCreateContentBodyFrErrorComponent_instance`$fromJSON(input)
          instance_type <- "MessagesCreateContentBodyFrErrorComponent"
          matched_schemas <- append(matched_schemas, "MessagesCreateContentBodyFrErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`MessagesCreateContentBodyFrErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `MessagesCreateContentBodyFrErrorComponent_result`["message"])
      }

      `MessagesCreateContentBodyGlErrorComponent_result` <- tryCatch({
          `MessagesCreateContentBodyGlErrorComponent`$public_methods$validateJSON(input)
          `MessagesCreateContentBodyGlErrorComponent_instance` <- `MessagesCreateContentBodyGlErrorComponent`$new()
          instance <- `MessagesCreateContentBodyGlErrorComponent_instance`$fromJSON(input)
          instance_type <- "MessagesCreateContentBodyGlErrorComponent"
          matched_schemas <- append(matched_schemas, "MessagesCreateContentBodyGlErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`MessagesCreateContentBodyGlErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `MessagesCreateContentBodyGlErrorComponent_result`["message"])
      }

      `MessagesCreateContentBodyHrErrorComponent_result` <- tryCatch({
          `MessagesCreateContentBodyHrErrorComponent`$public_methods$validateJSON(input)
          `MessagesCreateContentBodyHrErrorComponent_instance` <- `MessagesCreateContentBodyHrErrorComponent`$new()
          instance <- `MessagesCreateContentBodyHrErrorComponent_instance`$fromJSON(input)
          instance_type <- "MessagesCreateContentBodyHrErrorComponent"
          matched_schemas <- append(matched_schemas, "MessagesCreateContentBodyHrErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`MessagesCreateContentBodyHrErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `MessagesCreateContentBodyHrErrorComponent_result`["message"])
      }

      `MessagesCreateContentBodyHuErrorComponent_result` <- tryCatch({
          `MessagesCreateContentBodyHuErrorComponent`$public_methods$validateJSON(input)
          `MessagesCreateContentBodyHuErrorComponent_instance` <- `MessagesCreateContentBodyHuErrorComponent`$new()
          instance <- `MessagesCreateContentBodyHuErrorComponent_instance`$fromJSON(input)
          instance_type <- "MessagesCreateContentBodyHuErrorComponent"
          matched_schemas <- append(matched_schemas, "MessagesCreateContentBodyHuErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`MessagesCreateContentBodyHuErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `MessagesCreateContentBodyHuErrorComponent_result`["message"])
      }

      `MessagesCreateContentBodyItErrorComponent_result` <- tryCatch({
          `MessagesCreateContentBodyItErrorComponent`$public_methods$validateJSON(input)
          `MessagesCreateContentBodyItErrorComponent_instance` <- `MessagesCreateContentBodyItErrorComponent`$new()
          instance <- `MessagesCreateContentBodyItErrorComponent_instance`$fromJSON(input)
          instance_type <- "MessagesCreateContentBodyItErrorComponent"
          matched_schemas <- append(matched_schemas, "MessagesCreateContentBodyItErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`MessagesCreateContentBodyItErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `MessagesCreateContentBodyItErrorComponent_result`["message"])
      }

      `MessagesCreateContentBodyLbErrorComponent_result` <- tryCatch({
          `MessagesCreateContentBodyLbErrorComponent`$public_methods$validateJSON(input)
          `MessagesCreateContentBodyLbErrorComponent_instance` <- `MessagesCreateContentBodyLbErrorComponent`$new()
          instance <- `MessagesCreateContentBodyLbErrorComponent_instance`$fromJSON(input)
          instance_type <- "MessagesCreateContentBodyLbErrorComponent"
          matched_schemas <- append(matched_schemas, "MessagesCreateContentBodyLbErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`MessagesCreateContentBodyLbErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `MessagesCreateContentBodyLbErrorComponent_result`["message"])
      }

      `MessagesCreateContentBodyMkErrorComponent_result` <- tryCatch({
          `MessagesCreateContentBodyMkErrorComponent`$public_methods$validateJSON(input)
          `MessagesCreateContentBodyMkErrorComponent_instance` <- `MessagesCreateContentBodyMkErrorComponent`$new()
          instance <- `MessagesCreateContentBodyMkErrorComponent_instance`$fromJSON(input)
          instance_type <- "MessagesCreateContentBodyMkErrorComponent"
          matched_schemas <- append(matched_schemas, "MessagesCreateContentBodyMkErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`MessagesCreateContentBodyMkErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `MessagesCreateContentBodyMkErrorComponent_result`["message"])
      }

      `MessagesCreateContentBodyNlErrorComponent_result` <- tryCatch({
          `MessagesCreateContentBodyNlErrorComponent`$public_methods$validateJSON(input)
          `MessagesCreateContentBodyNlErrorComponent_instance` <- `MessagesCreateContentBodyNlErrorComponent`$new()
          instance <- `MessagesCreateContentBodyNlErrorComponent_instance`$fromJSON(input)
          instance_type <- "MessagesCreateContentBodyNlErrorComponent"
          matched_schemas <- append(matched_schemas, "MessagesCreateContentBodyNlErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`MessagesCreateContentBodyNlErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `MessagesCreateContentBodyNlErrorComponent_result`["message"])
      }

      `MessagesCreateContentBodyPtErrorComponent_result` <- tryCatch({
          `MessagesCreateContentBodyPtErrorComponent`$public_methods$validateJSON(input)
          `MessagesCreateContentBodyPtErrorComponent_instance` <- `MessagesCreateContentBodyPtErrorComponent`$new()
          instance <- `MessagesCreateContentBodyPtErrorComponent_instance`$fromJSON(input)
          instance_type <- "MessagesCreateContentBodyPtErrorComponent"
          matched_schemas <- append(matched_schemas, "MessagesCreateContentBodyPtErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`MessagesCreateContentBodyPtErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `MessagesCreateContentBodyPtErrorComponent_result`["message"])
      }

      `MessagesCreateContentBodyRoErrorComponent_result` <- tryCatch({
          `MessagesCreateContentBodyRoErrorComponent`$public_methods$validateJSON(input)
          `MessagesCreateContentBodyRoErrorComponent_instance` <- `MessagesCreateContentBodyRoErrorComponent`$new()
          instance <- `MessagesCreateContentBodyRoErrorComponent_instance`$fromJSON(input)
          instance_type <- "MessagesCreateContentBodyRoErrorComponent"
          matched_schemas <- append(matched_schemas, "MessagesCreateContentBodyRoErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`MessagesCreateContentBodyRoErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `MessagesCreateContentBodyRoErrorComponent_result`["message"])
      }

      `MessagesCreateContentBodySlErrorComponent_result` <- tryCatch({
          `MessagesCreateContentBodySlErrorComponent`$public_methods$validateJSON(input)
          `MessagesCreateContentBodySlErrorComponent_instance` <- `MessagesCreateContentBodySlErrorComponent`$new()
          instance <- `MessagesCreateContentBodySlErrorComponent_instance`$fromJSON(input)
          instance_type <- "MessagesCreateContentBodySlErrorComponent"
          matched_schemas <- append(matched_schemas, "MessagesCreateContentBodySlErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`MessagesCreateContentBodySlErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `MessagesCreateContentBodySlErrorComponent_result`["message"])
      }

      `MessagesCreateContentBodySqErrorComponent_result` <- tryCatch({
          `MessagesCreateContentBodySqErrorComponent`$public_methods$validateJSON(input)
          `MessagesCreateContentBodySqErrorComponent_instance` <- `MessagesCreateContentBodySqErrorComponent`$new()
          instance <- `MessagesCreateContentBodySqErrorComponent_instance`$fromJSON(input)
          instance_type <- "MessagesCreateContentBodySqErrorComponent"
          matched_schemas <- append(matched_schemas, "MessagesCreateContentBodySqErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`MessagesCreateContentBodySqErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `MessagesCreateContentBodySqErrorComponent_result`["message"])
      }

      `MessagesCreateContentBodySrErrorComponent_result` <- tryCatch({
          `MessagesCreateContentBodySrErrorComponent`$public_methods$validateJSON(input)
          `MessagesCreateContentBodySrErrorComponent_instance` <- `MessagesCreateContentBodySrErrorComponent`$new()
          instance <- `MessagesCreateContentBodySrErrorComponent_instance`$fromJSON(input)
          instance_type <- "MessagesCreateContentBodySrErrorComponent"
          matched_schemas <- append(matched_schemas, "MessagesCreateContentBodySrErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`MessagesCreateContentBodySrErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `MessagesCreateContentBodySrErrorComponent_result`["message"])
      }

      `MessagesCreateContentBodySvErrorComponent_result` <- tryCatch({
          `MessagesCreateContentBodySvErrorComponent`$public_methods$validateJSON(input)
          `MessagesCreateContentBodySvErrorComponent_instance` <- `MessagesCreateContentBodySvErrorComponent`$new()
          instance <- `MessagesCreateContentBodySvErrorComponent_instance`$fromJSON(input)
          instance_type <- "MessagesCreateContentBodySvErrorComponent"
          matched_schemas <- append(matched_schemas, "MessagesCreateContentBodySvErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`MessagesCreateContentBodySvErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `MessagesCreateContentBodySvErrorComponent_result`["message"])
      }

      `MessagesCreateContentBodyTrErrorComponent_result` <- tryCatch({
          `MessagesCreateContentBodyTrErrorComponent`$public_methods$validateJSON(input)
          `MessagesCreateContentBodyTrErrorComponent_instance` <- `MessagesCreateContentBodyTrErrorComponent`$new()
          instance <- `MessagesCreateContentBodyTrErrorComponent_instance`$fromJSON(input)
          instance_type <- "MessagesCreateContentBodyTrErrorComponent"
          matched_schemas <- append(matched_schemas, "MessagesCreateContentBodyTrErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`MessagesCreateContentBodyTrErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `MessagesCreateContentBodyTrErrorComponent_result`["message"])
      }

      `MessagesCreateContentBodyZhCnErrorComponent_result` <- tryCatch({
          `MessagesCreateContentBodyZhCnErrorComponent`$public_methods$validateJSON(input)
          `MessagesCreateContentBodyZhCnErrorComponent_instance` <- `MessagesCreateContentBodyZhCnErrorComponent`$new()
          instance <- `MessagesCreateContentBodyZhCnErrorComponent_instance`$fromJSON(input)
          instance_type <- "MessagesCreateContentBodyZhCnErrorComponent"
          matched_schemas <- append(matched_schemas, "MessagesCreateContentBodyZhCnErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`MessagesCreateContentBodyZhCnErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `MessagesCreateContentBodyZhCnErrorComponent_result`["message"])
      }

      if (matched == 1) {
        # successfully match exactly 1 schema specified in oneOf
        self$actual_instance <- instance
        self$actual_type <- instance_type
      } else if (matched > 1) {
        # more than 1 match
        stop(paste("Multiple matches found when deserializing the input into MessagesCreateError with oneOf schemas MessagesCreateContentBodyBgErrorComponent, MessagesCreateContentBodyBnErrorComponent, MessagesCreateContentBodyCaErrorComponent, MessagesCreateContentBodyDeErrorComponent, MessagesCreateContentBodyElErrorComponent, MessagesCreateContentBodyEnErrorComponent, MessagesCreateContentBodyEsErrorComponent, MessagesCreateContentBodyEuErrorComponent, MessagesCreateContentBodyFrErrorComponent, MessagesCreateContentBodyGlErrorComponent, MessagesCreateContentBodyHrErrorComponent, MessagesCreateContentBodyHuErrorComponent, MessagesCreateContentBodyItErrorComponent, MessagesCreateContentBodyLbErrorComponent, MessagesCreateContentBodyMkErrorComponent, MessagesCreateContentBodyNlErrorComponent, MessagesCreateContentBodyNonFieldErrorsErrorComponent, MessagesCreateContentBodyPtErrorComponent, MessagesCreateContentBodyRoErrorComponent, MessagesCreateContentBodySlErrorComponent, MessagesCreateContentBodySqErrorComponent, MessagesCreateContentBodySrErrorComponent, MessagesCreateContentBodySvErrorComponent, MessagesCreateContentBodyTrErrorComponent, MessagesCreateContentBodyZhCnErrorComponent, MessagesCreateContentNonFieldErrorsErrorComponent, MessagesCreateContentTitleBgErrorComponent, MessagesCreateContentTitleBnErrorComponent, MessagesCreateContentTitleCaErrorComponent, MessagesCreateContentTitleDeErrorComponent, MessagesCreateContentTitleElErrorComponent, MessagesCreateContentTitleEnErrorComponent, MessagesCreateContentTitleEsErrorComponent, MessagesCreateContentTitleEuErrorComponent, MessagesCreateContentTitleFrErrorComponent, MessagesCreateContentTitleGlErrorComponent, MessagesCreateContentTitleHrErrorComponent, MessagesCreateContentTitleHuErrorComponent, MessagesCreateContentTitleItErrorComponent, MessagesCreateContentTitleLbErrorComponent, MessagesCreateContentTitleMkErrorComponent, MessagesCreateContentTitleNlErrorComponent, MessagesCreateContentTitleNonFieldErrorsErrorComponent, MessagesCreateContentTitlePtErrorComponent, MessagesCreateContentTitleRoErrorComponent, MessagesCreateContentTitleSlErrorComponent, MessagesCreateContentTitleSqErrorComponent, MessagesCreateContentTitleSrErrorComponent, MessagesCreateContentTitleSvErrorComponent, MessagesCreateContentTitleTrErrorComponent, MessagesCreateContentTitleZhCnErrorComponent, MessagesCreateNonFieldErrorsErrorComponent, MessagesCreateUserUuidsErrorComponent, MessagesCreateUserUuidsINDEXErrorComponent. Matched schemas: ",
                   paste(matched_schemas, collapse = ", ")))
      } else {
        # no match
        stop(paste("No match found when deserializing the input into MessagesCreateError with oneOf schemas MessagesCreateContentBodyBgErrorComponent, MessagesCreateContentBodyBnErrorComponent, MessagesCreateContentBodyCaErrorComponent, MessagesCreateContentBodyDeErrorComponent, MessagesCreateContentBodyElErrorComponent, MessagesCreateContentBodyEnErrorComponent, MessagesCreateContentBodyEsErrorComponent, MessagesCreateContentBodyEuErrorComponent, MessagesCreateContentBodyFrErrorComponent, MessagesCreateContentBodyGlErrorComponent, MessagesCreateContentBodyHrErrorComponent, MessagesCreateContentBodyHuErrorComponent, MessagesCreateContentBodyItErrorComponent, MessagesCreateContentBodyLbErrorComponent, MessagesCreateContentBodyMkErrorComponent, MessagesCreateContentBodyNlErrorComponent, MessagesCreateContentBodyNonFieldErrorsErrorComponent, MessagesCreateContentBodyPtErrorComponent, MessagesCreateContentBodyRoErrorComponent, MessagesCreateContentBodySlErrorComponent, MessagesCreateContentBodySqErrorComponent, MessagesCreateContentBodySrErrorComponent, MessagesCreateContentBodySvErrorComponent, MessagesCreateContentBodyTrErrorComponent, MessagesCreateContentBodyZhCnErrorComponent, MessagesCreateContentNonFieldErrorsErrorComponent, MessagesCreateContentTitleBgErrorComponent, MessagesCreateContentTitleBnErrorComponent, MessagesCreateContentTitleCaErrorComponent, MessagesCreateContentTitleDeErrorComponent, MessagesCreateContentTitleElErrorComponent, MessagesCreateContentTitleEnErrorComponent, MessagesCreateContentTitleEsErrorComponent, MessagesCreateContentTitleEuErrorComponent, MessagesCreateContentTitleFrErrorComponent, MessagesCreateContentTitleGlErrorComponent, MessagesCreateContentTitleHrErrorComponent, MessagesCreateContentTitleHuErrorComponent, MessagesCreateContentTitleItErrorComponent, MessagesCreateContentTitleLbErrorComponent, MessagesCreateContentTitleMkErrorComponent, MessagesCreateContentTitleNlErrorComponent, MessagesCreateContentTitleNonFieldErrorsErrorComponent, MessagesCreateContentTitlePtErrorComponent, MessagesCreateContentTitleRoErrorComponent, MessagesCreateContentTitleSlErrorComponent, MessagesCreateContentTitleSqErrorComponent, MessagesCreateContentTitleSrErrorComponent, MessagesCreateContentTitleSvErrorComponent, MessagesCreateContentTitleTrErrorComponent, MessagesCreateContentTitleZhCnErrorComponent, MessagesCreateNonFieldErrorsErrorComponent, MessagesCreateUserUuidsErrorComponent, MessagesCreateUserUuidsINDEXErrorComponent. Details: >>",
                   paste(error_messages, collapse = " >> ")))
      }

      self
    },

    #' @description
    #' Serialize MessagesCreateError to JSON string.
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return JSON string representation of the MessagesCreateError.
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      if (!is.null(self$actual_instance)) {
        json <- jsonlite::toJSON(simple, auto_unbox = TRUE, ...)
        return(as.character(jsonlite::minify(json)))
      } else {
        return(NULL)
      }
    },

    #' @description
    #' Convert to an R object. This method is deprecated. Use `toSimpleType()` instead.
    toJSON = function() {
      .Deprecated(new = "toSimpleType", msg = "Use the '$toSimpleType()' method instead since that is more clearly named. Use '$toJSONString()' to get a JSON string")
      return(self$toSimpleType())
    },

    #' @description
    #' Convert MessagesCreateError to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      if (!is.null(self$actual_instance)) {
        return(self$actual_instance$toSimpleType())
      } else {
        return(NULL)
      }
    },

    #' @description
    #' Validate the input JSON with respect to MessagesCreateError and
    #' throw exception if invalid.
    #'
    #' @param input The input JSON.
    validateJSON = function(input) {
      # backup current values
      actual_instance_bak <- self$actual_instance
      actual_type_bak <- self$actual_type

      # if it's not valid, an error will be thrown
      self$fromJSON(input)

      # no error thrown, restore old values
      self$actual_instance <- actual_instance_bak
      self$actual_type <- actual_type_bak
    },

    #' @description
    #' Returns the string representation of the instance.
    #'
    #' @return The string representation of the instance.
    toString = function() {
      jsoncontent <- c(
        sprintf('"actual_instance": %s', if (is.null(self$actual_instance)) NULL else self$actual_instance$toJSONString()),
        sprintf('"actual_type": "%s"', self$actual_type),
        sprintf('"one_of": "%s"', paste(unlist(self$one_of), collapse = ", "))
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      as.character(jsonlite::prettify(paste("{", jsoncontent, "}", sep = "")))
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
#MessagesCreateError$unlock()
#
## Below is an example to define the print function
#MessagesCreateError$set("public", "print", function(...) {
#  print(jsonlite::prettify(self$toJSONString()))
#  invisible(self)
#})
## Uncomment below to lock the class to prevent modifications to the method or field
#MessagesCreateError$lock()

