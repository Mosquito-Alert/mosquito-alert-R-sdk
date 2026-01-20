# TaxaApi

All URIs are relative to *https://api.mosquitoalert.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list**](TaxaApi.md#list) | **GET** /taxa/ | 
[**retrieve**](TaxaApi.md#retrieve) | **GET** /taxa/{id}/ | 
[**root_tree_retrieve**](TaxaApi.md#root_tree_retrieve) | **GET** /taxa/tree/ | 
[**tree_retrieve**](TaxaApi.md#tree_retrieve) | **GET** /taxa/{id}/tree/ | 


# **list**
> PaginatedTaxonList list(is_relevant = var.is_relevant, page = var.page, page_size = var.page_size, rank = var.rank)



### Example
```R
library(MosquitoAlert)

# prepare function argument(s)
var_is_relevant <- "is_relevant_example" # character |  (Optional)
var_page <- 56 # integer | Un número de página dentro del conjunto de resultados paginado. (Optional)
var_page_size <- 56 # integer | Número de resultados a devolver por página. (Optional)
var_rank <- c(123) # array[integer] |  (Optional)

api_instance <- mosquitoalert_api$new()
# Configure API key authorization: tokenAuth
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
# Configure API key authorization: cookieAuth
# api_instance$api_client$api_keys["sessionid"] <- Sys.getenv("API_KEY")
# Configure HTTP bearer authorization: jwtAuth
# api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$list(is_relevant = var_is_relevant, page = var_page, page_size = var_page_size, rank = var_rankdata_file = "result.txt")
result <- api_instance$taxa_api$list(is_relevant = var_is_relevant, page = var_page, page_size = var_page_size, rank = var_rank)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **is_relevant** | **character**|  | [optional] 
 **page** | **integer**| Un número de página dentro del conjunto de resultados paginado. | [optional] 
 **page_size** | **integer**| Número de resultados a devolver por página. | [optional] 
 **rank** | Enum [null, null, null, null, null, null, null] |  | [optional] 

### Return type

[**PaginatedTaxonList**](PaginatedTaxonList.md)

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
> Taxon retrieve(id)



### Example
```R
library(MosquitoAlert)

# prepare function argument(s)
var_id <- 56 # integer | Un valor de entero único que identifique este taxon.

api_instance <- mosquitoalert_api$new()
# Configure API key authorization: tokenAuth
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
# Configure API key authorization: cookieAuth
# api_instance$api_client$api_keys["sessionid"] <- Sys.getenv("API_KEY")
# Configure HTTP bearer authorization: jwtAuth
# api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$retrieve(var_iddata_file = "result.txt")
result <- api_instance$taxa_api$retrieve(var_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **integer**| Un valor de entero único que identifique este taxon. | 

### Return type

[**Taxon**](Taxon.md)

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

# **root_tree_retrieve**
> TaxonTreeNode root_tree_retrieve()



### Example
```R
library(MosquitoAlert)


api_instance <- mosquitoalert_api$new()
# Configure API key authorization: tokenAuth
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
# Configure API key authorization: cookieAuth
# api_instance$api_client$api_keys["sessionid"] <- Sys.getenv("API_KEY")
# Configure HTTP bearer authorization: jwtAuth
# api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$root_tree_retrieve(data_file = "result.txt")
result <- api_instance$taxa_api$root_tree_retrieve()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**TaxonTreeNode**](TaxonTreeNode.md)

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

# **tree_retrieve**
> TaxonTreeNode tree_retrieve(id)



### Example
```R
library(MosquitoAlert)

# prepare function argument(s)
var_id <- 56 # integer | Un valor de entero único que identifique este taxon.

api_instance <- mosquitoalert_api$new()
# Configure API key authorization: tokenAuth
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
# Configure API key authorization: cookieAuth
# api_instance$api_client$api_keys["sessionid"] <- Sys.getenv("API_KEY")
# Configure HTTP bearer authorization: jwtAuth
# api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$tree_retrieve(var_iddata_file = "result.txt")
result <- api_instance$taxa_api$tree_retrieve(var_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **integer**| Un valor de entero único que identifique este taxon. | 

### Return type

[**TaxonTreeNode**](TaxonTreeNode.md)

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

