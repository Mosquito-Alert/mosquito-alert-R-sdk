# ObservationsApi

All URIs are relative to *https://api.mosquitoalert.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](ObservationsApi.md#create) | **POST** /observations/ | 
[**destroy**](ObservationsApi.md#destroy) | **DELETE** /observations/{uuid}/ | 
[**list**](ObservationsApi.md#list) | **GET** /observations/ | 
[**list_mine**](ObservationsApi.md#list_mine) | **GET** /me/observations/ | 
[**retrieve**](ObservationsApi.md#retrieve) | **GET** /observations/{uuid}/ | 


# **create**
> Observation create(created_at, sent_at, location, photos, note = var.note, tags = var.tags, event_environment = var.event_environment, event_moment = var.event_moment, mosquito_appearance = var.mosquito_appearance)



### Example
```R
library(MosquitoAlert)

# prepare function argument(s)
var_created_at <- "created_at_example" # character | 
var_sent_at <- "sent_at_example" # character | 
var_location <- LocationRequest$new("auto", Location_point$new(123, 123)) # LocationRequest | 
var_photos <- c(SimplePhotoRequest$new(123)) # array[SimplePhotoRequest] | 
var_note <- "note_example" # character | Note user attached to report. (Optional)
var_tags <- c("inner_example") # array[character] |  (Optional)
var_event_environment <- "event_environment_example" # character | The environment where the event took place. (Optional)
var_event_moment <- "event_moment_example" # character | The moment of the day when the event took place. (Optional)
var_mosquito_appearance <- MosquitoAppearanceRequest$new("albopictus", "albopictus", "albopictus", "albopictus") # MosquitoAppearanceRequest | User-provided description of the mosquito's appearance (Optional)

api_instance <- mosquitoalert_api$new()
# Configure API key authorization: tokenAuth
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
# Configure API key authorization: cookieAuth
# api_instance$api_client$api_keys["sessionid"] <- Sys.getenv("API_KEY")
# Configure HTTP bearer authorization: jwtAuth
# api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$create(var_created_at, var_sent_at, var_location, var_photos, note = var_note, tags = var_tags, event_environment = var_event_environment, event_moment = var_event_moment, mosquito_appearance = var_mosquito_appearancedata_file = "result.txt")
result <- api_instance$observations_api$create(var_created_at, var_sent_at, var_location, var_photos, note = var_note, tags = var_tags, event_environment = var_event_environment, event_moment = var_event_moment, mosquito_appearance = var_mosquito_appearance)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **created_at** | **character**|  | 
 **sent_at** | **character**|  | 
 **location** | [**LocationRequest**](LocationRequest.md)|  | 
 **photos** | list( [**SimplePhotoRequest**](SimplePhotoRequest.md) )|  | 
 **note** | **character**| Note user attached to report. | [optional] 
 **tags** | list( **character** )|  | [optional] 
 **event_environment** | Enum [indoors, outdoors, vehicle, , null] | The environment where the event took place. | [optional] 
 **event_moment** | Enum [now, last_morning, last_midday, last_afternoon, last_night, , null] | The moment of the day when the event took place. | [optional] 
 **mosquito_appearance** | [**MosquitoAppearanceRequest**](MosquitoAppearanceRequest.md)| User-provided description of the mosquito&#39;s appearance | [optional] 

### Return type

[**Observation**](Observation.md)

### Authorization

[tokenAuth](../README.md#tokenAuth), [cookieAuth](../README.md#cookieAuth), [jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data, application/x-www-form-urlencoded
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
api_instance$observations_api$destroy(var_uuid)
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
> PaginatedObservationList list(country_id = var.country_id, created_at_after = var.created_at_after, created_at_before = var.created_at_before, has_photos = var.has_photos, identification_taxon_ids = var.identification_taxon_ids, order_by = var.order_by, page = var.page, page_size = var.page_size, received_at_after = var.received_at_after, received_at_before = var.received_at_before, short_id = var.short_id, updated_at_after = var.updated_at_after, updated_at_before = var.updated_at_before, user_uuid = var.user_uuid)



### Example
```R
library(MosquitoAlert)

# prepare function argument(s)
var_country_id <- 56 # integer |  (Optional)
var_created_at_after <- "created_at_after_example" # character | Created at (Optional)
var_created_at_before <- "created_at_before_example" # character | Created at (Optional)
var_has_photos <- "has_photos_example" # character | Has any photo (Optional)
var_identification_taxon_ids <- c(123) # array[integer] |  (Optional)
var_order_by <- c("-created_at") # array[character] | Ordenado   (Optional)
var_page <- 56 # integer | A page number within the paginated result set. (Optional)
var_page_size <- 56 # integer | Number of results to return per page. (Optional)
var_received_at_after <- "received_at_after_example" # character | Received at (Optional)
var_received_at_before <- "received_at_before_example" # character | Received at (Optional)
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
# result <- api_instance$list(country_id = var_country_id, created_at_after = var_created_at_after, created_at_before = var_created_at_before, has_photos = var_has_photos, identification_taxon_ids = var_identification_taxon_ids, order_by = var_order_by, page = var_page, page_size = var_page_size, received_at_after = var_received_at_after, received_at_before = var_received_at_before, short_id = var_short_id, updated_at_after = var_updated_at_after, updated_at_before = var_updated_at_before, user_uuid = var_user_uuiddata_file = "result.txt")
result <- api_instance$observations_api$list(country_id = var_country_id, created_at_after = var_created_at_after, created_at_before = var_created_at_before, has_photos = var_has_photos, identification_taxon_ids = var_identification_taxon_ids, order_by = var_order_by, page = var_page, page_size = var_page_size, received_at_after = var_received_at_after, received_at_before = var_received_at_before, short_id = var_short_id, updated_at_after = var_updated_at_after, updated_at_before = var_updated_at_before, user_uuid = var_user_uuid)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **country_id** | **integer**|  | [optional] 
 **created_at_after** | **character**| Created at | [optional] 
 **created_at_before** | **character**| Created at | [optional] 
 **has_photos** | **character**| Has any photo | [optional] 
 **identification_taxon_ids** | list( **integer** )|  | [optional] 
 **order_by** | Enum [-created_at, -received_at, created_at, received_at] | Ordenado   | [optional] 
 **page** | **integer**| A page number within the paginated result set. | [optional] 
 **page_size** | **integer**| Number of results to return per page. | [optional] 
 **received_at_after** | **character**| Received at | [optional] 
 **received_at_before** | **character**| Received at | [optional] 
 **short_id** | **character**| Short ID | [optional] 
 **updated_at_after** | **character**| Update at | [optional] 
 **updated_at_before** | **character**| Update at | [optional] 
 **user_uuid** | **character**|  | [optional] 

### Return type

[**PaginatedObservationList**](PaginatedObservationList.md)

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
> PaginatedObservationList list_mine(country_id = var.country_id, created_at_after = var.created_at_after, created_at_before = var.created_at_before, has_photos = var.has_photos, identification_taxon_ids = var.identification_taxon_ids, order_by = var.order_by, page = var.page, page_size = var.page_size, received_at_after = var.received_at_after, received_at_before = var.received_at_before, short_id = var.short_id, updated_at_after = var.updated_at_after, updated_at_before = var.updated_at_before, user_uuid = var.user_uuid)



Get Current User's Observations

### Example
```R
library(MosquitoAlert)

# prepare function argument(s)
var_country_id <- 56 # integer |  (Optional)
var_created_at_after <- "created_at_after_example" # character | Created at (Optional)
var_created_at_before <- "created_at_before_example" # character | Created at (Optional)
var_has_photos <- "has_photos_example" # character | Has any photo (Optional)
var_identification_taxon_ids <- c(123) # array[integer] |  (Optional)
var_order_by <- c("-created_at") # array[character] | Ordenado   (Optional)
var_page <- 56 # integer | A page number within the paginated result set. (Optional)
var_page_size <- 56 # integer | Number of results to return per page. (Optional)
var_received_at_after <- "received_at_after_example" # character | Received at (Optional)
var_received_at_before <- "received_at_before_example" # character | Received at (Optional)
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
# result <- api_instance$list_mine(country_id = var_country_id, created_at_after = var_created_at_after, created_at_before = var_created_at_before, has_photos = var_has_photos, identification_taxon_ids = var_identification_taxon_ids, order_by = var_order_by, page = var_page, page_size = var_page_size, received_at_after = var_received_at_after, received_at_before = var_received_at_before, short_id = var_short_id, updated_at_after = var_updated_at_after, updated_at_before = var_updated_at_before, user_uuid = var_user_uuiddata_file = "result.txt")
result <- api_instance$observations_api$list_mine(country_id = var_country_id, created_at_after = var_created_at_after, created_at_before = var_created_at_before, has_photos = var_has_photos, identification_taxon_ids = var_identification_taxon_ids, order_by = var_order_by, page = var_page, page_size = var_page_size, received_at_after = var_received_at_after, received_at_before = var_received_at_before, short_id = var_short_id, updated_at_after = var_updated_at_after, updated_at_before = var_updated_at_before, user_uuid = var_user_uuid)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **country_id** | **integer**|  | [optional] 
 **created_at_after** | **character**| Created at | [optional] 
 **created_at_before** | **character**| Created at | [optional] 
 **has_photos** | **character**| Has any photo | [optional] 
 **identification_taxon_ids** | list( **integer** )|  | [optional] 
 **order_by** | Enum [-created_at, -received_at, created_at, received_at] | Ordenado   | [optional] 
 **page** | **integer**| A page number within the paginated result set. | [optional] 
 **page_size** | **integer**| Number of results to return per page. | [optional] 
 **received_at_after** | **character**| Received at | [optional] 
 **received_at_before** | **character**| Received at | [optional] 
 **short_id** | **character**| Short ID | [optional] 
 **updated_at_after** | **character**| Update at | [optional] 
 **updated_at_before** | **character**| Update at | [optional] 
 **user_uuid** | **character**|  | [optional] 

### Return type

[**PaginatedObservationList**](PaginatedObservationList.md)

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
> Observation retrieve(uuid)



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
result <- api_instance$observations_api$retrieve(var_uuid)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **character**|  | 

### Return type

[**Observation**](Observation.md)

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

