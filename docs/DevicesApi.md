# DevicesApi

All URIs are relative to *https://api.mosquitoalert.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**devices_create**](DevicesApi.md#devices_create) | **POST** /devices/ | 
[**devices_partial_update**](DevicesApi.md#devices_partial_update) | **PATCH** /devices/{device_id}/ | 
[**devices_retrieve**](DevicesApi.md#devices_retrieve) | **GET** /devices/{device_id}/ | 
[**devices_update**](DevicesApi.md#devices_update) | **PUT** /devices/{device_id}/ | 


# **devices_create**
> Device devices_create(device_request)



### Example
```R
library(MosquitoAlert)

# prepare function argument(s)
var_device_request <- DeviceRequest$new("device_id_example", "fcm_token_example", "ios", "model_example", DeviceOsRequest$new("name_example", "version_example", "locale_example"), "name_example", "manufacturer_example", MobileAppRequest$new("package_name_example", "package_version_example")) # DeviceRequest | 

api_instance <- mosquitoalert_api$new()
# Configure HTTP bearer authorization: jwtAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$devices_create(var_device_requestdata_file = "result.txt")
result <- api_instance$devices_api$devices_create(var_device_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **device_request** | [**DeviceRequest**](DeviceRequest.md)|  | 

### Return type

[**Device**](Device.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** |  |  -  |

# **devices_partial_update**
> DeviceUpdate devices_partial_update(device_id, patched_device_update_request = var.patched_device_update_request)



### Example
```R
library(MosquitoAlert)

# prepare function argument(s)
var_device_id <- "device_id_example" # character | 
var_patched_device_update_request <- PatchedDeviceUpdateRequest$new("name_example", "fcm_token_example", DeviceOsRequest$new("name_example", "version_example", "locale_example"), MobileAppRequest$new("package_name_example", "package_version_example")) # PatchedDeviceUpdateRequest |  (Optional)

api_instance <- mosquitoalert_api$new()
# Configure HTTP bearer authorization: jwtAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$devices_partial_update(var_device_id, patched_device_update_request = var_patched_device_update_requestdata_file = "result.txt")
result <- api_instance$devices_api$devices_partial_update(var_device_id, patched_device_update_request = var_patched_device_update_request)
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

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** |  |  -  |

# **devices_retrieve**
> Device devices_retrieve(device_id)



### Example
```R
library(MosquitoAlert)

# prepare function argument(s)
var_device_id <- "device_id_example" # character | 

api_instance <- mosquitoalert_api$new()
# Configure HTTP bearer authorization: jwtAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$devices_retrieve(var_device_iddata_file = "result.txt")
result <- api_instance$devices_api$devices_retrieve(var_device_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **device_id** | **character**|  | 

### Return type

[**Device**](Device.md)

### Authorization

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** |  |  -  |

# **devices_update**
> DeviceUpdate devices_update(device_id, device_update_request)



### Example
```R
library(MosquitoAlert)

# prepare function argument(s)
var_device_id <- "device_id_example" # character | 
var_device_update_request <- DeviceUpdateRequest$new("fcm_token_example", DeviceOsRequest$new("name_example", "version_example", "locale_example"), "name_example", MobileAppRequest$new("package_name_example", "package_version_example")) # DeviceUpdateRequest | 

api_instance <- mosquitoalert_api$new()
# Configure HTTP bearer authorization: jwtAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$devices_update(var_device_id, var_device_update_requestdata_file = "result.txt")
result <- api_instance$devices_api$devices_update(var_device_id, var_device_update_request)
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

[jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** |  |  -  |

