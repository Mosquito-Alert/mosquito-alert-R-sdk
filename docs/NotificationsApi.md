# NotificationsApi

All URIs are relative to *https://api.mosquitoalert.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**notifications_create**](NotificationsApi.md#notifications_create) | **POST** /notifications/ | 
[**notifications_list**](NotificationsApi.md#notifications_list) | **GET** /notifications/ | 
[**notifications_partial_update**](NotificationsApi.md#notifications_partial_update) | **PATCH** /notifications/{id}/ | 
[**notifications_retrieve**](NotificationsApi.md#notifications_retrieve) | **GET** /notifications/{id}/ | 
[**notifications_update**](NotificationsApi.md#notifications_update) | **PUT** /notifications/{id}/ | 


# **notifications_create**
> array[CreateNotification] notifications_create(meta_notification_request = var.meta_notification_request)



### Example
```R
library(MosquitoAlert)

# prepare function argument(s)
var_meta_notification_request <- MetaNotificationRequest$new("user", CreateNotificationMessageRequest$new(LocalizedFieldRequest$new("en_example", "bg_example", "bn_example", "ca_example", "de_example", "el_example", "es_example", "eu_example", "fr_example", "gl_example", "hr_example", "hu_example", "it_example", "lb_example", "mk_example", "nl_example", "pt_example", "ro_example", "sl_example", "sq_example", "sr_example", "sv_example", "tr_example", "zh-CN_example"), LocalizedFieldRequest$new("en_example", "bg_example", "bn_example", "ca_example", "de_example", "el_example", "es_example", "eu_example", "fr_example", "gl_example", "hr_example", "hu_example", "it_example", "lb_example", "mk_example", "nl_example", "pt_example", "ro_example", "sl_example", "sq_example", "sr_example", "sv_example", "tr_example", "zh-CN_example")), c("user_uuids_example"), c("topic_codes_example")) # MetaNotificationRequest |  (Optional)

api_instance <- mosquitoalert_api$new()
# Configure API key authorization: cookieAuth
api_instance$api_client$api_keys["sessionid"] <- Sys.getenv("API_KEY")
# Configure API key authorization: tokenAuth
# api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
# Configure HTTP bearer authorization: jwtAuth
# api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$notifications_create(meta_notification_request = var_meta_notification_requestdata_file = "result.txt")
result <- api_instance$notifications_api$notifications_create(meta_notification_request = var_meta_notification_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **meta_notification_request** | [**MetaNotificationRequest**](MetaNotificationRequest.md)|  | [optional] 

### Return type

[**array[CreateNotification]**](CreateNotification.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [tokenAuth](../README.md#tokenAuth), [jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** |  |  -  |

# **notifications_list**
> PaginatedNotificationList notifications_list(is_read = var.is_read, order_by = var.order_by, page = var.page, page_size = var.page_size)



### Example
```R
library(MosquitoAlert)

# prepare function argument(s)
var_is_read <- "is_read_example" # character |  (Optional)
var_order_by <- c("-created_at") # array[character] | Ordenado   (Optional)
var_page <- 56 # integer | A page number within the paginated result set. (Optional)
var_page_size <- 56 # integer | Number of results to return per page. (Optional)

api_instance <- mosquitoalert_api$new()
# Configure API key authorization: cookieAuth
api_instance$api_client$api_keys["sessionid"] <- Sys.getenv("API_KEY")
# Configure API key authorization: tokenAuth
# api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
# Configure HTTP bearer authorization: jwtAuth
# api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$notifications_list(is_read = var_is_read, order_by = var_order_by, page = var_page, page_size = var_page_sizedata_file = "result.txt")
result <- api_instance$notifications_api$notifications_list(is_read = var_is_read, order_by = var_order_by, page = var_page, page_size = var_page_size)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **is_read** | **character**|  | [optional] 
 **order_by** | Enum [-created_at, created_at] | Ordenado   | [optional] 
 **page** | **integer**| A page number within the paginated result set. | [optional] 
 **page_size** | **integer**| Number of results to return per page. | [optional] 

### Return type

[**PaginatedNotificationList**](PaginatedNotificationList.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [tokenAuth](../README.md#tokenAuth), [jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** |  |  -  |

# **notifications_partial_update**
> Notification notifications_partial_update(id, patched_notification_request = var.patched_notification_request)



### Example
```R
library(MosquitoAlert)

# prepare function argument(s)
var_id <- 56 # integer | A unique integer value identifying this notification.
var_patched_notification_request <- PatchedNotificationRequest$new("is_read_example") # PatchedNotificationRequest |  (Optional)

api_instance <- mosquitoalert_api$new()
# Configure API key authorization: cookieAuth
api_instance$api_client$api_keys["sessionid"] <- Sys.getenv("API_KEY")
# Configure API key authorization: tokenAuth
# api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
# Configure HTTP bearer authorization: jwtAuth
# api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$notifications_partial_update(var_id, patched_notification_request = var_patched_notification_requestdata_file = "result.txt")
result <- api_instance$notifications_api$notifications_partial_update(var_id, patched_notification_request = var_patched_notification_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **integer**| A unique integer value identifying this notification. | 
 **patched_notification_request** | [**PatchedNotificationRequest**](PatchedNotificationRequest.md)|  | [optional] 

### Return type

[**Notification**](Notification.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [tokenAuth](../README.md#tokenAuth), [jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** |  |  -  |

# **notifications_retrieve**
> Notification notifications_retrieve(id)



### Example
```R
library(MosquitoAlert)

# prepare function argument(s)
var_id <- 56 # integer | A unique integer value identifying this notification.

api_instance <- mosquitoalert_api$new()
# Configure API key authorization: cookieAuth
api_instance$api_client$api_keys["sessionid"] <- Sys.getenv("API_KEY")
# Configure API key authorization: tokenAuth
# api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
# Configure HTTP bearer authorization: jwtAuth
# api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$notifications_retrieve(var_iddata_file = "result.txt")
result <- api_instance$notifications_api$notifications_retrieve(var_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **integer**| A unique integer value identifying this notification. | 

### Return type

[**Notification**](Notification.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [tokenAuth](../README.md#tokenAuth), [jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** |  |  -  |

# **notifications_update**
> Notification notifications_update(id, notification_request)



### Example
```R
library(MosquitoAlert)

# prepare function argument(s)
var_id <- 56 # integer | A unique integer value identifying this notification.
var_notification_request <- NotificationRequest$new("is_read_example") # NotificationRequest | 

api_instance <- mosquitoalert_api$new()
# Configure API key authorization: cookieAuth
api_instance$api_client$api_keys["sessionid"] <- Sys.getenv("API_KEY")
# Configure API key authorization: tokenAuth
# api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
# Configure HTTP bearer authorization: jwtAuth
# api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$notifications_update(var_id, var_notification_requestdata_file = "result.txt")
result <- api_instance$notifications_api$notifications_update(var_id, var_notification_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **integer**| A unique integer value identifying this notification. | 
 **notification_request** | [**NotificationRequest**](NotificationRequest.md)|  | 

### Return type

[**Notification**](Notification.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [tokenAuth](../README.md#tokenAuth), [jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** |  |  -  |

