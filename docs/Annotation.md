# MosquitoAlert::Annotation


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **integer** |  | [readonly] 
**observation_uuid** | **character** |  | [readonly] 
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


