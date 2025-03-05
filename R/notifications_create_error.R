#' @docType class
#' @title NotificationsCreateError
#'
#' @description NotificationsCreateError Class
#'
#' @format An \code{R6Class} generator object
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
NotificationsCreateError <- R6::R6Class(
  "NotificationsCreateError",
  public = list(
    #' @field actual_instance the object stored in this instance.
    actual_instance = NULL,
    #' @field actual_type the type of the object stored in this instance.
    actual_type = NULL,
    #' @field one_of  a list of types defined in the oneOf schema.
    one_of = list("NotificationsCreateMessageBodyBgErrorComponent", "NotificationsCreateMessageBodyBnErrorComponent", "NotificationsCreateMessageBodyCaErrorComponent", "NotificationsCreateMessageBodyDeErrorComponent", "NotificationsCreateMessageBodyElErrorComponent", "NotificationsCreateMessageBodyEnErrorComponent", "NotificationsCreateMessageBodyEsErrorComponent", "NotificationsCreateMessageBodyEuErrorComponent", "NotificationsCreateMessageBodyFrErrorComponent", "NotificationsCreateMessageBodyGlErrorComponent", "NotificationsCreateMessageBodyHrErrorComponent", "NotificationsCreateMessageBodyHuErrorComponent", "NotificationsCreateMessageBodyItErrorComponent", "NotificationsCreateMessageBodyLbErrorComponent", "NotificationsCreateMessageBodyMkErrorComponent", "NotificationsCreateMessageBodyNlErrorComponent", "NotificationsCreateMessageBodyNonFieldErrorsErrorComponent", "NotificationsCreateMessageBodyPtErrorComponent", "NotificationsCreateMessageBodyRoErrorComponent", "NotificationsCreateMessageBodySlErrorComponent", "NotificationsCreateMessageBodySqErrorComponent", "NotificationsCreateMessageBodySrErrorComponent", "NotificationsCreateMessageBodySvErrorComponent", "NotificationsCreateMessageBodyTrErrorComponent", "NotificationsCreateMessageBodyZhCNErrorComponent", "NotificationsCreateMessageNonFieldErrorsErrorComponent", "NotificationsCreateMessageTitleBgErrorComponent", "NotificationsCreateMessageTitleBnErrorComponent", "NotificationsCreateMessageTitleCaErrorComponent", "NotificationsCreateMessageTitleDeErrorComponent", "NotificationsCreateMessageTitleElErrorComponent", "NotificationsCreateMessageTitleEnErrorComponent", "NotificationsCreateMessageTitleEsErrorComponent", "NotificationsCreateMessageTitleEuErrorComponent", "NotificationsCreateMessageTitleFrErrorComponent", "NotificationsCreateMessageTitleGlErrorComponent", "NotificationsCreateMessageTitleHrErrorComponent", "NotificationsCreateMessageTitleHuErrorComponent", "NotificationsCreateMessageTitleItErrorComponent", "NotificationsCreateMessageTitleLbErrorComponent", "NotificationsCreateMessageTitleMkErrorComponent", "NotificationsCreateMessageTitleNlErrorComponent", "NotificationsCreateMessageTitleNonFieldErrorsErrorComponent", "NotificationsCreateMessageTitlePtErrorComponent", "NotificationsCreateMessageTitleRoErrorComponent", "NotificationsCreateMessageTitleSlErrorComponent", "NotificationsCreateMessageTitleSqErrorComponent", "NotificationsCreateMessageTitleSrErrorComponent", "NotificationsCreateMessageTitleSvErrorComponent", "NotificationsCreateMessageTitleTrErrorComponent", "NotificationsCreateMessageTitleZhCNErrorComponent", "NotificationsCreateNonFieldErrorsErrorComponent", "NotificationsCreateReceiverTypeErrorComponent", "NotificationsCreateTopicCodesErrorComponent", "NotificationsCreateTopicCodesINDEXErrorComponent", "NotificationsCreateUserUuidsErrorComponent", "NotificationsCreateUserUuidsINDEXErrorComponent"),

    #' @description
    #' Initialize a new NotificationsCreateError.
    #'
    #' @param instance an instance of the object defined in the oneOf schemas: "NotificationsCreateMessageBodyBgErrorComponent", "NotificationsCreateMessageBodyBnErrorComponent", "NotificationsCreateMessageBodyCaErrorComponent", "NotificationsCreateMessageBodyDeErrorComponent", "NotificationsCreateMessageBodyElErrorComponent", "NotificationsCreateMessageBodyEnErrorComponent", "NotificationsCreateMessageBodyEsErrorComponent", "NotificationsCreateMessageBodyEuErrorComponent", "NotificationsCreateMessageBodyFrErrorComponent", "NotificationsCreateMessageBodyGlErrorComponent", "NotificationsCreateMessageBodyHrErrorComponent", "NotificationsCreateMessageBodyHuErrorComponent", "NotificationsCreateMessageBodyItErrorComponent", "NotificationsCreateMessageBodyLbErrorComponent", "NotificationsCreateMessageBodyMkErrorComponent", "NotificationsCreateMessageBodyNlErrorComponent", "NotificationsCreateMessageBodyNonFieldErrorsErrorComponent", "NotificationsCreateMessageBodyPtErrorComponent", "NotificationsCreateMessageBodyRoErrorComponent", "NotificationsCreateMessageBodySlErrorComponent", "NotificationsCreateMessageBodySqErrorComponent", "NotificationsCreateMessageBodySrErrorComponent", "NotificationsCreateMessageBodySvErrorComponent", "NotificationsCreateMessageBodyTrErrorComponent", "NotificationsCreateMessageBodyZhCNErrorComponent", "NotificationsCreateMessageNonFieldErrorsErrorComponent", "NotificationsCreateMessageTitleBgErrorComponent", "NotificationsCreateMessageTitleBnErrorComponent", "NotificationsCreateMessageTitleCaErrorComponent", "NotificationsCreateMessageTitleDeErrorComponent", "NotificationsCreateMessageTitleElErrorComponent", "NotificationsCreateMessageTitleEnErrorComponent", "NotificationsCreateMessageTitleEsErrorComponent", "NotificationsCreateMessageTitleEuErrorComponent", "NotificationsCreateMessageTitleFrErrorComponent", "NotificationsCreateMessageTitleGlErrorComponent", "NotificationsCreateMessageTitleHrErrorComponent", "NotificationsCreateMessageTitleHuErrorComponent", "NotificationsCreateMessageTitleItErrorComponent", "NotificationsCreateMessageTitleLbErrorComponent", "NotificationsCreateMessageTitleMkErrorComponent", "NotificationsCreateMessageTitleNlErrorComponent", "NotificationsCreateMessageTitleNonFieldErrorsErrorComponent", "NotificationsCreateMessageTitlePtErrorComponent", "NotificationsCreateMessageTitleRoErrorComponent", "NotificationsCreateMessageTitleSlErrorComponent", "NotificationsCreateMessageTitleSqErrorComponent", "NotificationsCreateMessageTitleSrErrorComponent", "NotificationsCreateMessageTitleSvErrorComponent", "NotificationsCreateMessageTitleTrErrorComponent", "NotificationsCreateMessageTitleZhCNErrorComponent", "NotificationsCreateNonFieldErrorsErrorComponent", "NotificationsCreateReceiverTypeErrorComponent", "NotificationsCreateTopicCodesErrorComponent", "NotificationsCreateTopicCodesINDEXErrorComponent", "NotificationsCreateUserUuidsErrorComponent", "NotificationsCreateUserUuidsINDEXErrorComponent"
    initialize = function(instance = NULL) {
      if (is.null(instance)) {
        # do nothing
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "NotificationsCreateMessageBodyBgErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "NotificationsCreateMessageBodyBgErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "NotificationsCreateMessageBodyBnErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "NotificationsCreateMessageBodyBnErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "NotificationsCreateMessageBodyCaErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "NotificationsCreateMessageBodyCaErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "NotificationsCreateMessageBodyDeErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "NotificationsCreateMessageBodyDeErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "NotificationsCreateMessageBodyElErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "NotificationsCreateMessageBodyElErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "NotificationsCreateMessageBodyEnErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "NotificationsCreateMessageBodyEnErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "NotificationsCreateMessageBodyEsErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "NotificationsCreateMessageBodyEsErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "NotificationsCreateMessageBodyEuErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "NotificationsCreateMessageBodyEuErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "NotificationsCreateMessageBodyFrErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "NotificationsCreateMessageBodyFrErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "NotificationsCreateMessageBodyGlErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "NotificationsCreateMessageBodyGlErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "NotificationsCreateMessageBodyHrErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "NotificationsCreateMessageBodyHrErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "NotificationsCreateMessageBodyHuErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "NotificationsCreateMessageBodyHuErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "NotificationsCreateMessageBodyItErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "NotificationsCreateMessageBodyItErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "NotificationsCreateMessageBodyLbErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "NotificationsCreateMessageBodyLbErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "NotificationsCreateMessageBodyMkErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "NotificationsCreateMessageBodyMkErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "NotificationsCreateMessageBodyNlErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "NotificationsCreateMessageBodyNlErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "NotificationsCreateMessageBodyNonFieldErrorsErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "NotificationsCreateMessageBodyNonFieldErrorsErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "NotificationsCreateMessageBodyPtErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "NotificationsCreateMessageBodyPtErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "NotificationsCreateMessageBodyRoErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "NotificationsCreateMessageBodyRoErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "NotificationsCreateMessageBodySlErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "NotificationsCreateMessageBodySlErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "NotificationsCreateMessageBodySqErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "NotificationsCreateMessageBodySqErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "NotificationsCreateMessageBodySrErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "NotificationsCreateMessageBodySrErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "NotificationsCreateMessageBodySvErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "NotificationsCreateMessageBodySvErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "NotificationsCreateMessageBodyTrErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "NotificationsCreateMessageBodyTrErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "NotificationsCreateMessageBodyZhCNErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "NotificationsCreateMessageBodyZhCNErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "NotificationsCreateMessageNonFieldErrorsErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "NotificationsCreateMessageNonFieldErrorsErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "NotificationsCreateMessageTitleBgErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "NotificationsCreateMessageTitleBgErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "NotificationsCreateMessageTitleBnErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "NotificationsCreateMessageTitleBnErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "NotificationsCreateMessageTitleCaErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "NotificationsCreateMessageTitleCaErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "NotificationsCreateMessageTitleDeErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "NotificationsCreateMessageTitleDeErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "NotificationsCreateMessageTitleElErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "NotificationsCreateMessageTitleElErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "NotificationsCreateMessageTitleEnErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "NotificationsCreateMessageTitleEnErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "NotificationsCreateMessageTitleEsErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "NotificationsCreateMessageTitleEsErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "NotificationsCreateMessageTitleEuErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "NotificationsCreateMessageTitleEuErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "NotificationsCreateMessageTitleFrErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "NotificationsCreateMessageTitleFrErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "NotificationsCreateMessageTitleGlErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "NotificationsCreateMessageTitleGlErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "NotificationsCreateMessageTitleHrErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "NotificationsCreateMessageTitleHrErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "NotificationsCreateMessageTitleHuErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "NotificationsCreateMessageTitleHuErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "NotificationsCreateMessageTitleItErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "NotificationsCreateMessageTitleItErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "NotificationsCreateMessageTitleLbErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "NotificationsCreateMessageTitleLbErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "NotificationsCreateMessageTitleMkErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "NotificationsCreateMessageTitleMkErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "NotificationsCreateMessageTitleNlErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "NotificationsCreateMessageTitleNlErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "NotificationsCreateMessageTitleNonFieldErrorsErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "NotificationsCreateMessageTitleNonFieldErrorsErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "NotificationsCreateMessageTitlePtErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "NotificationsCreateMessageTitlePtErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "NotificationsCreateMessageTitleRoErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "NotificationsCreateMessageTitleRoErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "NotificationsCreateMessageTitleSlErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "NotificationsCreateMessageTitleSlErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "NotificationsCreateMessageTitleSqErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "NotificationsCreateMessageTitleSqErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "NotificationsCreateMessageTitleSrErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "NotificationsCreateMessageTitleSrErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "NotificationsCreateMessageTitleSvErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "NotificationsCreateMessageTitleSvErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "NotificationsCreateMessageTitleTrErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "NotificationsCreateMessageTitleTrErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "NotificationsCreateMessageTitleZhCNErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "NotificationsCreateMessageTitleZhCNErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "NotificationsCreateNonFieldErrorsErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "NotificationsCreateNonFieldErrorsErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "NotificationsCreateReceiverTypeErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "NotificationsCreateReceiverTypeErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "NotificationsCreateTopicCodesErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "NotificationsCreateTopicCodesErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "NotificationsCreateTopicCodesINDEXErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "NotificationsCreateTopicCodesINDEXErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "NotificationsCreateUserUuidsErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "NotificationsCreateUserUuidsErrorComponent"
      } else if (get(class(instance)[[1]], pos = -1)$classname ==  "NotificationsCreateUserUuidsINDEXErrorComponent") {
        self$actual_instance <- instance
        self$actual_type <- "NotificationsCreateUserUuidsINDEXErrorComponent"
      } else {
        stop(paste("Failed to initialize NotificationsCreateError with oneOf schemas NotificationsCreateMessageBodyBgErrorComponent, NotificationsCreateMessageBodyBnErrorComponent, NotificationsCreateMessageBodyCaErrorComponent, NotificationsCreateMessageBodyDeErrorComponent, NotificationsCreateMessageBodyElErrorComponent, NotificationsCreateMessageBodyEnErrorComponent, NotificationsCreateMessageBodyEsErrorComponent, NotificationsCreateMessageBodyEuErrorComponent, NotificationsCreateMessageBodyFrErrorComponent, NotificationsCreateMessageBodyGlErrorComponent, NotificationsCreateMessageBodyHrErrorComponent, NotificationsCreateMessageBodyHuErrorComponent, NotificationsCreateMessageBodyItErrorComponent, NotificationsCreateMessageBodyLbErrorComponent, NotificationsCreateMessageBodyMkErrorComponent, NotificationsCreateMessageBodyNlErrorComponent, NotificationsCreateMessageBodyNonFieldErrorsErrorComponent, NotificationsCreateMessageBodyPtErrorComponent, NotificationsCreateMessageBodyRoErrorComponent, NotificationsCreateMessageBodySlErrorComponent, NotificationsCreateMessageBodySqErrorComponent, NotificationsCreateMessageBodySrErrorComponent, NotificationsCreateMessageBodySvErrorComponent, NotificationsCreateMessageBodyTrErrorComponent, NotificationsCreateMessageBodyZhCNErrorComponent, NotificationsCreateMessageNonFieldErrorsErrorComponent, NotificationsCreateMessageTitleBgErrorComponent, NotificationsCreateMessageTitleBnErrorComponent, NotificationsCreateMessageTitleCaErrorComponent, NotificationsCreateMessageTitleDeErrorComponent, NotificationsCreateMessageTitleElErrorComponent, NotificationsCreateMessageTitleEnErrorComponent, NotificationsCreateMessageTitleEsErrorComponent, NotificationsCreateMessageTitleEuErrorComponent, NotificationsCreateMessageTitleFrErrorComponent, NotificationsCreateMessageTitleGlErrorComponent, NotificationsCreateMessageTitleHrErrorComponent, NotificationsCreateMessageTitleHuErrorComponent, NotificationsCreateMessageTitleItErrorComponent, NotificationsCreateMessageTitleLbErrorComponent, NotificationsCreateMessageTitleMkErrorComponent, NotificationsCreateMessageTitleNlErrorComponent, NotificationsCreateMessageTitleNonFieldErrorsErrorComponent, NotificationsCreateMessageTitlePtErrorComponent, NotificationsCreateMessageTitleRoErrorComponent, NotificationsCreateMessageTitleSlErrorComponent, NotificationsCreateMessageTitleSqErrorComponent, NotificationsCreateMessageTitleSrErrorComponent, NotificationsCreateMessageTitleSvErrorComponent, NotificationsCreateMessageTitleTrErrorComponent, NotificationsCreateMessageTitleZhCNErrorComponent, NotificationsCreateNonFieldErrorsErrorComponent, NotificationsCreateReceiverTypeErrorComponent, NotificationsCreateTopicCodesErrorComponent, NotificationsCreateTopicCodesINDEXErrorComponent, NotificationsCreateUserUuidsErrorComponent, NotificationsCreateUserUuidsINDEXErrorComponent. Provided class name: ",
                   get(class(instance)[[1]], pos = -1)$classname))
      }
    },

    #' @description
    #' Deserialize JSON string into an instance of NotificationsCreateError.
    #' An alias to the method `fromJSON` .
    #'
    #' @param input The input JSON.
    #'
    #' @return An instance of NotificationsCreateError.
    fromJSONString = function(input) {
      self$fromJSON(input)
    },

    #' @description
    #' Deserialize JSON string into an instance of NotificationsCreateError.
    #'
    #' @param input The input JSON.
    #'
    #' @return An instance of NotificationsCreateError.
    fromJSON = function(input) {
      matched <- 0 # match counter
      matched_schemas <- list() #names of matched schemas
      error_messages <- list()
      instance <- NULL

      `NotificationsCreateNonFieldErrorsErrorComponent_result` <- tryCatch({
          `NotificationsCreateNonFieldErrorsErrorComponent`$public_methods$validateJSON(input)
          `NotificationsCreateNonFieldErrorsErrorComponent_instance` <- `NotificationsCreateNonFieldErrorsErrorComponent`$new()
          instance <- `NotificationsCreateNonFieldErrorsErrorComponent_instance`$fromJSON(input)
          instance_type <- "NotificationsCreateNonFieldErrorsErrorComponent"
          matched_schemas <- append(matched_schemas, "NotificationsCreateNonFieldErrorsErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`NotificationsCreateNonFieldErrorsErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `NotificationsCreateNonFieldErrorsErrorComponent_result`["message"])
      }

      `NotificationsCreateReceiverTypeErrorComponent_result` <- tryCatch({
          `NotificationsCreateReceiverTypeErrorComponent`$public_methods$validateJSON(input)
          `NotificationsCreateReceiverTypeErrorComponent_instance` <- `NotificationsCreateReceiverTypeErrorComponent`$new()
          instance <- `NotificationsCreateReceiverTypeErrorComponent_instance`$fromJSON(input)
          instance_type <- "NotificationsCreateReceiverTypeErrorComponent"
          matched_schemas <- append(matched_schemas, "NotificationsCreateReceiverTypeErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`NotificationsCreateReceiverTypeErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `NotificationsCreateReceiverTypeErrorComponent_result`["message"])
      }

      `NotificationsCreateMessageNonFieldErrorsErrorComponent_result` <- tryCatch({
          `NotificationsCreateMessageNonFieldErrorsErrorComponent`$public_methods$validateJSON(input)
          `NotificationsCreateMessageNonFieldErrorsErrorComponent_instance` <- `NotificationsCreateMessageNonFieldErrorsErrorComponent`$new()
          instance <- `NotificationsCreateMessageNonFieldErrorsErrorComponent_instance`$fromJSON(input)
          instance_type <- "NotificationsCreateMessageNonFieldErrorsErrorComponent"
          matched_schemas <- append(matched_schemas, "NotificationsCreateMessageNonFieldErrorsErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`NotificationsCreateMessageNonFieldErrorsErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `NotificationsCreateMessageNonFieldErrorsErrorComponent_result`["message"])
      }

      `NotificationsCreateMessageTitleNonFieldErrorsErrorComponent_result` <- tryCatch({
          `NotificationsCreateMessageTitleNonFieldErrorsErrorComponent`$public_methods$validateJSON(input)
          `NotificationsCreateMessageTitleNonFieldErrorsErrorComponent_instance` <- `NotificationsCreateMessageTitleNonFieldErrorsErrorComponent`$new()
          instance <- `NotificationsCreateMessageTitleNonFieldErrorsErrorComponent_instance`$fromJSON(input)
          instance_type <- "NotificationsCreateMessageTitleNonFieldErrorsErrorComponent"
          matched_schemas <- append(matched_schemas, "NotificationsCreateMessageTitleNonFieldErrorsErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`NotificationsCreateMessageTitleNonFieldErrorsErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `NotificationsCreateMessageTitleNonFieldErrorsErrorComponent_result`["message"])
      }

      `NotificationsCreateMessageTitleBgErrorComponent_result` <- tryCatch({
          `NotificationsCreateMessageTitleBgErrorComponent`$public_methods$validateJSON(input)
          `NotificationsCreateMessageTitleBgErrorComponent_instance` <- `NotificationsCreateMessageTitleBgErrorComponent`$new()
          instance <- `NotificationsCreateMessageTitleBgErrorComponent_instance`$fromJSON(input)
          instance_type <- "NotificationsCreateMessageTitleBgErrorComponent"
          matched_schemas <- append(matched_schemas, "NotificationsCreateMessageTitleBgErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`NotificationsCreateMessageTitleBgErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `NotificationsCreateMessageTitleBgErrorComponent_result`["message"])
      }

      `NotificationsCreateMessageTitleBnErrorComponent_result` <- tryCatch({
          `NotificationsCreateMessageTitleBnErrorComponent`$public_methods$validateJSON(input)
          `NotificationsCreateMessageTitleBnErrorComponent_instance` <- `NotificationsCreateMessageTitleBnErrorComponent`$new()
          instance <- `NotificationsCreateMessageTitleBnErrorComponent_instance`$fromJSON(input)
          instance_type <- "NotificationsCreateMessageTitleBnErrorComponent"
          matched_schemas <- append(matched_schemas, "NotificationsCreateMessageTitleBnErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`NotificationsCreateMessageTitleBnErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `NotificationsCreateMessageTitleBnErrorComponent_result`["message"])
      }

      `NotificationsCreateMessageTitleCaErrorComponent_result` <- tryCatch({
          `NotificationsCreateMessageTitleCaErrorComponent`$public_methods$validateJSON(input)
          `NotificationsCreateMessageTitleCaErrorComponent_instance` <- `NotificationsCreateMessageTitleCaErrorComponent`$new()
          instance <- `NotificationsCreateMessageTitleCaErrorComponent_instance`$fromJSON(input)
          instance_type <- "NotificationsCreateMessageTitleCaErrorComponent"
          matched_schemas <- append(matched_schemas, "NotificationsCreateMessageTitleCaErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`NotificationsCreateMessageTitleCaErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `NotificationsCreateMessageTitleCaErrorComponent_result`["message"])
      }

      `NotificationsCreateMessageTitleDeErrorComponent_result` <- tryCatch({
          `NotificationsCreateMessageTitleDeErrorComponent`$public_methods$validateJSON(input)
          `NotificationsCreateMessageTitleDeErrorComponent_instance` <- `NotificationsCreateMessageTitleDeErrorComponent`$new()
          instance <- `NotificationsCreateMessageTitleDeErrorComponent_instance`$fromJSON(input)
          instance_type <- "NotificationsCreateMessageTitleDeErrorComponent"
          matched_schemas <- append(matched_schemas, "NotificationsCreateMessageTitleDeErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`NotificationsCreateMessageTitleDeErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `NotificationsCreateMessageTitleDeErrorComponent_result`["message"])
      }

      `NotificationsCreateMessageTitleElErrorComponent_result` <- tryCatch({
          `NotificationsCreateMessageTitleElErrorComponent`$public_methods$validateJSON(input)
          `NotificationsCreateMessageTitleElErrorComponent_instance` <- `NotificationsCreateMessageTitleElErrorComponent`$new()
          instance <- `NotificationsCreateMessageTitleElErrorComponent_instance`$fromJSON(input)
          instance_type <- "NotificationsCreateMessageTitleElErrorComponent"
          matched_schemas <- append(matched_schemas, "NotificationsCreateMessageTitleElErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`NotificationsCreateMessageTitleElErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `NotificationsCreateMessageTitleElErrorComponent_result`["message"])
      }

      `NotificationsCreateMessageTitleEnErrorComponent_result` <- tryCatch({
          `NotificationsCreateMessageTitleEnErrorComponent`$public_methods$validateJSON(input)
          `NotificationsCreateMessageTitleEnErrorComponent_instance` <- `NotificationsCreateMessageTitleEnErrorComponent`$new()
          instance <- `NotificationsCreateMessageTitleEnErrorComponent_instance`$fromJSON(input)
          instance_type <- "NotificationsCreateMessageTitleEnErrorComponent"
          matched_schemas <- append(matched_schemas, "NotificationsCreateMessageTitleEnErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`NotificationsCreateMessageTitleEnErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `NotificationsCreateMessageTitleEnErrorComponent_result`["message"])
      }

      `NotificationsCreateMessageTitleEsErrorComponent_result` <- tryCatch({
          `NotificationsCreateMessageTitleEsErrorComponent`$public_methods$validateJSON(input)
          `NotificationsCreateMessageTitleEsErrorComponent_instance` <- `NotificationsCreateMessageTitleEsErrorComponent`$new()
          instance <- `NotificationsCreateMessageTitleEsErrorComponent_instance`$fromJSON(input)
          instance_type <- "NotificationsCreateMessageTitleEsErrorComponent"
          matched_schemas <- append(matched_schemas, "NotificationsCreateMessageTitleEsErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`NotificationsCreateMessageTitleEsErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `NotificationsCreateMessageTitleEsErrorComponent_result`["message"])
      }

      `NotificationsCreateMessageTitleEuErrorComponent_result` <- tryCatch({
          `NotificationsCreateMessageTitleEuErrorComponent`$public_methods$validateJSON(input)
          `NotificationsCreateMessageTitleEuErrorComponent_instance` <- `NotificationsCreateMessageTitleEuErrorComponent`$new()
          instance <- `NotificationsCreateMessageTitleEuErrorComponent_instance`$fromJSON(input)
          instance_type <- "NotificationsCreateMessageTitleEuErrorComponent"
          matched_schemas <- append(matched_schemas, "NotificationsCreateMessageTitleEuErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`NotificationsCreateMessageTitleEuErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `NotificationsCreateMessageTitleEuErrorComponent_result`["message"])
      }

      `NotificationsCreateMessageTitleFrErrorComponent_result` <- tryCatch({
          `NotificationsCreateMessageTitleFrErrorComponent`$public_methods$validateJSON(input)
          `NotificationsCreateMessageTitleFrErrorComponent_instance` <- `NotificationsCreateMessageTitleFrErrorComponent`$new()
          instance <- `NotificationsCreateMessageTitleFrErrorComponent_instance`$fromJSON(input)
          instance_type <- "NotificationsCreateMessageTitleFrErrorComponent"
          matched_schemas <- append(matched_schemas, "NotificationsCreateMessageTitleFrErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`NotificationsCreateMessageTitleFrErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `NotificationsCreateMessageTitleFrErrorComponent_result`["message"])
      }

      `NotificationsCreateMessageTitleGlErrorComponent_result` <- tryCatch({
          `NotificationsCreateMessageTitleGlErrorComponent`$public_methods$validateJSON(input)
          `NotificationsCreateMessageTitleGlErrorComponent_instance` <- `NotificationsCreateMessageTitleGlErrorComponent`$new()
          instance <- `NotificationsCreateMessageTitleGlErrorComponent_instance`$fromJSON(input)
          instance_type <- "NotificationsCreateMessageTitleGlErrorComponent"
          matched_schemas <- append(matched_schemas, "NotificationsCreateMessageTitleGlErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`NotificationsCreateMessageTitleGlErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `NotificationsCreateMessageTitleGlErrorComponent_result`["message"])
      }

      `NotificationsCreateMessageTitleHrErrorComponent_result` <- tryCatch({
          `NotificationsCreateMessageTitleHrErrorComponent`$public_methods$validateJSON(input)
          `NotificationsCreateMessageTitleHrErrorComponent_instance` <- `NotificationsCreateMessageTitleHrErrorComponent`$new()
          instance <- `NotificationsCreateMessageTitleHrErrorComponent_instance`$fromJSON(input)
          instance_type <- "NotificationsCreateMessageTitleHrErrorComponent"
          matched_schemas <- append(matched_schemas, "NotificationsCreateMessageTitleHrErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`NotificationsCreateMessageTitleHrErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `NotificationsCreateMessageTitleHrErrorComponent_result`["message"])
      }

      `NotificationsCreateMessageTitleHuErrorComponent_result` <- tryCatch({
          `NotificationsCreateMessageTitleHuErrorComponent`$public_methods$validateJSON(input)
          `NotificationsCreateMessageTitleHuErrorComponent_instance` <- `NotificationsCreateMessageTitleHuErrorComponent`$new()
          instance <- `NotificationsCreateMessageTitleHuErrorComponent_instance`$fromJSON(input)
          instance_type <- "NotificationsCreateMessageTitleHuErrorComponent"
          matched_schemas <- append(matched_schemas, "NotificationsCreateMessageTitleHuErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`NotificationsCreateMessageTitleHuErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `NotificationsCreateMessageTitleHuErrorComponent_result`["message"])
      }

      `NotificationsCreateMessageTitleItErrorComponent_result` <- tryCatch({
          `NotificationsCreateMessageTitleItErrorComponent`$public_methods$validateJSON(input)
          `NotificationsCreateMessageTitleItErrorComponent_instance` <- `NotificationsCreateMessageTitleItErrorComponent`$new()
          instance <- `NotificationsCreateMessageTitleItErrorComponent_instance`$fromJSON(input)
          instance_type <- "NotificationsCreateMessageTitleItErrorComponent"
          matched_schemas <- append(matched_schemas, "NotificationsCreateMessageTitleItErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`NotificationsCreateMessageTitleItErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `NotificationsCreateMessageTitleItErrorComponent_result`["message"])
      }

      `NotificationsCreateMessageTitleLbErrorComponent_result` <- tryCatch({
          `NotificationsCreateMessageTitleLbErrorComponent`$public_methods$validateJSON(input)
          `NotificationsCreateMessageTitleLbErrorComponent_instance` <- `NotificationsCreateMessageTitleLbErrorComponent`$new()
          instance <- `NotificationsCreateMessageTitleLbErrorComponent_instance`$fromJSON(input)
          instance_type <- "NotificationsCreateMessageTitleLbErrorComponent"
          matched_schemas <- append(matched_schemas, "NotificationsCreateMessageTitleLbErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`NotificationsCreateMessageTitleLbErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `NotificationsCreateMessageTitleLbErrorComponent_result`["message"])
      }

      `NotificationsCreateMessageTitleMkErrorComponent_result` <- tryCatch({
          `NotificationsCreateMessageTitleMkErrorComponent`$public_methods$validateJSON(input)
          `NotificationsCreateMessageTitleMkErrorComponent_instance` <- `NotificationsCreateMessageTitleMkErrorComponent`$new()
          instance <- `NotificationsCreateMessageTitleMkErrorComponent_instance`$fromJSON(input)
          instance_type <- "NotificationsCreateMessageTitleMkErrorComponent"
          matched_schemas <- append(matched_schemas, "NotificationsCreateMessageTitleMkErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`NotificationsCreateMessageTitleMkErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `NotificationsCreateMessageTitleMkErrorComponent_result`["message"])
      }

      `NotificationsCreateMessageTitleNlErrorComponent_result` <- tryCatch({
          `NotificationsCreateMessageTitleNlErrorComponent`$public_methods$validateJSON(input)
          `NotificationsCreateMessageTitleNlErrorComponent_instance` <- `NotificationsCreateMessageTitleNlErrorComponent`$new()
          instance <- `NotificationsCreateMessageTitleNlErrorComponent_instance`$fromJSON(input)
          instance_type <- "NotificationsCreateMessageTitleNlErrorComponent"
          matched_schemas <- append(matched_schemas, "NotificationsCreateMessageTitleNlErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`NotificationsCreateMessageTitleNlErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `NotificationsCreateMessageTitleNlErrorComponent_result`["message"])
      }

      `NotificationsCreateMessageTitlePtErrorComponent_result` <- tryCatch({
          `NotificationsCreateMessageTitlePtErrorComponent`$public_methods$validateJSON(input)
          `NotificationsCreateMessageTitlePtErrorComponent_instance` <- `NotificationsCreateMessageTitlePtErrorComponent`$new()
          instance <- `NotificationsCreateMessageTitlePtErrorComponent_instance`$fromJSON(input)
          instance_type <- "NotificationsCreateMessageTitlePtErrorComponent"
          matched_schemas <- append(matched_schemas, "NotificationsCreateMessageTitlePtErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`NotificationsCreateMessageTitlePtErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `NotificationsCreateMessageTitlePtErrorComponent_result`["message"])
      }

      `NotificationsCreateMessageTitleRoErrorComponent_result` <- tryCatch({
          `NotificationsCreateMessageTitleRoErrorComponent`$public_methods$validateJSON(input)
          `NotificationsCreateMessageTitleRoErrorComponent_instance` <- `NotificationsCreateMessageTitleRoErrorComponent`$new()
          instance <- `NotificationsCreateMessageTitleRoErrorComponent_instance`$fromJSON(input)
          instance_type <- "NotificationsCreateMessageTitleRoErrorComponent"
          matched_schemas <- append(matched_schemas, "NotificationsCreateMessageTitleRoErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`NotificationsCreateMessageTitleRoErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `NotificationsCreateMessageTitleRoErrorComponent_result`["message"])
      }

      `NotificationsCreateMessageTitleSlErrorComponent_result` <- tryCatch({
          `NotificationsCreateMessageTitleSlErrorComponent`$public_methods$validateJSON(input)
          `NotificationsCreateMessageTitleSlErrorComponent_instance` <- `NotificationsCreateMessageTitleSlErrorComponent`$new()
          instance <- `NotificationsCreateMessageTitleSlErrorComponent_instance`$fromJSON(input)
          instance_type <- "NotificationsCreateMessageTitleSlErrorComponent"
          matched_schemas <- append(matched_schemas, "NotificationsCreateMessageTitleSlErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`NotificationsCreateMessageTitleSlErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `NotificationsCreateMessageTitleSlErrorComponent_result`["message"])
      }

      `NotificationsCreateMessageTitleSqErrorComponent_result` <- tryCatch({
          `NotificationsCreateMessageTitleSqErrorComponent`$public_methods$validateJSON(input)
          `NotificationsCreateMessageTitleSqErrorComponent_instance` <- `NotificationsCreateMessageTitleSqErrorComponent`$new()
          instance <- `NotificationsCreateMessageTitleSqErrorComponent_instance`$fromJSON(input)
          instance_type <- "NotificationsCreateMessageTitleSqErrorComponent"
          matched_schemas <- append(matched_schemas, "NotificationsCreateMessageTitleSqErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`NotificationsCreateMessageTitleSqErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `NotificationsCreateMessageTitleSqErrorComponent_result`["message"])
      }

      `NotificationsCreateMessageTitleSrErrorComponent_result` <- tryCatch({
          `NotificationsCreateMessageTitleSrErrorComponent`$public_methods$validateJSON(input)
          `NotificationsCreateMessageTitleSrErrorComponent_instance` <- `NotificationsCreateMessageTitleSrErrorComponent`$new()
          instance <- `NotificationsCreateMessageTitleSrErrorComponent_instance`$fromJSON(input)
          instance_type <- "NotificationsCreateMessageTitleSrErrorComponent"
          matched_schemas <- append(matched_schemas, "NotificationsCreateMessageTitleSrErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`NotificationsCreateMessageTitleSrErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `NotificationsCreateMessageTitleSrErrorComponent_result`["message"])
      }

      `NotificationsCreateMessageTitleSvErrorComponent_result` <- tryCatch({
          `NotificationsCreateMessageTitleSvErrorComponent`$public_methods$validateJSON(input)
          `NotificationsCreateMessageTitleSvErrorComponent_instance` <- `NotificationsCreateMessageTitleSvErrorComponent`$new()
          instance <- `NotificationsCreateMessageTitleSvErrorComponent_instance`$fromJSON(input)
          instance_type <- "NotificationsCreateMessageTitleSvErrorComponent"
          matched_schemas <- append(matched_schemas, "NotificationsCreateMessageTitleSvErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`NotificationsCreateMessageTitleSvErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `NotificationsCreateMessageTitleSvErrorComponent_result`["message"])
      }

      `NotificationsCreateMessageTitleTrErrorComponent_result` <- tryCatch({
          `NotificationsCreateMessageTitleTrErrorComponent`$public_methods$validateJSON(input)
          `NotificationsCreateMessageTitleTrErrorComponent_instance` <- `NotificationsCreateMessageTitleTrErrorComponent`$new()
          instance <- `NotificationsCreateMessageTitleTrErrorComponent_instance`$fromJSON(input)
          instance_type <- "NotificationsCreateMessageTitleTrErrorComponent"
          matched_schemas <- append(matched_schemas, "NotificationsCreateMessageTitleTrErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`NotificationsCreateMessageTitleTrErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `NotificationsCreateMessageTitleTrErrorComponent_result`["message"])
      }

      `NotificationsCreateMessageTitleZhCNErrorComponent_result` <- tryCatch({
          `NotificationsCreateMessageTitleZhCNErrorComponent`$public_methods$validateJSON(input)
          `NotificationsCreateMessageTitleZhCNErrorComponent_instance` <- `NotificationsCreateMessageTitleZhCNErrorComponent`$new()
          instance <- `NotificationsCreateMessageTitleZhCNErrorComponent_instance`$fromJSON(input)
          instance_type <- "NotificationsCreateMessageTitleZhCNErrorComponent"
          matched_schemas <- append(matched_schemas, "NotificationsCreateMessageTitleZhCNErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`NotificationsCreateMessageTitleZhCNErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `NotificationsCreateMessageTitleZhCNErrorComponent_result`["message"])
      }

      `NotificationsCreateMessageBodyNonFieldErrorsErrorComponent_result` <- tryCatch({
          `NotificationsCreateMessageBodyNonFieldErrorsErrorComponent`$public_methods$validateJSON(input)
          `NotificationsCreateMessageBodyNonFieldErrorsErrorComponent_instance` <- `NotificationsCreateMessageBodyNonFieldErrorsErrorComponent`$new()
          instance <- `NotificationsCreateMessageBodyNonFieldErrorsErrorComponent_instance`$fromJSON(input)
          instance_type <- "NotificationsCreateMessageBodyNonFieldErrorsErrorComponent"
          matched_schemas <- append(matched_schemas, "NotificationsCreateMessageBodyNonFieldErrorsErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`NotificationsCreateMessageBodyNonFieldErrorsErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `NotificationsCreateMessageBodyNonFieldErrorsErrorComponent_result`["message"])
      }

      `NotificationsCreateMessageBodyBgErrorComponent_result` <- tryCatch({
          `NotificationsCreateMessageBodyBgErrorComponent`$public_methods$validateJSON(input)
          `NotificationsCreateMessageBodyBgErrorComponent_instance` <- `NotificationsCreateMessageBodyBgErrorComponent`$new()
          instance <- `NotificationsCreateMessageBodyBgErrorComponent_instance`$fromJSON(input)
          instance_type <- "NotificationsCreateMessageBodyBgErrorComponent"
          matched_schemas <- append(matched_schemas, "NotificationsCreateMessageBodyBgErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`NotificationsCreateMessageBodyBgErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `NotificationsCreateMessageBodyBgErrorComponent_result`["message"])
      }

      `NotificationsCreateMessageBodyBnErrorComponent_result` <- tryCatch({
          `NotificationsCreateMessageBodyBnErrorComponent`$public_methods$validateJSON(input)
          `NotificationsCreateMessageBodyBnErrorComponent_instance` <- `NotificationsCreateMessageBodyBnErrorComponent`$new()
          instance <- `NotificationsCreateMessageBodyBnErrorComponent_instance`$fromJSON(input)
          instance_type <- "NotificationsCreateMessageBodyBnErrorComponent"
          matched_schemas <- append(matched_schemas, "NotificationsCreateMessageBodyBnErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`NotificationsCreateMessageBodyBnErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `NotificationsCreateMessageBodyBnErrorComponent_result`["message"])
      }

      `NotificationsCreateMessageBodyCaErrorComponent_result` <- tryCatch({
          `NotificationsCreateMessageBodyCaErrorComponent`$public_methods$validateJSON(input)
          `NotificationsCreateMessageBodyCaErrorComponent_instance` <- `NotificationsCreateMessageBodyCaErrorComponent`$new()
          instance <- `NotificationsCreateMessageBodyCaErrorComponent_instance`$fromJSON(input)
          instance_type <- "NotificationsCreateMessageBodyCaErrorComponent"
          matched_schemas <- append(matched_schemas, "NotificationsCreateMessageBodyCaErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`NotificationsCreateMessageBodyCaErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `NotificationsCreateMessageBodyCaErrorComponent_result`["message"])
      }

      `NotificationsCreateMessageBodyDeErrorComponent_result` <- tryCatch({
          `NotificationsCreateMessageBodyDeErrorComponent`$public_methods$validateJSON(input)
          `NotificationsCreateMessageBodyDeErrorComponent_instance` <- `NotificationsCreateMessageBodyDeErrorComponent`$new()
          instance <- `NotificationsCreateMessageBodyDeErrorComponent_instance`$fromJSON(input)
          instance_type <- "NotificationsCreateMessageBodyDeErrorComponent"
          matched_schemas <- append(matched_schemas, "NotificationsCreateMessageBodyDeErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`NotificationsCreateMessageBodyDeErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `NotificationsCreateMessageBodyDeErrorComponent_result`["message"])
      }

      `NotificationsCreateMessageBodyElErrorComponent_result` <- tryCatch({
          `NotificationsCreateMessageBodyElErrorComponent`$public_methods$validateJSON(input)
          `NotificationsCreateMessageBodyElErrorComponent_instance` <- `NotificationsCreateMessageBodyElErrorComponent`$new()
          instance <- `NotificationsCreateMessageBodyElErrorComponent_instance`$fromJSON(input)
          instance_type <- "NotificationsCreateMessageBodyElErrorComponent"
          matched_schemas <- append(matched_schemas, "NotificationsCreateMessageBodyElErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`NotificationsCreateMessageBodyElErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `NotificationsCreateMessageBodyElErrorComponent_result`["message"])
      }

      `NotificationsCreateMessageBodyEnErrorComponent_result` <- tryCatch({
          `NotificationsCreateMessageBodyEnErrorComponent`$public_methods$validateJSON(input)
          `NotificationsCreateMessageBodyEnErrorComponent_instance` <- `NotificationsCreateMessageBodyEnErrorComponent`$new()
          instance <- `NotificationsCreateMessageBodyEnErrorComponent_instance`$fromJSON(input)
          instance_type <- "NotificationsCreateMessageBodyEnErrorComponent"
          matched_schemas <- append(matched_schemas, "NotificationsCreateMessageBodyEnErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`NotificationsCreateMessageBodyEnErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `NotificationsCreateMessageBodyEnErrorComponent_result`["message"])
      }

      `NotificationsCreateMessageBodyEsErrorComponent_result` <- tryCatch({
          `NotificationsCreateMessageBodyEsErrorComponent`$public_methods$validateJSON(input)
          `NotificationsCreateMessageBodyEsErrorComponent_instance` <- `NotificationsCreateMessageBodyEsErrorComponent`$new()
          instance <- `NotificationsCreateMessageBodyEsErrorComponent_instance`$fromJSON(input)
          instance_type <- "NotificationsCreateMessageBodyEsErrorComponent"
          matched_schemas <- append(matched_schemas, "NotificationsCreateMessageBodyEsErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`NotificationsCreateMessageBodyEsErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `NotificationsCreateMessageBodyEsErrorComponent_result`["message"])
      }

      `NotificationsCreateMessageBodyEuErrorComponent_result` <- tryCatch({
          `NotificationsCreateMessageBodyEuErrorComponent`$public_methods$validateJSON(input)
          `NotificationsCreateMessageBodyEuErrorComponent_instance` <- `NotificationsCreateMessageBodyEuErrorComponent`$new()
          instance <- `NotificationsCreateMessageBodyEuErrorComponent_instance`$fromJSON(input)
          instance_type <- "NotificationsCreateMessageBodyEuErrorComponent"
          matched_schemas <- append(matched_schemas, "NotificationsCreateMessageBodyEuErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`NotificationsCreateMessageBodyEuErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `NotificationsCreateMessageBodyEuErrorComponent_result`["message"])
      }

      `NotificationsCreateMessageBodyFrErrorComponent_result` <- tryCatch({
          `NotificationsCreateMessageBodyFrErrorComponent`$public_methods$validateJSON(input)
          `NotificationsCreateMessageBodyFrErrorComponent_instance` <- `NotificationsCreateMessageBodyFrErrorComponent`$new()
          instance <- `NotificationsCreateMessageBodyFrErrorComponent_instance`$fromJSON(input)
          instance_type <- "NotificationsCreateMessageBodyFrErrorComponent"
          matched_schemas <- append(matched_schemas, "NotificationsCreateMessageBodyFrErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`NotificationsCreateMessageBodyFrErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `NotificationsCreateMessageBodyFrErrorComponent_result`["message"])
      }

      `NotificationsCreateMessageBodyGlErrorComponent_result` <- tryCatch({
          `NotificationsCreateMessageBodyGlErrorComponent`$public_methods$validateJSON(input)
          `NotificationsCreateMessageBodyGlErrorComponent_instance` <- `NotificationsCreateMessageBodyGlErrorComponent`$new()
          instance <- `NotificationsCreateMessageBodyGlErrorComponent_instance`$fromJSON(input)
          instance_type <- "NotificationsCreateMessageBodyGlErrorComponent"
          matched_schemas <- append(matched_schemas, "NotificationsCreateMessageBodyGlErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`NotificationsCreateMessageBodyGlErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `NotificationsCreateMessageBodyGlErrorComponent_result`["message"])
      }

      `NotificationsCreateMessageBodyHrErrorComponent_result` <- tryCatch({
          `NotificationsCreateMessageBodyHrErrorComponent`$public_methods$validateJSON(input)
          `NotificationsCreateMessageBodyHrErrorComponent_instance` <- `NotificationsCreateMessageBodyHrErrorComponent`$new()
          instance <- `NotificationsCreateMessageBodyHrErrorComponent_instance`$fromJSON(input)
          instance_type <- "NotificationsCreateMessageBodyHrErrorComponent"
          matched_schemas <- append(matched_schemas, "NotificationsCreateMessageBodyHrErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`NotificationsCreateMessageBodyHrErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `NotificationsCreateMessageBodyHrErrorComponent_result`["message"])
      }

      `NotificationsCreateMessageBodyHuErrorComponent_result` <- tryCatch({
          `NotificationsCreateMessageBodyHuErrorComponent`$public_methods$validateJSON(input)
          `NotificationsCreateMessageBodyHuErrorComponent_instance` <- `NotificationsCreateMessageBodyHuErrorComponent`$new()
          instance <- `NotificationsCreateMessageBodyHuErrorComponent_instance`$fromJSON(input)
          instance_type <- "NotificationsCreateMessageBodyHuErrorComponent"
          matched_schemas <- append(matched_schemas, "NotificationsCreateMessageBodyHuErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`NotificationsCreateMessageBodyHuErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `NotificationsCreateMessageBodyHuErrorComponent_result`["message"])
      }

      `NotificationsCreateMessageBodyItErrorComponent_result` <- tryCatch({
          `NotificationsCreateMessageBodyItErrorComponent`$public_methods$validateJSON(input)
          `NotificationsCreateMessageBodyItErrorComponent_instance` <- `NotificationsCreateMessageBodyItErrorComponent`$new()
          instance <- `NotificationsCreateMessageBodyItErrorComponent_instance`$fromJSON(input)
          instance_type <- "NotificationsCreateMessageBodyItErrorComponent"
          matched_schemas <- append(matched_schemas, "NotificationsCreateMessageBodyItErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`NotificationsCreateMessageBodyItErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `NotificationsCreateMessageBodyItErrorComponent_result`["message"])
      }

      `NotificationsCreateMessageBodyLbErrorComponent_result` <- tryCatch({
          `NotificationsCreateMessageBodyLbErrorComponent`$public_methods$validateJSON(input)
          `NotificationsCreateMessageBodyLbErrorComponent_instance` <- `NotificationsCreateMessageBodyLbErrorComponent`$new()
          instance <- `NotificationsCreateMessageBodyLbErrorComponent_instance`$fromJSON(input)
          instance_type <- "NotificationsCreateMessageBodyLbErrorComponent"
          matched_schemas <- append(matched_schemas, "NotificationsCreateMessageBodyLbErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`NotificationsCreateMessageBodyLbErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `NotificationsCreateMessageBodyLbErrorComponent_result`["message"])
      }

      `NotificationsCreateMessageBodyMkErrorComponent_result` <- tryCatch({
          `NotificationsCreateMessageBodyMkErrorComponent`$public_methods$validateJSON(input)
          `NotificationsCreateMessageBodyMkErrorComponent_instance` <- `NotificationsCreateMessageBodyMkErrorComponent`$new()
          instance <- `NotificationsCreateMessageBodyMkErrorComponent_instance`$fromJSON(input)
          instance_type <- "NotificationsCreateMessageBodyMkErrorComponent"
          matched_schemas <- append(matched_schemas, "NotificationsCreateMessageBodyMkErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`NotificationsCreateMessageBodyMkErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `NotificationsCreateMessageBodyMkErrorComponent_result`["message"])
      }

      `NotificationsCreateMessageBodyNlErrorComponent_result` <- tryCatch({
          `NotificationsCreateMessageBodyNlErrorComponent`$public_methods$validateJSON(input)
          `NotificationsCreateMessageBodyNlErrorComponent_instance` <- `NotificationsCreateMessageBodyNlErrorComponent`$new()
          instance <- `NotificationsCreateMessageBodyNlErrorComponent_instance`$fromJSON(input)
          instance_type <- "NotificationsCreateMessageBodyNlErrorComponent"
          matched_schemas <- append(matched_schemas, "NotificationsCreateMessageBodyNlErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`NotificationsCreateMessageBodyNlErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `NotificationsCreateMessageBodyNlErrorComponent_result`["message"])
      }

      `NotificationsCreateMessageBodyPtErrorComponent_result` <- tryCatch({
          `NotificationsCreateMessageBodyPtErrorComponent`$public_methods$validateJSON(input)
          `NotificationsCreateMessageBodyPtErrorComponent_instance` <- `NotificationsCreateMessageBodyPtErrorComponent`$new()
          instance <- `NotificationsCreateMessageBodyPtErrorComponent_instance`$fromJSON(input)
          instance_type <- "NotificationsCreateMessageBodyPtErrorComponent"
          matched_schemas <- append(matched_schemas, "NotificationsCreateMessageBodyPtErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`NotificationsCreateMessageBodyPtErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `NotificationsCreateMessageBodyPtErrorComponent_result`["message"])
      }

      `NotificationsCreateMessageBodyRoErrorComponent_result` <- tryCatch({
          `NotificationsCreateMessageBodyRoErrorComponent`$public_methods$validateJSON(input)
          `NotificationsCreateMessageBodyRoErrorComponent_instance` <- `NotificationsCreateMessageBodyRoErrorComponent`$new()
          instance <- `NotificationsCreateMessageBodyRoErrorComponent_instance`$fromJSON(input)
          instance_type <- "NotificationsCreateMessageBodyRoErrorComponent"
          matched_schemas <- append(matched_schemas, "NotificationsCreateMessageBodyRoErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`NotificationsCreateMessageBodyRoErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `NotificationsCreateMessageBodyRoErrorComponent_result`["message"])
      }

      `NotificationsCreateMessageBodySlErrorComponent_result` <- tryCatch({
          `NotificationsCreateMessageBodySlErrorComponent`$public_methods$validateJSON(input)
          `NotificationsCreateMessageBodySlErrorComponent_instance` <- `NotificationsCreateMessageBodySlErrorComponent`$new()
          instance <- `NotificationsCreateMessageBodySlErrorComponent_instance`$fromJSON(input)
          instance_type <- "NotificationsCreateMessageBodySlErrorComponent"
          matched_schemas <- append(matched_schemas, "NotificationsCreateMessageBodySlErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`NotificationsCreateMessageBodySlErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `NotificationsCreateMessageBodySlErrorComponent_result`["message"])
      }

      `NotificationsCreateMessageBodySqErrorComponent_result` <- tryCatch({
          `NotificationsCreateMessageBodySqErrorComponent`$public_methods$validateJSON(input)
          `NotificationsCreateMessageBodySqErrorComponent_instance` <- `NotificationsCreateMessageBodySqErrorComponent`$new()
          instance <- `NotificationsCreateMessageBodySqErrorComponent_instance`$fromJSON(input)
          instance_type <- "NotificationsCreateMessageBodySqErrorComponent"
          matched_schemas <- append(matched_schemas, "NotificationsCreateMessageBodySqErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`NotificationsCreateMessageBodySqErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `NotificationsCreateMessageBodySqErrorComponent_result`["message"])
      }

      `NotificationsCreateMessageBodySrErrorComponent_result` <- tryCatch({
          `NotificationsCreateMessageBodySrErrorComponent`$public_methods$validateJSON(input)
          `NotificationsCreateMessageBodySrErrorComponent_instance` <- `NotificationsCreateMessageBodySrErrorComponent`$new()
          instance <- `NotificationsCreateMessageBodySrErrorComponent_instance`$fromJSON(input)
          instance_type <- "NotificationsCreateMessageBodySrErrorComponent"
          matched_schemas <- append(matched_schemas, "NotificationsCreateMessageBodySrErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`NotificationsCreateMessageBodySrErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `NotificationsCreateMessageBodySrErrorComponent_result`["message"])
      }

      `NotificationsCreateMessageBodySvErrorComponent_result` <- tryCatch({
          `NotificationsCreateMessageBodySvErrorComponent`$public_methods$validateJSON(input)
          `NotificationsCreateMessageBodySvErrorComponent_instance` <- `NotificationsCreateMessageBodySvErrorComponent`$new()
          instance <- `NotificationsCreateMessageBodySvErrorComponent_instance`$fromJSON(input)
          instance_type <- "NotificationsCreateMessageBodySvErrorComponent"
          matched_schemas <- append(matched_schemas, "NotificationsCreateMessageBodySvErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`NotificationsCreateMessageBodySvErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `NotificationsCreateMessageBodySvErrorComponent_result`["message"])
      }

      `NotificationsCreateMessageBodyTrErrorComponent_result` <- tryCatch({
          `NotificationsCreateMessageBodyTrErrorComponent`$public_methods$validateJSON(input)
          `NotificationsCreateMessageBodyTrErrorComponent_instance` <- `NotificationsCreateMessageBodyTrErrorComponent`$new()
          instance <- `NotificationsCreateMessageBodyTrErrorComponent_instance`$fromJSON(input)
          instance_type <- "NotificationsCreateMessageBodyTrErrorComponent"
          matched_schemas <- append(matched_schemas, "NotificationsCreateMessageBodyTrErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`NotificationsCreateMessageBodyTrErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `NotificationsCreateMessageBodyTrErrorComponent_result`["message"])
      }

      `NotificationsCreateMessageBodyZhCNErrorComponent_result` <- tryCatch({
          `NotificationsCreateMessageBodyZhCNErrorComponent`$public_methods$validateJSON(input)
          `NotificationsCreateMessageBodyZhCNErrorComponent_instance` <- `NotificationsCreateMessageBodyZhCNErrorComponent`$new()
          instance <- `NotificationsCreateMessageBodyZhCNErrorComponent_instance`$fromJSON(input)
          instance_type <- "NotificationsCreateMessageBodyZhCNErrorComponent"
          matched_schemas <- append(matched_schemas, "NotificationsCreateMessageBodyZhCNErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`NotificationsCreateMessageBodyZhCNErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `NotificationsCreateMessageBodyZhCNErrorComponent_result`["message"])
      }

      `NotificationsCreateUserUuidsErrorComponent_result` <- tryCatch({
          `NotificationsCreateUserUuidsErrorComponent`$public_methods$validateJSON(input)
          `NotificationsCreateUserUuidsErrorComponent_instance` <- `NotificationsCreateUserUuidsErrorComponent`$new()
          instance <- `NotificationsCreateUserUuidsErrorComponent_instance`$fromJSON(input)
          instance_type <- "NotificationsCreateUserUuidsErrorComponent"
          matched_schemas <- append(matched_schemas, "NotificationsCreateUserUuidsErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`NotificationsCreateUserUuidsErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `NotificationsCreateUserUuidsErrorComponent_result`["message"])
      }

      `NotificationsCreateUserUuidsINDEXErrorComponent_result` <- tryCatch({
          `NotificationsCreateUserUuidsINDEXErrorComponent`$public_methods$validateJSON(input)
          `NotificationsCreateUserUuidsINDEXErrorComponent_instance` <- `NotificationsCreateUserUuidsINDEXErrorComponent`$new()
          instance <- `NotificationsCreateUserUuidsINDEXErrorComponent_instance`$fromJSON(input)
          instance_type <- "NotificationsCreateUserUuidsINDEXErrorComponent"
          matched_schemas <- append(matched_schemas, "NotificationsCreateUserUuidsINDEXErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`NotificationsCreateUserUuidsINDEXErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `NotificationsCreateUserUuidsINDEXErrorComponent_result`["message"])
      }

      `NotificationsCreateTopicCodesErrorComponent_result` <- tryCatch({
          `NotificationsCreateTopicCodesErrorComponent`$public_methods$validateJSON(input)
          `NotificationsCreateTopicCodesErrorComponent_instance` <- `NotificationsCreateTopicCodesErrorComponent`$new()
          instance <- `NotificationsCreateTopicCodesErrorComponent_instance`$fromJSON(input)
          instance_type <- "NotificationsCreateTopicCodesErrorComponent"
          matched_schemas <- append(matched_schemas, "NotificationsCreateTopicCodesErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`NotificationsCreateTopicCodesErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `NotificationsCreateTopicCodesErrorComponent_result`["message"])
      }

      `NotificationsCreateTopicCodesINDEXErrorComponent_result` <- tryCatch({
          `NotificationsCreateTopicCodesINDEXErrorComponent`$public_methods$validateJSON(input)
          `NotificationsCreateTopicCodesINDEXErrorComponent_instance` <- `NotificationsCreateTopicCodesINDEXErrorComponent`$new()
          instance <- `NotificationsCreateTopicCodesINDEXErrorComponent_instance`$fromJSON(input)
          instance_type <- "NotificationsCreateTopicCodesINDEXErrorComponent"
          matched_schemas <- append(matched_schemas, "NotificationsCreateTopicCodesINDEXErrorComponent")
          matched <- matched + 1
        },
        error = function(err) err
      )

      if (!is.null(`NotificationsCreateTopicCodesINDEXErrorComponent_result`["error"])) {
        error_messages <- append(error_messages, `NotificationsCreateTopicCodesINDEXErrorComponent_result`["message"])
      }

      if (matched == 1) {
        # successfully match exactly 1 schema specified in oneOf
        self$actual_instance <- instance
        self$actual_type <- instance_type
      } else if (matched > 1) {
        # more than 1 match
        stop(paste("Multiple matches found when deserializing the input into NotificationsCreateError with oneOf schemas NotificationsCreateMessageBodyBgErrorComponent, NotificationsCreateMessageBodyBnErrorComponent, NotificationsCreateMessageBodyCaErrorComponent, NotificationsCreateMessageBodyDeErrorComponent, NotificationsCreateMessageBodyElErrorComponent, NotificationsCreateMessageBodyEnErrorComponent, NotificationsCreateMessageBodyEsErrorComponent, NotificationsCreateMessageBodyEuErrorComponent, NotificationsCreateMessageBodyFrErrorComponent, NotificationsCreateMessageBodyGlErrorComponent, NotificationsCreateMessageBodyHrErrorComponent, NotificationsCreateMessageBodyHuErrorComponent, NotificationsCreateMessageBodyItErrorComponent, NotificationsCreateMessageBodyLbErrorComponent, NotificationsCreateMessageBodyMkErrorComponent, NotificationsCreateMessageBodyNlErrorComponent, NotificationsCreateMessageBodyNonFieldErrorsErrorComponent, NotificationsCreateMessageBodyPtErrorComponent, NotificationsCreateMessageBodyRoErrorComponent, NotificationsCreateMessageBodySlErrorComponent, NotificationsCreateMessageBodySqErrorComponent, NotificationsCreateMessageBodySrErrorComponent, NotificationsCreateMessageBodySvErrorComponent, NotificationsCreateMessageBodyTrErrorComponent, NotificationsCreateMessageBodyZhCNErrorComponent, NotificationsCreateMessageNonFieldErrorsErrorComponent, NotificationsCreateMessageTitleBgErrorComponent, NotificationsCreateMessageTitleBnErrorComponent, NotificationsCreateMessageTitleCaErrorComponent, NotificationsCreateMessageTitleDeErrorComponent, NotificationsCreateMessageTitleElErrorComponent, NotificationsCreateMessageTitleEnErrorComponent, NotificationsCreateMessageTitleEsErrorComponent, NotificationsCreateMessageTitleEuErrorComponent, NotificationsCreateMessageTitleFrErrorComponent, NotificationsCreateMessageTitleGlErrorComponent, NotificationsCreateMessageTitleHrErrorComponent, NotificationsCreateMessageTitleHuErrorComponent, NotificationsCreateMessageTitleItErrorComponent, NotificationsCreateMessageTitleLbErrorComponent, NotificationsCreateMessageTitleMkErrorComponent, NotificationsCreateMessageTitleNlErrorComponent, NotificationsCreateMessageTitleNonFieldErrorsErrorComponent, NotificationsCreateMessageTitlePtErrorComponent, NotificationsCreateMessageTitleRoErrorComponent, NotificationsCreateMessageTitleSlErrorComponent, NotificationsCreateMessageTitleSqErrorComponent, NotificationsCreateMessageTitleSrErrorComponent, NotificationsCreateMessageTitleSvErrorComponent, NotificationsCreateMessageTitleTrErrorComponent, NotificationsCreateMessageTitleZhCNErrorComponent, NotificationsCreateNonFieldErrorsErrorComponent, NotificationsCreateReceiverTypeErrorComponent, NotificationsCreateTopicCodesErrorComponent, NotificationsCreateTopicCodesINDEXErrorComponent, NotificationsCreateUserUuidsErrorComponent, NotificationsCreateUserUuidsINDEXErrorComponent. Matched schemas: ",
                   paste(matched_schemas, collapse = ", ")))
      } else {
        # no match
        stop(paste("No match found when deserializing the input into NotificationsCreateError with oneOf schemas NotificationsCreateMessageBodyBgErrorComponent, NotificationsCreateMessageBodyBnErrorComponent, NotificationsCreateMessageBodyCaErrorComponent, NotificationsCreateMessageBodyDeErrorComponent, NotificationsCreateMessageBodyElErrorComponent, NotificationsCreateMessageBodyEnErrorComponent, NotificationsCreateMessageBodyEsErrorComponent, NotificationsCreateMessageBodyEuErrorComponent, NotificationsCreateMessageBodyFrErrorComponent, NotificationsCreateMessageBodyGlErrorComponent, NotificationsCreateMessageBodyHrErrorComponent, NotificationsCreateMessageBodyHuErrorComponent, NotificationsCreateMessageBodyItErrorComponent, NotificationsCreateMessageBodyLbErrorComponent, NotificationsCreateMessageBodyMkErrorComponent, NotificationsCreateMessageBodyNlErrorComponent, NotificationsCreateMessageBodyNonFieldErrorsErrorComponent, NotificationsCreateMessageBodyPtErrorComponent, NotificationsCreateMessageBodyRoErrorComponent, NotificationsCreateMessageBodySlErrorComponent, NotificationsCreateMessageBodySqErrorComponent, NotificationsCreateMessageBodySrErrorComponent, NotificationsCreateMessageBodySvErrorComponent, NotificationsCreateMessageBodyTrErrorComponent, NotificationsCreateMessageBodyZhCNErrorComponent, NotificationsCreateMessageNonFieldErrorsErrorComponent, NotificationsCreateMessageTitleBgErrorComponent, NotificationsCreateMessageTitleBnErrorComponent, NotificationsCreateMessageTitleCaErrorComponent, NotificationsCreateMessageTitleDeErrorComponent, NotificationsCreateMessageTitleElErrorComponent, NotificationsCreateMessageTitleEnErrorComponent, NotificationsCreateMessageTitleEsErrorComponent, NotificationsCreateMessageTitleEuErrorComponent, NotificationsCreateMessageTitleFrErrorComponent, NotificationsCreateMessageTitleGlErrorComponent, NotificationsCreateMessageTitleHrErrorComponent, NotificationsCreateMessageTitleHuErrorComponent, NotificationsCreateMessageTitleItErrorComponent, NotificationsCreateMessageTitleLbErrorComponent, NotificationsCreateMessageTitleMkErrorComponent, NotificationsCreateMessageTitleNlErrorComponent, NotificationsCreateMessageTitleNonFieldErrorsErrorComponent, NotificationsCreateMessageTitlePtErrorComponent, NotificationsCreateMessageTitleRoErrorComponent, NotificationsCreateMessageTitleSlErrorComponent, NotificationsCreateMessageTitleSqErrorComponent, NotificationsCreateMessageTitleSrErrorComponent, NotificationsCreateMessageTitleSvErrorComponent, NotificationsCreateMessageTitleTrErrorComponent, NotificationsCreateMessageTitleZhCNErrorComponent, NotificationsCreateNonFieldErrorsErrorComponent, NotificationsCreateReceiverTypeErrorComponent, NotificationsCreateTopicCodesErrorComponent, NotificationsCreateTopicCodesINDEXErrorComponent, NotificationsCreateUserUuidsErrorComponent, NotificationsCreateUserUuidsINDEXErrorComponent. Details: >>",
                   paste(error_messages, collapse = " >> ")))
      }

      self
    },

    #' @description
    #' Serialize NotificationsCreateError to JSON string.
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return JSON string representation of the NotificationsCreateError.
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
    #' Convert NotificationsCreateError to a base R type
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
    #' Validate the input JSON with respect to NotificationsCreateError and
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
#NotificationsCreateError$unlock()
#
## Below is an example to define the print function
#NotificationsCreateError$set("public", "print", function(...) {
#  print(jsonlite::prettify(self$toJSONString()))
#  invisible(self)
#})
## Uncomment below to lock the class to prevent modifications to the method or field
#NotificationsCreateError$lock()

