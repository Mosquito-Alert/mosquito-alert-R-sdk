# MosquitoAlert::Annotation


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **integer** |  | [readonly] 
**observation_uuid** | **character** | UUID randomly generated on phone to identify each unique report version. Must be exactly 36 characters (32 hex digits plus 4 hyphens). | [readonly] 
**user** | [**SimpleAnnotatorUser**](SimpleAnnotatorUser.md) |  | [readonly] 
**best_photo** | [**SimplePhoto**](SimplePhoto.md) |  | [readonly] 
**classification** | [**AnnotationClassification**](AnnotationClassification.md) |  | 
**feedback** | [**AnnotationFeedback**](AnnotationFeedback.md) |  | [optional] 
**type** | **character** |  | [readonly] [Enum: [short, long]] 
**is_flagged** | **character** |  | [readonly] [default to FALSE] 
**is_decisive** | **character** |  | [readonly] [default to FALSE] 
**observation_flags** | [**ObservationFlags**](ObservationFlags.md) |  | [optional] 
**tags** | **array[character]** |  | [optional] 
**created_at** | **character** |  | [readonly] 
**updated_at** | **character** |  | [readonly] 


