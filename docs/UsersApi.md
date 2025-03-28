# UsersApi

All URIs are relative to *https://api.mosquitoalert.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**partial_update**](UsersApi.md#partial_update) | **PATCH** /users/{uuid}/ | 
[**retrieve**](UsersApi.md#retrieve) | **GET** /users/{uuid}/ | 
[**retrieve_mine**](UsersApi.md#retrieve_mine) | **GET** /me/ | 
[**update**](UsersApi.md#update) | **PUT** /users/{uuid}/ | 


# **partial_update**
> User partial_update(uuid, patched_user_request = var.patched_user_request)



### Example
```R
library(MosquitoAlert)

# prepare function argument(s)
var_uuid <- "uuid_example" # character | 
var_patched_user_request <- PatchedUserRequest$new("es") # PatchedUserRequest |  (Optional)

api_instance <- mosquitoalert_api$new()
# Configure API key authorization: tokenAuth
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
# Configure API key authorization: cookieAuth
# api_instance$api_client$api_keys["sessionid"] <- Sys.getenv("API_KEY")
# Configure HTTP bearer authorization: jwtAuth
# api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$partial_update(var_uuid, patched_user_request = var_patched_user_requestdata_file = "result.txt")
result <- api_instance$users_api$partial_update(var_uuid, patched_user_request = var_patched_user_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **character**|  | 
 **patched_user_request** | [**PatchedUserRequest**](PatchedUserRequest.md)|  | [optional] 

### Return type

[**User**](User.md)

### Authorization

[tokenAuth](../README.md#tokenAuth), [cookieAuth](../README.md#cookieAuth), [jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **400** |  |  -  |
| **401** |  |  -  |
| **403** |  |  -  |
| **404** |  |  -  |
| **200** |  |  -  |

# **retrieve**
> User retrieve(uuid)



### Example
```R
library(MosquitoAlert)

# prepare function argument(s)
var_uuid <- "uuid_example" # character | 

api_instance <- mosquitoalert_api$new()
# Configure API key authorization: tokenAuth
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
# Configure API key authorization: cookieAuth
# api_instance$api_client$api_keys["sessionid"] <- Sys.getenv("API_KEY")
# Configure HTTP bearer authorization: jwtAuth
# api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$retrieve(var_uuiddata_file = "result.txt")
result <- api_instance$users_api$retrieve(var_uuid)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **character**|  | 

### Return type

[**User**](User.md)

### Authorization

[tokenAuth](../README.md#tokenAuth), [cookieAuth](../README.md#cookieAuth), [jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **401** |  |  -  |
| **403** |  |  -  |
| **404** |  |  -  |
| **200** |  |  -  |

# **retrieve_mine**
> User retrieve_mine()



Get Current User's Profile

### Example
```R
library(MosquitoAlert)


api_instance <- mosquitoalert_api$new()
# Configure HTTP bearer authorization: jwtAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$retrieve_mine(data_file = "result.txt")
result <- api_instance$users_api$retrieve_mine()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**User**](User.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **401** |  |  -  |
| **403** |  |  -  |
| **404** |  |  -  |
| **200** |  |  -  |

# **update**
> User update(uuid, user_request = var.user_request)



### Example
```R
library(MosquitoAlert)

# prepare function argument(s)
var_uuid <- "uuid_example" # character | 
var_user_request <- UserRequest$new("es") # UserRequest |  (Optional)

api_instance <- mosquitoalert_api$new()
# Configure API key authorization: tokenAuth
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
# Configure API key authorization: cookieAuth
# api_instance$api_client$api_keys["sessionid"] <- Sys.getenv("API_KEY")
# Configure HTTP bearer authorization: jwtAuth
# api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$update(var_uuid, user_request = var_user_requestdata_file = "result.txt")
result <- api_instance$users_api$update(var_uuid, user_request = var_user_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **character**|  | 
 **user_request** | [**UserRequest**](UserRequest.md)|  | [optional] 

### Return type

[**User**](User.md)

### Authorization

[tokenAuth](../README.md#tokenAuth), [cookieAuth](../README.md#cookieAuth), [jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **400** |  |  -  |
| **401** |  |  -  |
| **403** |  |  -  |
| **404** |  |  -  |
| **200** |  |  -  |

