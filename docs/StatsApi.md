# StatsApi

All URIs are relative to *https://api.mosquitoalert.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list**](StatsApi.md#list) | **GET** /stats/ | 


# **list**
> PaginatedReportStatsResponseList list(area = var.area, cumulative = var.cumulative, date_from = var.date_from, date_to = var.date_to, group_by = var.group_by, interval = var.interval, level = var.level, page = var.page, page_size = var.page_size, type = var.type)



Aggregated report counts (for displaying data tables or charts, for example). The keys present on each row of `data` depend on `group_by` (always includes `count`, plus `date` if grouped by date, `region_id`/`region_code`/`region_name` if grouped by region, and `type` if grouped by type).

### Example
```R
library(MosquitoAlert)

# prepare function argument(s)
var_area <- "area_example" # character | \"\\<level\\>:\\<id\\>\", e.g. \"country:ES\" or \"nuts2:34\". (Optional)
var_cumulative <- "cumulative_example" # character | Whether to return cumulative counts over time. It only applies when grouping by date. Defaults to False. (Optional)
var_date_from <- "date_from_example" # character |  (Optional)
var_date_to <- "date_to_example" # character |  (Optional)
var_group_by <- c("date") # array[character] | Comma-separated subset of: date, type, region. (Optional)
var_interval <- "interval_example" # character | The interval at which to aggregate data when grouping by date. Defaults to week. (Optional)
var_level <- 56 # integer | The NUTS level to aggregate by when grouping by region. Defaults to NUTS 2. (Optional)
var_page <- 56 # integer | A page number within the paginated result set. (Optional)
var_page_size <- 56 # integer | Number of results to return per page. (Optional)
var_type <- c("bite") # array[character] | Comma-separated subset of: bite, adult, site. (Optional)

api_instance <- mosquitoalert_api$new()
# Configure API key authorization: tokenAuth
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
# Configure API key authorization: cookieAuth
# api_instance$api_client$api_keys["sessionid"] <- Sys.getenv("API_KEY")
# Configure HTTP bearer authorization: jwtAuth
# api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$list(area = var_area, cumulative = var_cumulative, date_from = var_date_from, date_to = var_date_to, group_by = var_group_by, interval = var_interval, level = var_level, page = var_page, page_size = var_page_size, type = var_typedata_file = "result.txt")
result <- api_instance$stats_api$list(area = var_area, cumulative = var_cumulative, date_from = var_date_from, date_to = var_date_to, group_by = var_group_by, interval = var_interval, level = var_level, page = var_page, page_size = var_page_size, type = var_type)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **area** | **character**| \&quot;\\&lt;level\\&gt;:\\&lt;id\\&gt;\&quot;, e.g. \&quot;country:ES\&quot; or \&quot;nuts2:34\&quot;. | [optional] 
 **cumulative** | **character**| Whether to return cumulative counts over time. It only applies when grouping by date. Defaults to False. | [optional] 
 **date_from** | **character**|  | [optional] 
 **date_to** | **character**|  | [optional] 
 **group_by** | Enum [date, type, region] | Comma-separated subset of: date, type, region. | [optional] 
 **interval** | Enum [day, month, week] | The interval at which to aggregate data when grouping by date. Defaults to week. | [optional] 
 **level** | Enum [2, 3] | The NUTS level to aggregate by when grouping by region. Defaults to NUTS 2. | [optional] 
 **page** | **integer**| A page number within the paginated result set. | [optional] 
 **page_size** | **integer**| Number of results to return per page. | [optional] 
 **type** | Enum [bite, adult, site] | Comma-separated subset of: bite, adult, site. | [optional] 

### Return type

[**PaginatedReportStatsResponseList**](PaginatedReportStatsResponseList.md)

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

