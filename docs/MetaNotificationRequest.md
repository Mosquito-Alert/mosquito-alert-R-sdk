# MosquitoAlert::MetaNotificationRequest


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**receiver_type** | **character** |  | [optional] [default to &quot;topic&quot;] [Enum: [topic]] 
**message** | [**CreateNotificationMessageRequest**](CreateNotificationMessageRequest.md) | The message of the notification | 
**user_uuids** | **array[character]** |  | [Min. items: 1] 
**topic_codes** | **array[character]** |  | [Min. items: 1] 


