# R API client for MosquitoAlert

Introducing API v1 for Mosquito Alert platform, a project desgined to facilitate citizen science initiatives and enable collaboration among scientists, public health officials, and environmental managers in the investigation and control of disease-carrying mosquitoes.

## Overview
This API client was generated by the [OpenAPI Generator](https://openapi-generator.tech) project. By using the [OpenAPI spec](https://openapis.org) from a remote server, you can easily generate an API client.

- API version: v1
- Package version: 0.1.5
- Generator version: 7.12.0
- Build package: org.openapitools.codegen.languages.RClientCodegen

## Installation

### Prerequisites

Install the dependencies

```R
install.packages("jsonlite")
install.packages("httr")
install.packages("base64enc")
```

### Build the package

```sh
git clone https://github.com/Mosquito-Alert/mosquito-alert-R-sdk
cd mosquito-alert-R-sdk
R CMD build .
R CMD check MosquitoAlert_0.1.5.tar.gz --no-manual
R CMD INSTALL --preclean MosquitoAlert_0.1.5.tar.gz
```

### Install the package

```R
install.packages("MosquitoAlert")
```

To install directly from Github, use `devtools`:
```R
install.packages("devtools")
library(devtools)
install_github("Mosquito-Alert/mosquito-alert-R-sdk")
```

To install the package from a local file:
```R
install.packages("MosquitoAlert_0.1.5.tar.gz", repos = NULL, type = "source")
```

### Usage

```R
library(MosquitoAlert)
```

### Reformat code

To reformat code using [styler](https://styler.r-lib.org/index.html), please run the following in the R console:

```R
install.packages("remotes")
remotes::install_github("r-lib/styler@v1.7.0.9003")
library("styler")
style_dir()
```

## Documentation for API Endpoints

All URIs are relative to *https://api.mosquitoalert.com/v1*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*AuthApi* | [**change_password**](docs/AuthApi.md#change_password) | **POST** /auth/password/change/ | 
*AuthApi* | [**obtain_token**](docs/AuthApi.md#obtain_token) | **POST** /auth/token/ | 
*AuthApi* | [**refresh_token**](docs/AuthApi.md#refresh_token) | **POST** /auth/token/refresh/ | 
*AuthApi* | [**signup_guest**](docs/AuthApi.md#signup_guest) | **POST** /auth/signup/guest/ | 
*AuthApi* | [**verify_token**](docs/AuthApi.md#verify_token) | **POST** /auth/token/verify/ | 
*BitesApi* | [**create**](docs/BitesApi.md#create) | **POST** /bites/ | 
*BitesApi* | [**destroy**](docs/BitesApi.md#destroy) | **DELETE** /bites/{uuid}/ | 
*BitesApi* | [**list**](docs/BitesApi.md#list) | **GET** /bites/ | 
*BitesApi* | [**list_mine**](docs/BitesApi.md#list_mine) | **GET** /me/bites/ | 
*BitesApi* | [**retrieve**](docs/BitesApi.md#retrieve) | **GET** /bites/{uuid}/ | 
*BreedingSitesApi* | [**create**](docs/BreedingSitesApi.md#create) | **POST** /breeding-sites/ | 
*BreedingSitesApi* | [**destroy**](docs/BreedingSitesApi.md#destroy) | **DELETE** /breeding-sites/{uuid}/ | 
*BreedingSitesApi* | [**list**](docs/BreedingSitesApi.md#list) | **GET** /breeding-sites/ | 
*BreedingSitesApi* | [**list_mine**](docs/BreedingSitesApi.md#list_mine) | **GET** /me/breeding-sites/ | 
*BreedingSitesApi* | [**retrieve**](docs/BreedingSitesApi.md#retrieve) | **GET** /breeding-sites/{uuid}/ | 
*CampaignsApi* | [**list**](docs/CampaignsApi.md#list) | **GET** /campaigns/ | 
*CampaignsApi* | [**retrieve**](docs/CampaignsApi.md#retrieve) | **GET** /campaigns/{id}/ | 
*CountriesApi* | [**retrieve**](docs/CountriesApi.md#retrieve) | **GET** /countries/{id}/ | 
*DevicesApi* | [**create**](docs/DevicesApi.md#create) | **POST** /devices/ | 
*DevicesApi* | [**partial_update**](docs/DevicesApi.md#partial_update) | **PATCH** /devices/{device_id}/ | 
*DevicesApi* | [**retrieve**](docs/DevicesApi.md#retrieve) | **GET** /devices/{device_id}/ | 
*DevicesApi* | [**update**](docs/DevicesApi.md#update) | **PUT** /devices/{device_id}/ | 
*FixesApi* | [**create**](docs/FixesApi.md#create) | **POST** /fixes/ | 
*NotificationsApi* | [**create**](docs/NotificationsApi.md#create) | **POST** /notifications/ | 
*NotificationsApi* | [**list**](docs/NotificationsApi.md#list) | **GET** /notifications/ | 
*NotificationsApi* | [**list_mine**](docs/NotificationsApi.md#list_mine) | **GET** /me/notifications/ | 
*NotificationsApi* | [**partial_update**](docs/NotificationsApi.md#partial_update) | **PATCH** /notifications/{id}/ | 
*NotificationsApi* | [**retrieve**](docs/NotificationsApi.md#retrieve) | **GET** /notifications/{id}/ | 
*NotificationsApi* | [**update**](docs/NotificationsApi.md#update) | **PUT** /notifications/{id}/ | 
*ObservationsApi* | [**create**](docs/ObservationsApi.md#create) | **POST** /observations/ | 
*ObservationsApi* | [**destroy**](docs/ObservationsApi.md#destroy) | **DELETE** /observations/{uuid}/ | 
*ObservationsApi* | [**list**](docs/ObservationsApi.md#list) | **GET** /observations/ | 
*ObservationsApi* | [**list_mine**](docs/ObservationsApi.md#list_mine) | **GET** /me/observations/ | 
*ObservationsApi* | [**retrieve**](docs/ObservationsApi.md#retrieve) | **GET** /observations/{uuid}/ | 
*PartnersApi* | [**list**](docs/PartnersApi.md#list) | **GET** /partners/ | 
*PartnersApi* | [**retrieve**](docs/PartnersApi.md#retrieve) | **GET** /partners/{id}/ | 
*PhotosApi* | [**retrieve**](docs/PhotosApi.md#retrieve) | **GET** /photos/{uuid}/ | 
*UsersApi* | [**partial_update**](docs/UsersApi.md#partial_update) | **PATCH** /users/{uuid}/ | 
*UsersApi* | [**retrieve**](docs/UsersApi.md#retrieve) | **GET** /users/{uuid}/ | 
*UsersApi* | [**retrieve_mine**](docs/UsersApi.md#retrieve_mine) | **GET** /me/ | 
*UsersApi* | [**update**](docs/UsersApi.md#update) | **PUT** /users/{uuid}/ | 


## Documentation for Models

 - [AdmBoundary](docs/AdmBoundary.md)
 - [AdmBoundaryRequest](docs/AdmBoundaryRequest.md)
 - [AppUserTokenObtainPair](docs/AppUserTokenObtainPair.md)
 - [AppUserTokenObtainPairRequest](docs/AppUserTokenObtainPairRequest.md)
 - [AuthChangePasswordError](docs/AuthChangePasswordError.md)
 - [AuthChangePasswordNonFieldErrorsErrorComponent](docs/AuthChangePasswordNonFieldErrorsErrorComponent.md)
 - [AuthChangePasswordPasswordErrorComponent](docs/AuthChangePasswordPasswordErrorComponent.md)
 - [AuthChangePasswordValidationError](docs/AuthChangePasswordValidationError.md)
 - [AuthObtainTokenDeviceIdErrorComponent](docs/AuthObtainTokenDeviceIdErrorComponent.md)
 - [AuthObtainTokenError](docs/AuthObtainTokenError.md)
 - [AuthObtainTokenNonFieldErrorsErrorComponent](docs/AuthObtainTokenNonFieldErrorsErrorComponent.md)
 - [AuthObtainTokenPasswordErrorComponent](docs/AuthObtainTokenPasswordErrorComponent.md)
 - [AuthObtainTokenUsernameErrorComponent](docs/AuthObtainTokenUsernameErrorComponent.md)
 - [AuthObtainTokenValidationError](docs/AuthObtainTokenValidationError.md)
 - [AuthRefreshTokenError](docs/AuthRefreshTokenError.md)
 - [AuthRefreshTokenNonFieldErrorsErrorComponent](docs/AuthRefreshTokenNonFieldErrorsErrorComponent.md)
 - [AuthRefreshTokenRefreshErrorComponent](docs/AuthRefreshTokenRefreshErrorComponent.md)
 - [AuthRefreshTokenValidationError](docs/AuthRefreshTokenValidationError.md)
 - [AuthSignupGuestError](docs/AuthSignupGuestError.md)
 - [AuthSignupGuestNonFieldErrorsErrorComponent](docs/AuthSignupGuestNonFieldErrorsErrorComponent.md)
 - [AuthSignupGuestPasswordErrorComponent](docs/AuthSignupGuestPasswordErrorComponent.md)
 - [AuthSignupGuestValidationError](docs/AuthSignupGuestValidationError.md)
 - [AuthVerifyTokenError](docs/AuthVerifyTokenError.md)
 - [AuthVerifyTokenNonFieldErrorsErrorComponent](docs/AuthVerifyTokenNonFieldErrorsErrorComponent.md)
 - [AuthVerifyTokenTokenErrorComponent](docs/AuthVerifyTokenTokenErrorComponent.md)
 - [AuthVerifyTokenValidationError](docs/AuthVerifyTokenValidationError.md)
 - [Bite](docs/Bite.md)
 - [BiteCounts](docs/BiteCounts.md)
 - [BiteCountsRequest](docs/BiteCountsRequest.md)
 - [BiteRequest](docs/BiteRequest.md)
 - [BitesCreateCountsChestErrorComponent](docs/BitesCreateCountsChestErrorComponent.md)
 - [BitesCreateCountsHeadErrorComponent](docs/BitesCreateCountsHeadErrorComponent.md)
 - [BitesCreateCountsLeftArmErrorComponent](docs/BitesCreateCountsLeftArmErrorComponent.md)
 - [BitesCreateCountsLeftLegErrorComponent](docs/BitesCreateCountsLeftLegErrorComponent.md)
 - [BitesCreateCountsNonFieldErrorsErrorComponent](docs/BitesCreateCountsNonFieldErrorsErrorComponent.md)
 - [BitesCreateCountsRightArmErrorComponent](docs/BitesCreateCountsRightArmErrorComponent.md)
 - [BitesCreateCountsRightLegErrorComponent](docs/BitesCreateCountsRightLegErrorComponent.md)
 - [BitesCreateCreatedAtErrorComponent](docs/BitesCreateCreatedAtErrorComponent.md)
 - [BitesCreateError](docs/BitesCreateError.md)
 - [BitesCreateEventEnvironmentErrorComponent](docs/BitesCreateEventEnvironmentErrorComponent.md)
 - [BitesCreateEventMomentErrorComponent](docs/BitesCreateEventMomentErrorComponent.md)
 - [BitesCreateLocationNonFieldErrorsErrorComponent](docs/BitesCreateLocationNonFieldErrorsErrorComponent.md)
 - [BitesCreateLocationPointErrorComponent](docs/BitesCreateLocationPointErrorComponent.md)
 - [BitesCreateLocationSourceErrorComponent](docs/BitesCreateLocationSourceErrorComponent.md)
 - [BitesCreateNonFieldErrorsErrorComponent](docs/BitesCreateNonFieldErrorsErrorComponent.md)
 - [BitesCreateNoteErrorComponent](docs/BitesCreateNoteErrorComponent.md)
 - [BitesCreateSentAtErrorComponent](docs/BitesCreateSentAtErrorComponent.md)
 - [BitesCreateTagsErrorComponent](docs/BitesCreateTagsErrorComponent.md)
 - [BitesCreateTagsINDEXErrorComponent](docs/BitesCreateTagsINDEXErrorComponent.md)
 - [BitesCreateValidationError](docs/BitesCreateValidationError.md)
 - [BitesListCountryIdErrorComponent](docs/BitesListCountryIdErrorComponent.md)
 - [BitesListCreatedAtErrorComponent](docs/BitesListCreatedAtErrorComponent.md)
 - [BitesListError](docs/BitesListError.md)
 - [BitesListMineCountryIdErrorComponent](docs/BitesListMineCountryIdErrorComponent.md)
 - [BitesListMineCreatedAtErrorComponent](docs/BitesListMineCreatedAtErrorComponent.md)
 - [BitesListMineError](docs/BitesListMineError.md)
 - [BitesListMineOrderByErrorComponent](docs/BitesListMineOrderByErrorComponent.md)
 - [BitesListMineReceivedAtErrorComponent](docs/BitesListMineReceivedAtErrorComponent.md)
 - [BitesListMineShortIdErrorComponent](docs/BitesListMineShortIdErrorComponent.md)
 - [BitesListMineUpdatedAtErrorComponent](docs/BitesListMineUpdatedAtErrorComponent.md)
 - [BitesListMineUserUuidErrorComponent](docs/BitesListMineUserUuidErrorComponent.md)
 - [BitesListMineValidationError](docs/BitesListMineValidationError.md)
 - [BitesListOrderByErrorComponent](docs/BitesListOrderByErrorComponent.md)
 - [BitesListReceivedAtErrorComponent](docs/BitesListReceivedAtErrorComponent.md)
 - [BitesListShortIdErrorComponent](docs/BitesListShortIdErrorComponent.md)
 - [BitesListUpdatedAtErrorComponent](docs/BitesListUpdatedAtErrorComponent.md)
 - [BitesListUserUuidErrorComponent](docs/BitesListUserUuidErrorComponent.md)
 - [BitesListValidationError](docs/BitesListValidationError.md)
 - [BreedingSite](docs/BreedingSite.md)
 - [BreedingsitesCreateCreatedAtErrorComponent](docs/BreedingsitesCreateCreatedAtErrorComponent.md)
 - [BreedingsitesCreateError](docs/BreedingsitesCreateError.md)
 - [BreedingsitesCreateHasLarvaeErrorComponent](docs/BreedingsitesCreateHasLarvaeErrorComponent.md)
 - [BreedingsitesCreateHasNearMosquitoesErrorComponent](docs/BreedingsitesCreateHasNearMosquitoesErrorComponent.md)
 - [BreedingsitesCreateHasWaterErrorComponent](docs/BreedingsitesCreateHasWaterErrorComponent.md)
 - [BreedingsitesCreateInPublicAreaErrorComponent](docs/BreedingsitesCreateInPublicAreaErrorComponent.md)
 - [BreedingsitesCreateLocationNonFieldErrorsErrorComponent](docs/BreedingsitesCreateLocationNonFieldErrorsErrorComponent.md)
 - [BreedingsitesCreateLocationPointErrorComponent](docs/BreedingsitesCreateLocationPointErrorComponent.md)
 - [BreedingsitesCreateLocationSourceErrorComponent](docs/BreedingsitesCreateLocationSourceErrorComponent.md)
 - [BreedingsitesCreateNonFieldErrorsErrorComponent](docs/BreedingsitesCreateNonFieldErrorsErrorComponent.md)
 - [BreedingsitesCreateNoteErrorComponent](docs/BreedingsitesCreateNoteErrorComponent.md)
 - [BreedingsitesCreatePhotosINDEXFileErrorComponent](docs/BreedingsitesCreatePhotosINDEXFileErrorComponent.md)
 - [BreedingsitesCreatePhotosINDEXNonFieldErrorsErrorComponent](docs/BreedingsitesCreatePhotosINDEXNonFieldErrorsErrorComponent.md)
 - [BreedingsitesCreatePhotosNonFieldErrorsErrorComponent](docs/BreedingsitesCreatePhotosNonFieldErrorsErrorComponent.md)
 - [BreedingsitesCreateSentAtErrorComponent](docs/BreedingsitesCreateSentAtErrorComponent.md)
 - [BreedingsitesCreateSiteTypeErrorComponent](docs/BreedingsitesCreateSiteTypeErrorComponent.md)
 - [BreedingsitesCreateTagsErrorComponent](docs/BreedingsitesCreateTagsErrorComponent.md)
 - [BreedingsitesCreateTagsINDEXErrorComponent](docs/BreedingsitesCreateTagsINDEXErrorComponent.md)
 - [BreedingsitesCreateValidationError](docs/BreedingsitesCreateValidationError.md)
 - [BreedingsitesListCountryIdErrorComponent](docs/BreedingsitesListCountryIdErrorComponent.md)
 - [BreedingsitesListCreatedAtErrorComponent](docs/BreedingsitesListCreatedAtErrorComponent.md)
 - [BreedingsitesListError](docs/BreedingsitesListError.md)
 - [BreedingsitesListMineCountryIdErrorComponent](docs/BreedingsitesListMineCountryIdErrorComponent.md)
 - [BreedingsitesListMineCreatedAtErrorComponent](docs/BreedingsitesListMineCreatedAtErrorComponent.md)
 - [BreedingsitesListMineError](docs/BreedingsitesListMineError.md)
 - [BreedingsitesListMineOrderByErrorComponent](docs/BreedingsitesListMineOrderByErrorComponent.md)
 - [BreedingsitesListMineReceivedAtErrorComponent](docs/BreedingsitesListMineReceivedAtErrorComponent.md)
 - [BreedingsitesListMineShortIdErrorComponent](docs/BreedingsitesListMineShortIdErrorComponent.md)
 - [BreedingsitesListMineUpdatedAtErrorComponent](docs/BreedingsitesListMineUpdatedAtErrorComponent.md)
 - [BreedingsitesListMineUserUuidErrorComponent](docs/BreedingsitesListMineUserUuidErrorComponent.md)
 - [BreedingsitesListMineValidationError](docs/BreedingsitesListMineValidationError.md)
 - [BreedingsitesListOrderByErrorComponent](docs/BreedingsitesListOrderByErrorComponent.md)
 - [BreedingsitesListReceivedAtErrorComponent](docs/BreedingsitesListReceivedAtErrorComponent.md)
 - [BreedingsitesListShortIdErrorComponent](docs/BreedingsitesListShortIdErrorComponent.md)
 - [BreedingsitesListUpdatedAtErrorComponent](docs/BreedingsitesListUpdatedAtErrorComponent.md)
 - [BreedingsitesListUserUuidErrorComponent](docs/BreedingsitesListUserUuidErrorComponent.md)
 - [BreedingsitesListValidationError](docs/BreedingsitesListValidationError.md)
 - [Campaign](docs/Campaign.md)
 - [CampaignsListCountryIdErrorComponent](docs/CampaignsListCountryIdErrorComponent.md)
 - [CampaignsListError](docs/CampaignsListError.md)
 - [CampaignsListOrderByErrorComponent](docs/CampaignsListOrderByErrorComponent.md)
 - [CampaignsListValidationError](docs/CampaignsListValidationError.md)
 - [Country](docs/Country.md)
 - [CountryRequest](docs/CountryRequest.md)
 - [CreateNotification](docs/CreateNotification.md)
 - [CreateNotificationMessage](docs/CreateNotificationMessage.md)
 - [CreateNotificationMessageRequest](docs/CreateNotificationMessageRequest.md)
 - [Device](docs/Device.md)
 - [DeviceOs](docs/DeviceOs.md)
 - [DeviceOsRequest](docs/DeviceOsRequest.md)
 - [DeviceRequest](docs/DeviceRequest.md)
 - [DeviceUpdate](docs/DeviceUpdate.md)
 - [DeviceUpdateRequest](docs/DeviceUpdateRequest.md)
 - [DevicesCreateDeviceIdErrorComponent](docs/DevicesCreateDeviceIdErrorComponent.md)
 - [DevicesCreateError](docs/DevicesCreateError.md)
 - [DevicesCreateFcmTokenErrorComponent](docs/DevicesCreateFcmTokenErrorComponent.md)
 - [DevicesCreateManufacturerErrorComponent](docs/DevicesCreateManufacturerErrorComponent.md)
 - [DevicesCreateMobileAppNonFieldErrorsErrorComponent](docs/DevicesCreateMobileAppNonFieldErrorsErrorComponent.md)
 - [DevicesCreateMobileAppPackageNameErrorComponent](docs/DevicesCreateMobileAppPackageNameErrorComponent.md)
 - [DevicesCreateMobileAppPackageVersionErrorComponent](docs/DevicesCreateMobileAppPackageVersionErrorComponent.md)
 - [DevicesCreateModelErrorComponent](docs/DevicesCreateModelErrorComponent.md)
 - [DevicesCreateNameErrorComponent](docs/DevicesCreateNameErrorComponent.md)
 - [DevicesCreateNonFieldErrorsErrorComponent](docs/DevicesCreateNonFieldErrorsErrorComponent.md)
 - [DevicesCreateOsLocaleErrorComponent](docs/DevicesCreateOsLocaleErrorComponent.md)
 - [DevicesCreateOsNameErrorComponent](docs/DevicesCreateOsNameErrorComponent.md)
 - [DevicesCreateOsNonFieldErrorsErrorComponent](docs/DevicesCreateOsNonFieldErrorsErrorComponent.md)
 - [DevicesCreateOsVersionErrorComponent](docs/DevicesCreateOsVersionErrorComponent.md)
 - [DevicesCreateTypeErrorComponent](docs/DevicesCreateTypeErrorComponent.md)
 - [DevicesCreateValidationError](docs/DevicesCreateValidationError.md)
 - [DevicesPartialUpdateError](docs/DevicesPartialUpdateError.md)
 - [DevicesPartialUpdateFcmTokenErrorComponent](docs/DevicesPartialUpdateFcmTokenErrorComponent.md)
 - [DevicesPartialUpdateMobileAppNonFieldErrorsErrorComponent](docs/DevicesPartialUpdateMobileAppNonFieldErrorsErrorComponent.md)
 - [DevicesPartialUpdateMobileAppPackageNameErrorComponent](docs/DevicesPartialUpdateMobileAppPackageNameErrorComponent.md)
 - [DevicesPartialUpdateMobileAppPackageVersionErrorComponent](docs/DevicesPartialUpdateMobileAppPackageVersionErrorComponent.md)
 - [DevicesPartialUpdateNameErrorComponent](docs/DevicesPartialUpdateNameErrorComponent.md)
 - [DevicesPartialUpdateNonFieldErrorsErrorComponent](docs/DevicesPartialUpdateNonFieldErrorsErrorComponent.md)
 - [DevicesPartialUpdateOsLocaleErrorComponent](docs/DevicesPartialUpdateOsLocaleErrorComponent.md)
 - [DevicesPartialUpdateOsNameErrorComponent](docs/DevicesPartialUpdateOsNameErrorComponent.md)
 - [DevicesPartialUpdateOsNonFieldErrorsErrorComponent](docs/DevicesPartialUpdateOsNonFieldErrorsErrorComponent.md)
 - [DevicesPartialUpdateOsVersionErrorComponent](docs/DevicesPartialUpdateOsVersionErrorComponent.md)
 - [DevicesPartialUpdateValidationError](docs/DevicesPartialUpdateValidationError.md)
 - [DevicesUpdateError](docs/DevicesUpdateError.md)
 - [DevicesUpdateFcmTokenErrorComponent](docs/DevicesUpdateFcmTokenErrorComponent.md)
 - [DevicesUpdateMobileAppNonFieldErrorsErrorComponent](docs/DevicesUpdateMobileAppNonFieldErrorsErrorComponent.md)
 - [DevicesUpdateMobileAppPackageNameErrorComponent](docs/DevicesUpdateMobileAppPackageNameErrorComponent.md)
 - [DevicesUpdateMobileAppPackageVersionErrorComponent](docs/DevicesUpdateMobileAppPackageVersionErrorComponent.md)
 - [DevicesUpdateNameErrorComponent](docs/DevicesUpdateNameErrorComponent.md)
 - [DevicesUpdateNonFieldErrorsErrorComponent](docs/DevicesUpdateNonFieldErrorsErrorComponent.md)
 - [DevicesUpdateOsLocaleErrorComponent](docs/DevicesUpdateOsLocaleErrorComponent.md)
 - [DevicesUpdateOsNameErrorComponent](docs/DevicesUpdateOsNameErrorComponent.md)
 - [DevicesUpdateOsNonFieldErrorsErrorComponent](docs/DevicesUpdateOsNonFieldErrorsErrorComponent.md)
 - [DevicesUpdateOsVersionErrorComponent](docs/DevicesUpdateOsVersionErrorComponent.md)
 - [DevicesUpdateValidationError](docs/DevicesUpdateValidationError.md)
 - [Error401](docs/Error401.md)
 - [Error403](docs/Error403.md)
 - [Error404](docs/Error404.md)
 - [ErrorResponse401](docs/ErrorResponse401.md)
 - [ErrorResponse403](docs/ErrorResponse403.md)
 - [ErrorResponse404](docs/ErrorResponse404.md)
 - [Fix](docs/Fix.md)
 - [FixLocation](docs/FixLocation.md)
 - [FixLocationRequest](docs/FixLocationRequest.md)
 - [FixRequest](docs/FixRequest.md)
 - [FixesCreateCoverageUuidErrorComponent](docs/FixesCreateCoverageUuidErrorComponent.md)
 - [FixesCreateCreatedAtErrorComponent](docs/FixesCreateCreatedAtErrorComponent.md)
 - [FixesCreateError](docs/FixesCreateError.md)
 - [FixesCreateNonFieldErrorsErrorComponent](docs/FixesCreateNonFieldErrorsErrorComponent.md)
 - [FixesCreatePointLatitudeErrorComponent](docs/FixesCreatePointLatitudeErrorComponent.md)
 - [FixesCreatePointLongitudeErrorComponent](docs/FixesCreatePointLongitudeErrorComponent.md)
 - [FixesCreatePointNonFieldErrorsErrorComponent](docs/FixesCreatePointNonFieldErrorsErrorComponent.md)
 - [FixesCreatePowerErrorComponent](docs/FixesCreatePowerErrorComponent.md)
 - [FixesCreateSentAtErrorComponent](docs/FixesCreateSentAtErrorComponent.md)
 - [FixesCreateValidationError](docs/FixesCreateValidationError.md)
 - [GuestRegistration](docs/GuestRegistration.md)
 - [GuestRegistrationRequest](docs/GuestRegistrationRequest.md)
 - [LocalizedMessageBody](docs/LocalizedMessageBody.md)
 - [LocalizedMessageBodyRequest](docs/LocalizedMessageBodyRequest.md)
 - [LocalizedMessageTitle](docs/LocalizedMessageTitle.md)
 - [LocalizedMessageTitleRequest](docs/LocalizedMessageTitleRequest.md)
 - [Location](docs/Location.md)
 - [LocationPoint](docs/LocationPoint.md)
 - [LocationRequest](docs/LocationRequest.md)
 - [MetaNotificationRequest](docs/MetaNotificationRequest.md)
 - [MobileApp](docs/MobileApp.md)
 - [MobileAppRequest](docs/MobileAppRequest.md)
 - [MosquitoAppearance](docs/MosquitoAppearance.md)
 - [MosquitoAppearanceRequest](docs/MosquitoAppearanceRequest.md)
 - [Notification](docs/Notification.md)
 - [NotificationMessage](docs/NotificationMessage.md)
 - [NotificationRequest](docs/NotificationRequest.md)
 - [NotificationsCreateError](docs/NotificationsCreateError.md)
 - [NotificationsCreateMessageBodyBgErrorComponent](docs/NotificationsCreateMessageBodyBgErrorComponent.md)
 - [NotificationsCreateMessageBodyBnErrorComponent](docs/NotificationsCreateMessageBodyBnErrorComponent.md)
 - [NotificationsCreateMessageBodyCaErrorComponent](docs/NotificationsCreateMessageBodyCaErrorComponent.md)
 - [NotificationsCreateMessageBodyDeErrorComponent](docs/NotificationsCreateMessageBodyDeErrorComponent.md)
 - [NotificationsCreateMessageBodyElErrorComponent](docs/NotificationsCreateMessageBodyElErrorComponent.md)
 - [NotificationsCreateMessageBodyEnErrorComponent](docs/NotificationsCreateMessageBodyEnErrorComponent.md)
 - [NotificationsCreateMessageBodyEsErrorComponent](docs/NotificationsCreateMessageBodyEsErrorComponent.md)
 - [NotificationsCreateMessageBodyEuErrorComponent](docs/NotificationsCreateMessageBodyEuErrorComponent.md)
 - [NotificationsCreateMessageBodyFrErrorComponent](docs/NotificationsCreateMessageBodyFrErrorComponent.md)
 - [NotificationsCreateMessageBodyGlErrorComponent](docs/NotificationsCreateMessageBodyGlErrorComponent.md)
 - [NotificationsCreateMessageBodyHrErrorComponent](docs/NotificationsCreateMessageBodyHrErrorComponent.md)
 - [NotificationsCreateMessageBodyHuErrorComponent](docs/NotificationsCreateMessageBodyHuErrorComponent.md)
 - [NotificationsCreateMessageBodyItErrorComponent](docs/NotificationsCreateMessageBodyItErrorComponent.md)
 - [NotificationsCreateMessageBodyLbErrorComponent](docs/NotificationsCreateMessageBodyLbErrorComponent.md)
 - [NotificationsCreateMessageBodyMkErrorComponent](docs/NotificationsCreateMessageBodyMkErrorComponent.md)
 - [NotificationsCreateMessageBodyNlErrorComponent](docs/NotificationsCreateMessageBodyNlErrorComponent.md)
 - [NotificationsCreateMessageBodyNonFieldErrorsErrorComponent](docs/NotificationsCreateMessageBodyNonFieldErrorsErrorComponent.md)
 - [NotificationsCreateMessageBodyPtErrorComponent](docs/NotificationsCreateMessageBodyPtErrorComponent.md)
 - [NotificationsCreateMessageBodyRoErrorComponent](docs/NotificationsCreateMessageBodyRoErrorComponent.md)
 - [NotificationsCreateMessageBodySlErrorComponent](docs/NotificationsCreateMessageBodySlErrorComponent.md)
 - [NotificationsCreateMessageBodySqErrorComponent](docs/NotificationsCreateMessageBodySqErrorComponent.md)
 - [NotificationsCreateMessageBodySrErrorComponent](docs/NotificationsCreateMessageBodySrErrorComponent.md)
 - [NotificationsCreateMessageBodySvErrorComponent](docs/NotificationsCreateMessageBodySvErrorComponent.md)
 - [NotificationsCreateMessageBodyTrErrorComponent](docs/NotificationsCreateMessageBodyTrErrorComponent.md)
 - [NotificationsCreateMessageBodyZhCNErrorComponent](docs/NotificationsCreateMessageBodyZhCNErrorComponent.md)
 - [NotificationsCreateMessageNonFieldErrorsErrorComponent](docs/NotificationsCreateMessageNonFieldErrorsErrorComponent.md)
 - [NotificationsCreateMessageTitleBgErrorComponent](docs/NotificationsCreateMessageTitleBgErrorComponent.md)
 - [NotificationsCreateMessageTitleBnErrorComponent](docs/NotificationsCreateMessageTitleBnErrorComponent.md)
 - [NotificationsCreateMessageTitleCaErrorComponent](docs/NotificationsCreateMessageTitleCaErrorComponent.md)
 - [NotificationsCreateMessageTitleDeErrorComponent](docs/NotificationsCreateMessageTitleDeErrorComponent.md)
 - [NotificationsCreateMessageTitleElErrorComponent](docs/NotificationsCreateMessageTitleElErrorComponent.md)
 - [NotificationsCreateMessageTitleEnErrorComponent](docs/NotificationsCreateMessageTitleEnErrorComponent.md)
 - [NotificationsCreateMessageTitleEsErrorComponent](docs/NotificationsCreateMessageTitleEsErrorComponent.md)
 - [NotificationsCreateMessageTitleEuErrorComponent](docs/NotificationsCreateMessageTitleEuErrorComponent.md)
 - [NotificationsCreateMessageTitleFrErrorComponent](docs/NotificationsCreateMessageTitleFrErrorComponent.md)
 - [NotificationsCreateMessageTitleGlErrorComponent](docs/NotificationsCreateMessageTitleGlErrorComponent.md)
 - [NotificationsCreateMessageTitleHrErrorComponent](docs/NotificationsCreateMessageTitleHrErrorComponent.md)
 - [NotificationsCreateMessageTitleHuErrorComponent](docs/NotificationsCreateMessageTitleHuErrorComponent.md)
 - [NotificationsCreateMessageTitleItErrorComponent](docs/NotificationsCreateMessageTitleItErrorComponent.md)
 - [NotificationsCreateMessageTitleLbErrorComponent](docs/NotificationsCreateMessageTitleLbErrorComponent.md)
 - [NotificationsCreateMessageTitleMkErrorComponent](docs/NotificationsCreateMessageTitleMkErrorComponent.md)
 - [NotificationsCreateMessageTitleNlErrorComponent](docs/NotificationsCreateMessageTitleNlErrorComponent.md)
 - [NotificationsCreateMessageTitleNonFieldErrorsErrorComponent](docs/NotificationsCreateMessageTitleNonFieldErrorsErrorComponent.md)
 - [NotificationsCreateMessageTitlePtErrorComponent](docs/NotificationsCreateMessageTitlePtErrorComponent.md)
 - [NotificationsCreateMessageTitleRoErrorComponent](docs/NotificationsCreateMessageTitleRoErrorComponent.md)
 - [NotificationsCreateMessageTitleSlErrorComponent](docs/NotificationsCreateMessageTitleSlErrorComponent.md)
 - [NotificationsCreateMessageTitleSqErrorComponent](docs/NotificationsCreateMessageTitleSqErrorComponent.md)
 - [NotificationsCreateMessageTitleSrErrorComponent](docs/NotificationsCreateMessageTitleSrErrorComponent.md)
 - [NotificationsCreateMessageTitleSvErrorComponent](docs/NotificationsCreateMessageTitleSvErrorComponent.md)
 - [NotificationsCreateMessageTitleTrErrorComponent](docs/NotificationsCreateMessageTitleTrErrorComponent.md)
 - [NotificationsCreateMessageTitleZhCNErrorComponent](docs/NotificationsCreateMessageTitleZhCNErrorComponent.md)
 - [NotificationsCreateNonFieldErrorsErrorComponent](docs/NotificationsCreateNonFieldErrorsErrorComponent.md)
 - [NotificationsCreateReceiverTypeErrorComponent](docs/NotificationsCreateReceiverTypeErrorComponent.md)
 - [NotificationsCreateTopicCodesErrorComponent](docs/NotificationsCreateTopicCodesErrorComponent.md)
 - [NotificationsCreateTopicCodesINDEXErrorComponent](docs/NotificationsCreateTopicCodesINDEXErrorComponent.md)
 - [NotificationsCreateUserUuidsErrorComponent](docs/NotificationsCreateUserUuidsErrorComponent.md)
 - [NotificationsCreateUserUuidsINDEXErrorComponent](docs/NotificationsCreateUserUuidsINDEXErrorComponent.md)
 - [NotificationsCreateValidationError](docs/NotificationsCreateValidationError.md)
 - [NotificationsListError](docs/NotificationsListError.md)
 - [NotificationsListMineError](docs/NotificationsListMineError.md)
 - [NotificationsListMineOrderByErrorComponent](docs/NotificationsListMineOrderByErrorComponent.md)
 - [NotificationsListMineValidationError](docs/NotificationsListMineValidationError.md)
 - [NotificationsListOrderByErrorComponent](docs/NotificationsListOrderByErrorComponent.md)
 - [NotificationsListValidationError](docs/NotificationsListValidationError.md)
 - [NotificationsPartialUpdateError](docs/NotificationsPartialUpdateError.md)
 - [NotificationsPartialUpdateIsReadErrorComponent](docs/NotificationsPartialUpdateIsReadErrorComponent.md)
 - [NotificationsPartialUpdateNonFieldErrorsErrorComponent](docs/NotificationsPartialUpdateNonFieldErrorsErrorComponent.md)
 - [NotificationsPartialUpdateValidationError](docs/NotificationsPartialUpdateValidationError.md)
 - [NotificationsUpdateError](docs/NotificationsUpdateError.md)
 - [NotificationsUpdateIsReadErrorComponent](docs/NotificationsUpdateIsReadErrorComponent.md)
 - [NotificationsUpdateNonFieldErrorsErrorComponent](docs/NotificationsUpdateNonFieldErrorsErrorComponent.md)
 - [NotificationsUpdateValidationError](docs/NotificationsUpdateValidationError.md)
 - [Observation](docs/Observation.md)
 - [ObservationsCreateCreatedAtErrorComponent](docs/ObservationsCreateCreatedAtErrorComponent.md)
 - [ObservationsCreateError](docs/ObservationsCreateError.md)
 - [ObservationsCreateEventEnvironmentErrorComponent](docs/ObservationsCreateEventEnvironmentErrorComponent.md)
 - [ObservationsCreateEventMomentErrorComponent](docs/ObservationsCreateEventMomentErrorComponent.md)
 - [ObservationsCreateLocationNonFieldErrorsErrorComponent](docs/ObservationsCreateLocationNonFieldErrorsErrorComponent.md)
 - [ObservationsCreateLocationPointErrorComponent](docs/ObservationsCreateLocationPointErrorComponent.md)
 - [ObservationsCreateLocationSourceErrorComponent](docs/ObservationsCreateLocationSourceErrorComponent.md)
 - [ObservationsCreateMosquitoAppearanceAbdomenErrorComponent](docs/ObservationsCreateMosquitoAppearanceAbdomenErrorComponent.md)
 - [ObservationsCreateMosquitoAppearanceLegsErrorComponent](docs/ObservationsCreateMosquitoAppearanceLegsErrorComponent.md)
 - [ObservationsCreateMosquitoAppearanceNonFieldErrorsErrorComponent](docs/ObservationsCreateMosquitoAppearanceNonFieldErrorsErrorComponent.md)
 - [ObservationsCreateMosquitoAppearanceSpecieErrorComponent](docs/ObservationsCreateMosquitoAppearanceSpecieErrorComponent.md)
 - [ObservationsCreateMosquitoAppearanceThoraxErrorComponent](docs/ObservationsCreateMosquitoAppearanceThoraxErrorComponent.md)
 - [ObservationsCreateNonFieldErrorsErrorComponent](docs/ObservationsCreateNonFieldErrorsErrorComponent.md)
 - [ObservationsCreateNoteErrorComponent](docs/ObservationsCreateNoteErrorComponent.md)
 - [ObservationsCreatePhotosINDEXFileErrorComponent](docs/ObservationsCreatePhotosINDEXFileErrorComponent.md)
 - [ObservationsCreatePhotosINDEXNonFieldErrorsErrorComponent](docs/ObservationsCreatePhotosINDEXNonFieldErrorsErrorComponent.md)
 - [ObservationsCreatePhotosNonFieldErrorsErrorComponent](docs/ObservationsCreatePhotosNonFieldErrorsErrorComponent.md)
 - [ObservationsCreateSentAtErrorComponent](docs/ObservationsCreateSentAtErrorComponent.md)
 - [ObservationsCreateTagsErrorComponent](docs/ObservationsCreateTagsErrorComponent.md)
 - [ObservationsCreateTagsINDEXErrorComponent](docs/ObservationsCreateTagsINDEXErrorComponent.md)
 - [ObservationsCreateValidationError](docs/ObservationsCreateValidationError.md)
 - [ObservationsListCountryIdErrorComponent](docs/ObservationsListCountryIdErrorComponent.md)
 - [ObservationsListCreatedAtErrorComponent](docs/ObservationsListCreatedAtErrorComponent.md)
 - [ObservationsListError](docs/ObservationsListError.md)
 - [ObservationsListMineCountryIdErrorComponent](docs/ObservationsListMineCountryIdErrorComponent.md)
 - [ObservationsListMineCreatedAtErrorComponent](docs/ObservationsListMineCreatedAtErrorComponent.md)
 - [ObservationsListMineError](docs/ObservationsListMineError.md)
 - [ObservationsListMineOrderByErrorComponent](docs/ObservationsListMineOrderByErrorComponent.md)
 - [ObservationsListMineReceivedAtErrorComponent](docs/ObservationsListMineReceivedAtErrorComponent.md)
 - [ObservationsListMineShortIdErrorComponent](docs/ObservationsListMineShortIdErrorComponent.md)
 - [ObservationsListMineUpdatedAtErrorComponent](docs/ObservationsListMineUpdatedAtErrorComponent.md)
 - [ObservationsListMineUserUuidErrorComponent](docs/ObservationsListMineUserUuidErrorComponent.md)
 - [ObservationsListMineValidationError](docs/ObservationsListMineValidationError.md)
 - [ObservationsListOrderByErrorComponent](docs/ObservationsListOrderByErrorComponent.md)
 - [ObservationsListReceivedAtErrorComponent](docs/ObservationsListReceivedAtErrorComponent.md)
 - [ObservationsListShortIdErrorComponent](docs/ObservationsListShortIdErrorComponent.md)
 - [ObservationsListUpdatedAtErrorComponent](docs/ObservationsListUpdatedAtErrorComponent.md)
 - [ObservationsListUserUuidErrorComponent](docs/ObservationsListUserUuidErrorComponent.md)
 - [ObservationsListValidationError](docs/ObservationsListValidationError.md)
 - [PaginatedBiteList](docs/PaginatedBiteList.md)
 - [PaginatedBreedingSiteList](docs/PaginatedBreedingSiteList.md)
 - [PaginatedCampaignList](docs/PaginatedCampaignList.md)
 - [PaginatedNotificationList](docs/PaginatedNotificationList.md)
 - [PaginatedObservationList](docs/PaginatedObservationList.md)
 - [PaginatedPartnerList](docs/PaginatedPartnerList.md)
 - [Partner](docs/Partner.md)
 - [PasswordChangeRequest](docs/PasswordChangeRequest.md)
 - [PatchedDeviceUpdateRequest](docs/PatchedDeviceUpdateRequest.md)
 - [PatchedNotificationRequest](docs/PatchedNotificationRequest.md)
 - [PatchedUserRequest](docs/PatchedUserRequest.md)
 - [Photo](docs/Photo.md)
 - [SimplePhoto](docs/SimplePhoto.md)
 - [SimplePhotoRequest](docs/SimplePhotoRequest.md)
 - [TokenRefresh](docs/TokenRefresh.md)
 - [TokenRefreshRequest](docs/TokenRefreshRequest.md)
 - [TokenVerifyRequest](docs/TokenVerifyRequest.md)
 - [TopicNotificationCreateRequest](docs/TopicNotificationCreateRequest.md)
 - [User](docs/User.md)
 - [UserNotificationCreateRequest](docs/UserNotificationCreateRequest.md)
 - [UserRequest](docs/UserRequest.md)
 - [UserScore](docs/UserScore.md)
 - [UsersPartialUpdateError](docs/UsersPartialUpdateError.md)
 - [UsersPartialUpdateLocaleErrorComponent](docs/UsersPartialUpdateLocaleErrorComponent.md)
 - [UsersPartialUpdateNonFieldErrorsErrorComponent](docs/UsersPartialUpdateNonFieldErrorsErrorComponent.md)
 - [UsersPartialUpdateValidationError](docs/UsersPartialUpdateValidationError.md)
 - [UsersUpdateError](docs/UsersUpdateError.md)
 - [UsersUpdateLocaleErrorComponent](docs/UsersUpdateLocaleErrorComponent.md)
 - [UsersUpdateNonFieldErrorsErrorComponent](docs/UsersUpdateNonFieldErrorsErrorComponent.md)
 - [UsersUpdateValidationError](docs/UsersUpdateValidationError.md)


## Documentation for Authorization


Authentication schemes defined for the API:
### cookieAuth

- **Type**: API key
- **API key parameter name**: sessionid
- **Location**: 

### jwtAuth

- **Type**: Bearer authentication
- **Bearer Format**: JWT

### tokenAuth

- **Type**: API key
- **API key parameter name**: Authorization
- **Location**: HTTP header


## Author

it@mosquitoalert.com
