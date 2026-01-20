# CampaignsApi

All URIs are relative to *https://api.mosquitoalert.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list**](CampaignsApi.md#list) | **GET** /campaigns/ | 
[**retrieve**](CampaignsApi.md#retrieve) | **GET** /campaigns/{id}/ | 


# **list**
> PaginatedCampaignList list(country_id = var.country_id, is_active = var.is_active, order_by = var.order_by, page = var.page, page_size = var.page_size)



### Example
```R
library(MosquitoAlert)

# prepare function argument(s)
var_country_id <- 56 # integer | Country in which the campaign is taking place (Optional)
var_is_active <- "is_active_example" # character |  (Optional)
var_order_by <- c("-end_date") # array[character] | Ordenamiento   (Optional)
var_page <- 56 # integer | Un número de página dentro del conjunto de resultados paginado. (Optional)
var_page_size <- 56 # integer | Número de resultados a devolver por página. (Optional)

api_instance <- mosquitoalert_api$new()
# Configure API key authorization: tokenAuth
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
# Configure API key authorization: cookieAuth
# api_instance$api_client$api_keys["sessionid"] <- Sys.getenv("API_KEY")
# Configure HTTP bearer authorization: jwtAuth
# api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$list(country_id = var_country_id, is_active = var_is_active, order_by = var_order_by, page = var_page, page_size = var_page_sizedata_file = "result.txt")
result <- api_instance$campaigns_api$list(country_id = var_country_id, is_active = var_is_active, order_by = var_order_by, page = var_page, page_size = var_page_size)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **country_id** | **integer**| Country in which the campaign is taking place | [optional] 
 **is_active** | **character**|  | [optional] 
 **order_by** | Enum [-end_date, -start_date, end_date, start_date] | Ordenamiento   | [optional] 
 **page** | **integer**| Un número de página dentro del conjunto de resultados paginado. | [optional] 
 **page_size** | **integer**| Número de resultados a devolver por página. | [optional] 

### Return type

[**PaginatedCampaignList**](PaginatedCampaignList.md)

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
> Campaign retrieve(id)



### Example
```R
library(MosquitoAlert)

# prepare function argument(s)
var_id <- 56 # integer | Un valor de entero único que identifique este ow campaigns.

api_instance <- mosquitoalert_api$new()
# Configure API key authorization: tokenAuth
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
# Configure API key authorization: cookieAuth
# api_instance$api_client$api_keys["sessionid"] <- Sys.getenv("API_KEY")
# Configure HTTP bearer authorization: jwtAuth
# api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$retrieve(var_iddata_file = "result.txt")
result <- api_instance$campaigns_api$retrieve(var_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **integer**| Un valor de entero único que identifique este ow campaigns. | 

### Return type

[**Campaign**](Campaign.md)

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

