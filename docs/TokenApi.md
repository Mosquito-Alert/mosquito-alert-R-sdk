# TokenApi

All URIs are relative to *https://api.mosquitoalert.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**token_create**](TokenApi.md#token_create) | **POST** /token/ | 
[**token_refresh_create**](TokenApi.md#token_refresh_create) | **POST** /token/refresh/ | 


# **token_create**
> AppUserTokenObtainPair token_create(app_user_token_obtain_pair_request)



Takes a set of user credentials and returns an access and refresh JSON web token pair to prove the authentication of those credentials.

### Example
```R
library(MosquitoAlert)

# prepare function argument(s)
var_app_user_token_obtain_pair_request <- AppUserTokenObtainPairRequest$new("uuid_example", "password_example", "device_id_example") # AppUserTokenObtainPairRequest | 

api_instance <- mosquitoalert_api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$token_create(var_app_user_token_obtain_pair_requestdata_file = "result.txt")
result <- api_instance$token_api$token_create(var_app_user_token_obtain_pair_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app_user_token_obtain_pair_request** | [**AppUserTokenObtainPairRequest**](AppUserTokenObtainPairRequest.md)|  | 

### Return type

[**AppUserTokenObtainPair**](AppUserTokenObtainPair.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** |  |  -  |

# **token_refresh_create**
> TokenRefresh token_refresh_create(token_refresh_request)



Takes a refresh type JSON web token and returns an access type JSON web token if the refresh token is valid.

### Example
```R
library(MosquitoAlert)

# prepare function argument(s)
var_token_refresh_request <- TokenRefreshRequest$new("refresh_example") # TokenRefreshRequest | 

api_instance <- mosquitoalert_api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$token_refresh_create(var_token_refresh_requestdata_file = "result.txt")
result <- api_instance$token_api$token_refresh_create(var_token_refresh_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token_refresh_request** | [**TokenRefreshRequest**](TokenRefreshRequest.md)|  | 

### Return type

[**TokenRefresh**](TokenRefresh.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** |  |  -  |

