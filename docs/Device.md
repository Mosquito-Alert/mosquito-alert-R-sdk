# MosquitoAlert::Device


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**device_id** | **character** | Unique device identifier | [Max. length: 255] 
**name** | **character** |  | [optional] [Max. length: 255] 
**type** | **character** |  | [Enum: [ios, android, web]] 
**manufacturer** | **character** | The manufacturer of the device. | [optional] [Max. length: 128] 
**model** | **character** | The end-user-visible name for the end product. | [Max. length: 128] 
**os** | [**DeviceOs**](DeviceOs.md) |  | 
**mobile_app** | [**MobileApp**](MobileApp.md) |  | [optional] 
**user_uuid** | **character** |  | [readonly] 
**last_login** | **character** |  | [readonly] 
**created_at** | **character** |  | [readonly] 
**updated_at** | **character** |  | [readonly] 


