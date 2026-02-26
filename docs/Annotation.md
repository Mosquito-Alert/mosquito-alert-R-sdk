# MosquitoAlert::Annotation


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **integer** |  | [readonly] 
**observation_uuid** | **character** |  | [readonly] 
**user** | [**SimpleAnnotatorUser**](SimpleAnnotatorUser.md) |  | [readonly] 
**best_photo** | [**SimplePhoto**](SimplePhoto.md) |  | [readonly] 
**classification** | [**SpeciesClassification**](SpeciesClassification.md) |  | 
**characteristics** | [**SpeciesCharacteristics**](SpeciesCharacteristics.md) |  | [optional] 
**feedback** | [**AnnotationFeedback**](AnnotationFeedback.md) |  | [optional] 
**type** | **character** |  | [readonly] [Enum: [short, long]] 
**is_flagged** | **character** |  | [readonly] [default to FALSE] 
**decision_level** | **character** |  | [readonly] [Enum: [normal, executive, final]] 
**observation_flags** | [**ObservationFlags**](ObservationFlags.md) |  | [optional] 
**tags** | **array[character]** |  | [optional] 
**created_at** | **character** |  | [readonly] 
**updated_at** | **character** |  | [readonly] 


