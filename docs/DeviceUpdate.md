# MosquitoAlert::DeviceUpdate


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**device_id** | **character** | Unique device identifier | [readonly] 
**name** | **character** |  | [optional] [Max. length: 255] 
**type** | **character** |  | [readonly] [Enum: [ios, android, web]] 
**manufacturer** | **character** | The manufacturer of the device. | [readonly] 
**model** | **character** | The end-user-visible name for the end product. | [readonly] 
**os** | [**DeviceOs**](DeviceOs.md) |  | 
**mobile_app** | [**MobileApp**](MobileApp.md) |  | [optional] 
**user_uuid** | **character** |  | [readonly] 
**last_login** | **character** |  | [readonly] 
**created_at** | **character** |  | [readonly] 
**updated_at** | **character** |  | [readonly] 


