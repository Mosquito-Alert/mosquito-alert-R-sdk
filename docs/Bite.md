# MosquitoAlert::Bite


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
**event_environment** | **character** | The environment where the event took place. | [optional] [Enum: [indoors, outdoors, vehicle, ]] 
**event_moment** | **character** | The moment of the day when the event took place. | [optional] [Enum: [now, last_morning, last_midday, last_afternoon, last_night, ]] 
**bite_count** | **integer** | Total number of bites reported. | [readonly] 
**head_bite_count** | **integer** | Number of bites reported in the head. | [optional] [default to 0] 
**left_arm_bite_count** | **integer** | Number of bites reported in the left arm. | [optional] [default to 0] 
**right_arm_bite_count** | **integer** | Number of bites reported in the right arm. | [optional] [default to 0] 
**chest_bite_count** | **integer** | Number of bites reported in the chest. | [optional] [default to 0] 
**left_leg_bite_count** | **integer** | Number of bites reported in the left leg. | [optional] [default to 0] 
**right_leg_bite_count** | **integer** | Number of bites reported in the right leg. | [optional] [default to 0] 


