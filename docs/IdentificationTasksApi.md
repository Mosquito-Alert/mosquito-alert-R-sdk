# IdentificationTasksApi

All URIs are relative to *https://api.mosquitoalert.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**annotations_create**](IdentificationTasksApi.md#annotations_create) | **POST** /identification-tasks/{observation_uuid}/annotations/ | 
[**annotations_list**](IdentificationTasksApi.md#annotations_list) | **GET** /identification-tasks/{observation_uuid}/annotations/ | 
[**annotations_list_mine**](IdentificationTasksApi.md#annotations_list_mine) | **GET** /me/identification-tasks/annotations/ | 
[**annotations_retrieve**](IdentificationTasksApi.md#annotations_retrieve) | **GET** /identification-tasks/{observation_uuid}/annotations/{id}/ | 
[**assign_next**](IdentificationTasksApi.md#assign_next) | **POST** /identification-tasks/assignments/next/ | 
[**list**](IdentificationTasksApi.md#list) | **GET** /identification-tasks/ | 
[**list_mine**](IdentificationTasksApi.md#list_mine) | **GET** /me/identification-tasks/ | 
[**predictions_create**](IdentificationTasksApi.md#predictions_create) | **POST** /identification-tasks/{observation_uuid}/predictions/ | 
[**predictions_destroy**](IdentificationTasksApi.md#predictions_destroy) | **DELETE** /identification-tasks/{observation_uuid}/predictions/{photo_uuid}/ | 
[**predictions_list**](IdentificationTasksApi.md#predictions_list) | **GET** /identification-tasks/{observation_uuid}/predictions/ | 
[**predictions_partial_update**](IdentificationTasksApi.md#predictions_partial_update) | **PATCH** /identification-tasks/{observation_uuid}/predictions/{photo_uuid}/ | 
[**predictions_retrieve**](IdentificationTasksApi.md#predictions_retrieve) | **GET** /identification-tasks/{observation_uuid}/predictions/{photo_uuid}/ | 
[**predictions_update**](IdentificationTasksApi.md#predictions_update) | **PUT** /identification-tasks/{observation_uuid}/predictions/{photo_uuid}/ | 
[**retrieve**](IdentificationTasksApi.md#retrieve) | **GET** /identification-tasks/{observation_uuid}/ | 


# **annotations_create**
> Annotation annotations_create(observation_uuid, annotation_request)



### Example
```R
library(MosquitoAlert)

# prepare function argument(s)
var_observation_uuid <- "observation_uuid_example" # character | UUID of the Observation
var_annotation_request <- AnnotationRequest$new(AnnotationClassificationRequest$new(123, "definitely"), "best_photo_uuid_example", AnnotationCharacteristicsRequest$new("male", "is_blood_fed_example", "is_gravid_example"), AnnotationFeedbackRequest$new("public_note_example", "internal_note_example", "user_note_example"), "is_flagged_example", "is_decisive_example", ObservationFlagsRequest$new("is_favourite_example", "is_visible_example"), c("tags_example")) # AnnotationRequest | 

api_instance <- mosquitoalert_api$new()
# Configure API key authorization: tokenAuth
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
# Configure API key authorization: cookieAuth
# api_instance$api_client$api_keys["sessionid"] <- Sys.getenv("API_KEY")
# Configure HTTP bearer authorization: jwtAuth
# api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$annotations_create(var_observation_uuid, var_annotation_requestdata_file = "result.txt")
result <- api_instance$identification_tasks_api$annotations_create(var_observation_uuid, var_annotation_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **observation_uuid** | **character**| UUID of the Observation | 
 **annotation_request** | [**AnnotationRequest**](AnnotationRequest.md)|  | 

### Return type

[**Annotation**](Annotation.md)

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

# **annotations_list**
> PaginatedAnnotationList annotations_list(observation_uuid, classification_confidence_label = var.classification_confidence_label, classification_confidence_max = var.classification_confidence_max, classification_confidence_min = var.classification_confidence_min, classification_taxon_ids = var.classification_taxon_ids, created_at_after = var.created_at_after, created_at_before = var.created_at_before, is_decisive = var.is_decisive, is_favourite = var.is_favourite, is_flagged = var.is_flagged, order_by = var.order_by, page = var.page, page_size = var.page_size, type = var.type, updated_at_after = var.updated_at_after, updated_at_before = var.updated_at_before, user_ids = var.user_ids)



### Example
```R
library(MosquitoAlert)

# prepare function argument(s)
var_observation_uuid <- "observation_uuid_example" # character | UUID of the Observation
var_classification_confidence_label <- "classification_confidence_label_example" # character |  (Optional)
var_classification_confidence_max <- 3.4 # numeric |  (Optional)
var_classification_confidence_min <- 3.4 # numeric |  (Optional)
var_classification_taxon_ids <- c(123) # array[integer] |  (Optional)
var_created_at_after <- "created_at_after_example" # character | Created at (Optional)
var_created_at_before <- "created_at_before_example" # character | Created at (Optional)
var_is_decisive <- "is_decisive_example" # character |  (Optional)
var_is_favourite <- "is_favourite_example" # character |  (Optional)
var_is_flagged <- "is_flagged_example" # character |  (Optional)
var_order_by <- c("-created_at") # array[character] | Ordenado   (Optional)
var_page <- 56 # integer | A page number within the paginated result set. (Optional)
var_page_size <- 56 # integer | Number of results to return per page. (Optional)
var_type <- "type_example" # character |  (Optional)
var_updated_at_after <- "updated_at_after_example" # character | Updated at (Optional)
var_updated_at_before <- "updated_at_before_example" # character | Updated at (Optional)
var_user_ids <- c(123) # array[integer] |  (Optional)

api_instance <- mosquitoalert_api$new()
# Configure API key authorization: tokenAuth
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
# Configure API key authorization: cookieAuth
# api_instance$api_client$api_keys["sessionid"] <- Sys.getenv("API_KEY")
# Configure HTTP bearer authorization: jwtAuth
# api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$annotations_list(var_observation_uuid, classification_confidence_label = var_classification_confidence_label, classification_confidence_max = var_classification_confidence_max, classification_confidence_min = var_classification_confidence_min, classification_taxon_ids = var_classification_taxon_ids, created_at_after = var_created_at_after, created_at_before = var_created_at_before, is_decisive = var_is_decisive, is_favourite = var_is_favourite, is_flagged = var_is_flagged, order_by = var_order_by, page = var_page, page_size = var_page_size, type = var_type, updated_at_after = var_updated_at_after, updated_at_before = var_updated_at_before, user_ids = var_user_idsdata_file = "result.txt")
result <- api_instance$identification_tasks_api$annotations_list(var_observation_uuid, classification_confidence_label = var_classification_confidence_label, classification_confidence_max = var_classification_confidence_max, classification_confidence_min = var_classification_confidence_min, classification_taxon_ids = var_classification_taxon_ids, created_at_after = var_created_at_after, created_at_before = var_created_at_before, is_decisive = var_is_decisive, is_favourite = var_is_favourite, is_flagged = var_is_flagged, order_by = var_order_by, page = var_page, page_size = var_page_size, type = var_type, updated_at_after = var_updated_at_after, updated_at_before = var_updated_at_before, user_ids = var_user_ids)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **observation_uuid** | **character**| UUID of the Observation | 
 **classification_confidence_label** | Enum [definitely, probably] |  | [optional] 
 **classification_confidence_max** | **numeric**|  | [optional] 
 **classification_confidence_min** | **numeric**|  | [optional] 
 **classification_taxon_ids** | list( **integer** )|  | [optional] 
 **created_at_after** | **character**| Created at | [optional] 
 **created_at_before** | **character**| Created at | [optional] 
 **is_decisive** | **character**|  | [optional] 
 **is_favourite** | **character**|  | [optional] 
 **is_flagged** | **character**|  | [optional] 
 **order_by** | Enum [-created_at, -updated_at, created_at, updated_at] | Ordenado   | [optional] 
 **page** | **integer**| A page number within the paginated result set. | [optional] 
 **page_size** | **integer**| Number of results to return per page. | [optional] 
 **type** | Enum [long, short] |  | [optional] 
 **updated_at_after** | **character**| Updated at | [optional] 
 **updated_at_before** | **character**| Updated at | [optional] 
 **user_ids** | list( **integer** )|  | [optional] 

### Return type

[**PaginatedAnnotationList**](PaginatedAnnotationList.md)

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

# **annotations_list_mine**
> PaginatedAnnotationList annotations_list_mine(classification_confidence_label = var.classification_confidence_label, classification_confidence_max = var.classification_confidence_max, classification_confidence_min = var.classification_confidence_min, classification_taxon_ids = var.classification_taxon_ids, created_at_after = var.created_at_after, created_at_before = var.created_at_before, is_decisive = var.is_decisive, is_favourite = var.is_favourite, is_flagged = var.is_flagged, order_by = var.order_by, page = var.page, page_size = var.page_size, type = var.type, updated_at_after = var.updated_at_after, updated_at_before = var.updated_at_before, user_ids = var.user_ids)



Get my annotations

### Example
```R
library(MosquitoAlert)

# prepare function argument(s)
var_classification_confidence_label <- "classification_confidence_label_example" # character |  (Optional)
var_classification_confidence_max <- 3.4 # numeric |  (Optional)
var_classification_confidence_min <- 3.4 # numeric |  (Optional)
var_classification_taxon_ids <- c(123) # array[integer] |  (Optional)
var_created_at_after <- "created_at_after_example" # character | Created at (Optional)
var_created_at_before <- "created_at_before_example" # character | Created at (Optional)
var_is_decisive <- "is_decisive_example" # character |  (Optional)
var_is_favourite <- "is_favourite_example" # character |  (Optional)
var_is_flagged <- "is_flagged_example" # character |  (Optional)
var_order_by <- c("-created_at") # array[character] | Ordenado   (Optional)
var_page <- 56 # integer | A page number within the paginated result set. (Optional)
var_page_size <- 56 # integer | Number of results to return per page. (Optional)
var_type <- "type_example" # character |  (Optional)
var_updated_at_after <- "updated_at_after_example" # character | Updated at (Optional)
var_updated_at_before <- "updated_at_before_example" # character | Updated at (Optional)
var_user_ids <- c(123) # array[integer] |  (Optional)

api_instance <- mosquitoalert_api$new()
# Configure API key authorization: tokenAuth
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
# Configure API key authorization: cookieAuth
# api_instance$api_client$api_keys["sessionid"] <- Sys.getenv("API_KEY")
# Configure HTTP bearer authorization: jwtAuth
# api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$annotations_list_mine(classification_confidence_label = var_classification_confidence_label, classification_confidence_max = var_classification_confidence_max, classification_confidence_min = var_classification_confidence_min, classification_taxon_ids = var_classification_taxon_ids, created_at_after = var_created_at_after, created_at_before = var_created_at_before, is_decisive = var_is_decisive, is_favourite = var_is_favourite, is_flagged = var_is_flagged, order_by = var_order_by, page = var_page, page_size = var_page_size, type = var_type, updated_at_after = var_updated_at_after, updated_at_before = var_updated_at_before, user_ids = var_user_idsdata_file = "result.txt")
result <- api_instance$identification_tasks_api$annotations_list_mine(classification_confidence_label = var_classification_confidence_label, classification_confidence_max = var_classification_confidence_max, classification_confidence_min = var_classification_confidence_min, classification_taxon_ids = var_classification_taxon_ids, created_at_after = var_created_at_after, created_at_before = var_created_at_before, is_decisive = var_is_decisive, is_favourite = var_is_favourite, is_flagged = var_is_flagged, order_by = var_order_by, page = var_page, page_size = var_page_size, type = var_type, updated_at_after = var_updated_at_after, updated_at_before = var_updated_at_before, user_ids = var_user_ids)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **classification_confidence_label** | Enum [definitely, probably] |  | [optional] 
 **classification_confidence_max** | **numeric**|  | [optional] 
 **classification_confidence_min** | **numeric**|  | [optional] 
 **classification_taxon_ids** | list( **integer** )|  | [optional] 
 **created_at_after** | **character**| Created at | [optional] 
 **created_at_before** | **character**| Created at | [optional] 
 **is_decisive** | **character**|  | [optional] 
 **is_favourite** | **character**|  | [optional] 
 **is_flagged** | **character**|  | [optional] 
 **order_by** | Enum [-created_at, -updated_at, created_at, updated_at] | Ordenado   | [optional] 
 **page** | **integer**| A page number within the paginated result set. | [optional] 
 **page_size** | **integer**| Number of results to return per page. | [optional] 
 **type** | Enum [long, short] |  | [optional] 
 **updated_at_after** | **character**| Updated at | [optional] 
 **updated_at_before** | **character**| Updated at | [optional] 
 **user_ids** | list( **integer** )|  | [optional] 

### Return type

[**PaginatedAnnotationList**](PaginatedAnnotationList.md)

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

# **annotations_retrieve**
> Annotation annotations_retrieve(id, observation_uuid)



### Example
```R
library(MosquitoAlert)

# prepare function argument(s)
var_id <- 56 # integer | A unique integer value identifying this expert report annotation.
var_observation_uuid <- "observation_uuid_example" # character | UUID of the Observation

api_instance <- mosquitoalert_api$new()
# Configure API key authorization: tokenAuth
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
# Configure API key authorization: cookieAuth
# api_instance$api_client$api_keys["sessionid"] <- Sys.getenv("API_KEY")
# Configure HTTP bearer authorization: jwtAuth
# api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$annotations_retrieve(var_id, var_observation_uuiddata_file = "result.txt")
result <- api_instance$identification_tasks_api$annotations_retrieve(var_id, var_observation_uuid)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **integer**| A unique integer value identifying this expert report annotation. | 
 **observation_uuid** | **character**| UUID of the Observation | 

### Return type

[**Annotation**](Annotation.md)

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

# **assign_next**
> Assignment assign_next()



Assign the next available identification task.

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
# result <- api_instance$assign_next(data_file = "result.txt")
result <- api_instance$identification_tasks_api$assign_next()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Assignment**](Assignment.md)

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
| **201** |  |  -  |
| **204** | No available tasks pending to assign |  -  |

# **list**
> PaginatedIdentificationTaskList list(annotator_ids = var.annotator_ids, assignee_ids = var.assignee_ids, created_at_after = var.created_at_after, created_at_before = var.created_at_before, fully_predicted = var.fully_predicted, is_flagged = var.is_flagged, is_safe = var.is_safe, num_annotations_max = var.num_annotations_max, num_annotations_min = var.num_annotations_min, observation_country_ids = var.observation_country_ids, order_by = var.order_by, page = var.page, page_size = var.page_size, result_agreement_max = var.result_agreement_max, result_agreement_min = var.result_agreement_min, result_confidence_max = var.result_confidence_max, result_confidence_min = var.result_confidence_min, result_source = var.result_source, result_taxon_ids = var.result_taxon_ids, result_uncertainty_max = var.result_uncertainty_max, result_uncertainty_min = var.result_uncertainty_min, review_type = var.review_type, status = var.status, updated_at_after = var.updated_at_after, updated_at_before = var.updated_at_before)



### Example
```R
library(MosquitoAlert)

# prepare function argument(s)
var_annotator_ids <- c(123) # array[integer] |  (Optional)
var_assignee_ids <- c(123) # array[integer] |  (Optional)
var_created_at_after <- "created_at_after_example" # character | Created at (Optional)
var_created_at_before <- "created_at_before_example" # character | Created at (Optional)
var_fully_predicted <- "fully_predicted_example" # character | Filters identification task based on whether all associated photos have predictions. Set to True to include identification tasks where every photo has a prediction; set to False to include identification tasks where at least one photo is missing a prediction. (Optional)
var_is_flagged <- "is_flagged_example" # character |  (Optional)
var_is_safe <- "is_safe_example" # character |  (Optional)
var_num_annotations_max <- 56 # integer |  (Optional)
var_num_annotations_min <- 56 # integer |  (Optional)
var_observation_country_ids <- c(123) # array[integer] |  (Optional)
var_order_by <- c("-created_at") # array[character] | Ordenado   (Optional)
var_page <- 56 # integer | A page number within the paginated result set. (Optional)
var_page_size <- 56 # integer | Number of results to return per page. (Optional)
var_result_agreement_max <- 3.4 # numeric |  (Optional)
var_result_agreement_min <- 3.4 # numeric |  (Optional)
var_result_confidence_max <- 3.4 # numeric |  (Optional)
var_result_confidence_min <- 3.4 # numeric |  (Optional)
var_result_source <- "result_source_example" # character |  (Optional)
var_result_taxon_ids <- c(123) # array[integer] |  (Optional)
var_result_uncertainty_max <- 3.4 # numeric |  (Optional)
var_result_uncertainty_min <- 3.4 # numeric |  (Optional)
var_review_type <- "review_type_example" # character |  (Optional)
var_status <- c("archived") # array[character] |  (Optional)
var_updated_at_after <- "updated_at_after_example" # character | Update at (Optional)
var_updated_at_before <- "updated_at_before_example" # character | Update at (Optional)

api_instance <- mosquitoalert_api$new()
# Configure API key authorization: tokenAuth
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
# Configure API key authorization: cookieAuth
# api_instance$api_client$api_keys["sessionid"] <- Sys.getenv("API_KEY")
# Configure HTTP bearer authorization: jwtAuth
# api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$list(annotator_ids = var_annotator_ids, assignee_ids = var_assignee_ids, created_at_after = var_created_at_after, created_at_before = var_created_at_before, fully_predicted = var_fully_predicted, is_flagged = var_is_flagged, is_safe = var_is_safe, num_annotations_max = var_num_annotations_max, num_annotations_min = var_num_annotations_min, observation_country_ids = var_observation_country_ids, order_by = var_order_by, page = var_page, page_size = var_page_size, result_agreement_max = var_result_agreement_max, result_agreement_min = var_result_agreement_min, result_confidence_max = var_result_confidence_max, result_confidence_min = var_result_confidence_min, result_source = var_result_source, result_taxon_ids = var_result_taxon_ids, result_uncertainty_max = var_result_uncertainty_max, result_uncertainty_min = var_result_uncertainty_min, review_type = var_review_type, status = var_status, updated_at_after = var_updated_at_after, updated_at_before = var_updated_at_beforedata_file = "result.txt")
result <- api_instance$identification_tasks_api$list(annotator_ids = var_annotator_ids, assignee_ids = var_assignee_ids, created_at_after = var_created_at_after, created_at_before = var_created_at_before, fully_predicted = var_fully_predicted, is_flagged = var_is_flagged, is_safe = var_is_safe, num_annotations_max = var_num_annotations_max, num_annotations_min = var_num_annotations_min, observation_country_ids = var_observation_country_ids, order_by = var_order_by, page = var_page, page_size = var_page_size, result_agreement_max = var_result_agreement_max, result_agreement_min = var_result_agreement_min, result_confidence_max = var_result_confidence_max, result_confidence_min = var_result_confidence_min, result_source = var_result_source, result_taxon_ids = var_result_taxon_ids, result_uncertainty_max = var_result_uncertainty_max, result_uncertainty_min = var_result_uncertainty_min, review_type = var_review_type, status = var_status, updated_at_after = var_updated_at_after, updated_at_before = var_updated_at_before)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **annotator_ids** | list( **integer** )|  | [optional] 
 **assignee_ids** | list( **integer** )|  | [optional] 
 **created_at_after** | **character**| Created at | [optional] 
 **created_at_before** | **character**| Created at | [optional] 
 **fully_predicted** | **character**| Filters identification task based on whether all associated photos have predictions. Set to True to include identification tasks where every photo has a prediction; set to False to include identification tasks where at least one photo is missing a prediction. | [optional] 
 **is_flagged** | **character**|  | [optional] 
 **is_safe** | **character**|  | [optional] 
 **num_annotations_max** | **integer**|  | [optional] 
 **num_annotations_min** | **integer**|  | [optional] 
 **observation_country_ids** | list( **integer** )|  | [optional] 
 **order_by** | Enum [-created_at, -updated_at, created_at, updated_at] | Ordenado   | [optional] 
 **page** | **integer**| A page number within the paginated result set. | [optional] 
 **page_size** | **integer**| Number of results to return per page. | [optional] 
 **result_agreement_max** | **numeric**|  | [optional] 
 **result_agreement_min** | **numeric**|  | [optional] 
 **result_confidence_max** | **numeric**|  | [optional] 
 **result_confidence_min** | **numeric**|  | [optional] 
 **result_source** | Enum [ai, expert] |  | [optional] 
 **result_taxon_ids** | list( **integer** )|  | [optional] 
 **result_uncertainty_max** | **numeric**|  | [optional] 
 **result_uncertainty_min** | **numeric**|  | [optional] 
 **review_type** | Enum [agree, overwrite] |  | [optional] 
 **status** | Enum [archived, conflict, done, open, review] |  | [optional] 
 **updated_at_after** | **character**| Update at | [optional] 
 **updated_at_before** | **character**| Update at | [optional] 

### Return type

[**PaginatedIdentificationTaskList**](PaginatedIdentificationTaskList.md)

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

# **list_mine**
> PaginatedIdentificationTaskList list_mine(annotator_ids = var.annotator_ids, assignee_ids = var.assignee_ids, created_at_after = var.created_at_after, created_at_before = var.created_at_before, fully_predicted = var.fully_predicted, is_flagged = var.is_flagged, is_safe = var.is_safe, num_annotations_max = var.num_annotations_max, num_annotations_min = var.num_annotations_min, observation_country_ids = var.observation_country_ids, order_by = var.order_by, page = var.page, page_size = var.page_size, result_agreement_max = var.result_agreement_max, result_agreement_min = var.result_agreement_min, result_confidence_max = var.result_confidence_max, result_confidence_min = var.result_confidence_min, result_source = var.result_source, result_taxon_ids = var.result_taxon_ids, result_uncertainty_max = var.result_uncertainty_max, result_uncertainty_min = var.result_uncertainty_min, review_type = var.review_type, status = var.status, updated_at_after = var.updated_at_after, updated_at_before = var.updated_at_before)



Get identification tasks annotated by me

### Example
```R
library(MosquitoAlert)

# prepare function argument(s)
var_annotator_ids <- c(123) # array[integer] |  (Optional)
var_assignee_ids <- c(123) # array[integer] |  (Optional)
var_created_at_after <- "created_at_after_example" # character | Created at (Optional)
var_created_at_before <- "created_at_before_example" # character | Created at (Optional)
var_fully_predicted <- "fully_predicted_example" # character | Filters identification task based on whether all associated photos have predictions. Set to True to include identification tasks where every photo has a prediction; set to False to include identification tasks where at least one photo is missing a prediction. (Optional)
var_is_flagged <- "is_flagged_example" # character |  (Optional)
var_is_safe <- "is_safe_example" # character |  (Optional)
var_num_annotations_max <- 56 # integer |  (Optional)
var_num_annotations_min <- 56 # integer |  (Optional)
var_observation_country_ids <- c(123) # array[integer] |  (Optional)
var_order_by <- c("-created_at") # array[character] | Ordenado   (Optional)
var_page <- 56 # integer | A page number within the paginated result set. (Optional)
var_page_size <- 56 # integer | Number of results to return per page. (Optional)
var_result_agreement_max <- 3.4 # numeric |  (Optional)
var_result_agreement_min <- 3.4 # numeric |  (Optional)
var_result_confidence_max <- 3.4 # numeric |  (Optional)
var_result_confidence_min <- 3.4 # numeric |  (Optional)
var_result_source <- "result_source_example" # character |  (Optional)
var_result_taxon_ids <- c(123) # array[integer] |  (Optional)
var_result_uncertainty_max <- 3.4 # numeric |  (Optional)
var_result_uncertainty_min <- 3.4 # numeric |  (Optional)
var_review_type <- "review_type_example" # character |  (Optional)
var_status <- c("archived") # array[character] |  (Optional)
var_updated_at_after <- "updated_at_after_example" # character | Update at (Optional)
var_updated_at_before <- "updated_at_before_example" # character | Update at (Optional)

api_instance <- mosquitoalert_api$new()
# Configure API key authorization: tokenAuth
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
# Configure API key authorization: cookieAuth
# api_instance$api_client$api_keys["sessionid"] <- Sys.getenv("API_KEY")
# Configure HTTP bearer authorization: jwtAuth
# api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$list_mine(annotator_ids = var_annotator_ids, assignee_ids = var_assignee_ids, created_at_after = var_created_at_after, created_at_before = var_created_at_before, fully_predicted = var_fully_predicted, is_flagged = var_is_flagged, is_safe = var_is_safe, num_annotations_max = var_num_annotations_max, num_annotations_min = var_num_annotations_min, observation_country_ids = var_observation_country_ids, order_by = var_order_by, page = var_page, page_size = var_page_size, result_agreement_max = var_result_agreement_max, result_agreement_min = var_result_agreement_min, result_confidence_max = var_result_confidence_max, result_confidence_min = var_result_confidence_min, result_source = var_result_source, result_taxon_ids = var_result_taxon_ids, result_uncertainty_max = var_result_uncertainty_max, result_uncertainty_min = var_result_uncertainty_min, review_type = var_review_type, status = var_status, updated_at_after = var_updated_at_after, updated_at_before = var_updated_at_beforedata_file = "result.txt")
result <- api_instance$identification_tasks_api$list_mine(annotator_ids = var_annotator_ids, assignee_ids = var_assignee_ids, created_at_after = var_created_at_after, created_at_before = var_created_at_before, fully_predicted = var_fully_predicted, is_flagged = var_is_flagged, is_safe = var_is_safe, num_annotations_max = var_num_annotations_max, num_annotations_min = var_num_annotations_min, observation_country_ids = var_observation_country_ids, order_by = var_order_by, page = var_page, page_size = var_page_size, result_agreement_max = var_result_agreement_max, result_agreement_min = var_result_agreement_min, result_confidence_max = var_result_confidence_max, result_confidence_min = var_result_confidence_min, result_source = var_result_source, result_taxon_ids = var_result_taxon_ids, result_uncertainty_max = var_result_uncertainty_max, result_uncertainty_min = var_result_uncertainty_min, review_type = var_review_type, status = var_status, updated_at_after = var_updated_at_after, updated_at_before = var_updated_at_before)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **annotator_ids** | list( **integer** )|  | [optional] 
 **assignee_ids** | list( **integer** )|  | [optional] 
 **created_at_after** | **character**| Created at | [optional] 
 **created_at_before** | **character**| Created at | [optional] 
 **fully_predicted** | **character**| Filters identification task based on whether all associated photos have predictions. Set to True to include identification tasks where every photo has a prediction; set to False to include identification tasks where at least one photo is missing a prediction. | [optional] 
 **is_flagged** | **character**|  | [optional] 
 **is_safe** | **character**|  | [optional] 
 **num_annotations_max** | **integer**|  | [optional] 
 **num_annotations_min** | **integer**|  | [optional] 
 **observation_country_ids** | list( **integer** )|  | [optional] 
 **order_by** | Enum [-created_at, -updated_at, created_at, updated_at] | Ordenado   | [optional] 
 **page** | **integer**| A page number within the paginated result set. | [optional] 
 **page_size** | **integer**| Number of results to return per page. | [optional] 
 **result_agreement_max** | **numeric**|  | [optional] 
 **result_agreement_min** | **numeric**|  | [optional] 
 **result_confidence_max** | **numeric**|  | [optional] 
 **result_confidence_min** | **numeric**|  | [optional] 
 **result_source** | Enum [ai, expert] |  | [optional] 
 **result_taxon_ids** | list( **integer** )|  | [optional] 
 **result_uncertainty_max** | **numeric**|  | [optional] 
 **result_uncertainty_min** | **numeric**|  | [optional] 
 **review_type** | Enum [agree, overwrite] |  | [optional] 
 **status** | Enum [archived, conflict, done, open, review] |  | [optional] 
 **updated_at_after** | **character**| Update at | [optional] 
 **updated_at_before** | **character**| Update at | [optional] 

### Return type

[**PaginatedIdentificationTaskList**](PaginatedIdentificationTaskList.md)

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

# **predictions_create**
> CreatePhotoPrediction predictions_create(observation_uuid, create_photo_prediction_request)



### Example
```R
library(MosquitoAlert)

# prepare function argument(s)
var_observation_uuid <- "observation_uuid_example" # character | UUID of the Observation
var_create_photo_prediction_request <- CreatePhotoPredictionRequest$new("photo_uuid_example", BoundingBoxRequest$new(123, 123, 123, 123), 123, "ae_albopictus", 123, PredictionScoreRequest$new(123, 123, 123, 123, 123, 123, 123, 123, 123), "v2023.1", "is_decisive_example") # CreatePhotoPredictionRequest | 

api_instance <- mosquitoalert_api$new()
# Configure API key authorization: tokenAuth
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
# Configure API key authorization: cookieAuth
# api_instance$api_client$api_keys["sessionid"] <- Sys.getenv("API_KEY")
# Configure HTTP bearer authorization: jwtAuth
# api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$predictions_create(var_observation_uuid, var_create_photo_prediction_requestdata_file = "result.txt")
result <- api_instance$identification_tasks_api$predictions_create(var_observation_uuid, var_create_photo_prediction_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **observation_uuid** | **character**| UUID of the Observation | 
 **create_photo_prediction_request** | [**CreatePhotoPredictionRequest**](CreatePhotoPredictionRequest.md)|  | 

### Return type

[**CreatePhotoPrediction**](CreatePhotoPrediction.md)

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

# **predictions_destroy**
> predictions_destroy(observation_uuid, photo_uuid)



### Example
```R
library(MosquitoAlert)

# prepare function argument(s)
var_observation_uuid <- "observation_uuid_example" # character | UUID of the Observation
var_photo_uuid <- "photo_uuid_example" # character | 

api_instance <- mosquitoalert_api$new()
# Configure API key authorization: tokenAuth
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
# Configure API key authorization: cookieAuth
# api_instance$api_client$api_keys["sessionid"] <- Sys.getenv("API_KEY")
# Configure HTTP bearer authorization: jwtAuth
# api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$identification_tasks_api$predictions_destroy(var_observation_uuid, var_photo_uuid)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **observation_uuid** | **character**| UUID of the Observation | 
 **photo_uuid** | **character**|  | 

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

# **predictions_list**
> PaginatedPhotoPredictionList predictions_list(observation_uuid, page = var.page, page_size = var.page_size)



### Example
```R
library(MosquitoAlert)

# prepare function argument(s)
var_observation_uuid <- "observation_uuid_example" # character | UUID of the Observation
var_page <- 56 # integer | A page number within the paginated result set. (Optional)
var_page_size <- 56 # integer | Number of results to return per page. (Optional)

api_instance <- mosquitoalert_api$new()
# Configure API key authorization: tokenAuth
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
# Configure API key authorization: cookieAuth
# api_instance$api_client$api_keys["sessionid"] <- Sys.getenv("API_KEY")
# Configure HTTP bearer authorization: jwtAuth
# api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$predictions_list(var_observation_uuid, page = var_page, page_size = var_page_sizedata_file = "result.txt")
result <- api_instance$identification_tasks_api$predictions_list(var_observation_uuid, page = var_page, page_size = var_page_size)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **observation_uuid** | **character**| UUID of the Observation | 
 **page** | **integer**| A page number within the paginated result set. | [optional] 
 **page_size** | **integer**| Number of results to return per page. | [optional] 

### Return type

[**PaginatedPhotoPredictionList**](PaginatedPhotoPredictionList.md)

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

# **predictions_partial_update**
> PhotoPrediction predictions_partial_update(observation_uuid, photo_uuid, patched_photo_prediction_request = var.patched_photo_prediction_request)



### Example
```R
library(MosquitoAlert)

# prepare function argument(s)
var_observation_uuid <- "observation_uuid_example" # character | UUID of the Observation
var_photo_uuid <- "photo_uuid_example" # character | 
var_patched_photo_prediction_request <- PatchedPhotoPredictionRequest$new(BoundingBoxRequest$new(123, 123, 123, 123), 123, "ae_albopictus", 123, "is_decisive_example", PredictionScoreRequest$new(123, 123, 123, 123, 123, 123, 123, 123, 123), "v2023.1") # PatchedPhotoPredictionRequest |  (Optional)

api_instance <- mosquitoalert_api$new()
# Configure API key authorization: tokenAuth
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
# Configure API key authorization: cookieAuth
# api_instance$api_client$api_keys["sessionid"] <- Sys.getenv("API_KEY")
# Configure HTTP bearer authorization: jwtAuth
# api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$predictions_partial_update(var_observation_uuid, var_photo_uuid, patched_photo_prediction_request = var_patched_photo_prediction_requestdata_file = "result.txt")
result <- api_instance$identification_tasks_api$predictions_partial_update(var_observation_uuid, var_photo_uuid, patched_photo_prediction_request = var_patched_photo_prediction_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **observation_uuid** | **character**| UUID of the Observation | 
 **photo_uuid** | **character**|  | 
 **patched_photo_prediction_request** | [**PatchedPhotoPredictionRequest**](PatchedPhotoPredictionRequest.md)|  | [optional] 

### Return type

[**PhotoPrediction**](PhotoPrediction.md)

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
| **200** |  |  -  |

# **predictions_retrieve**
> PhotoPrediction predictions_retrieve(observation_uuid, photo_uuid)



### Example
```R
library(MosquitoAlert)

# prepare function argument(s)
var_observation_uuid <- "observation_uuid_example" # character | UUID of the Observation
var_photo_uuid <- "photo_uuid_example" # character | 

api_instance <- mosquitoalert_api$new()
# Configure API key authorization: tokenAuth
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
# Configure API key authorization: cookieAuth
# api_instance$api_client$api_keys["sessionid"] <- Sys.getenv("API_KEY")
# Configure HTTP bearer authorization: jwtAuth
# api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$predictions_retrieve(var_observation_uuid, var_photo_uuiddata_file = "result.txt")
result <- api_instance$identification_tasks_api$predictions_retrieve(var_observation_uuid, var_photo_uuid)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **observation_uuid** | **character**| UUID of the Observation | 
 **photo_uuid** | **character**|  | 

### Return type

[**PhotoPrediction**](PhotoPrediction.md)

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

# **predictions_update**
> PhotoPrediction predictions_update(observation_uuid, photo_uuid, photo_prediction_request)



### Example
```R
library(MosquitoAlert)

# prepare function argument(s)
var_observation_uuid <- "observation_uuid_example" # character | UUID of the Observation
var_photo_uuid <- "photo_uuid_example" # character | 
var_photo_prediction_request <- PhotoPredictionRequest$new(BoundingBoxRequest$new(123, 123, 123, 123), 123, "ae_albopictus", 123, PredictionScoreRequest$new(123, 123, 123, 123, 123, 123, 123, 123, 123), "v2023.1", "is_decisive_example") # PhotoPredictionRequest | 

api_instance <- mosquitoalert_api$new()
# Configure API key authorization: tokenAuth
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
# Configure API key authorization: cookieAuth
# api_instance$api_client$api_keys["sessionid"] <- Sys.getenv("API_KEY")
# Configure HTTP bearer authorization: jwtAuth
# api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$predictions_update(var_observation_uuid, var_photo_uuid, var_photo_prediction_requestdata_file = "result.txt")
result <- api_instance$identification_tasks_api$predictions_update(var_observation_uuid, var_photo_uuid, var_photo_prediction_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **observation_uuid** | **character**| UUID of the Observation | 
 **photo_uuid** | **character**|  | 
 **photo_prediction_request** | [**PhotoPredictionRequest**](PhotoPredictionRequest.md)|  | 

### Return type

[**PhotoPrediction**](PhotoPrediction.md)

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
| **200** |  |  -  |

# **retrieve**
> IdentificationTask retrieve(observation_uuid)



### Example
```R
library(MosquitoAlert)

# prepare function argument(s)
var_observation_uuid <- "observation_uuid_example" # character | 

api_instance <- mosquitoalert_api$new()
# Configure API key authorization: tokenAuth
api_instance$api_client$api_keys["Authorization"] <- Sys.getenv("API_KEY")
# Configure API key authorization: cookieAuth
# api_instance$api_client$api_keys["sessionid"] <- Sys.getenv("API_KEY")
# Configure HTTP bearer authorization: jwtAuth
# api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$retrieve(var_observation_uuiddata_file = "result.txt")
result <- api_instance$identification_tasks_api$retrieve(var_observation_uuid)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **observation_uuid** | **character**|  | 

### Return type

[**IdentificationTask**](IdentificationTask.md)

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

