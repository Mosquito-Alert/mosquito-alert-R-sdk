# CountriesApi

All URIs are relative to *https://api.mosquitoalert.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**retrieve**](CountriesApi.md#retrieve) | **GET** /countries/{id}/ | 


# **retrieve**
> Country retrieve(id)



### Example
```R
library(MosquitoAlert)

# prepare function argument(s)
var_id <- 56 # integer | A unique integer value identifying this europe country.

api_instance <- mosquitoalert_api$new()
# Configure API key authorization: tokenAuth
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
# Configure API key authorization: cookieAuth
# api_instance$api_client$api_keys["sessionid"] <- Sys.getenv("API_KEY")
# Configure HTTP bearer authorization: jwtAuth
# api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$retrieve(var_iddata_file = "result.txt")
result <- api_instance$countries_api$retrieve(var_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **integer**| A unique integer value identifying this europe country. | 

### Return type

[**Country**](Country.md)

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

