# MessagesApi

All URIs are relative to *https://api.mosquitoalert.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](MessagesApi.md#create) | **POST** /messages/ | 
[**list**](MessagesApi.md#list) | **GET** /messages/ | 
[**list_mine_sent**](MessagesApi.md#list_mine_sent) | **GET** /me/messages/sent/ | 
[**recipients_list**](MessagesApi.md#recipients_list) | **GET** /messages/{id}/recipients/ | 
[**recipients_stats_retrieve**](MessagesApi.md#recipients_stats_retrieve) | **GET** /messages/{id}/recipients/stats/ | 
[**retrieve**](MessagesApi.md#retrieve) | **GET** /messages/{id}/ | 
[**targeting_retrieve**](MessagesApi.md#targeting_retrieve) | **GET** /messages/{id}/targeting/ | 


# **create**
> Message create(meta_create_message_request = var.meta_create_message_request)



### Example
```R
library(MosquitoAlert)

# prepare function argument(s)
var_meta_create_message_request <- MetaCreateMessageRequest$new(CreateAudienceMessageContentRequest$new(LocalizedAudienceMessageTitleRequest$new("en_example", "bg_example", "bn_example", "ca_example", "de_example", "el_example", "es_example", "eu_example", "fr_example", "gl_example", "hr_example", "hu_example", "it_example", "lb_example", "mk_example", "nl_example", "pt_example", "ro_example", "sl_example", "sq_example", "sr_example", "sv_example", "tr_example", "zh-cn_example"), LocalizedAudienceMessageBodyRequest$new("en_example", "bg_example", "bn_example", "ca_example", "de_example", "el_example", "es_example", "eu_example", "fr_example", "gl_example", "hr_example", "hu_example", "it_example", "lb_example", "mk_example", "nl_example", "pt_example", "ro_example", "sl_example", "sq_example", "sr_example", "sv_example", "tr_example", "zh-cn_example")), "audience", c("user_uuids_example"), AudienceFilterRequest$new("last_login_before_example", "last_login_after_example", TODO, "en", c("notification_topics_example"))) # MetaCreateMessageRequest |  (Optional)

api_instance <- mosquitoalert_api$new()
# Configure API key authorization: tokenAuth
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
# Configure API key authorization: cookieAuth
# api_instance$api_client$api_keys["sessionid"] <- Sys.getenv("API_KEY")
# Configure HTTP bearer authorization: jwtAuth
# api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$create(meta_create_message_request = var_meta_create_message_requestdata_file = "result.txt")
result <- api_instance$messages_api$create(meta_create_message_request = var_meta_create_message_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **meta_create_message_request** | [**MetaCreateMessageRequest**](MetaCreateMessageRequest.md)|  | [optional] 

### Return type

[**Message**](Message.md)

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

# **list**
> PaginatedMessageListList list(order_by = var.order_by, page = var.page, page_size = var.page_size, recipient_uuids = var.recipient_uuids, target = var.target)



Get all messages sent by the current user. The content of the message is truncated to 100 words and the body is returned as plain text, without images or HTML tags. To retrieve the full content of a message, use the GET /messages/{id}/ endpoint.

### Example
```R
library(MosquitoAlert)

# prepare function argument(s)
var_order_by <- c("-created_at") # array[character] | Ordering   (Optional)
var_page <- 56 # integer | A page number within the paginated result set. (Optional)
var_page_size <- 56 # integer | Number of results to return per page. (Optional)
var_recipient_uuids <- c("inner_example") # array[character] | UUID randomly generated on phone to identify each unique user. Must be exactly 36 characters (32 hex digits plus 4 hyphens). (Optional)
var_target <- "target_example" # character | Filter messages by target audience. Use 'users' to filter messages sent to specific users, and 'audience' to filter messages sent to a broader audience.   (Optional)

api_instance <- mosquitoalert_api$new()
# Configure API key authorization: tokenAuth
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
# Configure API key authorization: cookieAuth
# api_instance$api_client$api_keys["sessionid"] <- Sys.getenv("API_KEY")
# Configure HTTP bearer authorization: jwtAuth
# api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$list(order_by = var_order_by, page = var_page, page_size = var_page_size, recipient_uuids = var_recipient_uuids, target = var_targetdata_file = "result.txt")
result <- api_instance$messages_api$list(order_by = var_order_by, page = var_page, page_size = var_page_size, recipient_uuids = var_recipient_uuids, target = var_target)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order_by** | Enum [-created_at, created_at] | Ordering   | [optional] 
 **page** | **integer**| A page number within the paginated result set. | [optional] 
 **page_size** | **integer**| Number of results to return per page. | [optional] 
 **recipient_uuids** | list( **character** )| UUID randomly generated on phone to identify each unique user. Must be exactly 36 characters (32 hex digits plus 4 hyphens). | [optional] 
 **target** | Enum [audience, users] | Filter messages by target audience. Use &#39;users&#39; to filter messages sent to specific users, and &#39;audience&#39; to filter messages sent to a broader audience.   | [optional] 

### Return type

[**PaginatedMessageListList**](PaginatedMessageListList.md)

### Authorization

[tokenAuth](../README.md#tokenAuth), [cookieAuth](../README.md#cookieAuth), [jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **400** |  |  -  |
| **401** |  |  -  |
| **403** |  |  -  |
| **404** |  |  -  |
| **200** |  |  -  |

# **list_mine_sent**
> PaginatedMessageListList list_mine_sent(order_by = var.order_by, page = var.page, page_size = var.page_size, recipient_uuids = var.recipient_uuids, target = var.target)



Get current user's sent messages

### Example
```R
library(MosquitoAlert)

# prepare function argument(s)
var_order_by <- c("-created_at") # array[character] | Ordering   (Optional)
var_page <- 56 # integer | A page number within the paginated result set. (Optional)
var_page_size <- 56 # integer | Number of results to return per page. (Optional)
var_recipient_uuids <- c("inner_example") # array[character] | UUID randomly generated on phone to identify each unique user. Must be exactly 36 characters (32 hex digits plus 4 hyphens). (Optional)
var_target <- "target_example" # character | Filter messages by target audience. Use 'users' to filter messages sent to specific users, and 'audience' to filter messages sent to a broader audience.   (Optional)

api_instance <- mosquitoalert_api$new()
# Configure API key authorization: tokenAuth
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
# Configure API key authorization: cookieAuth
# api_instance$api_client$api_keys["sessionid"] <- Sys.getenv("API_KEY")
# Configure HTTP bearer authorization: jwtAuth
# api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$list_mine_sent(order_by = var_order_by, page = var_page, page_size = var_page_size, recipient_uuids = var_recipient_uuids, target = var_targetdata_file = "result.txt")
result <- api_instance$messages_api$list_mine_sent(order_by = var_order_by, page = var_page, page_size = var_page_size, recipient_uuids = var_recipient_uuids, target = var_target)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order_by** | Enum [-created_at, created_at] | Ordering   | [optional] 
 **page** | **integer**| A page number within the paginated result set. | [optional] 
 **page_size** | **integer**| Number of results to return per page. | [optional] 
 **recipient_uuids** | list( **character** )| UUID randomly generated on phone to identify each unique user. Must be exactly 36 characters (32 hex digits plus 4 hyphens). | [optional] 
 **target** | Enum [audience, users] | Filter messages by target audience. Use &#39;users&#39; to filter messages sent to specific users, and &#39;audience&#39; to filter messages sent to a broader audience.   | [optional] 

### Return type

[**PaginatedMessageListList**](PaginatedMessageListList.md)

### Authorization

[tokenAuth](../README.md#tokenAuth), [cookieAuth](../README.md#cookieAuth), [jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **400** |  |  -  |
| **401** |  |  -  |
| **403** |  |  -  |
| **404** |  |  -  |
| **200** |  |  -  |

# **recipients_list**
> PaginatedMessageRecipientList recipients_list(id, page = var.page, page_size = var.page_size)



### Example
```R
library(MosquitoAlert)

# prepare function argument(s)
var_id <- 56 # integer | A unique integer value identifying this notification.
var_page <- 56 # integer | A page number within the paginated result set. (Optional)
var_page_size <- 56 # integer | Number of results to return per page. (Optional)

api_instance <- mosquitoalert_api$new()
# Configure API key authorization: tokenAuth
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
# Configure API key authorization: cookieAuth
# api_instance$api_client$api_keys["sessionid"] <- Sys.getenv("API_KEY")
# Configure HTTP bearer authorization: jwtAuth
# api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$recipients_list(var_id, page = var_page, page_size = var_page_sizedata_file = "result.txt")
result <- api_instance$messages_api$recipients_list(var_id, page = var_page, page_size = var_page_size)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **integer**| A unique integer value identifying this notification. | 
 **page** | **integer**| A page number within the paginated result set. | [optional] 
 **page_size** | **integer**| Number of results to return per page. | [optional] 

### Return type

[**PaginatedMessageRecipientList**](PaginatedMessageRecipientList.md)

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

# **recipients_stats_retrieve**
> MessageRecipientStats recipients_stats_retrieve(id)



### Example
```R
library(MosquitoAlert)

# prepare function argument(s)
var_id <- 56 # integer | A unique integer value identifying this notification.

api_instance <- mosquitoalert_api$new()
# Configure API key authorization: tokenAuth
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
# Configure API key authorization: cookieAuth
# api_instance$api_client$api_keys["sessionid"] <- Sys.getenv("API_KEY")
# Configure HTTP bearer authorization: jwtAuth
# api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$recipients_stats_retrieve(var_iddata_file = "result.txt")
result <- api_instance$messages_api$recipients_stats_retrieve(var_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **integer**| A unique integer value identifying this notification. | 

### Return type

[**MessageRecipientStats**](MessageRecipientStats.md)

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

# **retrieve**
> Message retrieve(id)



### Example
```R
library(MosquitoAlert)

# prepare function argument(s)
var_id <- 56 # integer | A unique integer value identifying this notification.

api_instance <- mosquitoalert_api$new()
# Configure API key authorization: tokenAuth
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
# Configure API key authorization: cookieAuth
# api_instance$api_client$api_keys["sessionid"] <- Sys.getenv("API_KEY")
# Configure HTTP bearer authorization: jwtAuth
# api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$retrieve(var_iddata_file = "result.txt")
result <- api_instance$messages_api$retrieve(var_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **integer**| A unique integer value identifying this notification. | 

### Return type

[**Message**](Message.md)

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

# **targeting_retrieve**
> MessageTargeting targeting_retrieve(id)



### Example
```R
library(MosquitoAlert)

# prepare function argument(s)
var_id <- 56 # integer | A unique integer value identifying this notification.

api_instance <- mosquitoalert_api$new()
# Configure API key authorization: tokenAuth
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
# Configure API key authorization: cookieAuth
# api_instance$api_client$api_keys["sessionid"] <- Sys.getenv("API_KEY")
# Configure HTTP bearer authorization: jwtAuth
# api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$targeting_retrieve(var_iddata_file = "result.txt")
result <- api_instance$messages_api$targeting_retrieve(var_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **integer**| A unique integer value identifying this notification. | 

### Return type

[**MessageTargeting**](MessageTargeting.md)

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

