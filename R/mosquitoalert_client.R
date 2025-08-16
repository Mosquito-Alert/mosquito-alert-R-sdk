#' High-Level MosquitoAlert API Client
#'
#' @description
#' A user-friendly wrapper for the MosquitoAlert API that provides simplified
#' methods for common operations with automatic error handling and response parsing.
#'
#' @docType class
#' @title MosquitoAlert
#' @description MosquitoAlert High-Level API Client
#' @format An \code{R6Class} generator object
#' @field api Underlying mosquitoalert_api instance
#' @field client Underlying ApiClient instance
#' @importFrom R6 R6Class
#' @export
MosquitoAlert <- R6::R6Class(
  "MosquitoAlert",
  public = list(
    api = NULL,
    client = NULL,
    
    #' Initialize a new MosquitoAlert client
    #'
    #' @param token Bearer token for authentication
    #' @param base_url Base URL for the API (default: https://api.mosquitoalert.com/v1)
    #' @param timeout Request timeout in seconds (default: 30)
    #' @param max_retries Maximum number of retries for failed requests (default: 3)
    initialize = function(token = NULL, base_url = "https://api.mosquitoalert.com/v1", 
                          timeout = 30, max_retries = 3) {
      # Create the underlying API client
      self$client <- ApiClient$new(
        base_path = base_url,
        bearer_token = token,
        timeout = timeout,
        max_retry_attempts = max_retries
      )
      
      # Create the API wrapper
      self$api <- mosquitoalert_api$new(self$client)
      
      if (!is.null(token)) {
        self$set_token(token)
      }
    },
    
    #' Set authentication token
    #'
    #' @param token Bearer token for API authentication
    set_token = function(token) {
      self$client$bearer_token <- token
      self$client$default_headers <- list("Authorization" = paste("Bearer", token))
    },
    
    #' Get observations with simplified parameters
    #'
    #' @param country_id Optional country ID filter
    #' @param limit Number of results to return (default: 20)
    #' @param order_by Field to order by (default: "-created_at")
    #' @param created_after Only return observations created after this date (ISO format)
    #' @param created_before Only return observations created before this date (ISO format)
    #' @return List of observations
    get_observations = function(country_id = NULL, limit = 20, order_by = "-created_at",
                                created_after = NULL, created_before = NULL) {
      
      tryCatch({
        # Make the API call
        response <- self$api$observations_api$list(
          country_id = country_id,
          limit = limit,
          order_by = order_by,
          created_at_gte = created_after,
          created_at_lte = created_before
        )
        
        # Check for errors
        check_api_response(response)
        
        # Parse and return the data
        if (!is.null(response$content) && length(response$content) > 0) {
          parsed_data <- jsonlite::fromJSON(rawToChar(response$content))
          return(parsed_data)
        } else {
          return(list())
        }
        
      }, error = function(e) {
        if (inherits(e, "MosquitoAlertError")) {
          stop(e)
        } else {
          stop(MosquitoAlertError$new(
            status_code = 0,
            message = paste("Failed to get observations:", e$message)
          ))
        }
      })
    },
    
    #' Get user's own observations
    #'
    #' @param limit Number of results to return (default: 20)
    #' @param order_by Field to order by (default: "-created_at")
    #' @return List of user's observations
    get_my_observations = function(limit = 20, order_by = "-created_at") {
      
      tryCatch({
        response <- self$api$observations_api$list_mine(
          limit = limit,
          order_by = order_by
        )
        
        check_api_response(response)
        
        if (!is.null(response$content) && length(response$content) > 0) {
          parsed_data <- jsonlite::fromJSON(rawToChar(response$content))
          return(parsed_data)
        } else {
          return(list())
        }
        
      }, error = function(e) {
        if (inherits(e, "MosquitoAlertError")) {
          stop(e)
        } else {
          stop(MosquitoAlertError$new(
            status_code = 0,
            message = paste("Failed to get user observations:", e$message)
          ))
        }
      })
    },
    
    #' Get countries list
    #'
    #' @param limit Number of results to return (default: 100)
    #' @return List of countries
    get_countries = function(limit = 100) {
      
      tryCatch({
        response <- self$api$countries_api$list(limit = limit)
        
        check_api_response(response)
        
        if (!is.null(response$content) && length(response$content) > 0) {
          parsed_data <- jsonlite::fromJSON(rawToChar(response$content))
          return(parsed_data)
        } else {
          return(list())
        }
        
      }, error = function(e) {
        if (inherits(e, "MosquitoAlertError")) {
          stop(e)
        } else {
          stop(MosquitoAlertError$new(
            status_code = 0,
            message = paste("Failed to get countries:", e$message)
          ))
        }
      })
    },
    
    #' Authenticate with username and password
    #'
    #' @param username User's username
    #' @param password User's password  
    #' @param device_id Device identifier
    #' @return Authentication token information
    authenticate = function(username, password, device_id = "R-SDK") {
      
      tryCatch({
        # Create the authentication request
        auth_request <- AppUserTokenObtainPairRequest$new(
          username = username,
          password = password,
          device_id = device_id
        )
        
        # Make the authentication call
        response <- self$api$auth_api$obtain_token(auth_request)
        
        check_api_response(response)
        
        if (!is.null(response$content) && length(response$content) > 0) {
          parsed_data <- jsonlite::fromJSON(rawToChar(response$content))
          
          # Set the token automatically
          if ("access" %in% names(parsed_data)) {
            self$set_token(parsed_data$access)
          }
          
          return(parsed_data)
        } else {
          stop(MosquitoAlertError$new(
            status_code = 0,
            message = "Authentication response was empty"
          ))
        }
        
      }, error = function(e) {
        if (inherits(e, "MosquitoAlertError")) {
          stop(e)
        } else {
          stop(MosquitoAlertError$new(
            status_code = 0,
            message = paste("Authentication failed:", e$message)
          ))
        }
      })
    },
    
    #' Test API connection
    #'
    #' @return TRUE if connection successful, throws error otherwise
    test_connection = function() {
      tryCatch({
        # Try to get countries as a simple test
        countries <- self$get_countries(limit = 1)
        return(TRUE)
      }, error = function(e) {
        stop(MosquitoAlertError$new(
          status_code = 0,
          message = paste("Connection test failed:", e$message)
        ))
      })
    }
  )
)
