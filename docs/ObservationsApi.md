# ObservationsApi

All URIs are relative to *https://api.mosquitoalert.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](ObservationsApi.md#create) | **POST** /observations/ | 
[**destroy**](ObservationsApi.md#destroy) | **DELETE** /observations/{uuid}/ | 
[**list**](ObservationsApi.md#list) | **GET** /observations/ | 
[**list_mine**](ObservationsApi.md#list_mine) | **GET** /me/observations/ | 
[**prediction_create**](ObservationsApi.md#prediction_create) | **POST** /observations/{uuid}/prediction/ | 
[**prediction_destroy**](ObservationsApi.md#prediction_destroy) | **DELETE** /observations/{uuid}/prediction/ | 
[**prediction_retrieve**](ObservationsApi.md#prediction_retrieve) | **GET** /observations/{uuid}/prediction/ | 
[**retrieve**](ObservationsApi.md#retrieve) | **GET** /observations/{uuid}/ | 


# **create**
> Observation create(observation_request)



### Example
```R
library(MosquitoAlert)

# prepare function argument(s)
var_observation_request <- ObservationRequest$new("created_at_example", "sent_at_example", LocationRequest$new("current", Location_point$new(123, 123)), c(SimplePhotoRequest$new(123)), "note_example", c("tags_example"), "indoors", "now", "albopictus", "albopictus", "albopictus", "albopictus") # ObservationRequest | 

api_instance <- mosquitoalert_api$new()
# Configure API key authorization: cookieAuth
api_instance$api_client$api_keys["sessionid"] <- Sys.getenv("API_KEY")
# Configure API key authorization: tokenAuth
# api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
# Configure HTTP bearer authorization: jwtAuth
# api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$create(var_observation_requestdata_file = "result.txt")
result <- api_instance$observations_api$create(var_observation_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **observation_request** | [**ObservationRequest**](ObservationRequest.md)|  | 

### Return type

[**Observation**](Observation.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [tokenAuth](../README.md#tokenAuth), [jwtAuth](../README.md#jwtAuth)

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
# Configure API key authorization: cookieAuth
api_instance$api_client$api_keys["sessionid"] <- Sys.getenv("API_KEY")
# Configure API key authorization: tokenAuth
# api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
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

[cookieAuth](../README.md#cookieAuth), [tokenAuth](../README.md#tokenAuth), [jwtAuth](../README.md#jwtAuth)

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
> PaginatedObservationList list(created_at_after = var.created_at_after, created_at_before = var.created_at_before, has_photos = var.has_photos, has_prediction = var.has_prediction, has_predictions_all_photos = var.has_predictions_all_photos, location_country_id = var.location_country_id, location_nuts_2 = var.location_nuts_2, location_nuts_3 = var.location_nuts_3, order_by = var.order_by, page = var.page, page_size = var.page_size, received_at_after = var.received_at_after, received_at_before = var.received_at_before, short_id = var.short_id, updated_at_after = var.updated_at_after, updated_at_before = var.updated_at_before, user_uuid = var.user_uuid)



### Example
```R
library(MosquitoAlert)

# prepare function argument(s)
var_created_at_after <- "created_at_after_example" # character | Created at (Optional)
var_created_at_before <- "created_at_before_example" # character | Created at (Optional)
var_has_photos <- "has_photos_example" # character | Has any photo (Optional)
var_has_prediction <- "has_prediction_example" # character | Filter observations that have an associated prediction. An observation is considered to have a prediction if a photo has been selected as reference to use the prediction from. (Optional)
var_has_predictions_all_photos <- "has_predictions_all_photos_example" # character | Filters observations based on whether all associated photos have predictions. Set to True to include observations where every photo has a prediction; set to False to include observations where at least one photo is missing a prediction. (Optional)
var_location_country_id <- 56 # integer |  (Optional)
var_location_nuts_2 <- "location_nuts_2_example" # character |  (Optional)
var_location_nuts_3 <- "location_nuts_3_example" # character |  (Optional)
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
# Configure API key authorization: cookieAuth
api_instance$api_client$api_keys["sessionid"] <- Sys.getenv("API_KEY")
# Configure API key authorization: tokenAuth
# api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
# Configure HTTP bearer authorization: jwtAuth
# api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$list(created_at_after = var_created_at_after, created_at_before = var_created_at_before, has_photos = var_has_photos, has_prediction = var_has_prediction, has_predictions_all_photos = var_has_predictions_all_photos, location_country_id = var_location_country_id, location_nuts_2 = var_location_nuts_2, location_nuts_3 = var_location_nuts_3, order_by = var_order_by, page = var_page, page_size = var_page_size, received_at_after = var_received_at_after, received_at_before = var_received_at_before, short_id = var_short_id, updated_at_after = var_updated_at_after, updated_at_before = var_updated_at_before, user_uuid = var_user_uuiddata_file = "result.txt")
result <- api_instance$observations_api$list(created_at_after = var_created_at_after, created_at_before = var_created_at_before, has_photos = var_has_photos, has_prediction = var_has_prediction, has_predictions_all_photos = var_has_predictions_all_photos, location_country_id = var_location_country_id, location_nuts_2 = var_location_nuts_2, location_nuts_3 = var_location_nuts_3, order_by = var_order_by, page = var_page, page_size = var_page_size, received_at_after = var_received_at_after, received_at_before = var_received_at_before, short_id = var_short_id, updated_at_after = var_updated_at_after, updated_at_before = var_updated_at_before, user_uuid = var_user_uuid)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **created_at_after** | **character**| Created at | [optional] 
 **created_at_before** | **character**| Created at | [optional] 
 **has_photos** | **character**| Has any photo | [optional] 
 **has_prediction** | **character**| Filter observations that have an associated prediction. An observation is considered to have a prediction if a photo has been selected as reference to use the prediction from. | [optional] 
 **has_predictions_all_photos** | **character**| Filters observations based on whether all associated photos have predictions. Set to True to include observations where every photo has a prediction; set to False to include observations where at least one photo is missing a prediction. | [optional] 
 **location_country_id** | **integer**|  | [optional] 
 **location_nuts_2** | **character**|  | [optional] 
 **location_nuts_3** | **character**|  | [optional] 
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

[cookieAuth](../README.md#cookieAuth), [tokenAuth](../README.md#tokenAuth), [jwtAuth](../README.md#jwtAuth)

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
> PaginatedObservationList list_mine(created_at_after = var.created_at_after, created_at_before = var.created_at_before, has_photos = var.has_photos, has_prediction = var.has_prediction, has_predictions_all_photos = var.has_predictions_all_photos, location_country_id = var.location_country_id, location_nuts_2 = var.location_nuts_2, location_nuts_3 = var.location_nuts_3, order_by = var.order_by, page = var.page, page_size = var.page_size, received_at_after = var.received_at_after, received_at_before = var.received_at_before, short_id = var.short_id, updated_at_after = var.updated_at_after, updated_at_before = var.updated_at_before, user_uuid = var.user_uuid)



Get Current User's Observations

### Example
```R
library(MosquitoAlert)

# prepare function argument(s)
var_created_at_after <- "created_at_after_example" # character | Created at (Optional)
var_created_at_before <- "created_at_before_example" # character | Created at (Optional)
var_has_photos <- "has_photos_example" # character | Has any photo (Optional)
var_has_prediction <- "has_prediction_example" # character | Filter observations that have an associated prediction. An observation is considered to have a prediction if a photo has been selected as reference to use the prediction from. (Optional)
var_has_predictions_all_photos <- "has_predictions_all_photos_example" # character | Filters observations based on whether all associated photos have predictions. Set to True to include observations where every photo has a prediction; set to False to include observations where at least one photo is missing a prediction. (Optional)
var_location_country_id <- 56 # integer |  (Optional)
var_location_nuts_2 <- "location_nuts_2_example" # character |  (Optional)
var_location_nuts_3 <- "location_nuts_3_example" # character |  (Optional)
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
# Configure HTTP bearer authorization: jwtAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$list_mine(created_at_after = var_created_at_after, created_at_before = var_created_at_before, has_photos = var_has_photos, has_prediction = var_has_prediction, has_predictions_all_photos = var_has_predictions_all_photos, location_country_id = var_location_country_id, location_nuts_2 = var_location_nuts_2, location_nuts_3 = var_location_nuts_3, order_by = var_order_by, page = var_page, page_size = var_page_size, received_at_after = var_received_at_after, received_at_before = var_received_at_before, short_id = var_short_id, updated_at_after = var_updated_at_after, updated_at_before = var_updated_at_before, user_uuid = var_user_uuiddata_file = "result.txt")
result <- api_instance$observations_api$list_mine(created_at_after = var_created_at_after, created_at_before = var_created_at_before, has_photos = var_has_photos, has_prediction = var_has_prediction, has_predictions_all_photos = var_has_predictions_all_photos, location_country_id = var_location_country_id, location_nuts_2 = var_location_nuts_2, location_nuts_3 = var_location_nuts_3, order_by = var_order_by, page = var_page, page_size = var_page_size, received_at_after = var_received_at_after, received_at_before = var_received_at_before, short_id = var_short_id, updated_at_after = var_updated_at_after, updated_at_before = var_updated_at_before, user_uuid = var_user_uuid)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **created_at_after** | **character**| Created at | [optional] 
 **created_at_before** | **character**| Created at | [optional] 
 **has_photos** | **character**| Has any photo | [optional] 
 **has_prediction** | **character**| Filter observations that have an associated prediction. An observation is considered to have a prediction if a photo has been selected as reference to use the prediction from. | [optional] 
 **has_predictions_all_photos** | **character**| Filters observations based on whether all associated photos have predictions. Set to True to include observations where every photo has a prediction; set to False to include observations where at least one photo is missing a prediction. | [optional] 
 **location_country_id** | **integer**|  | [optional] 
 **location_nuts_2** | **character**|  | [optional] 
 **location_nuts_3** | **character**|  | [optional] 
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

[jwtAuth](../README.md#jwtAuth)

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

# **prediction_create**
> ObservationPrediction prediction_create(uuid, observation_prediction_request)



### Example
```R
library(MosquitoAlert)

# prepare function argument(s)
var_uuid <- "uuid_example" # character | 
var_observation_prediction_request <- ObservationPredictionRequest$new("ref_photo_uuid_example", "is_executive_validation_example") # ObservationPredictionRequest | 

api_instance <- mosquitoalert_api$new()
# Configure API key authorization: cookieAuth
api_instance$api_client$api_keys["sessionid"] <- Sys.getenv("API_KEY")
# Configure API key authorization: tokenAuth
# api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$prediction_create(var_uuid, var_observation_prediction_requestdata_file = "result.txt")
result <- api_instance$observations_api$prediction_create(var_uuid, var_observation_prediction_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **character**|  | 
 **observation_prediction_request** | [**ObservationPredictionRequest**](ObservationPredictionRequest.md)|  | 

### Return type

[**ObservationPrediction**](ObservationPrediction.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [tokenAuth](../README.md#tokenAuth)

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

# **prediction_destroy**
> prediction_destroy(uuid)



### Example
```R
library(MosquitoAlert)

# prepare function argument(s)
var_uuid <- "uuid_example" # character | 

api_instance <- mosquitoalert_api$new()
# Configure API key authorization: cookieAuth
api_instance$api_client$api_keys["sessionid"] <- Sys.getenv("API_KEY")
# Configure API key authorization: tokenAuth
# api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
api_instance$observations_api$prediction_destroy(var_uuid)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **character**|  | 

### Return type

void (empty response body)

### Authorization

[cookieAuth](../README.md#cookieAuth), [tokenAuth](../README.md#tokenAuth)

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

# **prediction_retrieve**
> ObservationPrediction prediction_retrieve(uuid)



### Example
```R
library(MosquitoAlert)

# prepare function argument(s)
var_uuid <- "uuid_example" # character | 

api_instance <- mosquitoalert_api$new()
# Configure API key authorization: cookieAuth
api_instance$api_client$api_keys["sessionid"] <- Sys.getenv("API_KEY")
# Configure API key authorization: tokenAuth
# api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$prediction_retrieve(var_uuiddata_file = "result.txt")
result <- api_instance$observations_api$prediction_retrieve(var_uuid)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **character**|  | 

### Return type

[**ObservationPrediction**](ObservationPrediction.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [tokenAuth](../README.md#tokenAuth)

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
> Observation retrieve(uuid)



### Example
```R
library(MosquitoAlert)

# prepare function argument(s)
var_uuid <- "uuid_example" # character | 

api_instance <- mosquitoalert_api$new()
# Configure API key authorization: cookieAuth
api_instance$api_client$api_keys["sessionid"] <- Sys.getenv("API_KEY")
# Configure API key authorization: tokenAuth
# api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
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

[cookieAuth](../README.md#cookieAuth), [tokenAuth](../README.md#tokenAuth), [jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **401** |  |  -  |
| **404** |  |  -  |
| **200** |  |  -  |

