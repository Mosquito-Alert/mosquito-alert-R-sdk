#' Mosquito Alert API
#'
#' Introducing API v1 for Mosquito Alert platform, a project desgined to facilitate citizen science initiatives and enable collaboration among scientists, public health officials, and environmental managers in the investigation and control of disease-carrying mosquitoes.
#'
#' The version of the OpenAPI document: v1
#' Contact: it@mosquitoalert.com
#' Generated by: https://openapi-generator.tech
#'
#' @docType class
#' @title Photos operations
#' @description PhotosApi
#' @format An \code{R6Class} generator object
#' @field api_client Handles the client-server communication.
#'
#' @examples
#' \dontrun{
#' ####################  prediction_destroy  ####################
#'
#' library(MosquitoAlert)
#' var_uuid <- "uuid_example" # character | 
#'
#' api_instance <- mosquitoalert_api$new()
#'
#' # Configure API key authorization: tokenAuth
#' api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
#'
#' # Configure API key authorization: cookieAuth
#' api_instance$api_client$api_keys["sessionid"] <- Sys.getenv("API_KEY")
#'
#' # Configure HTTP bearer authorization: jwtAuth
#' api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
#'
#' api_instance$photos_api$prediction_destroy(var_uuid)
#'
#'
#' ####################  prediction_partial_update  ####################
#'
#' library(MosquitoAlert)
#' var_uuid <- "uuid_example" # character | 
#' var_patched_photo_prediction_request <- PatchedPhotoPredictionRequest$new(BoundingBoxRequest$new(123, 123, 123, 123), 123, "ae_albopictus", 123, "is_decisive_example", PredictionScoreRequest$new(123, 123, 123, 123, 123, 123, 123, 123, 123), "v2023.1") # PatchedPhotoPredictionRequest |  (Optional)
#'
#' api_instance <- mosquitoalert_api$new()
#'
#' # Configure API key authorization: tokenAuth
#' api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
#'
#' # Configure API key authorization: cookieAuth
#' api_instance$api_client$api_keys["sessionid"] <- Sys.getenv("API_KEY")
#'
#' # Configure HTTP bearer authorization: jwtAuth
#' api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
#'
#' # to save the result into a file, simply add the optional `data_file` parameter, e.g.
#' # result <- api_instance$prediction_partial_update(var_uuid, patched_photo_prediction_request = var_patched_photo_prediction_requestdata_file = "result.txt")
#' result <- api_instance$photos_api$prediction_partial_update(var_uuid, patched_photo_prediction_request = var_patched_photo_prediction_request)
#' dput(result)
#'
#'
#' ####################  prediction_retrieve  ####################
#'
#' library(MosquitoAlert)
#' var_uuid <- "uuid_example" # character | 
#'
#' api_instance <- mosquitoalert_api$new()
#'
#' # Configure API key authorization: tokenAuth
#' api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
#'
#' # Configure API key authorization: cookieAuth
#' api_instance$api_client$api_keys["sessionid"] <- Sys.getenv("API_KEY")
#'
#' # Configure HTTP bearer authorization: jwtAuth
#' api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
#'
#' # to save the result into a file, simply add the optional `data_file` parameter, e.g.
#' # result <- api_instance$prediction_retrieve(var_uuiddata_file = "result.txt")
#' result <- api_instance$photos_api$prediction_retrieve(var_uuid)
#' dput(result)
#'
#'
#' ####################  prediction_update  ####################
#'
#' library(MosquitoAlert)
#' var_uuid <- "uuid_example" # character | 
#' var_photo_prediction_request <- PhotoPredictionRequest$new(BoundingBoxRequest$new(123, 123, 123, 123), 123, "ae_albopictus", 123, PredictionScoreRequest$new(123, 123, 123, 123, 123, 123, 123, 123, 123), "v2023.1", "is_decisive_example") # PhotoPredictionRequest | 
#'
#' api_instance <- mosquitoalert_api$new()
#'
#' # Configure API key authorization: tokenAuth
#' api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
#'
#' # Configure API key authorization: cookieAuth
#' api_instance$api_client$api_keys["sessionid"] <- Sys.getenv("API_KEY")
#'
#' # Configure HTTP bearer authorization: jwtAuth
#' api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
#'
#' # to save the result into a file, simply add the optional `data_file` parameter, e.g.
#' # result <- api_instance$prediction_update(var_uuid, var_photo_prediction_requestdata_file = "result.txt")
#' result <- api_instance$photos_api$prediction_update(var_uuid, var_photo_prediction_request)
#' dput(result)
#'
#'
#' ####################  retrieve  ####################
#'
#' library(MosquitoAlert)
#' var_uuid <- "uuid_example" # character | 
#'
#' api_instance <- mosquitoalert_api$new()
#'
#' # Configure API key authorization: tokenAuth
#' api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
#'
#' # Configure API key authorization: cookieAuth
#' api_instance$api_client$api_keys["sessionid"] <- Sys.getenv("API_KEY")
#'
#' # Configure HTTP bearer authorization: jwtAuth
#' api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
#'
#' # to save the result into a file, simply add the optional `data_file` parameter, e.g.
#' # result <- api_instance$retrieve(var_uuiddata_file = "result.txt")
#' result <- api_instance$photos_api$retrieve(var_uuid)
#' dput(result)
#'
#'
#' }
#' @importFrom R6 R6Class
#' @importFrom base64enc base64encode
#' @export
PhotosApi <- R6::R6Class(
  "PhotosApi",
  public = list(
    api_client = NULL,

    #' @description
    #' Initialize a new PhotosApi.
    #'
    #' @param api_client An instance of API client.
    initialize = function(api_client) {
      if (!missing(api_client)) {
        self$api_client <- api_client
      } else {
        self$api_client <- ApiClient$new()
      }
    },

    #' @description
    #' 
    #'
    #' @param uuid 
    #' @param ... Other optional arguments
    #'
    #' @return void
    prediction_destroy = function(uuid, ...) {
      local_var_response <- self$prediction_destroy_with_http_info(uuid, ...)
      if (local_var_response$status_code >= 200 && local_var_response$status_code <= 299) {
        return(local_var_response$content)
      } else if (local_var_response$status_code >= 300 && local_var_response$status_code <= 399) {
        return(local_var_response)
      } else if (local_var_response$status_code >= 400 && local_var_response$status_code <= 499) {
        return(local_var_response)
      } else if (local_var_response$status_code >= 500 && local_var_response$status_code <= 599) {
        return(local_var_response)
      }
    },

    #' @description
    #' 
    #'
    #' @param uuid 
    #' @param ... Other optional arguments
    #'
    #' @return API response (void) with additional information such as HTTP status code, headers
    prediction_destroy_with_http_info = function(uuid, ...) {
      args <- list(...)
      query_params <- list()
      header_params <- c()
      form_params <- list()
      file_params <- list()
      local_var_body <- NULL
      oauth_scopes <- NULL
      is_oauth <- FALSE

      if (missing(`uuid`)) {
        stop("Missing required parameter `uuid`.")
      }


      local_var_url_path <- "/photos/{uuid}/prediction/"
      if (!missing(`uuid`)) {
        local_var_url_path <- gsub("\\{uuid\\}", URLencode(as.character(`uuid`), reserved = TRUE), local_var_url_path)
      }

      # API key authentication
      if ("Authorization" %in% names(self$api_client$api_keys) && nchar(self$api_client$api_keys["Authorization"]) > 0) {
        header_params["Authorization"] <- paste(unlist(self$api_client$api_keys["Authorization"]), collapse = "")
      }
      # API key authentication
      # Bearer token
      if (!is.null(self$api_client$bearer_token)) {
        header_params["Authorization"] <- paste("Bearer", self$api_client$bearer_token, sep = " ")
      }

      # The Accept request HTTP header
      local_var_accepts <- list("application/json")

      # The Content-Type representation header
      local_var_content_types <- list()

      local_var_resp <- self$api_client$CallApi(url = paste0(self$api_client$base_path, local_var_url_path),
                                 method = "DELETE",
                                 query_params = query_params,
                                 header_params = header_params,
                                 form_params = form_params,
                                 file_params = file_params,
                                 accepts = local_var_accepts,
                                 content_types = local_var_content_types,
                                 body = local_var_body,
                                 is_oauth = is_oauth,
                                 oauth_scopes = oauth_scopes,
                                 ...)

      if (local_var_resp$status_code >= 200 && local_var_resp$status_code <= 299) {
        local_var_resp$content <- NULL
        return(local_var_resp)
      } 
      
      local_var_error_msg <- local_var_resp$response_as_text()      
      if (local_var_resp$status_code >= 300 && local_var_resp$status_code <= 399) {
        ApiResponse$new(paste("Server returned ", local_var_resp$status_code, " response status code."), local_var_resp)
      } else if (local_var_resp$status_code >= 400 && local_var_resp$status_code <= 499) {
        ApiResponse$new("API client error", local_var_resp)
      } else if (local_var_resp$status_code >= 500 && local_var_resp$status_code <= 599) {
        if (is.null(local_var_resp$response) || local_var_resp$response == "") {
          local_var_resp$response <- "API server error"
        }
        return(local_var_resp)
      }
    },

    #' @description
    #' 
    #'
    #' @param uuid 
    #' @param patched_photo_prediction_request (optional) No description
    #' @param data_file (optional) name of the data file to save the result
    #' @param ... Other optional arguments
    #'
    #' @return PhotoPrediction
    prediction_partial_update = function(uuid, patched_photo_prediction_request = NULL, data_file = NULL, ...) {
      local_var_response <- self$prediction_partial_update_with_http_info(uuid, patched_photo_prediction_request, data_file = data_file, ...)
      if (local_var_response$status_code >= 200 && local_var_response$status_code <= 299) {
        return(local_var_response$content)
      } else if (local_var_response$status_code >= 300 && local_var_response$status_code <= 399) {
        return(local_var_response)
      } else if (local_var_response$status_code >= 400 && local_var_response$status_code <= 499) {
        return(local_var_response)
      } else if (local_var_response$status_code >= 500 && local_var_response$status_code <= 599) {
        return(local_var_response)
      }
    },

    #' @description
    #' 
    #'
    #' @param uuid 
    #' @param patched_photo_prediction_request (optional) No description
    #' @param data_file (optional) name of the data file to save the result
    #' @param ... Other optional arguments
    #'
    #' @return API response (PhotoPrediction) with additional information such as HTTP status code, headers
    prediction_partial_update_with_http_info = function(uuid, patched_photo_prediction_request = NULL, data_file = NULL, ...) {
      args <- list(...)
      query_params <- list()
      header_params <- c()
      form_params <- list()
      file_params <- list()
      local_var_body <- NULL
      oauth_scopes <- NULL
      is_oauth <- FALSE

      if (missing(`uuid`)) {
        stop("Missing required parameter `uuid`.")
      }



      if (!is.null(`patched_photo_prediction_request`)) {
        local_var_body <- `patched_photo_prediction_request`$toJSONString()
      } else {
        local_var_body <- NULL
      }

      local_var_url_path <- "/photos/{uuid}/prediction/"
      if (!missing(`uuid`)) {
        local_var_url_path <- gsub("\\{uuid\\}", URLencode(as.character(`uuid`), reserved = TRUE), local_var_url_path)
      }

      # API key authentication
      if ("Authorization" %in% names(self$api_client$api_keys) && nchar(self$api_client$api_keys["Authorization"]) > 0) {
        header_params["Authorization"] <- paste(unlist(self$api_client$api_keys["Authorization"]), collapse = "")
      }
      # API key authentication
      # Bearer token
      if (!is.null(self$api_client$bearer_token)) {
        header_params["Authorization"] <- paste("Bearer", self$api_client$bearer_token, sep = " ")
      }

      # The Accept request HTTP header
      local_var_accepts <- list("application/json")

      # The Content-Type representation header
      local_var_content_types <- list("application/json", "application/x-www-form-urlencoded", "multipart/form-data")

      local_var_resp <- self$api_client$CallApi(url = paste0(self$api_client$base_path, local_var_url_path),
                                 method = "PATCH",
                                 query_params = query_params,
                                 header_params = header_params,
                                 form_params = form_params,
                                 file_params = file_params,
                                 accepts = local_var_accepts,
                                 content_types = local_var_content_types,
                                 body = local_var_body,
                                 is_oauth = is_oauth,
                                 oauth_scopes = oauth_scopes,
                                 ...)

      if (local_var_resp$status_code >= 200 && local_var_resp$status_code <= 299) {
        # save response in a file
        if (!is.null(data_file)) {
          self$api_client$WriteFile(local_var_resp, data_file)
        }

        deserialized_resp_obj <- tryCatch(
          self$api_client$DeserializeResponse(local_var_resp, "PhotoPrediction"),
          error = function(e) {
            stop("Failed to deserialize response")
          }
        )
        local_var_resp$content <- deserialized_resp_obj
        return(local_var_resp)
      } 
      
      local_var_error_msg <- local_var_resp$response_as_text()      
      if (local_var_resp$status_code >= 300 && local_var_resp$status_code <= 399) {
        ApiResponse$new(paste("Server returned ", local_var_resp$status_code, " response status code."), local_var_resp)
      } else if (local_var_resp$status_code >= 400 && local_var_resp$status_code <= 499) {
        ApiResponse$new("API client error", local_var_resp)
      } else if (local_var_resp$status_code >= 500 && local_var_resp$status_code <= 599) {
        if (is.null(local_var_resp$response) || local_var_resp$response == "") {
          local_var_resp$response <- "API server error"
        }
        return(local_var_resp)
      }
    },

    #' @description
    #' 
    #'
    #' @param uuid 
    #' @param data_file (optional) name of the data file to save the result
    #' @param ... Other optional arguments
    #'
    #' @return PhotoPrediction
    prediction_retrieve = function(uuid, data_file = NULL, ...) {
      local_var_response <- self$prediction_retrieve_with_http_info(uuid, data_file = data_file, ...)
      if (local_var_response$status_code >= 200 && local_var_response$status_code <= 299) {
        return(local_var_response$content)
      } else if (local_var_response$status_code >= 300 && local_var_response$status_code <= 399) {
        return(local_var_response)
      } else if (local_var_response$status_code >= 400 && local_var_response$status_code <= 499) {
        return(local_var_response)
      } else if (local_var_response$status_code >= 500 && local_var_response$status_code <= 599) {
        return(local_var_response)
      }
    },

    #' @description
    #' 
    #'
    #' @param uuid 
    #' @param data_file (optional) name of the data file to save the result
    #' @param ... Other optional arguments
    #'
    #' @return API response (PhotoPrediction) with additional information such as HTTP status code, headers
    prediction_retrieve_with_http_info = function(uuid, data_file = NULL, ...) {
      args <- list(...)
      query_params <- list()
      header_params <- c()
      form_params <- list()
      file_params <- list()
      local_var_body <- NULL
      oauth_scopes <- NULL
      is_oauth <- FALSE

      if (missing(`uuid`)) {
        stop("Missing required parameter `uuid`.")
      }


      local_var_url_path <- "/photos/{uuid}/prediction/"
      if (!missing(`uuid`)) {
        local_var_url_path <- gsub("\\{uuid\\}", URLencode(as.character(`uuid`), reserved = TRUE), local_var_url_path)
      }

      # API key authentication
      if ("Authorization" %in% names(self$api_client$api_keys) && nchar(self$api_client$api_keys["Authorization"]) > 0) {
        header_params["Authorization"] <- paste(unlist(self$api_client$api_keys["Authorization"]), collapse = "")
      }
      # API key authentication
      # Bearer token
      if (!is.null(self$api_client$bearer_token)) {
        header_params["Authorization"] <- paste("Bearer", self$api_client$bearer_token, sep = " ")
      }

      # The Accept request HTTP header
      local_var_accepts <- list("application/json")

      # The Content-Type representation header
      local_var_content_types <- list()

      local_var_resp <- self$api_client$CallApi(url = paste0(self$api_client$base_path, local_var_url_path),
                                 method = "GET",
                                 query_params = query_params,
                                 header_params = header_params,
                                 form_params = form_params,
                                 file_params = file_params,
                                 accepts = local_var_accepts,
                                 content_types = local_var_content_types,
                                 body = local_var_body,
                                 is_oauth = is_oauth,
                                 oauth_scopes = oauth_scopes,
                                 ...)

      if (local_var_resp$status_code >= 200 && local_var_resp$status_code <= 299) {
        # save response in a file
        if (!is.null(data_file)) {
          self$api_client$WriteFile(local_var_resp, data_file)
        }

        deserialized_resp_obj <- tryCatch(
          self$api_client$DeserializeResponse(local_var_resp, "PhotoPrediction"),
          error = function(e) {
            stop("Failed to deserialize response")
          }
        )
        local_var_resp$content <- deserialized_resp_obj
        return(local_var_resp)
      } 
      
      local_var_error_msg <- local_var_resp$response_as_text()      
      if (local_var_resp$status_code >= 300 && local_var_resp$status_code <= 399) {
        ApiResponse$new(paste("Server returned ", local_var_resp$status_code, " response status code."), local_var_resp)
      } else if (local_var_resp$status_code >= 400 && local_var_resp$status_code <= 499) {
        ApiResponse$new("API client error", local_var_resp)
      } else if (local_var_resp$status_code >= 500 && local_var_resp$status_code <= 599) {
        if (is.null(local_var_resp$response) || local_var_resp$response == "") {
          local_var_resp$response <- "API server error"
        }
        return(local_var_resp)
      }
    },

    #' @description
    #' 
    #'
    #' @param uuid 
    #' @param photo_prediction_request 
    #' @param data_file (optional) name of the data file to save the result
    #' @param ... Other optional arguments
    #'
    #' @return PhotoPrediction
    prediction_update = function(uuid, photo_prediction_request, data_file = NULL, ...) {
      local_var_response <- self$prediction_update_with_http_info(uuid, photo_prediction_request, data_file = data_file, ...)
      if (local_var_response$status_code >= 200 && local_var_response$status_code <= 299) {
        return(local_var_response$content)
      } else if (local_var_response$status_code >= 300 && local_var_response$status_code <= 399) {
        return(local_var_response)
      } else if (local_var_response$status_code >= 400 && local_var_response$status_code <= 499) {
        return(local_var_response)
      } else if (local_var_response$status_code >= 500 && local_var_response$status_code <= 599) {
        return(local_var_response)
      }
    },

    #' @description
    #' 
    #'
    #' @param uuid 
    #' @param photo_prediction_request 
    #' @param data_file (optional) name of the data file to save the result
    #' @param ... Other optional arguments
    #'
    #' @return API response (PhotoPrediction) with additional information such as HTTP status code, headers
    prediction_update_with_http_info = function(uuid, photo_prediction_request, data_file = NULL, ...) {
      args <- list(...)
      query_params <- list()
      header_params <- c()
      form_params <- list()
      file_params <- list()
      local_var_body <- NULL
      oauth_scopes <- NULL
      is_oauth <- FALSE

      if (missing(`uuid`)) {
        stop("Missing required parameter `uuid`.")
      }

      if (missing(`photo_prediction_request`)) {
        stop("Missing required parameter `photo_prediction_request`.")
      }



      if (!is.null(`photo_prediction_request`)) {
        local_var_body <- `photo_prediction_request`$toJSONString()
      } else {
        local_var_body <- NULL
      }

      local_var_url_path <- "/photos/{uuid}/prediction/"
      if (!missing(`uuid`)) {
        local_var_url_path <- gsub("\\{uuid\\}", URLencode(as.character(`uuid`), reserved = TRUE), local_var_url_path)
      }

      # API key authentication
      if ("Authorization" %in% names(self$api_client$api_keys) && nchar(self$api_client$api_keys["Authorization"]) > 0) {
        header_params["Authorization"] <- paste(unlist(self$api_client$api_keys["Authorization"]), collapse = "")
      }
      # API key authentication
      # Bearer token
      if (!is.null(self$api_client$bearer_token)) {
        header_params["Authorization"] <- paste("Bearer", self$api_client$bearer_token, sep = " ")
      }

      # The Accept request HTTP header
      local_var_accepts <- list("application/json")

      # The Content-Type representation header
      local_var_content_types <- list("application/json", "application/x-www-form-urlencoded", "multipart/form-data")

      local_var_resp <- self$api_client$CallApi(url = paste0(self$api_client$base_path, local_var_url_path),
                                 method = "PUT",
                                 query_params = query_params,
                                 header_params = header_params,
                                 form_params = form_params,
                                 file_params = file_params,
                                 accepts = local_var_accepts,
                                 content_types = local_var_content_types,
                                 body = local_var_body,
                                 is_oauth = is_oauth,
                                 oauth_scopes = oauth_scopes,
                                 ...)

      if (local_var_resp$status_code >= 200 && local_var_resp$status_code <= 299) {
        # save response in a file
        if (!is.null(data_file)) {
          self$api_client$WriteFile(local_var_resp, data_file)
        }

        deserialized_resp_obj <- tryCatch(
          self$api_client$DeserializeResponse(local_var_resp, "PhotoPrediction"),
          error = function(e) {
            stop("Failed to deserialize response")
          }
        )
        local_var_resp$content <- deserialized_resp_obj
        return(local_var_resp)
      } 
      
      local_var_error_msg <- local_var_resp$response_as_text()      
      if (local_var_resp$status_code >= 300 && local_var_resp$status_code <= 399) {
        ApiResponse$new(paste("Server returned ", local_var_resp$status_code, " response status code."), local_var_resp)
      } else if (local_var_resp$status_code >= 400 && local_var_resp$status_code <= 499) {
        ApiResponse$new("API client error", local_var_resp)
      } else if (local_var_resp$status_code >= 500 && local_var_resp$status_code <= 599) {
        if (is.null(local_var_resp$response) || local_var_resp$response == "") {
          local_var_resp$response <- "API server error"
        }
        return(local_var_resp)
      }
    },

    #' @description
    #' 
    #'
    #' @param uuid 
    #' @param data_file (optional) name of the data file to save the result
    #' @param ... Other optional arguments
    #'
    #' @return Photo
    retrieve = function(uuid, data_file = NULL, ...) {
      local_var_response <- self$retrieve_with_http_info(uuid, data_file = data_file, ...)
      if (local_var_response$status_code >= 200 && local_var_response$status_code <= 299) {
        return(local_var_response$content)
      } else if (local_var_response$status_code >= 300 && local_var_response$status_code <= 399) {
        return(local_var_response)
      } else if (local_var_response$status_code >= 400 && local_var_response$status_code <= 499) {
        return(local_var_response)
      } else if (local_var_response$status_code >= 500 && local_var_response$status_code <= 599) {
        return(local_var_response)
      }
    },

    #' @description
    #' 
    #'
    #' @param uuid 
    #' @param data_file (optional) name of the data file to save the result
    #' @param ... Other optional arguments
    #'
    #' @return API response (Photo) with additional information such as HTTP status code, headers
    retrieve_with_http_info = function(uuid, data_file = NULL, ...) {
      args <- list(...)
      query_params <- list()
      header_params <- c()
      form_params <- list()
      file_params <- list()
      local_var_body <- NULL
      oauth_scopes <- NULL
      is_oauth <- FALSE

      if (missing(`uuid`)) {
        stop("Missing required parameter `uuid`.")
      }


      local_var_url_path <- "/photos/{uuid}/"
      if (!missing(`uuid`)) {
        local_var_url_path <- gsub("\\{uuid\\}", URLencode(as.character(`uuid`), reserved = TRUE), local_var_url_path)
      }

      # API key authentication
      if ("Authorization" %in% names(self$api_client$api_keys) && nchar(self$api_client$api_keys["Authorization"]) > 0) {
        header_params["Authorization"] <- paste(unlist(self$api_client$api_keys["Authorization"]), collapse = "")
      }
      # API key authentication
      # Bearer token
      if (!is.null(self$api_client$bearer_token)) {
        header_params["Authorization"] <- paste("Bearer", self$api_client$bearer_token, sep = " ")
      }

      # The Accept request HTTP header
      local_var_accepts <- list("application/json")

      # The Content-Type representation header
      local_var_content_types <- list()

      local_var_resp <- self$api_client$CallApi(url = paste0(self$api_client$base_path, local_var_url_path),
                                 method = "GET",
                                 query_params = query_params,
                                 header_params = header_params,
                                 form_params = form_params,
                                 file_params = file_params,
                                 accepts = local_var_accepts,
                                 content_types = local_var_content_types,
                                 body = local_var_body,
                                 is_oauth = is_oauth,
                                 oauth_scopes = oauth_scopes,
                                 ...)

      if (local_var_resp$status_code >= 200 && local_var_resp$status_code <= 299) {
        # save response in a file
        if (!is.null(data_file)) {
          self$api_client$WriteFile(local_var_resp, data_file)
        }

        deserialized_resp_obj <- tryCatch(
          self$api_client$DeserializeResponse(local_var_resp, "Photo"),
          error = function(e) {
            stop("Failed to deserialize response")
          }
        )
        local_var_resp$content <- deserialized_resp_obj
        return(local_var_resp)
      } 
      
      local_var_error_msg <- local_var_resp$response_as_text()      
      if (local_var_resp$status_code >= 300 && local_var_resp$status_code <= 399) {
        ApiResponse$new(paste("Server returned ", local_var_resp$status_code, " response status code."), local_var_resp)
      } else if (local_var_resp$status_code >= 400 && local_var_resp$status_code <= 499) {
        ApiResponse$new("API client error", local_var_resp)
      } else if (local_var_resp$status_code >= 500 && local_var_resp$status_code <= 599) {
        if (is.null(local_var_resp$response) || local_var_resp$response == "") {
          local_var_resp$response <- "API server error"
        }
        return(local_var_resp)
      }
    }
  )
)
