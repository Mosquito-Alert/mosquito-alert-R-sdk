# AuthApi

All URIs are relative to *https://api.mosquitoalert.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**change_password**](AuthApi.md#change_password) | **POST** /auth/password/change/ | 
[**obtain_token**](AuthApi.md#obtain_token) | **POST** /auth/token/ | 
[**refresh_token**](AuthApi.md#refresh_token) | **POST** /auth/token/refresh/ | 
[**signup_guest**](AuthApi.md#signup_guest) | **POST** /auth/signup/guest/ | 
[**verify_token**](AuthApi.md#verify_token) | **POST** /auth/token/verify/ | 


# **change_password**
> change_password(password_change_request)



### Example
```R
library(MosquitoAlert)

# prepare function argument(s)
var_password_change_request <- PasswordChangeRequest$new("password_example") # PasswordChangeRequest | 

api_instance <- mosquitoalert_api$new()
# Configure HTTP bearer authorization: jwtAuth
api_instance$api_client$bearer_token <- Sys.getenv("BEARER_TOKEN")
api_instance$auth_api$change_password(var_password_change_request)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **password_change_request** | [**PasswordChangeRequest**](PasswordChangeRequest.md)|  | 

### Return type

void (empty response body)

### Authorization

[jwtAuth](../README.md#jwtAuth)

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
| **200** | No response body |  -  |

# **obtain_token**
> AppUserTokenObtainPair obtain_token(app_user_token_obtain_pair_request)



Takes a set of user credentials and returns an access and refresh JSON web token pair to prove the authentication of those credentials.

### Example
```R
library(MosquitoAlert)

# prepare function argument(s)
var_app_user_token_obtain_pair_request <- AppUserTokenObtainPairRequest$new("username_example", "password_example", "device_id_example") # AppUserTokenObtainPairRequest | 

api_instance <- mosquitoalert_api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$obtain_token(var_app_user_token_obtain_pair_requestdata_file = "result.txt")
result <- api_instance$auth_api$obtain_token(var_app_user_token_obtain_pair_request)
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
| **400** |  |  -  |
| **404** |  |  -  |
| **200** |  |  -  |
| **401** |  |  -  |

# **refresh_token**
> TokenRefresh refresh_token(token_refresh_request)



Takes a refresh type JSON web token and returns an access type JSON web token if the refresh token is valid.

### Example
```R
library(MosquitoAlert)

# prepare function argument(s)
var_token_refresh_request <- TokenRefreshRequest$new("refresh_example") # TokenRefreshRequest | 

api_instance <- mosquitoalert_api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$refresh_token(var_token_refresh_requestdata_file = "result.txt")
result <- api_instance$auth_api$refresh_token(var_token_refresh_request)
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
| **400** |  |  -  |
| **404** |  |  -  |
| **200** |  |  -  |
| **401** |  |  -  |

# **signup_guest**
> GuestRegistration signup_guest(guest_registration_request)



### Example
```R
library(MosquitoAlert)

# prepare function argument(s)
var_guest_registration_request <- GuestRegistrationRequest$new("password_example") # GuestRegistrationRequest | 

api_instance <- mosquitoalert_api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$signup_guest(var_guest_registration_requestdata_file = "result.txt")
result <- api_instance$auth_api$signup_guest(var_guest_registration_request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **guest_registration_request** | [**GuestRegistrationRequest**](GuestRegistrationRequest.md)|  | 

### Return type

[**GuestRegistration**](GuestRegistration.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **400** |  |  -  |
| **404** |  |  -  |
| **201** |  |  -  |

# **verify_token**
> verify_token(token_verify_request)



Takes a token and indicates if it is valid.  This view provides no information about a token's fitness for a particular use.

### Example
```R
library(MosquitoAlert)

# prepare function argument(s)
var_token_verify_request <- TokenVerifyRequest$new("token_example") # TokenVerifyRequest | 

api_instance <- mosquitoalert_api$new()
api_instance$auth_api$verify_token(var_token_verify_request)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token_verify_request** | [**TokenVerifyRequest**](TokenVerifyRequest.md)|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **400** |  |  -  |
| **404** |  |  -  |
| **200** | No response body |  -  |
| **401** |  |  -  |

