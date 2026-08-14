# MosquitoAlert::MetaCreateMessageRequest


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**content** | [**CreateAudienceMessageContentRequest**](CreateAudienceMessageContentRequest.md) | The content of the message for the audience | 
**target** | **character** |  | [Enum: [audience]] 
**user_uuids** | **array[character]** |  | [Min. items: 1] 
**audience** | [**AudienceFilterRequest**](AudienceFilterRequest.md) | The audience filter for the message | 


