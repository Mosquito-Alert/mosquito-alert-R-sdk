# MosquitoAlert::BreedingSiteRequest


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**created_at** | **character** |  | 
**sent_at** | **character** |  | 
**location** | [**LocationRequest**](LocationRequest.md) |  | 
**note** | **character** | Note user attached to report. | [optional] 
**tags** | **array[character]** |  | [optional] 
**photos** | [**array[SimplePhotoRequest]**](SimplePhotoRequest.md) |  | 
**site_type** | **character** | Breeding site type. | [optional] [Enum: [basin, bucket, fountain, small_container, storm_drain, well, other, ]] 
**has_water** | **character** | Either if the user perceived water in the breeding site. | [optional] 
**in_public_area** | **character** | Either if the breeding site is found in a public area. | [optional] 
**has_near_mosquitoes** | **character** | Either if the user perceived mosquitoes near the breeding site (less than 10 meters). | [optional] 
**has_larvae** | **character** | Either if the user perceived larvaes the breeding site. | [optional] 


