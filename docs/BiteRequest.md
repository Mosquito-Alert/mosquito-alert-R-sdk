# MosquitoAlert::BiteRequest


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**created_at** | **character** |  | 
**sent_at** | **character** |  | 
**location** | [**LocationRequest**](LocationRequest.md) |  | 
**note** | **character** | Note user attached to report. | [optional] 
**tags** | **array[character]** |  | [optional] 
**package** | [**PackageRequest**](PackageRequest.md) |  | [optional] 
**device** | [**DeviceRequest**](DeviceRequest.md) |  | [optional] 
**event_environment** | **character** | The environment where the event took place. | [optional] [Enum: [indoors, outdoors, vehicle, ]] 
**event_moment** | **character** | The moment of the day when the event took place. | [optional] [Enum: [now, last_morning, last_midday, last_afternoon, last_night, ]] 
**head_bite_count** | **integer** | Number of bites reported in the head. | [optional] [default to 0] 
**left_arm_bite_count** | **integer** | Number of bites reported in the left arm. | [optional] [default to 0] 
**right_arm_bite_count** | **integer** | Number of bites reported in the right arm. | [optional] [default to 0] 
**chest_bite_count** | **integer** | Number of bites reported in the chest. | [optional] [default to 0] 
**left_leg_bite_count** | **integer** | Number of bites reported in the left leg. | [optional] [default to 0] 
**right_leg_bite_count** | **integer** | Number of bites reported in the right leg. | [optional] [default to 0] 


