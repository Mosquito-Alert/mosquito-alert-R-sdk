# MosquitoAlert::CreateUser


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**uuid** | **character** |  | [readonly] 
**registration_time** | **character** | The date and time when user registered and consented to sharing data. Automatically set by server when user uploads registration. | [readonly] 
**score** | **integer** | Global XP Score. This field is updated whenever the user asks for the score, and is only stored here. The content must equal score_v2_adult + score_v2_bite + score_v2_site | [readonly] 
**last_score_update** | **character** | Last time score was updated | [readonly] 


