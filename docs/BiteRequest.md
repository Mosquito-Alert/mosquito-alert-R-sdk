# MosquitoAlert::BiteRequest


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**created_at** | **character** |  | 
**sent_at** | **character** |  | 
**location** | [**LocationRequest**](LocationRequest.md) |  | 
**note** | **character** | Note user attached to report. | [optional] 
**tags** | **array[character]** |  | [optional] 
**event_environment** | **character** | The environment where the event took place. | [optional] [Enum: [indoors, outdoors, vehicle, ]] 
**event_moment** | **character** | The moment of the day when the event took place. | [optional] [Enum: [now, last_morning, last_midday, last_afternoon, last_night, ]] 
**counts** | [**BiteCountsRequest**](BiteCountsRequest.md) |  | 


