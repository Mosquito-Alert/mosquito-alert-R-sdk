# BreedingSitesApi

All URIs are relative to *https://api.mosquitoalert.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](BreedingSitesApi.md#create) | **POST** /breeding-sites/ | 
[**destroy**](BreedingSitesApi.md#destroy) | **DELETE** /breeding-sites/{uuid}/ | 
[**geo_list**](BreedingSitesApi.md#geo_list) | **GET** /breeding-sites/geo/ | 
[**list**](BreedingSitesApi.md#list) | **GET** /breeding-sites/ | 
[**list_mine**](BreedingSitesApi.md#list_mine) | **GET** /me/breeding-sites/ | 
[**retrieve**](BreedingSitesApi.md#retrieve) | **GET** /breeding-sites/{uuid}/ | 


# **create**
> BreedingSite create(created_at, sent_at, location, photos, site_type, note = var.note, tags = var.tags, has_water = var.has_water, in_public_area = var.in_public_area, has_near_mosquitoes = var.has_near_mosquitoes, has_larvae = var.has_larvae)



### Example
```R
library(MosquitoAlert)

# prepare function argument(s)
var_created_at <- "created_at_example" # character | 
var_sent_at <- "sent_at_example" # character | 
var_location <- LocationRequest$new("auto", PointRequest$new(123, 123)) # LocationRequest | 
var_photos <- c(123) # array[data.frame] | 
var_site_type <- "site_type_example" # character | 
var_note <- "note_example" # character |  (Optional)
var_tags <- c("inner_example") # array[character] |  (Optional)
var_has_water <- "has_water_example" # character | Either if the user perceived water in the breeding site. (Optional)
var_in_public_area <- "in_public_area_example" # character | Either if the breeding site is found in a public area. (Optional)
var_has_near_mosquitoes <- "has_near_mosquitoes_example" # character | Either if the user perceived mosquitoes near the breeding site (less than 10 meters). (Optional)
var_has_larvae <- "has_larvae_example" # character | Either if the user perceived larvaes the breeding site. (Optional)

api_instance <- mosquitoalert_api$new()
# Configure API key authorization: tokenAuth
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
# Configure API key authorization: cookieAuth
# api_instance$api_client$api_keys["sessionid"] <- Sys.getenv("API_KEY")
# Configure HTTP bearer authorization: jwtAuth
# api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$create(var_created_at, var_sent_at, var_location, var_photos, var_site_type, note = var_note, tags = var_tags, has_water = var_has_water, in_public_area = var_in_public_area, has_near_mosquitoes = var_has_near_mosquitoes, has_larvae = var_has_larvaedata_file = "result.txt")
result <- api_instance$breeding_sites_api$create(var_created_at, var_sent_at, var_location, var_photos, var_site_type, note = var_note, tags = var_tags, has_water = var_has_water, in_public_area = var_in_public_area, has_near_mosquitoes = var_has_near_mosquitoes, has_larvae = var_has_larvae)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **created_at** | **character**|  | 
 **sent_at** | **character**|  | 
 **location** | [**LocationRequest**](LocationRequest.md)|  | 
 **photos** | list( **data.frame** )|  | 
 **site_type** | Enum [basin, bucket, fountain, small_container, storm_drain, well, other] |  | 
 **note** | **character**|  | [optional] 
 **tags** | list( **character** )|  | [optional] 
 **has_water** | **character**| Either if the user perceived water in the breeding site. | [optional] 
 **in_public_area** | **character**| Either if the breeding site is found in a public area. | [optional] 
 **has_near_mosquitoes** | **character**| Either if the user perceived mosquitoes near the breeding site (less than 10 meters). | [optional] 
 **has_larvae** | **character**| Either if the user perceived larvaes the breeding site. | [optional] 

### Return type

[**BreedingSite**](BreedingSite.md)

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
api_instance$breeding_sites_api$destroy(var_uuid)
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
> array[BreedingSiteGeoModel] geo_list(boundary_uuid = var.boundary_uuid, country_id = var.country_id, created_at_after = var.created_at_after, created_at_before = var.created_at_before, dist = 1000, geo_precision = var.geo_precision, has_larvae = var.has_larvae, has_near_mosquitoes = var.has_near_mosquitoes, has_photos = var.has_photos, has_water = var.has_water, order_by = var.order_by, point = var.point, received_at_after = var.received_at_after, received_at_before = var.received_at_before, search = var.search, short_id = var.short_id, site_type = var.site_type, tags = var.tags, updated_at_after = var.updated_at_after, updated_at_before = var.updated_at_before, user_uuid = var.user_uuid)



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
var_has_larvae <- "has_larvae_example" # character |  (Optional)
var_has_near_mosquitoes <- "has_near_mosquitoes_example" # character |  (Optional)
var_has_photos <- "has_photos_example" # character | Has any photo (Optional)
var_has_water <- "has_water_example" # character |  (Optional)
var_order_by <- c("-created_at") # array[character] | Ordenamiento   (Optional)
var_point <- c(123) # array[numeric] | Point represented in **x,y** format. Represents **point** in **Distance to point filter** (Optional)
var_received_at_after <- "received_at_after_example" # character | Received at (Optional)
var_received_at_before <- "received_at_before_example" # character | Received at (Optional)
var_search <- "search_example" # character | Un término de búsqueda. (Optional)
var_short_id <- "short_id_example" # character | Short ID (Optional)
var_site_type <- c("basin") # array[character] | Breeding site type.   (Optional)
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
# result <- api_instance$geo_list(boundary_uuid = var_boundary_uuid, country_id = var_country_id, created_at_after = var_created_at_after, created_at_before = var_created_at_before, dist = var_dist, geo_precision = var_geo_precision, has_larvae = var_has_larvae, has_near_mosquitoes = var_has_near_mosquitoes, has_photos = var_has_photos, has_water = var_has_water, order_by = var_order_by, point = var_point, received_at_after = var_received_at_after, received_at_before = var_received_at_before, search = var_search, short_id = var_short_id, site_type = var_site_type, tags = var_tags, updated_at_after = var_updated_at_after, updated_at_before = var_updated_at_before, user_uuid = var_user_uuiddata_file = "result.txt")
result <- api_instance$breeding_sites_api$geo_list(boundary_uuid = var_boundary_uuid, country_id = var_country_id, created_at_after = var_created_at_after, created_at_before = var_created_at_before, dist = var_dist, geo_precision = var_geo_precision, has_larvae = var_has_larvae, has_near_mosquitoes = var_has_near_mosquitoes, has_photos = var_has_photos, has_water = var_has_water, order_by = var_order_by, point = var_point, received_at_after = var_received_at_after, received_at_before = var_received_at_before, search = var_search, short_id = var_short_id, site_type = var_site_type, tags = var_tags, updated_at_after = var_updated_at_after, updated_at_before = var_updated_at_before, user_uuid = var_user_uuid)
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
 **has_larvae** | **character**|  | [optional] 
 **has_near_mosquitoes** | **character**|  | [optional] 
 **has_photos** | **character**| Has any photo | [optional] 
 **has_water** | **character**|  | [optional] 
 **order_by** | Enum [-created_at, -distance, -received_at, created_at, distance, received_at] | Ordenamiento   | [optional] 
 **point** | list( **numeric** )| Point represented in **x,y** format. Represents **point** in **Distance to point filter** | [optional] 
 **received_at_after** | **character**| Received at | [optional] 
 **received_at_before** | **character**| Received at | [optional] 
 **search** | **character**| Un término de búsqueda. | [optional] 
 **short_id** | **character**| Short ID | [optional] 
 **site_type** | Enum [basin, bucket, fountain, other, small_container, storm_drain, well] | Breeding site type.   | [optional] 
 **tags** | list( **character** )| Múltiples valores separados por comas. | [optional] 
 **updated_at_after** | **character**| Update at | [optional] 
 **updated_at_before** | **character**| Update at | [optional] 
 **user_uuid** | **character**|  | [optional] 

### Return type

[**array[BreedingSiteGeoModel]**](BreedingSiteGeoModel.md)

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
> PaginatedBreedingSiteList list(boundary_uuid = var.boundary_uuid, country_id = var.country_id, created_at_after = var.created_at_after, created_at_before = var.created_at_before, dist = 1000, format = var.format, geo_precision = var.geo_precision, has_larvae = var.has_larvae, has_near_mosquitoes = var.has_near_mosquitoes, has_photos = var.has_photos, has_water = var.has_water, order_by = var.order_by, page = var.page, page_size = var.page_size, point = var.point, received_at_after = var.received_at_after, received_at_before = var.received_at_before, search = var.search, short_id = var.short_id, site_type = var.site_type, tags = var.tags, updated_at_after = var.updated_at_after, updated_at_before = var.updated_at_before, user_uuid = var.user_uuid)



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
var_has_larvae <- "has_larvae_example" # character |  (Optional)
var_has_near_mosquitoes <- "has_near_mosquitoes_example" # character |  (Optional)
var_has_photos <- "has_photos_example" # character | Has any photo (Optional)
var_has_water <- "has_water_example" # character |  (Optional)
var_order_by <- c("-created_at") # array[character] | Ordenamiento   (Optional)
var_page <- 56 # integer | Un número de página dentro del conjunto de resultados paginado. (Optional)
var_page_size <- 56 # integer | Número de resultados a devolver por página. (Optional)
var_point <- c(123) # array[numeric] | Point represented in **x,y** format. Represents **point** in **Distance to point filter** (Optional)
var_received_at_after <- "received_at_after_example" # character | Received at (Optional)
var_received_at_before <- "received_at_before_example" # character | Received at (Optional)
var_search <- "search_example" # character | Un término de búsqueda. (Optional)
var_short_id <- "short_id_example" # character | Short ID (Optional)
var_site_type <- c("basin") # array[character] | Breeding site type.   (Optional)
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
# result <- api_instance$list(boundary_uuid = var_boundary_uuid, country_id = var_country_id, created_at_after = var_created_at_after, created_at_before = var_created_at_before, dist = var_dist, format = var_format, geo_precision = var_geo_precision, has_larvae = var_has_larvae, has_near_mosquitoes = var_has_near_mosquitoes, has_photos = var_has_photos, has_water = var_has_water, order_by = var_order_by, page = var_page, page_size = var_page_size, point = var_point, received_at_after = var_received_at_after, received_at_before = var_received_at_before, search = var_search, short_id = var_short_id, site_type = var_site_type, tags = var_tags, updated_at_after = var_updated_at_after, updated_at_before = var_updated_at_before, user_uuid = var_user_uuiddata_file = "result.txt")
result <- api_instance$breeding_sites_api$list(boundary_uuid = var_boundary_uuid, country_id = var_country_id, created_at_after = var_created_at_after, created_at_before = var_created_at_before, dist = var_dist, format = var_format, geo_precision = var_geo_precision, has_larvae = var_has_larvae, has_near_mosquitoes = var_has_near_mosquitoes, has_photos = var_has_photos, has_water = var_has_water, order_by = var_order_by, page = var_page, page_size = var_page_size, point = var_point, received_at_after = var_received_at_after, received_at_before = var_received_at_before, search = var_search, short_id = var_short_id, site_type = var_site_type, tags = var_tags, updated_at_after = var_updated_at_after, updated_at_before = var_updated_at_before, user_uuid = var_user_uuid)
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
 **has_larvae** | **character**|  | [optional] 
 **has_near_mosquitoes** | **character**|  | [optional] 
 **has_photos** | **character**| Has any photo | [optional] 
 **has_water** | **character**|  | [optional] 
 **order_by** | Enum [-created_at, -distance, -received_at, created_at, distance, received_at] | Ordenamiento   | [optional] 
 **page** | **integer**| Un número de página dentro del conjunto de resultados paginado. | [optional] 
 **page_size** | **integer**| Número de resultados a devolver por página. | [optional] 
 **point** | list( **numeric** )| Point represented in **x,y** format. Represents **point** in **Distance to point filter** | [optional] 
 **received_at_after** | **character**| Received at | [optional] 
 **received_at_before** | **character**| Received at | [optional] 
 **search** | **character**| Un término de búsqueda. | [optional] 
 **short_id** | **character**| Short ID | [optional] 
 **site_type** | Enum [basin, bucket, fountain, other, small_container, storm_drain, well] | Breeding site type.   | [optional] 
 **tags** | list( **character** )| Múltiples valores separados por comas. | [optional] 
 **updated_at_after** | **character**| Update at | [optional] 
 **updated_at_before** | **character**| Update at | [optional] 
 **user_uuid** | **character**|  | [optional] 

### Return type

[**PaginatedBreedingSiteList**](PaginatedBreedingSiteList.md)

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
> PaginatedBreedingSiteList list_mine(boundary_uuid = var.boundary_uuid, country_id = var.country_id, created_at_after = var.created_at_after, created_at_before = var.created_at_before, dist = 1000, format = var.format, geo_precision = var.geo_precision, has_larvae = var.has_larvae, has_near_mosquitoes = var.has_near_mosquitoes, has_photos = var.has_photos, has_water = var.has_water, order_by = var.order_by, page = var.page, page_size = var.page_size, point = var.point, received_at_after = var.received_at_after, received_at_before = var.received_at_before, search = var.search, short_id = var.short_id, site_type = var.site_type, tags = var.tags, updated_at_after = var.updated_at_after, updated_at_before = var.updated_at_before, user_uuid = var.user_uuid)



Get Current User's Breeding Sites

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
var_has_larvae <- "has_larvae_example" # character |  (Optional)
var_has_near_mosquitoes <- "has_near_mosquitoes_example" # character |  (Optional)
var_has_photos <- "has_photos_example" # character | Has any photo (Optional)
var_has_water <- "has_water_example" # character |  (Optional)
var_order_by <- c("-created_at") # array[character] | Ordenamiento   (Optional)
var_page <- 56 # integer | Un número de página dentro del conjunto de resultados paginado. (Optional)
var_page_size <- 56 # integer | Número de resultados a devolver por página. (Optional)
var_point <- c(123) # array[numeric] | Point represented in **x,y** format. Represents **point** in **Distance to point filter** (Optional)
var_received_at_after <- "received_at_after_example" # character | Received at (Optional)
var_received_at_before <- "received_at_before_example" # character | Received at (Optional)
var_search <- "search_example" # character | Un término de búsqueda. (Optional)
var_short_id <- "short_id_example" # character | Short ID (Optional)
var_site_type <- c("basin") # array[character] | Breeding site type.   (Optional)
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
# result <- api_instance$list_mine(boundary_uuid = var_boundary_uuid, country_id = var_country_id, created_at_after = var_created_at_after, created_at_before = var_created_at_before, dist = var_dist, format = var_format, geo_precision = var_geo_precision, has_larvae = var_has_larvae, has_near_mosquitoes = var_has_near_mosquitoes, has_photos = var_has_photos, has_water = var_has_water, order_by = var_order_by, page = var_page, page_size = var_page_size, point = var_point, received_at_after = var_received_at_after, received_at_before = var_received_at_before, search = var_search, short_id = var_short_id, site_type = var_site_type, tags = var_tags, updated_at_after = var_updated_at_after, updated_at_before = var_updated_at_before, user_uuid = var_user_uuiddata_file = "result.txt")
result <- api_instance$breeding_sites_api$list_mine(boundary_uuid = var_boundary_uuid, country_id = var_country_id, created_at_after = var_created_at_after, created_at_before = var_created_at_before, dist = var_dist, format = var_format, geo_precision = var_geo_precision, has_larvae = var_has_larvae, has_near_mosquitoes = var_has_near_mosquitoes, has_photos = var_has_photos, has_water = var_has_water, order_by = var_order_by, page = var_page, page_size = var_page_size, point = var_point, received_at_after = var_received_at_after, received_at_before = var_received_at_before, search = var_search, short_id = var_short_id, site_type = var_site_type, tags = var_tags, updated_at_after = var_updated_at_after, updated_at_before = var_updated_at_before, user_uuid = var_user_uuid)
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
 **has_larvae** | **character**|  | [optional] 
 **has_near_mosquitoes** | **character**|  | [optional] 
 **has_photos** | **character**| Has any photo | [optional] 
 **has_water** | **character**|  | [optional] 
 **order_by** | Enum [-created_at, -distance, -received_at, created_at, distance, received_at] | Ordenamiento   | [optional] 
 **page** | **integer**| Un número de página dentro del conjunto de resultados paginado. | [optional] 
 **page_size** | **integer**| Número de resultados a devolver por página. | [optional] 
 **point** | list( **numeric** )| Point represented in **x,y** format. Represents **point** in **Distance to point filter** | [optional] 
 **received_at_after** | **character**| Received at | [optional] 
 **received_at_before** | **character**| Received at | [optional] 
 **search** | **character**| Un término de búsqueda. | [optional] 
 **short_id** | **character**| Short ID | [optional] 
 **site_type** | Enum [basin, bucket, fountain, other, small_container, storm_drain, well] | Breeding site type.   | [optional] 
 **tags** | list( **character** )| Múltiples valores separados por comas. | [optional] 
 **updated_at_after** | **character**| Update at | [optional] 
 **updated_at_before** | **character**| Update at | [optional] 
 **user_uuid** | **character**|  | [optional] 

### Return type

[**PaginatedBreedingSiteList**](PaginatedBreedingSiteList.md)

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
> BreedingSite retrieve(uuid)



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
result <- api_instance$breeding_sites_api$retrieve(var_uuid)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **character**|  | 

### Return type

[**BreedingSite**](BreedingSite.md)

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

