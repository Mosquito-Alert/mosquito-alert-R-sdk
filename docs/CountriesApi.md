# CountriesApi

All URIs are relative to *https://api.mosquitoalert.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list**](CountriesApi.md#list) | **GET** /countries/ | 
[**retrieve**](CountriesApi.md#retrieve) | **GET** /countries/{id}/ | 


# **list**
> PaginatedCountryList list(page = var.page, page_size = var.page_size)



### Example
```R
library(MosquitoAlert)

# prepare function argument(s)
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
# result <- api_instance$list(page = var_page, page_size = var_page_sizedata_file = "result.txt")
result <- api_instance$countries_api$list(page = var_page, page_size = var_page_size)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **integer**| Un número de página dentro del conjunto de resultados paginado. | [optional] 
 **page_size** | **integer**| Número de resultados a devolver por página. | [optional] 

### Return type

[**PaginatedCountryList**](PaginatedCountryList.md)

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
> Country retrieve(id)



### Example
```R
library(MosquitoAlert)

# prepare function argument(s)
var_id <- 56 # integer | Un valor de entero único que identifique este europe country.

api_instance <- mosquitoalert_api$new()
# Configure API key authorization: tokenAuth
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
# Configure API key authorization: cookieAuth
# api_instance$api_client$api_keys["sessionid"] <- Sys.getenv("API_KEY")
# Configure HTTP bearer authorization: jwtAuth
# api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$retrieve(var_iddata_file = "result.txt")
result <- api_instance$countries_api$retrieve(var_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **integer**| Un valor de entero único que identifique este europe country. | 

### Return type

[**Country**](Country.md)

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

