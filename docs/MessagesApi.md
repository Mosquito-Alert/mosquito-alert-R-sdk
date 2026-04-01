# MessagesApi

All URIs are relative to *https://api.mosquitoalert.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](MessagesApi.md#create) | **POST** /messages/ | 
[**list**](MessagesApi.md#list) | **GET** /messages/ | 
[**list_mine_sent**](MessagesApi.md#list_mine_sent) | **GET** /me/messages/sent/ | 
[**recipients_list**](MessagesApi.md#recipients_list) | **GET** /messages/{id}/recipients/ | 
[**retrieve**](MessagesApi.md#retrieve) | **GET** /messages/{id}/ | 
[**topics_list**](MessagesApi.md#topics_list) | **GET** /messages/topics/ | 
[**topics_retrieve**](MessagesApi.md#topics_retrieve) | **GET** /messages/topics/{code}/ | 
[**topics_send**](MessagesApi.md#topics_send) | **POST** /messages/topics/{code}/send/ | 


# **create**
> CreateUserMessage create(create_user_message_request)



### Example
```R
library(MosquitoAlert)

# prepare function argument(s)
var_create_user_message_request <- CreateUserMessageRequest$new(c("user_uuids_example"), MessageContentRequest$new(LocalizedMessageTitleRequest$new("bg_example", "bn_example", "ca_example", "de_example", "el_example", "en_example", "es_example", "eu_example", "fr_example", "gl_example", "hr_example", "hu_example", "it_example", "lb_example", "mk_example", "nl_example", "pt_example", "ro_example", "sl_example", "sq_example", "sr_example", "sv_example", "tr_example", "zh-CN_example"), LocalizedMessageBodyRequest$new("bg_example", "bn_example", "ca_example", "de_example", "el_example", "en_example", "es_example", "eu_example", "fr_example", "gl_example", "hr_example", "hu_example", "it_example", "lb_example", "mk_example", "nl_example", "pt_example", "ro_example", "sl_example", "sq_example", "sr_example", "sv_example", "tr_example", "zh-CN_example"))) # CreateUserMessageRequest | 

api_instance <- mosquitoalert_api$new()
# Configure API key authorization: tokenAuth
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
# Configure API key authorization: cookieAuth
# api_instance$api_client$api_keys["sessionid"] <- Sys.getenv("API_KEY")
# Configure HTTP bearer authorization: jwtAuth
# api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$create(var_create_user_message_requestdata_file = "result.txt")
result <- api_instance$messages_api$create(var_create_user_message_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_user_message_request** | [**CreateUserMessageRequest**](CreateUserMessageRequest.md)|  | 

### Return type

[**CreateUserMessage**](CreateUserMessage.md)

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
> PaginatedMessageList list(order_by = var.order_by, page = var.page, page_size = var.page_size, recipient_uuids = var.recipient_uuids)



### Example
```R
library(MosquitoAlert)

# prepare function argument(s)
var_order_by <- c("-created_at") # array[character] | Ordering   (Optional)
var_page <- 56 # integer | A page number within the paginated result set. (Optional)
var_page_size <- 56 # integer | Number of results to return per page. (Optional)
var_recipient_uuids <- c("inner_example") # array[character] | UUID randomly generated on phone to identify each unique user. Must be exactly 36 characters (32 hex digits plus 4 hyphens). (Optional)

api_instance <- mosquitoalert_api$new()
# Configure API key authorization: tokenAuth
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
# Configure API key authorization: cookieAuth
# api_instance$api_client$api_keys["sessionid"] <- Sys.getenv("API_KEY")
# Configure HTTP bearer authorization: jwtAuth
# api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$list(order_by = var_order_by, page = var_page, page_size = var_page_size, recipient_uuids = var_recipient_uuidsdata_file = "result.txt")
result <- api_instance$messages_api$list(order_by = var_order_by, page = var_page, page_size = var_page_size, recipient_uuids = var_recipient_uuids)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order_by** | Enum [-created_at, created_at] | Ordering   | [optional] 
 **page** | **integer**| A page number within the paginated result set. | [optional] 
 **page_size** | **integer**| Number of results to return per page. | [optional] 
 **recipient_uuids** | list( **character** )| UUID randomly generated on phone to identify each unique user. Must be exactly 36 characters (32 hex digits plus 4 hyphens). | [optional] 

### Return type

[**PaginatedMessageList**](PaginatedMessageList.md)

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
> PaginatedMessageList list_mine_sent(order_by = var.order_by, page = var.page, page_size = var.page_size, recipient_uuids = var.recipient_uuids)



Get current user's sent messages

### Example
```R
library(MosquitoAlert)

# prepare function argument(s)
var_order_by <- c("-created_at") # array[character] | Ordering   (Optional)
var_page <- 56 # integer | A page number within the paginated result set. (Optional)
var_page_size <- 56 # integer | Number of results to return per page. (Optional)
var_recipient_uuids <- c("inner_example") # array[character] | UUID randomly generated on phone to identify each unique user. Must be exactly 36 characters (32 hex digits plus 4 hyphens). (Optional)

api_instance <- mosquitoalert_api$new()
# Configure API key authorization: tokenAuth
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
# Configure API key authorization: cookieAuth
# api_instance$api_client$api_keys["sessionid"] <- Sys.getenv("API_KEY")
# Configure HTTP bearer authorization: jwtAuth
# api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$list_mine_sent(order_by = var_order_by, page = var_page, page_size = var_page_size, recipient_uuids = var_recipient_uuidsdata_file = "result.txt")
result <- api_instance$messages_api$list_mine_sent(order_by = var_order_by, page = var_page, page_size = var_page_size, recipient_uuids = var_recipient_uuids)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order_by** | Enum [-created_at, created_at] | Ordering   | [optional] 
 **page** | **integer**| A page number within the paginated result set. | [optional] 
 **page_size** | **integer**| Number of results to return per page. | [optional] 
 **recipient_uuids** | list( **character** )| UUID randomly generated on phone to identify each unique user. Must be exactly 36 characters (32 hex digits plus 4 hyphens). | [optional] 

### Return type

[**PaginatedMessageList**](PaginatedMessageList.md)

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
> array[MessageRecipient] recipients_list(id)



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
# result <- api_instance$recipients_list(var_iddata_file = "result.txt")
result <- api_instance$messages_api$recipients_list(var_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **integer**| A unique integer value identifying this notification. | 

### Return type

[**array[MessageRecipient]**](MessageRecipient.md)

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

# **topics_list**
> PaginatedMessageTopicList topics_list(page = var.page, page_size = var.page_size, search = var.search)



### Example
```R
library(MosquitoAlert)

# prepare function argument(s)
var_page <- 56 # integer | A page number within the paginated result set. (Optional)
var_page_size <- 56 # integer | Number of results to return per page. (Optional)
var_search <- "search_example" # character | A search term. (Optional)

api_instance <- mosquitoalert_api$new()
# Configure API key authorization: tokenAuth
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
# Configure API key authorization: cookieAuth
# api_instance$api_client$api_keys["sessionid"] <- Sys.getenv("API_KEY")
# Configure HTTP bearer authorization: jwtAuth
# api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$topics_list(page = var_page, page_size = var_page_size, search = var_searchdata_file = "result.txt")
result <- api_instance$messages_api$topics_list(page = var_page, page_size = var_page_size, search = var_search)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **integer**| A page number within the paginated result set. | [optional] 
 **page_size** | **integer**| Number of results to return per page. | [optional] 
 **search** | **character**| A search term. | [optional] 

### Return type

[**PaginatedMessageTopicList**](PaginatedMessageTopicList.md)

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

# **topics_retrieve**
> MessageTopic topics_retrieve(code)



### Example
```R
library(MosquitoAlert)

# prepare function argument(s)
var_code <- "code_example" # character | 

api_instance <- mosquitoalert_api$new()
# Configure API key authorization: tokenAuth
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
# Configure API key authorization: cookieAuth
# api_instance$api_client$api_keys["sessionid"] <- Sys.getenv("API_KEY")
# Configure HTTP bearer authorization: jwtAuth
# api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$topics_retrieve(var_codedata_file = "result.txt")
result <- api_instance$messages_api$topics_retrieve(var_code)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **code** | **character**|  | 

### Return type

[**MessageTopic**](MessageTopic.md)

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

# **topics_send**
> CreateTopicMessage topics_send(code, create_topic_message_request)



Send a message to a specific topic

### Example
```R
library(MosquitoAlert)

# prepare function argument(s)
var_code <- "code_example" # character | 
var_create_topic_message_request <- CreateTopicMessageRequest$new(CreateTopicMessageContentRequest$new(LocalizedTopicMessageTitleRequest$new("en_example", "bg_example", "bn_example", "ca_example", "de_example", "el_example", "es_example", "eu_example", "fr_example", "gl_example", "hr_example", "hu_example", "it_example", "lb_example", "mk_example", "nl_example", "pt_example", "ro_example", "sl_example", "sq_example", "sr_example", "sv_example", "tr_example", "zh-CN_example"), LocalizedTopicMessageBodyRequest$new("en_example", "bg_example", "bn_example", "ca_example", "de_example", "el_example", "es_example", "eu_example", "fr_example", "gl_example", "hr_example", "hu_example", "it_example", "lb_example", "mk_example", "nl_example", "pt_example", "ro_example", "sl_example", "sq_example", "sr_example", "sv_example", "tr_example", "zh-CN_example"))) # CreateTopicMessageRequest | 

api_instance <- mosquitoalert_api$new()
# Configure API key authorization: tokenAuth
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
# Configure API key authorization: cookieAuth
# api_instance$api_client$api_keys["sessionid"] <- Sys.getenv("API_KEY")
# Configure HTTP bearer authorization: jwtAuth
# api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$topics_send(var_code, var_create_topic_message_requestdata_file = "result.txt")
result <- api_instance$messages_api$topics_send(var_code, var_create_topic_message_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **code** | **character**|  | 
 **create_topic_message_request** | [**CreateTopicMessageRequest**](CreateTopicMessageRequest.md)|  | 

### Return type

[**CreateTopicMessage**](CreateTopicMessage.md)

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

