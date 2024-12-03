# MosquitoAlert::ObservationRequest


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**created_at** | **character** |  | 
**sent_at** | **character** |  | 
**location** | [**LocationRequest**](LocationRequest.md) |  | 
**note** | **character** | Note user attached to report. | [optional] 
**tags** | **array[character]** |  | [optional] 
**photos** | [**array[SimplePhotoRequest]**](SimplePhotoRequest.md) |  | 
**event_environment** | **character** | The environment where the event took place. | [optional] [Enum: [indoors, outdoors, vehicle, ]] 
**event_moment** | **character** | The moment of the day when the event took place. | [optional] [Enum: [now, last_morning, last_midday, last_afternoon, last_night, ]] 
**user_perceived_mosquito_specie** | **character** | The mosquito specie perceived by the user. | [optional] [Enum: [albopictus, aegypti, japonicus, koreicus, culex, other, ]] 
**user_perceived_mosquito_thorax** | **character** | The species of mosquito that the thorax resembles, according to the user. | [optional] [Enum: [albopictus, aegypti, japonicus, koreicus, culex, other, ]] 
**user_perceived_mosquito_abdomen** | **character** | The species of mosquito that the abdomen resembles, according to the user. | [optional] [Enum: [albopictus, aegypti, japonicus, koreicus, culex, other, ]] 
**user_perceived_mosquito_legs** | **character** | The species of mosquito that the leg resembles, according to the user. | [optional] [Enum: [albopictus, aegypti, japonicus, koreicus, culex, other, ]] 


