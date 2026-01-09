# PingApi

All URIs are relative to *https://api.mosquitoalert.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**retrieve**](PingApi.md#retrieve) | **GET** /ping/ | 


# **retrieve**
> retrieve()



Simple ping endpoint to check API connectivity

### Example
```R
library(MosquitoAlert)


api_instance <- mosquitoalert_api$new()
api_instance$ping_api$retrieve()
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **404** |  |  -  |
| **204** | No response body |  -  |

