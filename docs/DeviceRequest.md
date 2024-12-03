# MosquitoAlert::DeviceRequest


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**device_id** | **character** | Unique device identifier | [Max. length: 255] 
**name** | **character** |  | [optional] [Max. length: 255] 
**fcm_token** | **character** |  | [Min. length: 1] 
**type** | **character** |  | [Enum: [ios, android, web]] 
**manufacturer** | **character** | The manufacturer of the device. | [optional] [Max. length: 128] 
**model** | **character** | The end-user-visible name for the end product. | [Max. length: 128] 
**os** | [**DeviceOsRequest**](DeviceOsRequest.md) |  | 
**mobile_app** | [**MobileAppRequest**](MobileAppRequest.md) |  | [optional] 


