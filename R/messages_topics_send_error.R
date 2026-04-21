#' @docType class
#' @title MessagesTopicsSendError
#'
#' @description MessagesTopicsSendError Class
#'
#' @format An \code{R6Class} generator object
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
MessagesTopicsSendError <- R6::R6Class(
  "MessagesTopicsSendError",
  public = list(
    #' @field actual_instance the object stored in this instance.
    actual_instance = NULL,
    #' @field actual_type the type of the object stored in this instance.
    actual_type = NULL,
    #' @field one_of  a list of types defined in the oneOf schema.
    one_of = list("MessagesTopicsSendContentBodyBgErrorComponent", "MessagesTopicsSendContentBodyBnErrorComponent", "MessagesTopicsSendContentBodyCaErrorComponent", "MessagesTopicsSendContentBodyDeErrorComponent", "MessagesTopicsSendContentBodyElErrorComponent", "MessagesTopicsSendContentBodyEnErrorComponent", "MessagesTopicsSendContentBodyEsErrorComponent", "MessagesTopicsSendContentBodyEuErrorComponent", "MessagesTopicsSendContentBodyFrErrorComponent", "MessagesTopicsSendContentBodyGlErrorComponent", "MessagesTopicsSendContentBodyHrErrorComponent", "MessagesTopicsSendContentBodyHuErrorComponent", "MessagesTopicsSendContentBodyItErrorComponent", "MessagesTopicsSendContentBodyLbErrorComponent", "MessagesTopicsSendContentBodyMkErrorComponent", "MessagesTopicsSendContentBodyNlErrorComponent", "MessagesTopicsSendContentBodyNonFieldErrorsErrorComponent", "MessagesTopicsSendContentBodyPtErrorComponent", "MessagesTopicsSendContentBodyRoErrorComponent", "MessagesTopicsSendContentBodySlErrorComponent", "MessagesTopicsSendContentBodySqErrorComponent", "MessagesTopicsSendContentBodySrErrorComponent", "MessagesTopicsSendContentBodySvErrorComponent", "MessagesTopicsSendContentBodyTrErrorComponent", "MessagesTopicsSendContentBodyZhCnErrorComponent", "MessagesTopicsSendContentNonFieldErrorsErrorComponent", "MessagesTopicsSendContentTitleBgErrorComponent", "MessagesTopicsSendContentTitleBnErrorComponent", "MessagesTopicsSendContentTitleCaErrorComponent", "MessagesTopicsSendContentTitleDeErrorComponent", "MessagesTopicsSendContentTitleElErrorComponent", "MessagesTopicsSendContentTitleEnErrorComponent", "MessagesTopicsSendContentTitleEsErrorComponent", "MessagesTopicsSendContentTitleEuErrorComponent", "MessagesTopicsSendContentTitleFrErrorComponent", "MessagesTopicsSendContentTitleGlErrorComponent", "MessagesTopicsSendContentTitleHrErrorComponent", "MessagesTopicsSendContentTitleHuErrorComponent", "MessagesTopicsSendContentTitleItErrorComponent", "MessagesTopicsSendContentTitleLbErrorComponent", "MessagesTopicsSendContentTitleMkErrorComponent", "MessagesTopicsSendContentTitleNlErrorComponent", "MessagesTopicsSendContentTitleNonFieldErrorsErrorComponent", "MessagesTopicsSendContentTitlePtErrorComponent", "MessagesTopicsSendContentTitleRoErrorComponent", "MessagesTopicsSendContentTitleSlErrorComponent", "MessagesTopicsSendContentTitleSqErrorComponent", "MessagesTopicsSendContentTitleSrErrorComponent", "MessagesTopicsSendContentTitleSvErrorComponent", "MessagesTopicsSendContentTitleTrErrorComponent", "MessagesTopicsSendContentTitleZhCnErrorComponent", "MessagesTopicsSendNonFieldErrorsErrorComponent"),

    #' @description
    #' Initialize a new MessagesTopicsSendError.
    #'
    #' @param instance an instance of the object defined in the oneOf schemas: "MessagesTopicsSendContentBodyBgErrorComponent", "MessagesTopicsSendContentBodyBnErrorComponent", "MessagesTopicsSendContentBodyCaErrorComponent", "MessagesTopicsSendContentBodyDeErrorComponent", "MessagesTopicsSendContentBodyElErrorComponent", "MessagesTopicsSendContentBodyEnErrorComponent", "MessagesTopicsSendContentBodyEsErrorComponent", "MessagesTopicsSendContentBodyEuErrorComponent", "MessagesTopicsSendContentBodyFrErrorComponent", "MessagesTopicsSendContentBodyGlErrorComponent", "MessagesTopicsSendContentBodyHrErrorComponent", "MessagesTopicsSendContentBodyHuErrorComponent", "MessagesTopicsSendContentBodyItErrorComponent", "MessagesTopicsSendContentBodyLbErrorComponent", "MessagesTopicsSendContentBodyMkErrorComponent", "MessagesTopicsSendContentBodyNlErrorComponent", "MessagesTopicsSendContentBodyNonFieldErrorsErrorComponent", "MessagesTopicsSendContentBodyPtErrorComponent", "MessagesTopicsSendContentBodyRoErrorComponent", "MessagesTopicsSendContentBodySlErrorComponent", "MessagesTopicsSendContentBodySqErrorComponent", "MessagesTopicsSendContentBodySrErrorComponent", "MessagesTopicsSendContentBodySvErrorComponent", "MessagesTopicsSendContentBodyTrErrorComponent", "MessagesTopicsSendContentBodyZhCnErrorComponent", "MessagesTopicsSendContentNonFieldErrorsErrorComponent", "MessagesTopicsSendContentTitleBgErrorComponent", "MessagesTopicsSendContentTitleBnErrorComponent", "MessagesTopicsSendContentTitleCaErrorComponent", "MessagesTopicsSendContentTitleDeErrorComponent", "MessagesTopicsSendContentTitleElErrorComponent", "MessagesTopicsSendContentTitleEnErrorComponent", "MessagesTopicsSendContentTitleEsErrorComponent", "MessagesTopicsSendContentTitleEuErrorComponent", "MessagesTopicsSendContentTitleFrErrorComponent", "MessagesTopicsSendContentTitleGlErrorComponent", "MessagesTopicsSendContentTitleHrErrorComponent", "MessagesTopicsSendContentTitleHuErrorComponent", "MessagesTopicsSendContentTitleItErrorComponent", "MessagesTopicsSendContentTitleLbErrorComponent", "MessagesTopicsSendContentTitleMkErrorComponent", "MessagesTopicsSendContentTitleNlErrorComponent", "MessagesTopicsSendContentTitleNonFieldErrorsErrorComponent", "MessagesTopicsSendContentTitlePtErrorComponent", "MessagesTopicsSendContentTitleRoErrorComponent", "MessagesTopicsSendContentTitleSlErrorComponent", "MessagesTopicsSendContentTitleSqErrorComponent", "MessagesTopicsSendContentTitleSrErrorComponent", "MessagesTopicsSendContentTitleSvErrorComponent", "MessagesTopicsSendContentTitleTrErrorComponent", "MessagesTopicsSendContentTitleZhCnErrorComponent", "MessagesTopicsSendNonFieldErrorsErrorComponent"
    initialize = function(instance = NULL) {
      if (is.null(instance)) {
        # do nothing
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "MessagesTopicsSendContentBodyBgErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "MessagesTopicsSendContentBodyBgErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "MessagesTopicsSendContentBodyBnErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "MessagesTopicsSendContentBodyBnErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "MessagesTopicsSendContentBodyCaErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "MessagesTopicsSendContentBodyCaErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "MessagesTopicsSendContentBodyDeErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "MessagesTopicsSendContentBodyDeErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "MessagesTopicsSendContentBodyElErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "MessagesTopicsSendContentBodyElErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "MessagesTopicsSendContentBodyEnErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "MessagesTopicsSendContentBodyEnErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "MessagesTopicsSendContentBodyEsErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "MessagesTopicsSendContentBodyEsErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "MessagesTopicsSendContentBodyEuErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "MessagesTopicsSendContentBodyEuErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "MessagesTopicsSendContentBodyFrErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "MessagesTopicsSendContentBodyFrErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "MessagesTopicsSendContentBodyGlErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "MessagesTopicsSendContentBodyGlErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "MessagesTopicsSendContentBodyHrErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "MessagesTopicsSendContentBodyHrErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "MessagesTopicsSendContentBodyHuErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "MessagesTopicsSendContentBodyHuErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "MessagesTopicsSendContentBodyItErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "MessagesTopicsSendContentBodyItErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "MessagesTopicsSendContentBodyLbErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "MessagesTopicsSendContentBodyLbErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "MessagesTopicsSendContentBodyMkErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "MessagesTopicsSendContentBodyMkErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "MessagesTopicsSendContentBodyNlErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "MessagesTopicsSendContentBodyNlErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "MessagesTopicsSendContentBodyNonFieldErrorsErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "MessagesTopicsSendContentBodyNonFieldErrorsErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "MessagesTopicsSendContentBodyPtErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "MessagesTopicsSendContentBodyPtErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "MessagesTopicsSendContentBodyRoErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "MessagesTopicsSendContentBodyRoErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "MessagesTopicsSendContentBodySlErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "MessagesTopicsSendContentBodySlErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "MessagesTopicsSendContentBodySqErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "MessagesTopicsSendContentBodySqErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "MessagesTopicsSendContentBodySrErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "MessagesTopicsSendContentBodySrErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "MessagesTopicsSendContentBodySvErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "MessagesTopicsSendContentBodySvErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "MessagesTopicsSendContentBodyTrErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "MessagesTopicsSendContentBodyTrErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "MessagesTopicsSendContentBodyZhCnErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "MessagesTopicsSendContentBodyZhCnErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "MessagesTopicsSendContentNonFieldErrorsErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "MessagesTopicsSendContentNonFieldErrorsErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "MessagesTopicsSendContentTitleBgErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "MessagesTopicsSendContentTitleBgErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "MessagesTopicsSendContentTitleBnErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "MessagesTopicsSendContentTitleBnErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "MessagesTopicsSendContentTitleCaErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "MessagesTopicsSendContentTitleCaErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "MessagesTopicsSendContentTitleDeErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "MessagesTopicsSendContentTitleDeErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "MessagesTopicsSendContentTitleElErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "MessagesTopicsSendContentTitleElErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "MessagesTopicsSendContentTitleEnErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "MessagesTopicsSendContentTitleEnErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "MessagesTopicsSendContentTitleEsErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "MessagesTopicsSendContentTitleEsErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "MessagesTopicsSendContentTitleEuErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "MessagesTopicsSendContentTitleEuErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "MessagesTopicsSendContentTitleFrErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "MessagesTopicsSendContentTitleFrErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "MessagesTopicsSendContentTitleGlErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "MessagesTopicsSendContentTitleGlErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "MessagesTopicsSendContentTitleHrErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "MessagesTopicsSendContentTitleHrErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "MessagesTopicsSendContentTitleHuErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "MessagesTopicsSendContentTitleHuErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "MessagesTopicsSendContentTitleItErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "MessagesTopicsSendContentTitleItErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "MessagesTopicsSendContentTitleLbErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "MessagesTopicsSendContentTitleLbErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "MessagesTopicsSendContentTitleMkErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "MessagesTopicsSendContentTitleMkErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "MessagesTopicsSendContentTitleNlErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "MessagesTopicsSendContentTitleNlErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "MessagesTopicsSendContentTitleNonFieldErrorsErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "MessagesTopicsSendContentTitleNonFieldErrorsErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "MessagesTopicsSendContentTitlePtErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "MessagesTopicsSendContentTitlePtErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "MessagesTopicsSendContentTitleRoErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "MessagesTopicsSendContentTitleRoErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "MessagesTopicsSendContentTitleSlErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "MessagesTopicsSendContentTitleSlErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "MessagesTopicsSendContentTitleSqErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "MessagesTopicsSendContentTitleSqErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "MessagesTopicsSendContentTitleSrErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "MessagesTopicsSendContentTitleSrErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "MessagesTopicsSendContentTitleSvErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "MessagesTopicsSendContentTitleSvErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "MessagesTopicsSendContentTitleTrErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "MessagesTopicsSendContentTitleTrErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "MessagesTopicsSendContentTitleZhCnErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "MessagesTopicsSendContentTitleZhCnErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "MessagesTopicsSendNonFieldErrorsErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "MessagesTopicsSendNonFieldErrorsErrorComponent"
      } else {
        stop(paste("Failed to initialize MessagesTopicsSendError with oneOf schemas MessagesTopicsSendContentBodyBgErrorComponent, MessagesTopicsSendContentBodyBnErrorComponent, MessagesTopicsSendContentBodyCaErrorComponent, MessagesTopicsSendContentBodyDeErrorComponent, MessagesTopicsSendContentBodyElErrorComponent, MessagesTopicsSendContentBodyEnErrorComponent, MessagesTopicsSendContentBodyEsErrorComponent, MessagesTopicsSendContentBodyEuErrorComponent, MessagesTopicsSendContentBodyFrErrorComponent, MessagesTopicsSendContentBodyGlErrorComponent, MessagesTopicsSendContentBodyHrErrorComponent, MessagesTopicsSendContentBodyHuErrorComponent, MessagesTopicsSendContentBodyItErrorComponent, MessagesTopicsSendContentBodyLbErrorComponent, MessagesTopicsSendContentBodyMkErrorComponent, MessagesTopicsSendContentBodyNlErrorComponent, MessagesTopicsSendContentBodyNonFieldErrorsErrorComponent, MessagesTopicsSendContentBodyPtErrorComponent, MessagesTopicsSendContentBodyRoErrorComponent, MessagesTopicsSendContentBodySlErrorComponent, MessagesTopicsSendContentBodySqErrorComponent, MessagesTopicsSendContentBodySrErrorComponent, MessagesTopicsSendContentBodySvErrorComponent, MessagesTopicsSendContentBodyTrErrorComponent, MessagesTopicsSendContentBodyZhCnErrorComponent, MessagesTopicsSendContentNonFieldErrorsErrorComponent, MessagesTopicsSendContentTitleBgErrorComponent, MessagesTopicsSendContentTitleBnErrorComponent, MessagesTopicsSendContentTitleCaErrorComponent, MessagesTopicsSendContentTitleDeErrorComponent, MessagesTopicsSendContentTitleElErrorComponent, MessagesTopicsSendContentTitleEnErrorComponent, MessagesTopicsSendContentTitleEsErrorComponent, MessagesTopicsSendContentTitleEuErrorComponent, MessagesTopicsSendContentTitleFrErrorComponent, MessagesTopicsSendContentTitleGlErrorComponent, MessagesTopicsSendContentTitleHrErrorComponent, MessagesTopicsSendContentTitleHuErrorComponent, MessagesTopicsSendContentTitleItErrorComponent, MessagesTopicsSendContentTitleLbErrorComponent, MessagesTopicsSendContentTitleMkErrorComponent, MessagesTopicsSendContentTitleNlErrorComponent, MessagesTopicsSendContentTitleNonFieldErrorsErrorComponent, MessagesTopicsSendContentTitlePtErrorComponent, MessagesTopicsSendContentTitleRoErrorComponent, MessagesTopicsSendContentTitleSlErrorComponent, MessagesTopicsSendContentTitleSqErrorComponent, MessagesTopicsSendContentTitleSrErrorComponent, MessagesTopicsSendContentTitleSvErrorComponent, MessagesTopicsSendContentTitleTrErrorComponent, MessagesTopicsSendContentTitleZhCnErrorComponent, MessagesTopicsSendNonFieldErrorsErrorComponent. Provided class name: ",
                   get(class(instance)[[1]], pos = -1)$classname))
      }
    },

    #' @description
    #' Deserialize JSON string into an instance of MessagesTopicsSendError.
    #' An alias to the method `fromJSON` .
    #'
    #' @param input The input JSON.
    #'
    #' @return An instance of MessagesTopicsSendError.
    fromJSONString = function(input) {
      self$fromJSON(input)
    },

    #' @description
    #' Deserialize JSON string into an instance of MessagesTopicsSendError.
    #'
    #' @param input The input JSON.
    #'
    #' @return An instance of MessagesTopicsSendError.
    fromJSON = function(input) {
      matched <- 0 # match counter
      matched_schemas <- list() #names of matched schemas
      error_messages <- list()
      instance <- NULL

      `MessagesTopicsSendNonFieldErrorsErrorComponent_result` <- tryCatch({
          `MessagesTopicsSendNonFieldErrorsErrorComponent`$public_methods$validateJSON(input)
          `MessagesTopicsSendNonFieldErrorsErrorComponent_instance` <- `MessagesTopicsSendNonFieldErrorsErrorComponent`$new()
          instance <- `MessagesTopicsSendNonFieldErrorsErrorComponent_instance`$fromJSON(input)
          instance_type <- "MessagesTopicsSendNonFieldErrorsErrorComponent"
          matched_schemas <- append(matched_schemas, "MessagesTopicsSendNonFieldErrorsErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`MessagesTopicsSendNonFieldErrorsErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `MessagesTopicsSendNonFieldErrorsErrorComponent_result`["message"])
      }

      `MessagesTopicsSendContentNonFieldErrorsErrorComponent_result` <- tryCatch({
          `MessagesTopicsSendContentNonFieldErrorsErrorComponent`$public_methods$validateJSON(input)
          `MessagesTopicsSendContentNonFieldErrorsErrorComponent_instance` <- `MessagesTopicsSendContentNonFieldErrorsErrorComponent`$new()
          instance <- `MessagesTopicsSendContentNonFieldErrorsErrorComponent_instance`$fromJSON(input)
          instance_type <- "MessagesTopicsSendContentNonFieldErrorsErrorComponent"
          matched_schemas <- append(matched_schemas, "MessagesTopicsSendContentNonFieldErrorsErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`MessagesTopicsSendContentNonFieldErrorsErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `MessagesTopicsSendContentNonFieldErrorsErrorComponent_result`["message"])
      }

      `MessagesTopicsSendContentTitleNonFieldErrorsErrorComponent_result` <- tryCatch({
          `MessagesTopicsSendContentTitleNonFieldErrorsErrorComponent`$public_methods$validateJSON(input)
          `MessagesTopicsSendContentTitleNonFieldErrorsErrorComponent_instance` <- `MessagesTopicsSendContentTitleNonFieldErrorsErrorComponent`$new()
          instance <- `MessagesTopicsSendContentTitleNonFieldErrorsErrorComponent_instance`$fromJSON(input)
          instance_type <- "MessagesTopicsSendContentTitleNonFieldErrorsErrorComponent"
          matched_schemas <- append(matched_schemas, "MessagesTopicsSendContentTitleNonFieldErrorsErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`MessagesTopicsSendContentTitleNonFieldErrorsErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `MessagesTopicsSendContentTitleNonFieldErrorsErrorComponent_result`["message"])
      }

      `MessagesTopicsSendContentTitleBgErrorComponent_result` <- tryCatch({
          `MessagesTopicsSendContentTitleBgErrorComponent`$public_methods$validateJSON(input)
          `MessagesTopicsSendContentTitleBgErrorComponent_instance` <- `MessagesTopicsSendContentTitleBgErrorComponent`$new()
          instance <- `MessagesTopicsSendContentTitleBgErrorComponent_instance`$fromJSON(input)
          instance_type <- "MessagesTopicsSendContentTitleBgErrorComponent"
          matched_schemas <- append(matched_schemas, "MessagesTopicsSendContentTitleBgErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`MessagesTopicsSendContentTitleBgErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `MessagesTopicsSendContentTitleBgErrorComponent_result`["message"])
      }

      `MessagesTopicsSendContentTitleBnErrorComponent_result` <- tryCatch({
          `MessagesTopicsSendContentTitleBnErrorComponent`$public_methods$validateJSON(input)
          `MessagesTopicsSendContentTitleBnErrorComponent_instance` <- `MessagesTopicsSendContentTitleBnErrorComponent`$new()
          instance <- `MessagesTopicsSendContentTitleBnErrorComponent_instance`$fromJSON(input)
          instance_type <- "MessagesTopicsSendContentTitleBnErrorComponent"
          matched_schemas <- append(matched_schemas, "MessagesTopicsSendContentTitleBnErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`MessagesTopicsSendContentTitleBnErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `MessagesTopicsSendContentTitleBnErrorComponent_result`["message"])
      }

      `MessagesTopicsSendContentTitleCaErrorComponent_result` <- tryCatch({
          `MessagesTopicsSendContentTitleCaErrorComponent`$public_methods$validateJSON(input)
          `MessagesTopicsSendContentTitleCaErrorComponent_instance` <- `MessagesTopicsSendContentTitleCaErrorComponent`$new()
          instance <- `MessagesTopicsSendContentTitleCaErrorComponent_instance`$fromJSON(input)
          instance_type <- "MessagesTopicsSendContentTitleCaErrorComponent"
          matched_schemas <- append(matched_schemas, "MessagesTopicsSendContentTitleCaErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`MessagesTopicsSendContentTitleCaErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `MessagesTopicsSendContentTitleCaErrorComponent_result`["message"])
      }

      `MessagesTopicsSendContentTitleDeErrorComponent_result` <- tryCatch({
          `MessagesTopicsSendContentTitleDeErrorComponent`$public_methods$validateJSON(input)
          `MessagesTopicsSendContentTitleDeErrorComponent_instance` <- `MessagesTopicsSendContentTitleDeErrorComponent`$new()
          instance <- `MessagesTopicsSendContentTitleDeErrorComponent_instance`$fromJSON(input)
          instance_type <- "MessagesTopicsSendContentTitleDeErrorComponent"
          matched_schemas <- append(matched_schemas, "MessagesTopicsSendContentTitleDeErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`MessagesTopicsSendContentTitleDeErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `MessagesTopicsSendContentTitleDeErrorComponent_result`["message"])
      }

      `MessagesTopicsSendContentTitleElErrorComponent_result` <- tryCatch({
          `MessagesTopicsSendContentTitleElErrorComponent`$public_methods$validateJSON(input)
          `MessagesTopicsSendContentTitleElErrorComponent_instance` <- `MessagesTopicsSendContentTitleElErrorComponent`$new()
          instance <- `MessagesTopicsSendContentTitleElErrorComponent_instance`$fromJSON(input)
          instance_type <- "MessagesTopicsSendContentTitleElErrorComponent"
          matched_schemas <- append(matched_schemas, "MessagesTopicsSendContentTitleElErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`MessagesTopicsSendContentTitleElErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `MessagesTopicsSendContentTitleElErrorComponent_result`["message"])
      }

      `MessagesTopicsSendContentTitleEnErrorComponent_result` <- tryCatch({
          `MessagesTopicsSendContentTitleEnErrorComponent`$public_methods$validateJSON(input)
          `MessagesTopicsSendContentTitleEnErrorComponent_instance` <- `MessagesTopicsSendContentTitleEnErrorComponent`$new()
          instance <- `MessagesTopicsSendContentTitleEnErrorComponent_instance`$fromJSON(input)
          instance_type <- "MessagesTopicsSendContentTitleEnErrorComponent"
          matched_schemas <- append(matched_schemas, "MessagesTopicsSendContentTitleEnErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`MessagesTopicsSendContentTitleEnErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `MessagesTopicsSendContentTitleEnErrorComponent_result`["message"])
      }

      `MessagesTopicsSendContentTitleEsErrorComponent_result` <- tryCatch({
          `MessagesTopicsSendContentTitleEsErrorComponent`$public_methods$validateJSON(input)
          `MessagesTopicsSendContentTitleEsErrorComponent_instance` <- `MessagesTopicsSendContentTitleEsErrorComponent`$new()
          instance <- `MessagesTopicsSendContentTitleEsErrorComponent_instance`$fromJSON(input)
          instance_type <- "MessagesTopicsSendContentTitleEsErrorComponent"
          matched_schemas <- append(matched_schemas, "MessagesTopicsSendContentTitleEsErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`MessagesTopicsSendContentTitleEsErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `MessagesTopicsSendContentTitleEsErrorComponent_result`["message"])
      }

      `MessagesTopicsSendContentTitleEuErrorComponent_result` <- tryCatch({
          `MessagesTopicsSendContentTitleEuErrorComponent`$public_methods$validateJSON(input)
          `MessagesTopicsSendContentTitleEuErrorComponent_instance` <- `MessagesTopicsSendContentTitleEuErrorComponent`$new()
          instance <- `MessagesTopicsSendContentTitleEuErrorComponent_instance`$fromJSON(input)
          instance_type <- "MessagesTopicsSendContentTitleEuErrorComponent"
          matched_schemas <- append(matched_schemas, "MessagesTopicsSendContentTitleEuErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`MessagesTopicsSendContentTitleEuErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `MessagesTopicsSendContentTitleEuErrorComponent_result`["message"])
      }

      `MessagesTopicsSendContentTitleFrErrorComponent_result` <- tryCatch({
          `MessagesTopicsSendContentTitleFrErrorComponent`$public_methods$validateJSON(input)
          `MessagesTopicsSendContentTitleFrErrorComponent_instance` <- `MessagesTopicsSendContentTitleFrErrorComponent`$new()
          instance <- `MessagesTopicsSendContentTitleFrErrorComponent_instance`$fromJSON(input)
          instance_type <- "MessagesTopicsSendContentTitleFrErrorComponent"
          matched_schemas <- append(matched_schemas, "MessagesTopicsSendContentTitleFrErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`MessagesTopicsSendContentTitleFrErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `MessagesTopicsSendContentTitleFrErrorComponent_result`["message"])
      }

      `MessagesTopicsSendContentTitleGlErrorComponent_result` <- tryCatch({
          `MessagesTopicsSendContentTitleGlErrorComponent`$public_methods$validateJSON(input)
          `MessagesTopicsSendContentTitleGlErrorComponent_instance` <- `MessagesTopicsSendContentTitleGlErrorComponent`$new()
          instance <- `MessagesTopicsSendContentTitleGlErrorComponent_instance`$fromJSON(input)
          instance_type <- "MessagesTopicsSendContentTitleGlErrorComponent"
          matched_schemas <- append(matched_schemas, "MessagesTopicsSendContentTitleGlErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`MessagesTopicsSendContentTitleGlErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `MessagesTopicsSendContentTitleGlErrorComponent_result`["message"])
      }

      `MessagesTopicsSendContentTitleHrErrorComponent_result` <- tryCatch({
          `MessagesTopicsSendContentTitleHrErrorComponent`$public_methods$validateJSON(input)
          `MessagesTopicsSendContentTitleHrErrorComponent_instance` <- `MessagesTopicsSendContentTitleHrErrorComponent`$new()
          instance <- `MessagesTopicsSendContentTitleHrErrorComponent_instance`$fromJSON(input)
          instance_type <- "MessagesTopicsSendContentTitleHrErrorComponent"
          matched_schemas <- append(matched_schemas, "MessagesTopicsSendContentTitleHrErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`MessagesTopicsSendContentTitleHrErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `MessagesTopicsSendContentTitleHrErrorComponent_result`["message"])
      }

      `MessagesTopicsSendContentTitleHuErrorComponent_result` <- tryCatch({
          `MessagesTopicsSendContentTitleHuErrorComponent`$public_methods$validateJSON(input)
          `MessagesTopicsSendContentTitleHuErrorComponent_instance` <- `MessagesTopicsSendContentTitleHuErrorComponent`$new()
          instance <- `MessagesTopicsSendContentTitleHuErrorComponent_instance`$fromJSON(input)
          instance_type <- "MessagesTopicsSendContentTitleHuErrorComponent"
          matched_schemas <- append(matched_schemas, "MessagesTopicsSendContentTitleHuErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`MessagesTopicsSendContentTitleHuErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `MessagesTopicsSendContentTitleHuErrorComponent_result`["message"])
      }

      `MessagesTopicsSendContentTitleItErrorComponent_result` <- tryCatch({
          `MessagesTopicsSendContentTitleItErrorComponent`$public_methods$validateJSON(input)
          `MessagesTopicsSendContentTitleItErrorComponent_instance` <- `MessagesTopicsSendContentTitleItErrorComponent`$new()
          instance <- `MessagesTopicsSendContentTitleItErrorComponent_instance`$fromJSON(input)
          instance_type <- "MessagesTopicsSendContentTitleItErrorComponent"
          matched_schemas <- append(matched_schemas, "MessagesTopicsSendContentTitleItErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`MessagesTopicsSendContentTitleItErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `MessagesTopicsSendContentTitleItErrorComponent_result`["message"])
      }

      `MessagesTopicsSendContentTitleLbErrorComponent_result` <- tryCatch({
          `MessagesTopicsSendContentTitleLbErrorComponent`$public_methods$validateJSON(input)
          `MessagesTopicsSendContentTitleLbErrorComponent_instance` <- `MessagesTopicsSendContentTitleLbErrorComponent`$new()
          instance <- `MessagesTopicsSendContentTitleLbErrorComponent_instance`$fromJSON(input)
          instance_type <- "MessagesTopicsSendContentTitleLbErrorComponent"
          matched_schemas <- append(matched_schemas, "MessagesTopicsSendContentTitleLbErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`MessagesTopicsSendContentTitleLbErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `MessagesTopicsSendContentTitleLbErrorComponent_result`["message"])
      }

      `MessagesTopicsSendContentTitleMkErrorComponent_result` <- tryCatch({
          `MessagesTopicsSendContentTitleMkErrorComponent`$public_methods$validateJSON(input)
          `MessagesTopicsSendContentTitleMkErrorComponent_instance` <- `MessagesTopicsSendContentTitleMkErrorComponent`$new()
          instance <- `MessagesTopicsSendContentTitleMkErrorComponent_instance`$fromJSON(input)
          instance_type <- "MessagesTopicsSendContentTitleMkErrorComponent"
          matched_schemas <- append(matched_schemas, "MessagesTopicsSendContentTitleMkErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`MessagesTopicsSendContentTitleMkErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `MessagesTopicsSendContentTitleMkErrorComponent_result`["message"])
      }

      `MessagesTopicsSendContentTitleNlErrorComponent_result` <- tryCatch({
          `MessagesTopicsSendContentTitleNlErrorComponent`$public_methods$validateJSON(input)
          `MessagesTopicsSendContentTitleNlErrorComponent_instance` <- `MessagesTopicsSendContentTitleNlErrorComponent`$new()
          instance <- `MessagesTopicsSendContentTitleNlErrorComponent_instance`$fromJSON(input)
          instance_type <- "MessagesTopicsSendContentTitleNlErrorComponent"
          matched_schemas <- append(matched_schemas, "MessagesTopicsSendContentTitleNlErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`MessagesTopicsSendContentTitleNlErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `MessagesTopicsSendContentTitleNlErrorComponent_result`["message"])
      }

      `MessagesTopicsSendContentTitlePtErrorComponent_result` <- tryCatch({
          `MessagesTopicsSendContentTitlePtErrorComponent`$public_methods$validateJSON(input)
          `MessagesTopicsSendContentTitlePtErrorComponent_instance` <- `MessagesTopicsSendContentTitlePtErrorComponent`$new()
          instance <- `MessagesTopicsSendContentTitlePtErrorComponent_instance`$fromJSON(input)
          instance_type <- "MessagesTopicsSendContentTitlePtErrorComponent"
          matched_schemas <- append(matched_schemas, "MessagesTopicsSendContentTitlePtErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`MessagesTopicsSendContentTitlePtErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `MessagesTopicsSendContentTitlePtErrorComponent_result`["message"])
      }

      `MessagesTopicsSendContentTitleRoErrorComponent_result` <- tryCatch({
          `MessagesTopicsSendContentTitleRoErrorComponent`$public_methods$validateJSON(input)
          `MessagesTopicsSendContentTitleRoErrorComponent_instance` <- `MessagesTopicsSendContentTitleRoErrorComponent`$new()
          instance <- `MessagesTopicsSendContentTitleRoErrorComponent_instance`$fromJSON(input)
          instance_type <- "MessagesTopicsSendContentTitleRoErrorComponent"
          matched_schemas <- append(matched_schemas, "MessagesTopicsSendContentTitleRoErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`MessagesTopicsSendContentTitleRoErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `MessagesTopicsSendContentTitleRoErrorComponent_result`["message"])
      }

      `MessagesTopicsSendContentTitleSlErrorComponent_result` <- tryCatch({
          `MessagesTopicsSendContentTitleSlErrorComponent`$public_methods$validateJSON(input)
          `MessagesTopicsSendContentTitleSlErrorComponent_instance` <- `MessagesTopicsSendContentTitleSlErrorComponent`$new()
          instance <- `MessagesTopicsSendContentTitleSlErrorComponent_instance`$fromJSON(input)
          instance_type <- "MessagesTopicsSendContentTitleSlErrorComponent"
          matched_schemas <- append(matched_schemas, "MessagesTopicsSendContentTitleSlErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`MessagesTopicsSendContentTitleSlErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `MessagesTopicsSendContentTitleSlErrorComponent_result`["message"])
      }

      `MessagesTopicsSendContentTitleSqErrorComponent_result` <- tryCatch({
          `MessagesTopicsSendContentTitleSqErrorComponent`$public_methods$validateJSON(input)
          `MessagesTopicsSendContentTitleSqErrorComponent_instance` <- `MessagesTopicsSendContentTitleSqErrorComponent`$new()
          instance <- `MessagesTopicsSendContentTitleSqErrorComponent_instance`$fromJSON(input)
          instance_type <- "MessagesTopicsSendContentTitleSqErrorComponent"
          matched_schemas <- append(matched_schemas, "MessagesTopicsSendContentTitleSqErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`MessagesTopicsSendContentTitleSqErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `MessagesTopicsSendContentTitleSqErrorComponent_result`["message"])
      }

      `MessagesTopicsSendContentTitleSrErrorComponent_result` <- tryCatch({
          `MessagesTopicsSendContentTitleSrErrorComponent`$public_methods$validateJSON(input)
          `MessagesTopicsSendContentTitleSrErrorComponent_instance` <- `MessagesTopicsSendContentTitleSrErrorComponent`$new()
          instance <- `MessagesTopicsSendContentTitleSrErrorComponent_instance`$fromJSON(input)
          instance_type <- "MessagesTopicsSendContentTitleSrErrorComponent"
          matched_schemas <- append(matched_schemas, "MessagesTopicsSendContentTitleSrErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`MessagesTopicsSendContentTitleSrErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `MessagesTopicsSendContentTitleSrErrorComponent_result`["message"])
      }

      `MessagesTopicsSendContentTitleSvErrorComponent_result` <- tryCatch({
          `MessagesTopicsSendContentTitleSvErrorComponent`$public_methods$validateJSON(input)
          `MessagesTopicsSendContentTitleSvErrorComponent_instance` <- `MessagesTopicsSendContentTitleSvErrorComponent`$new()
          instance <- `MessagesTopicsSendContentTitleSvErrorComponent_instance`$fromJSON(input)
          instance_type <- "MessagesTopicsSendContentTitleSvErrorComponent"
          matched_schemas <- append(matched_schemas, "MessagesTopicsSendContentTitleSvErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`MessagesTopicsSendContentTitleSvErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `MessagesTopicsSendContentTitleSvErrorComponent_result`["message"])
      }

      `MessagesTopicsSendContentTitleTrErrorComponent_result` <- tryCatch({
          `MessagesTopicsSendContentTitleTrErrorComponent`$public_methods$validateJSON(input)
          `MessagesTopicsSendContentTitleTrErrorComponent_instance` <- `MessagesTopicsSendContentTitleTrErrorComponent`$new()
          instance <- `MessagesTopicsSendContentTitleTrErrorComponent_instance`$fromJSON(input)
          instance_type <- "MessagesTopicsSendContentTitleTrErrorComponent"
          matched_schemas <- append(matched_schemas, "MessagesTopicsSendContentTitleTrErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`MessagesTopicsSendContentTitleTrErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `MessagesTopicsSendContentTitleTrErrorComponent_result`["message"])
      }

      `MessagesTopicsSendContentTitleZhCnErrorComponent_result` <- tryCatch({
          `MessagesTopicsSendContentTitleZhCnErrorComponent`$public_methods$validateJSON(input)
          `MessagesTopicsSendContentTitleZhCnErrorComponent_instance` <- `MessagesTopicsSendContentTitleZhCnErrorComponent`$new()
          instance <- `MessagesTopicsSendContentTitleZhCnErrorComponent_instance`$fromJSON(input)
          instance_type <- "MessagesTopicsSendContentTitleZhCnErrorComponent"
          matched_schemas <- append(matched_schemas, "MessagesTopicsSendContentTitleZhCnErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`MessagesTopicsSendContentTitleZhCnErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `MessagesTopicsSendContentTitleZhCnErrorComponent_result`["message"])
      }

      `MessagesTopicsSendContentBodyNonFieldErrorsErrorComponent_result` <- tryCatch({
          `MessagesTopicsSendContentBodyNonFieldErrorsErrorComponent`$public_methods$validateJSON(input)
          `MessagesTopicsSendContentBodyNonFieldErrorsErrorComponent_instance` <- `MessagesTopicsSendContentBodyNonFieldErrorsErrorComponent`$new()
          instance <- `MessagesTopicsSendContentBodyNonFieldErrorsErrorComponent_instance`$fromJSON(input)
          instance_type <- "MessagesTopicsSendContentBodyNonFieldErrorsErrorComponent"
          matched_schemas <- append(matched_schemas, "MessagesTopicsSendContentBodyNonFieldErrorsErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`MessagesTopicsSendContentBodyNonFieldErrorsErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `MessagesTopicsSendContentBodyNonFieldErrorsErrorComponent_result`["message"])
      }

      `MessagesTopicsSendContentBodyBgErrorComponent_result` <- tryCatch({
          `MessagesTopicsSendContentBodyBgErrorComponent`$public_methods$validateJSON(input)
          `MessagesTopicsSendContentBodyBgErrorComponent_instance` <- `MessagesTopicsSendContentBodyBgErrorComponent`$new()
          instance <- `MessagesTopicsSendContentBodyBgErrorComponent_instance`$fromJSON(input)
          instance_type <- "MessagesTopicsSendContentBodyBgErrorComponent"
          matched_schemas <- append(matched_schemas, "MessagesTopicsSendContentBodyBgErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`MessagesTopicsSendContentBodyBgErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `MessagesTopicsSendContentBodyBgErrorComponent_result`["message"])
      }

      `MessagesTopicsSendContentBodyBnErrorComponent_result` <- tryCatch({
          `MessagesTopicsSendContentBodyBnErrorComponent`$public_methods$validateJSON(input)
          `MessagesTopicsSendContentBodyBnErrorComponent_instance` <- `MessagesTopicsSendContentBodyBnErrorComponent`$new()
          instance <- `MessagesTopicsSendContentBodyBnErrorComponent_instance`$fromJSON(input)
          instance_type <- "MessagesTopicsSendContentBodyBnErrorComponent"
          matched_schemas <- append(matched_schemas, "MessagesTopicsSendContentBodyBnErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`MessagesTopicsSendContentBodyBnErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `MessagesTopicsSendContentBodyBnErrorComponent_result`["message"])
      }

      `MessagesTopicsSendContentBodyCaErrorComponent_result` <- tryCatch({
          `MessagesTopicsSendContentBodyCaErrorComponent`$public_methods$validateJSON(input)
          `MessagesTopicsSendContentBodyCaErrorComponent_instance` <- `MessagesTopicsSendContentBodyCaErrorComponent`$new()
          instance <- `MessagesTopicsSendContentBodyCaErrorComponent_instance`$fromJSON(input)
          instance_type <- "MessagesTopicsSendContentBodyCaErrorComponent"
          matched_schemas <- append(matched_schemas, "MessagesTopicsSendContentBodyCaErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`MessagesTopicsSendContentBodyCaErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `MessagesTopicsSendContentBodyCaErrorComponent_result`["message"])
      }

      `MessagesTopicsSendContentBodyDeErrorComponent_result` <- tryCatch({
          `MessagesTopicsSendContentBodyDeErrorComponent`$public_methods$validateJSON(input)
          `MessagesTopicsSendContentBodyDeErrorComponent_instance` <- `MessagesTopicsSendContentBodyDeErrorComponent`$new()
          instance <- `MessagesTopicsSendContentBodyDeErrorComponent_instance`$fromJSON(input)
          instance_type <- "MessagesTopicsSendContentBodyDeErrorComponent"
          matched_schemas <- append(matched_schemas, "MessagesTopicsSendContentBodyDeErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`MessagesTopicsSendContentBodyDeErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `MessagesTopicsSendContentBodyDeErrorComponent_result`["message"])
      }

      `MessagesTopicsSendContentBodyElErrorComponent_result` <- tryCatch({
          `MessagesTopicsSendContentBodyElErrorComponent`$public_methods$validateJSON(input)
          `MessagesTopicsSendContentBodyElErrorComponent_instance` <- `MessagesTopicsSendContentBodyElErrorComponent`$new()
          instance <- `MessagesTopicsSendContentBodyElErrorComponent_instance`$fromJSON(input)
          instance_type <- "MessagesTopicsSendContentBodyElErrorComponent"
          matched_schemas <- append(matched_schemas, "MessagesTopicsSendContentBodyElErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`MessagesTopicsSendContentBodyElErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `MessagesTopicsSendContentBodyElErrorComponent_result`["message"])
      }

      `MessagesTopicsSendContentBodyEnErrorComponent_result` <- tryCatch({
          `MessagesTopicsSendContentBodyEnErrorComponent`$public_methods$validateJSON(input)
          `MessagesTopicsSendContentBodyEnErrorComponent_instance` <- `MessagesTopicsSendContentBodyEnErrorComponent`$new()
          instance <- `MessagesTopicsSendContentBodyEnErrorComponent_instance`$fromJSON(input)
          instance_type <- "MessagesTopicsSendContentBodyEnErrorComponent"
          matched_schemas <- append(matched_schemas, "MessagesTopicsSendContentBodyEnErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`MessagesTopicsSendContentBodyEnErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `MessagesTopicsSendContentBodyEnErrorComponent_result`["message"])
      }

      `MessagesTopicsSendContentBodyEsErrorComponent_result` <- tryCatch({
          `MessagesTopicsSendContentBodyEsErrorComponent`$public_methods$validateJSON(input)
          `MessagesTopicsSendContentBodyEsErrorComponent_instance` <- `MessagesTopicsSendContentBodyEsErrorComponent`$new()
          instance <- `MessagesTopicsSendContentBodyEsErrorComponent_instance`$fromJSON(input)
          instance_type <- "MessagesTopicsSendContentBodyEsErrorComponent"
          matched_schemas <- append(matched_schemas, "MessagesTopicsSendContentBodyEsErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`MessagesTopicsSendContentBodyEsErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `MessagesTopicsSendContentBodyEsErrorComponent_result`["message"])
      }

      `MessagesTopicsSendContentBodyEuErrorComponent_result` <- tryCatch({
          `MessagesTopicsSendContentBodyEuErrorComponent`$public_methods$validateJSON(input)
          `MessagesTopicsSendContentBodyEuErrorComponent_instance` <- `MessagesTopicsSendContentBodyEuErrorComponent`$new()
          instance <- `MessagesTopicsSendContentBodyEuErrorComponent_instance`$fromJSON(input)
          instance_type <- "MessagesTopicsSendContentBodyEuErrorComponent"
          matched_schemas <- append(matched_schemas, "MessagesTopicsSendContentBodyEuErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`MessagesTopicsSendContentBodyEuErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `MessagesTopicsSendContentBodyEuErrorComponent_result`["message"])
      }

      `MessagesTopicsSendContentBodyFrErrorComponent_result` <- tryCatch({
          `MessagesTopicsSendContentBodyFrErrorComponent`$public_methods$validateJSON(input)
          `MessagesTopicsSendContentBodyFrErrorComponent_instance` <- `MessagesTopicsSendContentBodyFrErrorComponent`$new()
          instance <- `MessagesTopicsSendContentBodyFrErrorComponent_instance`$fromJSON(input)
          instance_type <- "MessagesTopicsSendContentBodyFrErrorComponent"
          matched_schemas <- append(matched_schemas, "MessagesTopicsSendContentBodyFrErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`MessagesTopicsSendContentBodyFrErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `MessagesTopicsSendContentBodyFrErrorComponent_result`["message"])
      }

      `MessagesTopicsSendContentBodyGlErrorComponent_result` <- tryCatch({
          `MessagesTopicsSendContentBodyGlErrorComponent`$public_methods$validateJSON(input)
          `MessagesTopicsSendContentBodyGlErrorComponent_instance` <- `MessagesTopicsSendContentBodyGlErrorComponent`$new()
          instance <- `MessagesTopicsSendContentBodyGlErrorComponent_instance`$fromJSON(input)
          instance_type <- "MessagesTopicsSendContentBodyGlErrorComponent"
          matched_schemas <- append(matched_schemas, "MessagesTopicsSendContentBodyGlErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`MessagesTopicsSendContentBodyGlErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `MessagesTopicsSendContentBodyGlErrorComponent_result`["message"])
      }

      `MessagesTopicsSendContentBodyHrErrorComponent_result` <- tryCatch({
          `MessagesTopicsSendContentBodyHrErrorComponent`$public_methods$validateJSON(input)
          `MessagesTopicsSendContentBodyHrErrorComponent_instance` <- `MessagesTopicsSendContentBodyHrErrorComponent`$new()
          instance <- `MessagesTopicsSendContentBodyHrErrorComponent_instance`$fromJSON(input)
          instance_type <- "MessagesTopicsSendContentBodyHrErrorComponent"
          matched_schemas <- append(matched_schemas, "MessagesTopicsSendContentBodyHrErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`MessagesTopicsSendContentBodyHrErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `MessagesTopicsSendContentBodyHrErrorComponent_result`["message"])
      }

      `MessagesTopicsSendContentBodyHuErrorComponent_result` <- tryCatch({
          `MessagesTopicsSendContentBodyHuErrorComponent`$public_methods$validateJSON(input)
          `MessagesTopicsSendContentBodyHuErrorComponent_instance` <- `MessagesTopicsSendContentBodyHuErrorComponent`$new()
          instance <- `MessagesTopicsSendContentBodyHuErrorComponent_instance`$fromJSON(input)
          instance_type <- "MessagesTopicsSendContentBodyHuErrorComponent"
          matched_schemas <- append(matched_schemas, "MessagesTopicsSendContentBodyHuErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`MessagesTopicsSendContentBodyHuErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `MessagesTopicsSendContentBodyHuErrorComponent_result`["message"])
      }

      `MessagesTopicsSendContentBodyItErrorComponent_result` <- tryCatch({
          `MessagesTopicsSendContentBodyItErrorComponent`$public_methods$validateJSON(input)
          `MessagesTopicsSendContentBodyItErrorComponent_instance` <- `MessagesTopicsSendContentBodyItErrorComponent`$new()
          instance <- `MessagesTopicsSendContentBodyItErrorComponent_instance`$fromJSON(input)
          instance_type <- "MessagesTopicsSendContentBodyItErrorComponent"
          matched_schemas <- append(matched_schemas, "MessagesTopicsSendContentBodyItErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`MessagesTopicsSendContentBodyItErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `MessagesTopicsSendContentBodyItErrorComponent_result`["message"])
      }

      `MessagesTopicsSendContentBodyLbErrorComponent_result` <- tryCatch({
          `MessagesTopicsSendContentBodyLbErrorComponent`$public_methods$validateJSON(input)
          `MessagesTopicsSendContentBodyLbErrorComponent_instance` <- `MessagesTopicsSendContentBodyLbErrorComponent`$new()
          instance <- `MessagesTopicsSendContentBodyLbErrorComponent_instance`$fromJSON(input)
          instance_type <- "MessagesTopicsSendContentBodyLbErrorComponent"
          matched_schemas <- append(matched_schemas, "MessagesTopicsSendContentBodyLbErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`MessagesTopicsSendContentBodyLbErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `MessagesTopicsSendContentBodyLbErrorComponent_result`["message"])
      }

      `MessagesTopicsSendContentBodyMkErrorComponent_result` <- tryCatch({
          `MessagesTopicsSendContentBodyMkErrorComponent`$public_methods$validateJSON(input)
          `MessagesTopicsSendContentBodyMkErrorComponent_instance` <- `MessagesTopicsSendContentBodyMkErrorComponent`$new()
          instance <- `MessagesTopicsSendContentBodyMkErrorComponent_instance`$fromJSON(input)
          instance_type <- "MessagesTopicsSendContentBodyMkErrorComponent"
          matched_schemas <- append(matched_schemas, "MessagesTopicsSendContentBodyMkErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`MessagesTopicsSendContentBodyMkErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `MessagesTopicsSendContentBodyMkErrorComponent_result`["message"])
      }

      `MessagesTopicsSendContentBodyNlErrorComponent_result` <- tryCatch({
          `MessagesTopicsSendContentBodyNlErrorComponent`$public_methods$validateJSON(input)
          `MessagesTopicsSendContentBodyNlErrorComponent_instance` <- `MessagesTopicsSendContentBodyNlErrorComponent`$new()
          instance <- `MessagesTopicsSendContentBodyNlErrorComponent_instance`$fromJSON(input)
          instance_type <- "MessagesTopicsSendContentBodyNlErrorComponent"
          matched_schemas <- append(matched_schemas, "MessagesTopicsSendContentBodyNlErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`MessagesTopicsSendContentBodyNlErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `MessagesTopicsSendContentBodyNlErrorComponent_result`["message"])
      }

      `MessagesTopicsSendContentBodyPtErrorComponent_result` <- tryCatch({
          `MessagesTopicsSendContentBodyPtErrorComponent`$public_methods$validateJSON(input)
          `MessagesTopicsSendContentBodyPtErrorComponent_instance` <- `MessagesTopicsSendContentBodyPtErrorComponent`$new()
          instance <- `MessagesTopicsSendContentBodyPtErrorComponent_instance`$fromJSON(input)
          instance_type <- "MessagesTopicsSendContentBodyPtErrorComponent"
          matched_schemas <- append(matched_schemas, "MessagesTopicsSendContentBodyPtErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`MessagesTopicsSendContentBodyPtErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `MessagesTopicsSendContentBodyPtErrorComponent_result`["message"])
      }

      `MessagesTopicsSendContentBodyRoErrorComponent_result` <- tryCatch({
          `MessagesTopicsSendContentBodyRoErrorComponent`$public_methods$validateJSON(input)
          `MessagesTopicsSendContentBodyRoErrorComponent_instance` <- `MessagesTopicsSendContentBodyRoErrorComponent`$new()
          instance <- `MessagesTopicsSendContentBodyRoErrorComponent_instance`$fromJSON(input)
          instance_type <- "MessagesTopicsSendContentBodyRoErrorComponent"
          matched_schemas <- append(matched_schemas, "MessagesTopicsSendContentBodyRoErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`MessagesTopicsSendContentBodyRoErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `MessagesTopicsSendContentBodyRoErrorComponent_result`["message"])
      }

      `MessagesTopicsSendContentBodySlErrorComponent_result` <- tryCatch({
          `MessagesTopicsSendContentBodySlErrorComponent`$public_methods$validateJSON(input)
          `MessagesTopicsSendContentBodySlErrorComponent_instance` <- `MessagesTopicsSendContentBodySlErrorComponent`$new()
          instance <- `MessagesTopicsSendContentBodySlErrorComponent_instance`$fromJSON(input)
          instance_type <- "MessagesTopicsSendContentBodySlErrorComponent"
          matched_schemas <- append(matched_schemas, "MessagesTopicsSendContentBodySlErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`MessagesTopicsSendContentBodySlErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `MessagesTopicsSendContentBodySlErrorComponent_result`["message"])
      }

      `MessagesTopicsSendContentBodySqErrorComponent_result` <- tryCatch({
          `MessagesTopicsSendContentBodySqErrorComponent`$public_methods$validateJSON(input)
          `MessagesTopicsSendContentBodySqErrorComponent_instance` <- `MessagesTopicsSendContentBodySqErrorComponent`$new()
          instance <- `MessagesTopicsSendContentBodySqErrorComponent_instance`$fromJSON(input)
          instance_type <- "MessagesTopicsSendContentBodySqErrorComponent"
          matched_schemas <- append(matched_schemas, "MessagesTopicsSendContentBodySqErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`MessagesTopicsSendContentBodySqErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `MessagesTopicsSendContentBodySqErrorComponent_result`["message"])
      }

      `MessagesTopicsSendContentBodySrErrorComponent_result` <- tryCatch({
          `MessagesTopicsSendContentBodySrErrorComponent`$public_methods$validateJSON(input)
          `MessagesTopicsSendContentBodySrErrorComponent_instance` <- `MessagesTopicsSendContentBodySrErrorComponent`$new()
          instance <- `MessagesTopicsSendContentBodySrErrorComponent_instance`$fromJSON(input)
          instance_type <- "MessagesTopicsSendContentBodySrErrorComponent"
          matched_schemas <- append(matched_schemas, "MessagesTopicsSendContentBodySrErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`MessagesTopicsSendContentBodySrErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `MessagesTopicsSendContentBodySrErrorComponent_result`["message"])
      }

      `MessagesTopicsSendContentBodySvErrorComponent_result` <- tryCatch({
          `MessagesTopicsSendContentBodySvErrorComponent`$public_methods$validateJSON(input)
          `MessagesTopicsSendContentBodySvErrorComponent_instance` <- `MessagesTopicsSendContentBodySvErrorComponent`$new()
          instance <- `MessagesTopicsSendContentBodySvErrorComponent_instance`$fromJSON(input)
          instance_type <- "MessagesTopicsSendContentBodySvErrorComponent"
          matched_schemas <- append(matched_schemas, "MessagesTopicsSendContentBodySvErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`MessagesTopicsSendContentBodySvErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `MessagesTopicsSendContentBodySvErrorComponent_result`["message"])
      }

      `MessagesTopicsSendContentBodyTrErrorComponent_result` <- tryCatch({
          `MessagesTopicsSendContentBodyTrErrorComponent`$public_methods$validateJSON(input)
          `MessagesTopicsSendContentBodyTrErrorComponent_instance` <- `MessagesTopicsSendContentBodyTrErrorComponent`$new()
          instance <- `MessagesTopicsSendContentBodyTrErrorComponent_instance`$fromJSON(input)
          instance_type <- "MessagesTopicsSendContentBodyTrErrorComponent"
          matched_schemas <- append(matched_schemas, "MessagesTopicsSendContentBodyTrErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`MessagesTopicsSendContentBodyTrErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `MessagesTopicsSendContentBodyTrErrorComponent_result`["message"])
      }

      `MessagesTopicsSendContentBodyZhCnErrorComponent_result` <- tryCatch({
          `MessagesTopicsSendContentBodyZhCnErrorComponent`$public_methods$validateJSON(input)
          `MessagesTopicsSendContentBodyZhCnErrorComponent_instance` <- `MessagesTopicsSendContentBodyZhCnErrorComponent`$new()
          instance <- `MessagesTopicsSendContentBodyZhCnErrorComponent_instance`$fromJSON(input)
          instance_type <- "MessagesTopicsSendContentBodyZhCnErrorComponent"
          matched_schemas <- append(matched_schemas, "MessagesTopicsSendContentBodyZhCnErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`MessagesTopicsSendContentBodyZhCnErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `MessagesTopicsSendContentBodyZhCnErrorComponent_result`["message"])
      }

      if (matched == 1) {
        # successfully match exactly 1 schema specified in oneOf
        self$actual_instance <- instance
        self$actual_type <- instance_type
      } else if (matched > 1) {
        # more than 1 match
        stop(paste("Multiple matches found when deserializing the input into MessagesTopicsSendError with oneOf schemas MessagesTopicsSendContentBodyBgErrorComponent, MessagesTopicsSendContentBodyBnErrorComponent, MessagesTopicsSendContentBodyCaErrorComponent, MessagesTopicsSendContentBodyDeErrorComponent, MessagesTopicsSendContentBodyElErrorComponent, MessagesTopicsSendContentBodyEnErrorComponent, MessagesTopicsSendContentBodyEsErrorComponent, MessagesTopicsSendContentBodyEuErrorComponent, MessagesTopicsSendContentBodyFrErrorComponent, MessagesTopicsSendContentBodyGlErrorComponent, MessagesTopicsSendContentBodyHrErrorComponent, MessagesTopicsSendContentBodyHuErrorComponent, MessagesTopicsSendContentBodyItErrorComponent, MessagesTopicsSendContentBodyLbErrorComponent, MessagesTopicsSendContentBodyMkErrorComponent, MessagesTopicsSendContentBodyNlErrorComponent, MessagesTopicsSendContentBodyNonFieldErrorsErrorComponent, MessagesTopicsSendContentBodyPtErrorComponent, MessagesTopicsSendContentBodyRoErrorComponent, MessagesTopicsSendContentBodySlErrorComponent, MessagesTopicsSendContentBodySqErrorComponent, MessagesTopicsSendContentBodySrErrorComponent, MessagesTopicsSendContentBodySvErrorComponent, MessagesTopicsSendContentBodyTrErrorComponent, MessagesTopicsSendContentBodyZhCnErrorComponent, MessagesTopicsSendContentNonFieldErrorsErrorComponent, MessagesTopicsSendContentTitleBgErrorComponent, MessagesTopicsSendContentTitleBnErrorComponent, MessagesTopicsSendContentTitleCaErrorComponent, MessagesTopicsSendContentTitleDeErrorComponent, MessagesTopicsSendContentTitleElErrorComponent, MessagesTopicsSendContentTitleEnErrorComponent, MessagesTopicsSendContentTitleEsErrorComponent, MessagesTopicsSendContentTitleEuErrorComponent, MessagesTopicsSendContentTitleFrErrorComponent, MessagesTopicsSendContentTitleGlErrorComponent, MessagesTopicsSendContentTitleHrErrorComponent, MessagesTopicsSendContentTitleHuErrorComponent, MessagesTopicsSendContentTitleItErrorComponent, MessagesTopicsSendContentTitleLbErrorComponent, MessagesTopicsSendContentTitleMkErrorComponent, MessagesTopicsSendContentTitleNlErrorComponent, MessagesTopicsSendContentTitleNonFieldErrorsErrorComponent, MessagesTopicsSendContentTitlePtErrorComponent, MessagesTopicsSendContentTitleRoErrorComponent, MessagesTopicsSendContentTitleSlErrorComponent, MessagesTopicsSendContentTitleSqErrorComponent, MessagesTopicsSendContentTitleSrErrorComponent, MessagesTopicsSendContentTitleSvErrorComponent, MessagesTopicsSendContentTitleTrErrorComponent, MessagesTopicsSendContentTitleZhCnErrorComponent, MessagesTopicsSendNonFieldErrorsErrorComponent. Matched schemas: ",
                   paste(matched_schemas, collapse = ", ")))
      } else {
        # no match
        stop(paste("No match found when deserializing the input into MessagesTopicsSendError with oneOf schemas MessagesTopicsSendContentBodyBgErrorComponent, MessagesTopicsSendContentBodyBnErrorComponent, MessagesTopicsSendContentBodyCaErrorComponent, MessagesTopicsSendContentBodyDeErrorComponent, MessagesTopicsSendContentBodyElErrorComponent, MessagesTopicsSendContentBodyEnErrorComponent, MessagesTopicsSendContentBodyEsErrorComponent, MessagesTopicsSendContentBodyEuErrorComponent, MessagesTopicsSendContentBodyFrErrorComponent, MessagesTopicsSendContentBodyGlErrorComponent, MessagesTopicsSendContentBodyHrErrorComponent, MessagesTopicsSendContentBodyHuErrorComponent, MessagesTopicsSendContentBodyItErrorComponent, MessagesTopicsSendContentBodyLbErrorComponent, MessagesTopicsSendContentBodyMkErrorComponent, MessagesTopicsSendContentBodyNlErrorComponent, MessagesTopicsSendContentBodyNonFieldErrorsErrorComponent, MessagesTopicsSendContentBodyPtErrorComponent, MessagesTopicsSendContentBodyRoErrorComponent, MessagesTopicsSendContentBodySlErrorComponent, MessagesTopicsSendContentBodySqErrorComponent, MessagesTopicsSendContentBodySrErrorComponent, MessagesTopicsSendContentBodySvErrorComponent, MessagesTopicsSendContentBodyTrErrorComponent, MessagesTopicsSendContentBodyZhCnErrorComponent, MessagesTopicsSendContentNonFieldErrorsErrorComponent, MessagesTopicsSendContentTitleBgErrorComponent, MessagesTopicsSendContentTitleBnErrorComponent, MessagesTopicsSendContentTitleCaErrorComponent, MessagesTopicsSendContentTitleDeErrorComponent, MessagesTopicsSendContentTitleElErrorComponent, MessagesTopicsSendContentTitleEnErrorComponent, MessagesTopicsSendContentTitleEsErrorComponent, MessagesTopicsSendContentTitleEuErrorComponent, MessagesTopicsSendContentTitleFrErrorComponent, MessagesTopicsSendContentTitleGlErrorComponent, MessagesTopicsSendContentTitleHrErrorComponent, MessagesTopicsSendContentTitleHuErrorComponent, MessagesTopicsSendContentTitleItErrorComponent, MessagesTopicsSendContentTitleLbErrorComponent, MessagesTopicsSendContentTitleMkErrorComponent, MessagesTopicsSendContentTitleNlErrorComponent, MessagesTopicsSendContentTitleNonFieldErrorsErrorComponent, MessagesTopicsSendContentTitlePtErrorComponent, MessagesTopicsSendContentTitleRoErrorComponent, MessagesTopicsSendContentTitleSlErrorComponent, MessagesTopicsSendContentTitleSqErrorComponent, MessagesTopicsSendContentTitleSrErrorComponent, MessagesTopicsSendContentTitleSvErrorComponent, MessagesTopicsSendContentTitleTrErrorComponent, MessagesTopicsSendContentTitleZhCnErrorComponent, MessagesTopicsSendNonFieldErrorsErrorComponent. Details: >>",
                   paste(error_messages, collapse = " >> ")))
      }

      self
    },

    #' @description
    #' Serialize MessagesTopicsSendError to JSON string.
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return JSON string representation of the MessagesTopicsSendError.
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
    #' Convert MessagesTopicsSendError to a base R type
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
    #' Validate the input JSON with respect to MessagesTopicsSendError and
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
#MessagesTopicsSendError$unlock()
#
## Below is an example to define the print function
#MessagesTopicsSendError$set("public", "print", function(...) {
#  print(jsonlite::prettify(self$toJSONString()))
#  invisible(self)
#})
## Uncomment below to lock the class to prevent modifications to the method or field
#MessagesTopicsSendError$lock()

