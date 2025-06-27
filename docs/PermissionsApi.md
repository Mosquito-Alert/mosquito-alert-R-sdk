# PermissionsApi

All URIs are relative to *https://api.mosquitoalert.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**retrieve_mine**](PermissionsApi.md#retrieve_mine) | **GET** /me/permissions/ | 


# **retrieve_mine**
> UserPermission retrieve_mine()



Get Current User's Permissions

### Example
```R
library(MosquitoAlert)


api_instance <- mosquitoalert_api$new()
# Configure API key authorization: tokenAuth
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
# Configure API key authorization: cookieAuth
# api_instance$api_client$api_keys["sessionid"] <- Sys.getenv("API_KEY")
# Configure HTTP bearer authorization: jwtAuth
# api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$retrieve_mine(data_file = "result.txt")
result <- api_instance$permissions_api$retrieve_mine()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**UserPermission**](UserPermission.md)

### Authorization

[tokenAuth](../README.md#tokenAuth), [cookieAuth](../README.md#cookieAuth), [jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **401** |  |  -  |
| **404** |  |  -  |
| **200** |  |  -  |

