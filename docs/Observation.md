# MosquitoAlert::Observation


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**uuid** | **character** |  | [readonly] 
**short_id** | **character** |  | [readonly] 
**user_uuid** | **character** |  | [readonly] 
**created_at** | **character** |  | 
**created_at_local** | **character** | The date and time when the record was created, displayed in the local timezone specified for this entry. | [readonly] 
**sent_at** | **character** |  | 
**received_at** | **character** |  | [readonly] 
**updated_at** | **character** | Date and time when the report was last modified | [readonly] 
**location** | [**Location**](Location.md) |  | 
**note** | **character** | Note user attached to report. | [optional] 
**tags** | **array[character]** |  | [optional] 
**published** | **character** |  | [readonly] 
**photos** | [**array[SimplePhoto]**](SimplePhoto.md) |  | 
**event_environment** | **character** | The environment where the event took place. | [optional] [Enum: [indoors, outdoors, vehicle, ]] 
**event_moment** | **character** | The moment of the day when the event took place. | [optional] [Enum: [now, last_morning, last_midday, last_afternoon, last_night, ]] 
**user_perceived_mosquito_specie** | **character** | The mosquito specie perceived by the user. | [optional] [Enum: [albopictus, aegypti, japonicus, koreicus, culex, other, ]] 
**user_perceived_mosquito_thorax** | **character** | The species of mosquito that the thorax resembles, according to the user. | [optional] [Enum: [albopictus, aegypti, japonicus, koreicus, culex, other, ]] 
**user_perceived_mosquito_abdomen** | **character** | The species of mosquito that the abdomen resembles, according to the user. | [optional] [Enum: [albopictus, aegypti, japonicus, koreicus, culex, other, ]] 
**user_perceived_mosquito_legs** | **character** | The species of mosquito that the leg resembles, according to the user. | [optional] [Enum: [albopictus, aegypti, japonicus, koreicus, culex, other, ]] 

