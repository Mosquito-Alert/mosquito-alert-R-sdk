# BitesApi

All URIs are relative to *https://api.mosquitoalert.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](BitesApi.md#create) | **POST** /bites/ | 
[**destroy**](BitesApi.md#destroy) | **DELETE** /bites/{uuid}/ | 
[**geo_list**](BitesApi.md#geo_list) | **GET** /bites/geo/ | 
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

# **geo_list**
> array[BiteGeoModel] geo_list(boundary_uuid = var.boundary_uuid, country_id = var.country_id, created_at_after = var.created_at_after, created_at_before = var.created_at_before, dist = 1000, geo_precision = var.geo_precision, order_by = var.order_by, point = var.point, received_at_after = var.received_at_after, received_at_before = var.received_at_before, search = var.search, short_id = var.short_id, tags = var.tags, updated_at_after = var.updated_at_after, updated_at_before = var.updated_at_before, user_uuid = var.user_uuid)



### Example
```R
library(MosquitoAlert)

# prepare function argument(s)
var_boundary_uuid <- "boundary_uuid_example" # character |  (Optional)
var_country_id <- 56 # integer |  (Optional)
var_created_at_after <- "created_at_after_example" # character | Created at (Optional)
var_created_at_before <- "created_at_before_example" # character | Created at (Optional)
var_dist <- 1000 # numeric | Represents **Distance** in **Distance to point** filter. Default value is used only if ***point*** is passed. (Optional)
var_geo_precision <- 3.4 # numeric | Latitude/Longitude precision (Optional)
var_order_by <- c("-created_at") # array[character] | Ordenamiento   (Optional)
var_point <- c(123) # array[numeric] | Point represented in **x,y** format. Represents **point** in **Distance to point filter** (Optional)
var_received_at_after <- "received_at_after_example" # character | Received at (Optional)
var_received_at_before <- "received_at_before_example" # character | Received at (Optional)
var_search <- "search_example" # character | Un término de búsqueda. (Optional)
var_short_id <- "short_id_example" # character | Short ID (Optional)
var_tags <- c("inner_example") # array[character] | Múltiples valores separados por comas. (Optional)
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
# result <- api_instance$geo_list(boundary_uuid = var_boundary_uuid, country_id = var_country_id, created_at_after = var_created_at_after, created_at_before = var_created_at_before, dist = var_dist, geo_precision = var_geo_precision, order_by = var_order_by, point = var_point, received_at_after = var_received_at_after, received_at_before = var_received_at_before, search = var_search, short_id = var_short_id, tags = var_tags, updated_at_after = var_updated_at_after, updated_at_before = var_updated_at_before, user_uuid = var_user_uuiddata_file = "result.txt")
result <- api_instance$bites_api$geo_list(boundary_uuid = var_boundary_uuid, country_id = var_country_id, created_at_after = var_created_at_after, created_at_before = var_created_at_before, dist = var_dist, geo_precision = var_geo_precision, order_by = var_order_by, point = var_point, received_at_after = var_received_at_after, received_at_before = var_received_at_before, search = var_search, short_id = var_short_id, tags = var_tags, updated_at_after = var_updated_at_after, updated_at_before = var_updated_at_before, user_uuid = var_user_uuid)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **boundary_uuid** | **character**|  | [optional] 
 **country_id** | **integer**|  | [optional] 
 **created_at_after** | **character**| Created at | [optional] 
 **created_at_before** | **character**| Created at | [optional] 
 **dist** | **numeric**| Represents **Distance** in **Distance to point** filter. Default value is used only if ***point*** is passed. | [optional] [default to 1000]
 **geo_precision** | **numeric**| Latitude/Longitude precision | [optional] 
 **order_by** | Enum [-created_at, -distance, -received_at, created_at, distance, received_at] | Ordenamiento   | [optional] 
 **point** | list( **numeric** )| Point represented in **x,y** format. Represents **point** in **Distance to point filter** | [optional] 
 **received_at_after** | **character**| Received at | [optional] 
 **received_at_before** | **character**| Received at | [optional] 
 **search** | **character**| Un término de búsqueda. | [optional] 
 **short_id** | **character**| Short ID | [optional] 
 **tags** | list( **character** )| Múltiples valores separados por comas. | [optional] 
 **updated_at_after** | **character**| Update at | [optional] 
 **updated_at_before** | **character**| Update at | [optional] 
 **user_uuid** | **character**|  | [optional] 

### Return type

[**array[BiteGeoModel]**](BiteGeoModel.md)

### Authorization

[tokenAuth](../README.md#tokenAuth), [cookieAuth](../README.md#cookieAuth), [jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/geo+json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **400** |  |  -  |
| **401** |  |  -  |
| **404** |  |  -  |
| **200** |  |  -  |

# **list**
> PaginatedBiteList list(boundary_uuid = var.boundary_uuid, country_id = var.country_id, created_at_after = var.created_at_after, created_at_before = var.created_at_before, dist = 1000, format = var.format, geo_precision = var.geo_precision, order_by = var.order_by, page = var.page, page_size = var.page_size, point = var.point, received_at_after = var.received_at_after, received_at_before = var.received_at_before, search = var.search, short_id = var.short_id, tags = var.tags, updated_at_after = var.updated_at_after, updated_at_before = var.updated_at_before, user_uuid = var.user_uuid)



### Example
```R
library(MosquitoAlert)

# prepare function argument(s)
var_boundary_uuid <- "boundary_uuid_example" # character |  (Optional)
var_country_id <- 56 # integer |  (Optional)
var_created_at_after <- "created_at_after_example" # character | Created at (Optional)
var_created_at_before <- "created_at_before_example" # character | Created at (Optional)
var_dist <- 1000 # numeric | Represents **Distance** in **Distance to point** filter. Default value is used only if ***point*** is passed. (Optional)
var_format <- "format_example" # character |  (Optional)
var_geo_precision <- 3.4 # numeric | Latitude/Longitude precision (Optional)
var_order_by <- c("-created_at") # array[character] | Ordenamiento   (Optional)
var_page <- 56 # integer | Un número de página dentro del conjunto de resultados paginado. (Optional)
var_page_size <- 56 # integer | Número de resultados a devolver por página. (Optional)
var_point <- c(123) # array[numeric] | Point represented in **x,y** format. Represents **point** in **Distance to point filter** (Optional)
var_received_at_after <- "received_at_after_example" # character | Received at (Optional)
var_received_at_before <- "received_at_before_example" # character | Received at (Optional)
var_search <- "search_example" # character | Un término de búsqueda. (Optional)
var_short_id <- "short_id_example" # character | Short ID (Optional)
var_tags <- c("inner_example") # array[character] | Múltiples valores separados por comas. (Optional)
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
# result <- api_instance$list(boundary_uuid = var_boundary_uuid, country_id = var_country_id, created_at_after = var_created_at_after, created_at_before = var_created_at_before, dist = var_dist, format = var_format, geo_precision = var_geo_precision, order_by = var_order_by, page = var_page, page_size = var_page_size, point = var_point, received_at_after = var_received_at_after, received_at_before = var_received_at_before, search = var_search, short_id = var_short_id, tags = var_tags, updated_at_after = var_updated_at_after, updated_at_before = var_updated_at_before, user_uuid = var_user_uuiddata_file = "result.txt")
result <- api_instance$bites_api$list(boundary_uuid = var_boundary_uuid, country_id = var_country_id, created_at_after = var_created_at_after, created_at_before = var_created_at_before, dist = var_dist, format = var_format, geo_precision = var_geo_precision, order_by = var_order_by, page = var_page, page_size = var_page_size, point = var_point, received_at_after = var_received_at_after, received_at_before = var_received_at_before, search = var_search, short_id = var_short_id, tags = var_tags, updated_at_after = var_updated_at_after, updated_at_before = var_updated_at_before, user_uuid = var_user_uuid)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **boundary_uuid** | **character**|  | [optional] 
 **country_id** | **integer**|  | [optional] 
 **created_at_after** | **character**| Created at | [optional] 
 **created_at_before** | **character**| Created at | [optional] 
 **dist** | **numeric**| Represents **Distance** in **Distance to point** filter. Default value is used only if ***point*** is passed. | [optional] [default to 1000]
 **format** | Enum [csv, json] |  | [optional] 
 **geo_precision** | **numeric**| Latitude/Longitude precision | [optional] 
 **order_by** | Enum [-created_at, -distance, -received_at, created_at, distance, received_at] | Ordenamiento   | [optional] 
 **page** | **integer**| Un número de página dentro del conjunto de resultados paginado. | [optional] 
 **page_size** | **integer**| Número de resultados a devolver por página. | [optional] 
 **point** | list( **numeric** )| Point represented in **x,y** format. Represents **point** in **Distance to point filter** | [optional] 
 **received_at_after** | **character**| Received at | [optional] 
 **received_at_before** | **character**| Received at | [optional] 
 **search** | **character**| Un término de búsqueda. | [optional] 
 **short_id** | **character**| Short ID | [optional] 
 **tags** | list( **character** )| Múltiples valores separados por comas. | [optional] 
 **updated_at_after** | **character**| Update at | [optional] 
 **updated_at_before** | **character**| Update at | [optional] 
 **user_uuid** | **character**|  | [optional] 

### Return type

[**PaginatedBiteList**](PaginatedBiteList.md)

### Authorization

[tokenAuth](../README.md#tokenAuth), [cookieAuth](../README.md#cookieAuth), [jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/csv

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **400** |  |  -  |
| **401** |  |  -  |
| **404** |  |  -  |
| **200** |  |  -  |

# **list_mine**
> PaginatedBiteList list_mine(boundary_uuid = var.boundary_uuid, country_id = var.country_id, created_at_after = var.created_at_after, created_at_before = var.created_at_before, dist = 1000, format = var.format, geo_precision = var.geo_precision, order_by = var.order_by, page = var.page, page_size = var.page_size, point = var.point, received_at_after = var.received_at_after, received_at_before = var.received_at_before, search = var.search, short_id = var.short_id, tags = var.tags, updated_at_after = var.updated_at_after, updated_at_before = var.updated_at_before, user_uuid = var.user_uuid)



Get Current User's Bites

### Example
```R
library(MosquitoAlert)

# prepare function argument(s)
var_boundary_uuid <- "boundary_uuid_example" # character |  (Optional)
var_country_id <- 56 # integer |  (Optional)
var_created_at_after <- "created_at_after_example" # character | Created at (Optional)
var_created_at_before <- "created_at_before_example" # character | Created at (Optional)
var_dist <- 1000 # numeric | Represents **Distance** in **Distance to point** filter. Default value is used only if ***point*** is passed. (Optional)
var_format <- "format_example" # character |  (Optional)
var_geo_precision <- 3.4 # numeric | Latitude/Longitude precision (Optional)
var_order_by <- c("-created_at") # array[character] | Ordenamiento   (Optional)
var_page <- 56 # integer | Un número de página dentro del conjunto de resultados paginado. (Optional)
var_page_size <- 56 # integer | Número de resultados a devolver por página. (Optional)
var_point <- c(123) # array[numeric] | Point represented in **x,y** format. Represents **point** in **Distance to point filter** (Optional)
var_received_at_after <- "received_at_after_example" # character | Received at (Optional)
var_received_at_before <- "received_at_before_example" # character | Received at (Optional)
var_search <- "search_example" # character | Un término de búsqueda. (Optional)
var_short_id <- "short_id_example" # character | Short ID (Optional)
var_tags <- c("inner_example") # array[character] | Múltiples valores separados por comas. (Optional)
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
# result <- api_instance$list_mine(boundary_uuid = var_boundary_uuid, country_id = var_country_id, created_at_after = var_created_at_after, created_at_before = var_created_at_before, dist = var_dist, format = var_format, geo_precision = var_geo_precision, order_by = var_order_by, page = var_page, page_size = var_page_size, point = var_point, received_at_after = var_received_at_after, received_at_before = var_received_at_before, search = var_search, short_id = var_short_id, tags = var_tags, updated_at_after = var_updated_at_after, updated_at_before = var_updated_at_before, user_uuid = var_user_uuiddata_file = "result.txt")
result <- api_instance$bites_api$list_mine(boundary_uuid = var_boundary_uuid, country_id = var_country_id, created_at_after = var_created_at_after, created_at_before = var_created_at_before, dist = var_dist, format = var_format, geo_precision = var_geo_precision, order_by = var_order_by, page = var_page, page_size = var_page_size, point = var_point, received_at_after = var_received_at_after, received_at_before = var_received_at_before, search = var_search, short_id = var_short_id, tags = var_tags, updated_at_after = var_updated_at_after, updated_at_before = var_updated_at_before, user_uuid = var_user_uuid)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **boundary_uuid** | **character**|  | [optional] 
 **country_id** | **integer**|  | [optional] 
 **created_at_after** | **character**| Created at | [optional] 
 **created_at_before** | **character**| Created at | [optional] 
 **dist** | **numeric**| Represents **Distance** in **Distance to point** filter. Default value is used only if ***point*** is passed. | [optional] [default to 1000]
 **format** | Enum [csv, json] |  | [optional] 
 **geo_precision** | **numeric**| Latitude/Longitude precision | [optional] 
 **order_by** | Enum [-created_at, -distance, -received_at, created_at, distance, received_at] | Ordenamiento   | [optional] 
 **page** | **integer**| Un número de página dentro del conjunto de resultados paginado. | [optional] 
 **page_size** | **integer**| Número de resultados a devolver por página. | [optional] 
 **point** | list( **numeric** )| Point represented in **x,y** format. Represents **point** in **Distance to point filter** | [optional] 
 **received_at_after** | **character**| Received at | [optional] 
 **received_at_before** | **character**| Received at | [optional] 
 **search** | **character**| Un término de búsqueda. | [optional] 
 **short_id** | **character**| Short ID | [optional] 
 **tags** | list( **character** )| Múltiples valores separados por comas. | [optional] 
 **updated_at_after** | **character**| Update at | [optional] 
 **updated_at_before** | **character**| Update at | [optional] 
 **user_uuid** | **character**|  | [optional] 

### Return type

[**PaginatedBiteList**](PaginatedBiteList.md)

### Authorization

[tokenAuth](../README.md#tokenAuth), [cookieAuth](../README.md#cookieAuth), [jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/csv

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

