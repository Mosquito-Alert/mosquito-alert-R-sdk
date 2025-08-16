#' MosquitoAlert API Error Class
#'
#' @description
#' A unified error class for handling API errors from the MosquitoAlert API.
#'
#' @docType class
#' @title MosquitoAlertError
#' @description MosquitoAlertError Class
#' @format An \code{R6Class} generator object
#' @field status_code HTTP status code
#' @field status_desc HTTP status description  
#' @field message Error message
#' @field response Raw response object
#' @field details Additional error details
#' @importFrom R6 R6Class
#' @export
MosquitoAlertError <- R6::R6Class(
  "MosquitoAlertError",
  public = list(
    status_code = NULL,
    status_desc = NULL,
    message = NULL,
    response = NULL,
    details = NULL,
    
    #' Initialize a new MosquitoAlertError
    #'
    #' @param status_code HTTP status code
    #' @param status_desc HTTP status description
    #' @param message Error message
    #' @param response Raw response object  
    #' @param details Additional error details
    initialize = function(status_code = NULL, status_desc = NULL, message = NULL, 
                          response = NULL, details = NULL) {
      self$status_code <- status_code
      self$status_desc <- status_desc
      self$message <- message
      self$response <- response
      self$details <- details
    },
    
    #' Print the error
    print = function() {
      cat("MosquitoAlert API Error\n")
      cat("Status:", self$status_code, "-", self$status_desc, "\n")
      cat("Message:", self$message, "\n")
      if (!is.null(self$details)) {
        cat("Details:", self$details, "\n")
      }
    },
    
    #' Convert error to string
    toString = function() {
      paste0("MosquitoAlert API Error (", self$status_code, "): ", self$message)
    }
  )
)

#' Check API response and throw appropriate errors
#'
#' @description
#' Examines an API response and throws a MosquitoAlertError if the response 
#' indicates an error condition.
#'
#' @param response ApiResponse object from API call
#' @return The response object if successful, throws error if not
#' @export
check_api_response <- function(response) {
  if (is.null(response) || is.null(response$status_code)) {
    stop(MosquitoAlertError$new(
      status_code = 0,
      status_desc = "Unknown Error",
      message = "No response received from API"
    ))
  }
  
  status_code <- response$status_code
  
  # Success codes (200-299)
  if (status_code >= 200 && status_code <= 299) {
    return(response)
  }
  
  # Parse error message from response if possible
  error_message <- "Unknown error"
  error_details <- NULL
  
  if (!is.null(response$response) && length(response$response) > 0) {
    tryCatch({
      parsed_response <- jsonlite::fromJSON(rawToChar(response$response))
      if (is.list(parsed_response)) {
        # Try to extract common error fields
        if ("message" %in% names(parsed_response)) {
          error_message <- parsed_response$message
        } else if ("detail" %in% names(parsed_response)) {
          error_message <- parsed_response$detail
        } else if ("error" %in% names(parsed_response)) {
          error_message <- parsed_response$error
        }
        error_details <- jsonlite::toJSON(parsed_response, auto_unbox = TRUE)
      }
    }, error = function(e) {
      # If JSON parsing fails, use raw response
      error_message <- rawToChar(response$response)
    })
  }
  
  # Create appropriate error based on status code
  if (status_code == 400) {
    error_message <- paste("Bad Request:", error_message)
  } else if (status_code == 401) {
    error_message <- paste("Unauthorized:", error_message)
  } else if (status_code == 403) {
    error_message <- paste("Forbidden:", error_message)
  } else if (status_code == 404) {
    error_message <- paste("Not Found:", error_message)
  } else if (status_code == 429) {
    error_message <- paste("Rate Limit Exceeded:", error_message)
  } else if (status_code >= 500) {
    error_message <- paste("Server Error:", error_message)
  }
  
  # Throw the error
  stop(MosquitoAlertError$new(
    status_code = status_code,
    status_desc = response$status_code_desc,
    message = error_message,
    response = response,
    details = error_details
  ))
}
