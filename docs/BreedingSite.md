# MosquitoAlert::BreedingSite


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
**site_type** | **character** | Breeding site type. | [optional] [Enum: [basin, bucket, fountain, small_container, storm_drain, well, other]] 
**has_water** | **character** | Either if the user perceived water in the breeding site. | [optional] 
**in_public_area** | **character** | Either if the breeding site is found in a public area. | [optional] 
**has_near_mosquitoes** | **character** | Either if the user perceived mosquitoes near the breeding site (less than 10 meters). | [optional] 
**has_larvae** | **character** | Either if the user perceived larvaes the breeding site. | [optional] 


