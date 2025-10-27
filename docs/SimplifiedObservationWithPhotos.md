# MosquitoAlert::SimplifiedObservationWithPhotos


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**uuid** | **character** |  | [readonly] 
**short_id** | **character** |  | [readonly] 
**user_uuid** | **character** |  | [readonly] 
**created_at** | **character** |  | 
**created_at_local** | **character** | The date and time when the record was created, displayed without timezone field. | [readonly] 
**received_at** | **character** |  | [readonly] 
**location** | [**SimplifiedLocation**](SimplifiedLocation.md) |  | 
**note** | **character** | Note user attached to report. | [optional] 
**photos** | [**array[SimplePhoto]**](SimplePhoto.md) |  | [readonly] 


