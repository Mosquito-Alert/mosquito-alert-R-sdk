# CampaignsApi

All URIs are relative to *https://api.mosquitoalert.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**campaigns_list**](CampaignsApi.md#campaigns_list) | **GET** /campaigns/ | 
[**campaigns_retrieve**](CampaignsApi.md#campaigns_retrieve) | **GET** /campaigns/{id}/ | 


# **campaigns_list**
> PaginatedCampaignList campaigns_list(country_id = var.country_id, is_active = var.is_active, order_by = var.order_by, page = var.page, page_size = var.page_size)



### Example
```R
library(MosquitoAlert)

# prepare function argument(s)
var_country_id <- 56 # integer | Country in which the campaign is taking place (Optional)
var_is_active <- "is_active_example" # character |  (Optional)
var_order_by <- c("-end_date") # array[character] | Ordenamiento   (Optional)
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
# result <- api_instance$campaigns_list(country_id = var_country_id, is_active = var_is_active, order_by = var_order_by, page = var_page, page_size = var_page_sizedata_file = "result.txt")
result <- api_instance$campaigns_api$campaigns_list(country_id = var_country_id, is_active = var_is_active, order_by = var_order_by, page = var_page, page_size = var_page_size)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **country_id** | **integer**| Country in which the campaign is taking place | [optional] 
 **is_active** | **character**|  | [optional] 
 **order_by** | Enum [-end_date, -start_date, end_date, start_date] | Ordenamiento   | [optional] 
 **page** | **integer**| A page number within the paginated result set. | [optional] 
 **page_size** | **integer**| Number of results to return per page. | [optional] 

### Return type

[**PaginatedCampaignList**](PaginatedCampaignList.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [tokenAuth](../README.md#tokenAuth), [jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** |  |  -  |

# **campaigns_retrieve**
> Campaign campaigns_retrieve(id)



### Example
```R
library(MosquitoAlert)

# prepare function argument(s)
var_id <- 56 # integer | A unique integer value identifying this ow campaigns.

api_instance <- mosquitoalert_api$new()
# Configure API key authorization: cookieAuth
api_instance$api_client$api_keys["sessionid"] <- Sys.getenv("API_KEY")
# Configure API key authorization: tokenAuth
# api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
# Configure HTTP bearer authorization: jwtAuth
# api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$campaigns_retrieve(var_iddata_file = "result.txt")
result <- api_instance$campaigns_api$campaigns_retrieve(var_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **integer**| A unique integer value identifying this ow campaigns. | 

### Return type

[**Campaign**](Campaign.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [tokenAuth](../README.md#tokenAuth), [jwtAuth](../README.md#jwtAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** |  |  -  |

