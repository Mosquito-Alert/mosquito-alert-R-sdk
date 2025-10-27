# BitesApi

All URIs are relative to *https://api.mosquitoalert.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](BitesApi.md#create) | **POST** /bites/ | 
[**destroy**](BitesApi.md#destroy) | **DELETE** /bites/{uuid}/ | 
[**list**](BitesApi.md#list) | **GET** /bites/ | 
[**list_mine**](BitesApi.md#list_mine) | **GET** /me/bites/ | 
[**retrieve**](BitesApi.md#retrieve) | **GET** /bites/{uuid}/ | 


# **create**
> Bite create(bite_request)



### Example
```R
library(MosquitoAlert)

# prepare function argument(s)
var_bite_request <- BiteRequest$new("created_at_example", "sent_at_example", LocationRequest$new("auto", PointRequest$new(123, 123)), BiteCountsRequest$new(123, 123, 123, 123, 123, 123), "note_example", c("tags_example"), "indoors", "now") # BiteRequest | 

api_instance <- mosquitoalert_api$new()
# Configure API key authorization: tokenAuth
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
# Configure API key authorization: cookieAuth
# api_instance$api_client$api_keys["sessionid"] <- Sys.getenv("API_KEY")
# Configure HTTP bearer authorization: jwtAuth
# api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$create(var_bite_requestdata_file = "result.txt")
result <- api_instance$bites_api$create(var_bite_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bite_request** | [**BiteRequest**](BiteRequest.md)|  | 

### Return type

[**Bite**](Bite.md)

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

# **destroy**
> destroy(uuid)



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
api_instance$bites_api$destroy(var_uuid)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **character**|  | 

### Return type

void (empty response body)

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
| **204** | No response body |  -  |

# **list**
> PaginatedBiteList list(country_id = var.country_id, created_at_after = var.created_at_after, created_at_before = var.created_at_before, order_by = var.order_by, page = var.page, page_size = var.page_size, received_at_after = var.received_at_after, received_at_before = var.received_at_before, search = var.search, short_id = var.short_id, updated_at_after = var.updated_at_after, updated_at_before = var.updated_at_before, user_uuid = var.user_uuid)



### Example
```R
library(MosquitoAlert)

# prepare function argument(s)
var_country_id <- 56 # integer |  (Optional)
var_created_at_after <- "created_at_after_example" # character | Created at (Optional)
var_created_at_before <- "created_at_before_example" # character | Created at (Optional)
var_order_by <- c("-created_at") # array[character] | Ordenado   (Optional)
var_page <- 56 # integer | A page number within the paginated result set. (Optional)
var_page_size <- 56 # integer | Number of results to return per page. (Optional)
var_received_at_after <- "received_at_after_example" # character | Received at (Optional)
var_received_at_before <- "received_at_before_example" # character | Received at (Optional)
var_search <- "search_example" # character | A search term. (Optional)
var_short_id <- "short_id_example" # character | Short ID (Optional)
var_updated_at_after <- "updated_at_after_example" # character | Update at (Optional)
var_updated_at_before <- "updated_at_before_example" # character | Update at (Optional)
var_user_uuid <- "user_uuid_example" # character |  (Optional)

api_instance <- mosquitoalert_api$new()
# Configure API key authorization: tokenAuth
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
# Configure API key authorization: cookieAuth
# api_instance$api_client$api_keys["sessionid"] <- Sys.getenv("API_KEY")
# Configure HTTP bearer authorization: jwtAuth
# api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$list(country_id = var_country_id, created_at_after = var_created_at_after, created_at_before = var_created_at_before, order_by = var_order_by, page = var_page, page_size = var_page_size, received_at_after = var_received_at_after, received_at_before = var_received_at_before, search = var_search, short_id = var_short_id, updated_at_after = var_updated_at_after, updated_at_before = var_updated_at_before, user_uuid = var_user_uuiddata_file = "result.txt")
result <- api_instance$bites_api$list(country_id = var_country_id, created_at_after = var_created_at_after, created_at_before = var_created_at_before, order_by = var_order_by, page = var_page, page_size = var_page_size, received_at_after = var_received_at_after, received_at_before = var_received_at_before, search = var_search, short_id = var_short_id, updated_at_after = var_updated_at_after, updated_at_before = var_updated_at_before, user_uuid = var_user_uuid)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **country_id** | **integer**|  | [optional] 
 **created_at_after** | **character**| Created at | [optional] 
 **created_at_before** | **character**| Created at | [optional] 
 **order_by** | Enum [-created_at, -received_at, created_at, received_at] | Ordenado   | [optional] 
 **page** | **integer**| A page number within the paginated result set. | [optional] 
 **page_size** | **integer**| Number of results to return per page. | [optional] 
 **received_at_after** | **character**| Received at | [optional] 
 **received_at_before** | **character**| Received at | [optional] 
 **search** | **character**| A search term. | [optional] 
 **short_id** | **character**| Short ID | [optional] 
 **updated_at_after** | **character**| Update at | [optional] 
 **updated_at_before** | **character**| Update at | [optional] 
 **user_uuid** | **character**|  | [optional] 

### Return type

[**PaginatedBiteList**](PaginatedBiteList.md)

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
| **404** |  |  -  |
| **200** |  |  -  |

# **list_mine**
> PaginatedBiteList list_mine(country_id = var.country_id, created_at_after = var.created_at_after, created_at_before = var.created_at_before, order_by = var.order_by, page = var.page, page_size = var.page_size, received_at_after = var.received_at_after, received_at_before = var.received_at_before, search = var.search, short_id = var.short_id, updated_at_after = var.updated_at_after, updated_at_before = var.updated_at_before, user_uuid = var.user_uuid)



Get Current User's Bites

### Example
```R
library(MosquitoAlert)

# prepare function argument(s)
var_country_id <- 56 # integer |  (Optional)
var_created_at_after <- "created_at_after_example" # character | Created at (Optional)
var_created_at_before <- "created_at_before_example" # character | Created at (Optional)
var_order_by <- c("-created_at") # array[character] | Ordenado   (Optional)
var_page <- 56 # integer | A page number within the paginated result set. (Optional)
var_page_size <- 56 # integer | Number of results to return per page. (Optional)
var_received_at_after <- "received_at_after_example" # character | Received at (Optional)
var_received_at_before <- "received_at_before_example" # character | Received at (Optional)
var_search <- "search_example" # character | A search term. (Optional)
var_short_id <- "short_id_example" # character | Short ID (Optional)
var_updated_at_after <- "updated_at_after_example" # character | Update at (Optional)
var_updated_at_before <- "updated_at_before_example" # character | Update at (Optional)
var_user_uuid <- "user_uuid_example" # character |  (Optional)

api_instance <- mosquitoalert_api$new()
# Configure API key authorization: tokenAuth
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
# Configure API key authorization: cookieAuth
# api_instance$api_client$api_keys["sessionid"] <- Sys.getenv("API_KEY")
# Configure HTTP bearer authorization: jwtAuth
# api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$list_mine(country_id = var_country_id, created_at_after = var_created_at_after, created_at_before = var_created_at_before, order_by = var_order_by, page = var_page, page_size = var_page_size, received_at_after = var_received_at_after, received_at_before = var_received_at_before, search = var_search, short_id = var_short_id, updated_at_after = var_updated_at_after, updated_at_before = var_updated_at_before, user_uuid = var_user_uuiddata_file = "result.txt")
result <- api_instance$bites_api$list_mine(country_id = var_country_id, created_at_after = var_created_at_after, created_at_before = var_created_at_before, order_by = var_order_by, page = var_page, page_size = var_page_size, received_at_after = var_received_at_after, received_at_before = var_received_at_before, search = var_search, short_id = var_short_id, updated_at_after = var_updated_at_after, updated_at_before = var_updated_at_before, user_uuid = var_user_uuid)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **country_id** | **integer**|  | [optional] 
 **created_at_after** | **character**| Created at | [optional] 
 **created_at_before** | **character**| Created at | [optional] 
 **order_by** | Enum [-created_at, -received_at, created_at, received_at] | Ordenado   | [optional] 
 **page** | **integer**| A page number within the paginated result set. | [optional] 
 **page_size** | **integer**| Number of results to return per page. | [optional] 
 **received_at_after** | **character**| Received at | [optional] 
 **received_at_before** | **character**| Received at | [optional] 
 **search** | **character**| A search term. | [optional] 
 **short_id** | **character**| Short ID | [optional] 
 **updated_at_after** | **character**| Update at | [optional] 
 **updated_at_before** | **character**| Update at | [optional] 
 **user_uuid** | **character**|  | [optional] 

### Return type

[**PaginatedBiteList**](PaginatedBiteList.md)

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

# **retrieve**
> Bite retrieve(uuid)



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
result <- api_instance$bites_api$retrieve(var_uuid)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **character**|  | 

### Return type

[**Bite**](Bite.md)

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

