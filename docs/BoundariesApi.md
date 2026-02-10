# BoundariesApi

All URIs are relative to *https://api.mosquitoalert.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_temporary**](BoundariesApi.md#create_temporary) | **POST** /boundaries/ | 


# **create_temporary**
> TemporaryBoundary create_temporary(temporary_boundary_request)



Create a temporary boundary

### Example
```R
library(MosquitoAlert)

# prepare function argument(s)
var_temporary_boundary_request <- TemporaryBoundaryRequest$new(TODO) # TemporaryBoundaryRequest | 

api_instance <- mosquitoalert_api$new()
# Configure API key authorization: tokenAuth
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
# Configure API key authorization: cookieAuth
# api_instance$api_client$api_keys["sessionid"] <- Sys.getenv("API_KEY")
# Configure HTTP bearer authorization: jwtAuth
# api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$create_temporary(var_temporary_boundary_requestdata_file = "result.txt")
result <- api_instance$boundaries_api$create_temporary(var_temporary_boundary_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **temporary_boundary_request** | [**TemporaryBoundaryRequest**](TemporaryBoundaryRequest.md)|  | 

### Return type

[**TemporaryBoundary**](TemporaryBoundary.md)

### Authorization

[tokenAuth](../README.md#tokenAuth), [cookieAuth](../README.md#cookieAuth), [jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **400** |  |  -  |
| **401** |  |  -  |
| **404** |  |  -  |
| **201** |  |  -  |

