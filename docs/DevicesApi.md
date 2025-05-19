# DevicesApi

All URIs are relative to *https://api.mosquitoalert.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](DevicesApi.md#create) | **POST** /devices/ | 
[**partial_update**](DevicesApi.md#partial_update) | **PATCH** /devices/{device_id}/ | 
[**retrieve**](DevicesApi.md#retrieve) | **GET** /devices/{device_id}/ | 
[**update**](DevicesApi.md#update) | **PUT** /devices/{device_id}/ | 


# **create**
> Device create(device_request)



### Example
```R
library(MosquitoAlert)

# prepare function argument(s)
var_device_request <- DeviceRequest$new("device_id_example", "fcm_token_example", "ios", "model_example", DeviceOsRequest$new("name_example", "version_example", "locale_example"), "name_example", "manufacturer_example", MobileAppRequest$new("package_name_example", "package_version_example")) # DeviceRequest | 

api_instance <- mosquitoalert_api$new()
# Configure API key authorization: tokenAuth
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
# Configure API key authorization: cookieAuth
# api_instance$api_client$api_keys["sessionid"] <- Sys.getenv("API_KEY")
# Configure HTTP bearer authorization: jwtAuth
# api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$create(var_device_requestdata_file = "result.txt")
result <- api_instance$devices_api$create(var_device_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **device_request** | [**DeviceRequest**](DeviceRequest.md)|  | 

### Return type

[**Device**](Device.md)

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
| **201** |  |  -  |

# **partial_update**
> DeviceUpdate partial_update(device_id, patched_device_update_request = var.patched_device_update_request)



### Example
```R
library(MosquitoAlert)

# prepare function argument(s)
var_device_id <- "device_id_example" # character | 
var_patched_device_update_request <- PatchedDeviceUpdateRequest$new("name_example", "fcm_token_example", DeviceOsRequest$new("name_example", "version_example", "locale_example"), MobileAppRequest$new("package_name_example", "package_version_example")) # PatchedDeviceUpdateRequest |  (Optional)

api_instance <- mosquitoalert_api$new()
# Configure API key authorization: tokenAuth
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
# Configure API key authorization: cookieAuth
# api_instance$api_client$api_keys["sessionid"] <- Sys.getenv("API_KEY")
# Configure HTTP bearer authorization: jwtAuth
# api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$partial_update(var_device_id, patched_device_update_request = var_patched_device_update_requestdata_file = "result.txt")
result <- api_instance$devices_api$partial_update(var_device_id, patched_device_update_request = var_patched_device_update_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **device_id** | **character**|  | 
 **patched_device_update_request** | [**PatchedDeviceUpdateRequest**](PatchedDeviceUpdateRequest.md)|  | [optional] 

### Return type

[**DeviceUpdate**](DeviceUpdate.md)

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
> Device retrieve(device_id)



### Example
```R
library(MosquitoAlert)

# prepare function argument(s)
var_device_id <- "device_id_example" # character | 

api_instance <- mosquitoalert_api$new()
# Configure API key authorization: tokenAuth
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
# Configure API key authorization: cookieAuth
# api_instance$api_client$api_keys["sessionid"] <- Sys.getenv("API_KEY")
# Configure HTTP bearer authorization: jwtAuth
# api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$retrieve(var_device_iddata_file = "result.txt")
result <- api_instance$devices_api$retrieve(var_device_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **device_id** | **character**|  | 

### Return type

[**Device**](Device.md)

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

# **update**
> DeviceUpdate update(device_id, device_update_request)



### Example
```R
library(MosquitoAlert)

# prepare function argument(s)
var_device_id <- "device_id_example" # character | 
var_device_update_request <- DeviceUpdateRequest$new("fcm_token_example", DeviceOsRequest$new("name_example", "version_example", "locale_example"), "name_example", MobileAppRequest$new("package_name_example", "package_version_example")) # DeviceUpdateRequest | 

api_instance <- mosquitoalert_api$new()
# Configure API key authorization: tokenAuth
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
# Configure API key authorization: cookieAuth
# api_instance$api_client$api_keys["sessionid"] <- Sys.getenv("API_KEY")
# Configure HTTP bearer authorization: jwtAuth
# api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$update(var_device_id, var_device_update_requestdata_file = "result.txt")
result <- api_instance$devices_api$update(var_device_id, var_device_update_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **device_id** | **character**|  | 
 **device_update_request** | [**DeviceUpdateRequest**](DeviceUpdateRequest.md)|  | 

### Return type

[**DeviceUpdate**](DeviceUpdate.md)

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

