# MosquitoAlert::IdentificationTask


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**observation** | [**SimplifiedObservation**](SimplifiedObservation.md) |  | [readonly] 
**public_photo** | [**SimplePhoto**](SimplePhoto.md) |  | 
**assignments** | [**array[Assignment]**](Assignment.md) |  | [readonly] 
**status** | **character** |  | [optional] [default to &quot;open&quot;] [Enum: [open, conflict, review, done, archived]] 
**is_flagged** | **character** |  | [readonly] 
**is_safe** | **character** | Indicates if the content is safe for publication. | [readonly] 
**public_note** | **character** |  | [readonly] 
**num_annotations** | **integer** |  | [readonly] [Min: 0] 
**review** | [**IdentificationTaskReview**](IdentificationTaskReview.md) |  | [readonly] 
**result** | [**IdentificationTaskResult**](IdentificationTaskResult.md) |  | [readonly] 
**created_at** | **character** |  | [readonly] 
**updated_at** | **character** |  | [readonly] 


