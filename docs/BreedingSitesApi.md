# BreedingSitesApi

All URIs are relative to *https://api.mosquitoalert.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**breeding_sites_create**](BreedingSitesApi.md#breeding_sites_create) | **POST** /breeding-sites/ | 
[**breeding_sites_destroy**](BreedingSitesApi.md#breeding_sites_destroy) | **DELETE** /breeding-sites/{uuid}/ | 
[**breeding_sites_list**](BreedingSitesApi.md#breeding_sites_list) | **GET** /breeding-sites/ | 
[**breeding_sites_retrieve**](BreedingSitesApi.md#breeding_sites_retrieve) | **GET** /breeding-sites/{uuid}/ | 


# **breeding_sites_create**
> BreedingSite breeding_sites_create(breeding_site_request)



### Example
```R
library(MosquitoAlert)

# prepare function argument(s)
var_breeding_site_request <- BreedingSiteRequest$new("created_at_example", "sent_at_example", LocationRequest$new("current", Location_point$new(123, 123)), c(SimplePhotoRequest$new(123)), "note_example", c("tags_example"), PackageRequest$new("name_example", 123, "language_example"), DeviceRequest$new("manufacturer_example", "model_example", "os_example", "os_version_example", "os_language_example"), "basin", "has_water_example", "in_public_area_example", "has_near_mosquitoes_example", "has_larvae_example") # BreedingSiteRequest | 

api_instance <- mosquitoalert_api$new()
# Configure API key authorization: cookieAuth
api_instance$api_client$api_keys["sessionid"] <- Sys.getenv("API_KEY")
# Configure API key authorization: tokenAuth
# api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
# Configure HTTP bearer authorization: jwtAuth
# api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$breeding_sites_create(var_breeding_site_requestdata_file = "result.txt")
result <- api_instance$breeding_sites_api$breeding_sites_create(var_breeding_site_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **breeding_site_request** | [**BreedingSiteRequest**](BreedingSiteRequest.md)|  | 

### Return type

[**BreedingSite**](BreedingSite.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [tokenAuth](../README.md#tokenAuth), [jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** |  |  -  |

# **breeding_sites_destroy**
> breeding_sites_destroy(uuid)



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
api_instance$breeding_sites_api$breeding_sites_destroy(var_uuid)
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
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **204** | No response body |  -  |

# **breeding_sites_list**
> PaginatedBreedingSiteList breeding_sites_list(created_at_after = var.created_at_after, created_at_before = var.created_at_before, has_photos = var.has_photos, location_country_id = var.location_country_id, location_nuts_2 = var.location_nuts_2, location_nuts_3 = var.location_nuts_3, order_by = var.order_by, page = var.page, page_size = var.page_size, received_at_after = var.received_at_after, received_at_before = var.received_at_before, short_id = var.short_id, updated_at_after = var.updated_at_after, updated_at_before = var.updated_at_before, user_uuid = var.user_uuid)



### Example
```R
library(MosquitoAlert)

# prepare function argument(s)
var_created_at_after <- "created_at_after_example" # character | Created at (Optional)
var_created_at_before <- "created_at_before_example" # character | Created at (Optional)
var_has_photos <- "has_photos_example" # character | Has any photo (Optional)
var_location_country_id <- 56 # integer |  (Optional)
var_location_nuts_2 <- "location_nuts_2_example" # character |  (Optional)
var_location_nuts_3 <- "location_nuts_3_example" # character |  (Optional)
var_order_by <- c("-created_at") # array[character] | Ordenamiento   (Optional)
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
# result <- api_instance$breeding_sites_list(created_at_after = var_created_at_after, created_at_before = var_created_at_before, has_photos = var_has_photos, location_country_id = var_location_country_id, location_nuts_2 = var_location_nuts_2, location_nuts_3 = var_location_nuts_3, order_by = var_order_by, page = var_page, page_size = var_page_size, received_at_after = var_received_at_after, received_at_before = var_received_at_before, short_id = var_short_id, updated_at_after = var_updated_at_after, updated_at_before = var_updated_at_before, user_uuid = var_user_uuiddata_file = "result.txt")
result <- api_instance$breeding_sites_api$breeding_sites_list(created_at_after = var_created_at_after, created_at_before = var_created_at_before, has_photos = var_has_photos, location_country_id = var_location_country_id, location_nuts_2 = var_location_nuts_2, location_nuts_3 = var_location_nuts_3, order_by = var_order_by, page = var_page, page_size = var_page_size, received_at_after = var_received_at_after, received_at_before = var_received_at_before, short_id = var_short_id, updated_at_after = var_updated_at_after, updated_at_before = var_updated_at_before, user_uuid = var_user_uuid)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **created_at_after** | **character**| Created at | [optional] 
 **created_at_before** | **character**| Created at | [optional] 
 **has_photos** | **character**| Has any photo | [optional] 
 **location_country_id** | **integer**|  | [optional] 
 **location_nuts_2** | **character**|  | [optional] 
 **location_nuts_3** | **character**|  | [optional] 
 **order_by** | Enum [-created_at, -received_at, created_at, received_at] | Ordenamiento   | [optional] 
 **page** | **integer**| A page number within the paginated result set. | [optional] 
 **page_size** | **integer**| Number of results to return per page. | [optional] 
 **received_at_after** | **character**| Received at | [optional] 
 **received_at_before** | **character**| Received at | [optional] 
 **short_id** | **character**| Short ID | [optional] 
 **updated_at_after** | **character**| Update at | [optional] 
 **updated_at_before** | **character**| Update at | [optional] 
 **user_uuid** | **character**|  | [optional] 

### Return type

[**PaginatedBreedingSiteList**](PaginatedBreedingSiteList.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [tokenAuth](../README.md#tokenAuth), [jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** |  |  -  |

# **breeding_sites_retrieve**
> BreedingSite breeding_sites_retrieve(uuid)



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
# result <- api_instance$breeding_sites_retrieve(var_uuiddata_file = "result.txt")
result <- api_instance$breeding_sites_api$breeding_sites_retrieve(var_uuid)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **character**|  | 

### Return type

[**BreedingSite**](BreedingSite.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [tokenAuth](../README.md#tokenAuth), [jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** |  |  -  |
