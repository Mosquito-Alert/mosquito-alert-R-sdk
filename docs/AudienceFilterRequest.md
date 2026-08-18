# MosquitoAlert::AudienceFilterRequest


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**last_login_before** | **character** |  | [optional] 
**last_login_after** | **character** |  | [optional] 
**in_area** | [**AnyType**](.md) | Filter users whose last known location is within the specified area. The area should be provided as a GeoJSON geometry object. | [optional] 
**locale** | **character** |  | [optional] [Enum: [en, es, ca, eu, bn, sv, de, sq, el, gl, hu, pt, sl, it, fr, bg, ro, hr, mk, sr, lb, nl, tr, zh-CN]] 
**notification_topics** | **array[character]** | Filter users subscribed to any of the provided notification topics. | [optional] 


