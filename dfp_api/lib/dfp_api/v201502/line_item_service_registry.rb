# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2013, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 0.9.5 on 2015-02-11 12:50:27.

require 'dfp_api/errors'

module DfpApi; module V201502; module LineItemService
  class LineItemServiceRegistry
    LINEITEMSERVICE_METHODS = {:create_line_items=>{:input=>[{:name=>:line_items, :type=>"LineItem", :min_occurs=>0, :max_occurs=>:unbounded}], :output=>{:name=>"create_line_items_response", :fields=>[{:name=>:rval, :type=>"LineItem", :min_occurs=>0, :max_occurs=>:unbounded}]}}, :get_line_items_by_statement=>{:input=>[{:name=>:filter_statement, :type=>"Statement", :min_occurs=>0, :max_occurs=>1}], :output=>{:name=>"get_line_items_by_statement_response", :fields=>[{:name=>:rval, :type=>"LineItemPage", :min_occurs=>0, :max_occurs=>1}]}}, :perform_line_item_action=>{:input=>[{:name=>:line_item_action, :type=>"LineItemAction", :min_occurs=>0, :max_occurs=>1}, {:name=>:filter_statement, :type=>"Statement", :min_occurs=>0, :max_occurs=>1}], :output=>{:name=>"perform_line_item_action_response", :fields=>[{:name=>:rval, :type=>"UpdateResult", :min_occurs=>0, :max_occurs=>1}]}}, :update_line_items=>{:input=>[{:name=>:line_items, :type=>"LineItem", :min_occurs=>0, :max_occurs=>:unbounded}], :output=>{:name=>"update_line_items_response", :fields=>[{:name=>:rval, :type=>"LineItem", :min_occurs=>0, :max_occurs=>:unbounded}]}}}
    LINEITEMSERVICE_TYPES = {:ObjectValue=>{:fields=>[], :abstract=>true, :base=>"Value"}, :ActivateLineItems=>{:fields=>[], :base=>"LineItemAction"}, :AdUnitTargeting=>{:fields=>[{:name=>:ad_unit_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:include_descendants, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}]}, :ApiError=>{:fields=>[{:name=>:field_path, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:trigger, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:error_string, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :ApiException=>{:fields=>[{:name=>:errors, :type=>"ApiError", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"ApplicationException"}, :TechnologyTargeting=>{:fields=>[{:name=>:bandwidth_group_targeting, :type=>"BandwidthGroupTargeting", :min_occurs=>0, :max_occurs=>1}, {:name=>:browser_targeting, :type=>"BrowserTargeting", :min_occurs=>0, :max_occurs=>1}, {:name=>:browser_language_targeting, :type=>"BrowserLanguageTargeting", :min_occurs=>0, :max_occurs=>1}, {:name=>:device_capability_targeting, :type=>"DeviceCapabilityTargeting", :min_occurs=>0, :max_occurs=>1}, {:name=>:device_category_targeting, :type=>"DeviceCategoryTargeting", :min_occurs=>0, :max_occurs=>1}, {:name=>:device_manufacturer_targeting, :type=>"DeviceManufacturerTargeting", :min_occurs=>0, :max_occurs=>1}, {:name=>:mobile_carrier_targeting, :type=>"MobileCarrierTargeting", :min_occurs=>0, :max_occurs=>1}, {:name=>:mobile_device_targeting, :type=>"MobileDeviceTargeting", :min_occurs=>0, :max_occurs=>1}, {:name=>:mobile_device_submodel_targeting, :type=>"MobileDeviceSubmodelTargeting", :min_occurs=>0, :max_occurs=>1}, {:name=>:operating_system_targeting, :type=>"OperatingSystemTargeting", :min_occurs=>0, :max_occurs=>1}, {:name=>:operating_system_version_targeting, :type=>"OperatingSystemVersionTargeting", :min_occurs=>0, :max_occurs=>1}]}, :ApiVersionError=>{:fields=>[{:name=>:reason, :type=>"ApiVersionError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :ApplicationException=>{:fields=>[{:name=>:message, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :AppliedLabel=>{:fields=>[{:name=>:label_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:is_negated, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}]}, :ArchiveLineItems=>{:fields=>[], :base=>"LineItemAction"}, :AudienceExtensionError=>{:fields=>[{:name=>:reason, :type=>"AudienceExtensionError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :AuthenticationError=>{:fields=>[{:name=>:reason, :type=>"AuthenticationError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :BandwidthGroup=>{:fields=>[], :base=>"Technology"}, :BandwidthGroupTargeting=>{:fields=>[{:name=>:is_targeted, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:bandwidth_groups, :type=>"Technology", :min_occurs=>0, :max_occurs=>:unbounded}]}, :BaseCustomFieldValue=>{:fields=>[{:name=>:custom_field_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :BooleanValue=>{:fields=>[{:name=>:value, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}], :base=>"Value"}, :Browser=>{:fields=>[{:name=>:major_version, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:minor_version, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"Technology"}, :BrowserLanguage=>{:fields=>[], :base=>"Technology"}, :BrowserLanguageTargeting=>{:fields=>[{:name=>:is_targeted, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:browser_languages, :type=>"Technology", :min_occurs=>0, :max_occurs=>:unbounded}]}, :BrowserTargeting=>{:fields=>[{:name=>:is_targeted, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:browsers, :type=>"Technology", :min_occurs=>0, :max_occurs=>:unbounded}]}, :ClickTrackingLineItemError=>{:fields=>[{:name=>:reason, :type=>"ClickTrackingLineItemError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :CollectionSizeError=>{:fields=>[{:name=>:reason, :type=>"CollectionSizeError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :CommonError=>{:fields=>[{:name=>:reason, :type=>"CommonError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :CompanyCreditStatusError=>{:fields=>[{:name=>:reason, :type=>"CompanyCreditStatusError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :ContentMetadataKeyHierarchyTargeting=>{:fields=>[{:name=>:custom_targeting_value_ids, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}]}, :ContentMetadataTargetingError=>{:fields=>[{:name=>:reason, :type=>"ContentMetadataTargetingError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :ContentTargeting=>{:fields=>[{:name=>:targeted_content_ids, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:excluded_content_ids, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:targeted_video_category_ids, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:excluded_video_category_ids, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:targeted_video_content_bundle_ids, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:excluded_video_content_bundle_ids, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:targeted_content_metadata, :type=>"ContentMetadataKeyHierarchyTargeting", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:excluded_content_metadata, :type=>"ContentMetadataKeyHierarchyTargeting", :min_occurs=>0, :max_occurs=>:unbounded}]}, :CreativeError=>{:fields=>[{:name=>:reason, :type=>"CreativeError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :CreativePlaceholder=>{:fields=>[{:name=>:size, :type=>"Size", :min_occurs=>0, :max_occurs=>1}, {:name=>:companions, :type=>"CreativePlaceholder", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:applied_labels, :type=>"AppliedLabel", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:effective_applied_labels, :type=>"AppliedLabel", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:expected_creative_count, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:creative_size_type, :type=>"CreativeSizeType", :min_occurs=>0, :max_occurs=>1}]}, :CrossSellError=>{:fields=>[{:name=>:reason, :type=>"CrossSellError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :CustomCriteria=>{:fields=>[{:name=>:key_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:value_ids, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:operator, :type=>"CustomCriteria.ComparisonOperator", :min_occurs=>0, :max_occurs=>1}], :base=>"CustomCriteriaLeaf"}, :CustomCriteriaSet=>{:fields=>[{:name=>:logical_operator, :type=>"CustomCriteriaSet.LogicalOperator", :min_occurs=>0, :max_occurs=>1}, {:name=>:children, :type=>"CustomCriteriaNode", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"CustomCriteriaNode"}, :CustomFieldValue=>{:fields=>[{:name=>:value, :type=>"Value", :min_occurs=>0, :max_occurs=>1}], :base=>"BaseCustomFieldValue"}, :CustomFieldValueError=>{:fields=>[{:name=>:reason, :type=>"CustomFieldValueError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :CustomTargetingError=>{:fields=>[{:name=>:reason, :type=>"CustomTargetingError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :CustomCriteriaLeaf=>{:fields=>[], :abstract=>true, :base=>"CustomCriteriaNode"}, :CustomCriteriaNode=>{:fields=>[], :abstract=>true}, :AudienceSegmentCriteria=>{:fields=>[{:name=>:operator, :type=>"AudienceSegmentCriteria.ComparisonOperator", :min_occurs=>0, :max_occurs=>1}, {:name=>:audience_segment_ids, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"CustomCriteriaLeaf"}, :Date=>{:fields=>[{:name=>:year, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:month, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:day, :type=>"int", :min_occurs=>0, :max_occurs=>1}]}, :DateTime=>{:fields=>[{:name=>:date, :type=>"Date", :min_occurs=>0, :max_occurs=>1}, {:name=>:hour, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:minute, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:second, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:time_zone_id, :original_name=>"timeZoneID", :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :DateTimeRangeTargetingError=>{:fields=>[{:name=>:reason, :type=>"DateTimeRangeTargetingError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :DateTimeValue=>{:fields=>[{:name=>:value, :type=>"DateTime", :min_occurs=>0, :max_occurs=>1}], :base=>"Value"}, :DateValue=>{:fields=>[{:name=>:value, :type=>"Date", :min_occurs=>0, :max_occurs=>1}], :base=>"Value"}, :DayPart=>{:fields=>[{:name=>:day_of_week, :type=>"DayOfWeek", :min_occurs=>0, :max_occurs=>1}, {:name=>:start_time, :type=>"TimeOfDay", :min_occurs=>0, :max_occurs=>1}, {:name=>:end_time, :type=>"TimeOfDay", :min_occurs=>0, :max_occurs=>1}]}, :DayPartTargeting=>{:fields=>[{:name=>:day_parts, :type=>"DayPart", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:time_zone, :type=>"DeliveryTimeZone", :min_occurs=>0, :max_occurs=>1}]}, :DayPartTargetingError=>{:fields=>[{:name=>:reason, :type=>"DayPartTargetingError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :DeleteLineItems=>{:fields=>[], :base=>"LineItemAction"}, :DeliveryData=>{:fields=>[{:name=>:units, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}]}, :DeliveryIndicator=>{:fields=>[{:name=>:expected_delivery_percentage, :type=>"double", :min_occurs=>0, :max_occurs=>1}, {:name=>:actual_delivery_percentage, :type=>"double", :min_occurs=>0, :max_occurs=>1}]}, :DeviceCapability=>{:fields=>[], :base=>"Technology"}, :DeviceCapabilityTargeting=>{:fields=>[{:name=>:targeted_device_capabilities, :type=>"Technology", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:excluded_device_capabilities, :type=>"Technology", :min_occurs=>0, :max_occurs=>:unbounded}]}, :DeviceCategory=>{:fields=>[], :base=>"Technology"}, :DeviceCategoryTargeting=>{:fields=>[{:name=>:targeted_device_categories, :type=>"Technology", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:excluded_device_categories, :type=>"Technology", :min_occurs=>0, :max_occurs=>:unbounded}]}, :DeviceManufacturer=>{:fields=>[], :base=>"Technology"}, :DeviceManufacturerTargeting=>{:fields=>[{:name=>:is_targeted, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:device_manufacturers, :type=>"Technology", :min_occurs=>0, :max_occurs=>:unbounded}]}, :DropDownCustomFieldValue=>{:fields=>[{:name=>:custom_field_option_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}], :base=>"BaseCustomFieldValue"}, :EntityChildrenLimitReachedError=>{:fields=>[{:name=>:reason, :type=>"EntityChildrenLimitReachedError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :EntityLimitReachedError=>{:fields=>[], :base=>"ApiError"}, :FeatureError=>{:fields=>[{:name=>:reason, :type=>"FeatureError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :ForecastError=>{:fields=>[{:name=>:reason, :type=>"ForecastError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :FrequencyCap=>{:fields=>[{:name=>:max_impressions, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:num_time_units, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:time_unit, :type=>"TimeUnit", :min_occurs=>0, :max_occurs=>1}]}, :FrequencyCapError=>{:fields=>[{:name=>:reason, :type=>"FrequencyCapError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :GenericTargetingError=>{:fields=>[{:name=>:reason, :type=>"GenericTargetingError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :GeoTargeting=>{:fields=>[{:name=>:targeted_locations, :type=>"Location", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:excluded_locations, :type=>"Location", :min_occurs=>0, :max_occurs=>:unbounded}]}, :GeoTargetingError=>{:fields=>[{:name=>:reason, :type=>"GeoTargetingError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :Goal=>{:fields=>[{:name=>:goal_type, :type=>"GoalType", :min_occurs=>0, :max_occurs=>1}, {:name=>:unit_type, :type=>"UnitType", :min_occurs=>0, :max_occurs=>1}, {:name=>:units, :type=>"long", :min_occurs=>0, :max_occurs=>1}]}, :GrpSettings=>{:fields=>[{:name=>:min_target_age, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:max_target_age, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:target_gender, :type=>"GrpTargetGender", :min_occurs=>0, :max_occurs=>1}, {:name=>:provider, :type=>"GrpProvider", :min_occurs=>0, :max_occurs=>1}, {:name=>:target_impression_goal, :type=>"long", :min_occurs=>0, :max_occurs=>1}]}, :GrpSettingsError=>{:fields=>[{:name=>:reason, :type=>"GrpSettingsError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :ImageError=>{:fields=>[{:name=>:reason, :type=>"ImageError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :InternalApiError=>{:fields=>[{:name=>:reason, :type=>"InternalApiError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :InvalidUrlError=>{:fields=>[{:name=>:reason, :type=>"InvalidUrlError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :InventoryTargeting=>{:fields=>[{:name=>:targeted_ad_units, :type=>"AdUnitTargeting", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:excluded_ad_units, :type=>"AdUnitTargeting", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:targeted_placement_ids, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}]}, :InventoryTargetingError=>{:fields=>[{:name=>:reason, :type=>"InventoryTargetingError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :LabelEntityAssociationError=>{:fields=>[{:name=>:reason, :type=>"LabelEntityAssociationError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :LineItemAction=>{:fields=>[], :abstract=>true}, :LineItemActivityAssociationError=>{:fields=>[{:name=>:reason, :type=>"LineItemActivityAssociationError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :LineItemActivityAssociation=>{:fields=>[{:name=>:activity_id, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:click_through_conversion_cost, :type=>"Money", :min_occurs=>0, :max_occurs=>1}, {:name=>:view_through_conversion_cost, :type=>"Money", :min_occurs=>0, :max_occurs=>1}]}, :LineItemCreativeAssociationError=>{:fields=>[{:name=>:reason, :type=>"LineItemCreativeAssociationError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :LineItem=>{:fields=>[{:name=>:targeting, :type=>"Targeting", :min_occurs=>0, :max_occurs=>1}], :base=>"LineItemSummary"}, :LineItemError=>{:fields=>[{:name=>:reason, :type=>"LineItemError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :LineItemFlightDateError=>{:fields=>[{:name=>:reason, :type=>"LineItemFlightDateError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :LineItemOperationError=>{:fields=>[{:name=>:reason, :type=>"LineItemOperationError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :LineItemPage=>{:fields=>[{:name=>:total_result_set_size, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:start_index, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:results, :type=>"LineItem", :min_occurs=>0, :max_occurs=>:unbounded}]}, :LineItemSummary=>{:fields=>[{:name=>:order_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:external_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:order_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:start_date_time, :type=>"DateTime", :min_occurs=>0, :max_occurs=>1}, {:name=>:start_date_time_type, :type=>"StartDateTimeType", :min_occurs=>0, :max_occurs=>1}, {:name=>:end_date_time, :type=>"DateTime", :min_occurs=>0, :max_occurs=>1}, {:name=>:auto_extension_days, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:unlimited_end_date_time, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:creative_rotation_type, :type=>"CreativeRotationType", :min_occurs=>0, :max_occurs=>1}, {:name=>:delivery_rate_type, :type=>"DeliveryRateType", :min_occurs=>0, :max_occurs=>1}, {:name=>:roadblocking_type, :type=>"RoadblockingType", :min_occurs=>0, :max_occurs=>1}, {:name=>:frequency_caps, :type=>"FrequencyCap", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:line_item_type, :type=>"LineItemType", :min_occurs=>0, :max_occurs=>1}, {:name=>:priority, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:cost_per_unit, :type=>"Money", :min_occurs=>0, :max_occurs=>1}, {:name=>:value_cost_per_unit, :type=>"Money", :min_occurs=>0, :max_occurs=>1}, {:name=>:cost_type, :type=>"CostType", :min_occurs=>0, :max_occurs=>1}, {:name=>:discount_type, :type=>"LineItemDiscountType", :min_occurs=>0, :max_occurs=>1}, {:name=>:discount, :type=>"double", :min_occurs=>0, :max_occurs=>1}, {:name=>:contracted_units_bought, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:creative_placeholders, :type=>"CreativePlaceholder", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:activity_associations, :type=>"LineItemActivityAssociation", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:target_platform, :type=>"TargetPlatform", :min_occurs=>0, :max_occurs=>1}, {:name=>:environment_type, :type=>"EnvironmentType", :min_occurs=>0, :max_occurs=>1}, {:name=>:companion_delivery_option, :type=>"CompanionDeliveryOption", :min_occurs=>0, :max_occurs=>1}, {:name=>:creative_persistence_type, :type=>"CreativePersistenceType", :min_occurs=>0, :max_occurs=>1}, {:name=>:allow_overbook, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:skip_inventory_check, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:skip_cross_selling_rule_warning_checks, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:reserve_at_creation, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:stats, :type=>"Stats", :min_occurs=>0, :max_occurs=>1}, {:name=>:delivery_indicator, :type=>"DeliveryIndicator", :min_occurs=>0, :max_occurs=>1}, {:name=>:delivery_data, :type=>"DeliveryData", :min_occurs=>0, :max_occurs=>1}, {:name=>:budget, :type=>"Money", :min_occurs=>0, :max_occurs=>1}, {:name=>:status, :type=>"ComputedStatus", :min_occurs=>0, :max_occurs=>1}, {:name=>:reservation_status, :type=>"LineItemSummary.ReservationStatus", :min_occurs=>0, :max_occurs=>1}, {:name=>:is_archived, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:web_property_code, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:applied_labels, :type=>"AppliedLabel", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:effective_applied_labels, :type=>"AppliedLabel", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:disable_same_advertiser_competitive_exclusion, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:last_modified_by_app, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:notes, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:last_modified_date_time, :type=>"DateTime", :min_occurs=>0, :max_occurs=>1}, {:name=>:creation_date_time, :type=>"DateTime", :min_occurs=>0, :max_occurs=>1}, {:name=>:is_prioritized_preferred_deals_enabled, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:ad_exchange_auction_opening_priority, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:custom_field_values, :type=>"BaseCustomFieldValue", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:is_set_top_box_enabled, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:is_missing_creatives, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:set_top_box_display_info, :type=>"SetTopBoxInfo", :min_occurs=>0, :max_occurs=>1}, {:name=>:primary_goal, :type=>"Goal", :min_occurs=>0, :max_occurs=>1}, {:name=>:secondary_goals, :type=>"Goal", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:grp_settings, :type=>"GrpSettings", :min_occurs=>0, :max_occurs=>1}]}, :Location=>{:fields=>[{:name=>:id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:type, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:canonical_parent_id, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:display_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :MobileCarrier=>{:fields=>[], :base=>"Technology"}, :MobileCarrierTargeting=>{:fields=>[{:name=>:is_targeted, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:mobile_carriers, :type=>"Technology", :min_occurs=>0, :max_occurs=>:unbounded}]}, :MobileDevice=>{:fields=>[{:name=>:manufacturer_criterion_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}], :base=>"Technology"}, :MobileDeviceSubmodel=>{:fields=>[{:name=>:mobile_device_criterion_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:device_manufacturer_criterion_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}], :base=>"Technology"}, :MobileDeviceSubmodelTargeting=>{:fields=>[{:name=>:targeted_mobile_device_submodels, :type=>"Technology", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:excluded_mobile_device_submodels, :type=>"Technology", :min_occurs=>0, :max_occurs=>:unbounded}]}, :MobileDeviceTargeting=>{:fields=>[{:name=>:targeted_mobile_devices, :type=>"Technology", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:excluded_mobile_devices, :type=>"Technology", :min_occurs=>0, :max_occurs=>:unbounded}]}, :Money=>{:fields=>[{:name=>:currency_code, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:micro_amount, :type=>"long", :min_occurs=>0, :max_occurs=>1}]}, :NotNullError=>{:fields=>[{:name=>:reason, :type=>"NotNullError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :NullError=>{:fields=>[{:name=>:reason, :type=>"NullError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :NumberValue=>{:fields=>[{:name=>:value, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"Value"}, :OperatingSystem=>{:fields=>[], :base=>"Technology"}, :OperatingSystemTargeting=>{:fields=>[{:name=>:is_targeted, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:operating_systems, :type=>"Technology", :min_occurs=>0, :max_occurs=>:unbounded}]}, :OperatingSystemVersion=>{:fields=>[{:name=>:major_version, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:minor_version, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:micro_version, :type=>"int", :min_occurs=>0, :max_occurs=>1}], :base=>"Technology"}, :OperatingSystemVersionTargeting=>{:fields=>[{:name=>:targeted_operating_system_versions, :type=>"Technology", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:excluded_operating_system_versions, :type=>"Technology", :min_occurs=>0, :max_occurs=>:unbounded}]}, :OrderError=>{:fields=>[{:name=>:reason, :type=>"OrderError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :ParseError=>{:fields=>[{:name=>:reason, :type=>"ParseError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :PauseLineItems=>{:fields=>[], :base=>"LineItemAction"}, :PermissionError=>{:fields=>[{:name=>:reason, :type=>"PermissionError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :ProgrammaticError=>{:fields=>[{:name=>:reason, :type=>"ProgrammaticError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :PublisherQueryLanguageContextError=>{:fields=>[{:name=>:reason, :type=>"PublisherQueryLanguageContextError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :PublisherQueryLanguageSyntaxError=>{:fields=>[{:name=>:reason, :type=>"PublisherQueryLanguageSyntaxError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :QuotaError=>{:fields=>[{:name=>:reason, :type=>"QuotaError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :RangeError=>{:fields=>[{:name=>:reason, :type=>"RangeError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :ReleaseLineItems=>{:fields=>[], :base=>"LineItemAction"}, :RequiredCollectionError=>{:fields=>[{:name=>:reason, :type=>"RequiredCollectionError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :RequiredError=>{:fields=>[{:name=>:reason, :type=>"RequiredError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :RequiredNumberError=>{:fields=>[{:name=>:reason, :type=>"RequiredNumberError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :RequiredSizeError=>{:fields=>[{:name=>:reason, :type=>"RequiredSizeError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :ReservationDetailsError=>{:fields=>[{:name=>:reason, :type=>"ReservationDetailsError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :ReserveAndOverbookLineItems=>{:fields=>[], :base=>"ReserveLineItems"}, :ReserveLineItems=>{:fields=>[{:name=>:skip_inventory_check, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}], :base=>"LineItemAction"}, :ResumeAndOverbookLineItems=>{:fields=>[], :base=>"ResumeLineItems"}, :ResumeLineItems=>{:fields=>[{:name=>:skip_inventory_check, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}], :base=>"LineItemAction"}, :AudienceSegmentError=>{:fields=>[{:name=>:reason, :type=>"AudienceSegmentError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :ServerError=>{:fields=>[{:name=>:reason, :type=>"ServerError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :SetTopBoxInfo=>{:fields=>[{:name=>:sync_status, :type=>"SetTopBoxSyncStatus", :min_occurs=>0, :max_occurs=>1}, {:name=>:last_sync_result, :type=>"CanoeSyncResult", :min_occurs=>0, :max_occurs=>1}, {:name=>:last_sync_canoe_response_message, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:nielsen_product_category_code, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :SetTopBoxLineItemError=>{:fields=>[{:name=>:reason, :type=>"SetTopBoxLineItemError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :SetValue=>{:fields=>[{:name=>:values, :type=>"Value", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"Value"}, :Size=>{:fields=>[{:name=>:width, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:height, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:is_aspect_ratio, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}]}, :SoapRequestHeader=>{:fields=>[{:name=>:network_code, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:application_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :SoapResponseHeader=>{:fields=>[{:name=>:request_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:response_time, :type=>"long", :min_occurs=>0, :max_occurs=>1}]}, :Statement=>{:fields=>[{:name=>:query, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:values, :type=>"String_ValueMapEntry", :min_occurs=>0, :max_occurs=>:unbounded}]}, :StatementError=>{:fields=>[{:name=>:reason, :type=>"StatementError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :Stats=>{:fields=>[{:name=>:impressions_delivered, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:clicks_delivered, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:video_completions_delivered, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:video_starts_delivered, :type=>"long", :min_occurs=>0, :max_occurs=>1}]}, :StringLengthError=>{:fields=>[{:name=>:reason, :type=>"StringLengthError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :String_ValueMapEntry=>{:fields=>[{:name=>:key, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:value, :type=>"Value", :min_occurs=>0, :max_occurs=>1}]}, :Targeting=>{:fields=>[{:name=>:geo_targeting, :type=>"GeoTargeting", :min_occurs=>0, :max_occurs=>1}, {:name=>:inventory_targeting, :type=>"InventoryTargeting", :min_occurs=>0, :max_occurs=>1}, {:name=>:day_part_targeting, :type=>"DayPartTargeting", :min_occurs=>0, :max_occurs=>1}, {:name=>:technology_targeting, :type=>"TechnologyTargeting", :min_occurs=>0, :max_occurs=>1}, {:name=>:custom_targeting, :type=>"CustomCriteriaSet", :min_occurs=>0, :max_occurs=>1}, {:name=>:user_domain_targeting, :type=>"UserDomainTargeting", :min_occurs=>0, :max_occurs=>1}, {:name=>:content_targeting, :type=>"ContentTargeting", :min_occurs=>0, :max_occurs=>1}, {:name=>:video_position_targeting, :type=>"VideoPositionTargeting", :min_occurs=>0, :max_occurs=>1}]}, :TeamError=>{:fields=>[{:name=>:reason, :type=>"TeamError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :Technology=>{:fields=>[{:name=>:id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:name, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :TechnologyTargetingError=>{:fields=>[{:name=>:reason, :type=>"TechnologyTargetingError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :TextValue=>{:fields=>[{:name=>:value, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"Value"}, :TimeOfDay=>{:fields=>[{:name=>:hour, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:minute, :type=>"MinuteOfHour", :min_occurs=>0, :max_occurs=>1}]}, :TypeError=>{:fields=>[], :base=>"ApiError"}, :UnarchiveLineItems=>{:fields=>[], :base=>"LineItemAction"}, :UniqueError=>{:fields=>[], :base=>"ApiError"}, :UpdateResult=>{:fields=>[{:name=>:num_changes, :type=>"int", :min_occurs=>0, :max_occurs=>1}]}, :UserDomainTargeting=>{:fields=>[{:name=>:domains, :type=>"string", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:targeted, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}]}, :UserDomainTargetingError=>{:fields=>[{:name=>:reason, :type=>"UserDomainTargetingError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :Value=>{:fields=>[], :abstract=>true}, :VideoPosition=>{:fields=>[{:name=>:position_type, :type=>"VideoPosition.Type", :min_occurs=>0, :max_occurs=>1}, {:name=>:midroll_index, :type=>"int", :min_occurs=>0, :max_occurs=>1}]}, :VideoPositionTargeting=>{:fields=>[{:name=>:targeted_positions, :type=>"VideoPositionTarget", :min_occurs=>0, :max_occurs=>:unbounded}]}, :VideoPositionWithinPod=>{:fields=>[{:name=>:index, :type=>"int", :min_occurs=>0, :max_occurs=>1}]}, :VideoPositionTarget=>{:fields=>[{:name=>:video_position, :type=>"VideoPosition", :min_occurs=>0, :max_occurs=>1}, {:name=>:video_bumper_type, :type=>"VideoBumperType", :min_occurs=>0, :max_occurs=>1}, {:name=>:video_position_within_pod, :type=>"VideoPositionWithinPod", :min_occurs=>0, :max_occurs=>1}]}, :"ApiVersionError.Reason"=>{:fields=>[]}, :"AudienceExtensionError.Reason"=>{:fields=>[]}, :"AuthenticationError.Reason"=>{:fields=>[]}, :CanoeSyncResult=>{:fields=>[]}, :"ClickTrackingLineItemError.Reason"=>{:fields=>[]}, :"CollectionSizeError.Reason"=>{:fields=>[]}, :"CommonError.Reason"=>{:fields=>[]}, :CompanionDeliveryOption=>{:fields=>[]}, :"CompanyCreditStatusError.Reason"=>{:fields=>[]}, :ComputedStatus=>{:fields=>[]}, :"ContentMetadataTargetingError.Reason"=>{:fields=>[]}, :CostType=>{:fields=>[]}, :"CreativeError.Reason"=>{:fields=>[]}, :CreativeRotationType=>{:fields=>[]}, :CreativeSizeType=>{:fields=>[]}, :"CrossSellError.Reason"=>{:fields=>[]}, :"CustomCriteria.ComparisonOperator"=>{:fields=>[]}, :"CustomCriteriaSet.LogicalOperator"=>{:fields=>[]}, :"CustomFieldValueError.Reason"=>{:fields=>[]}, :"CustomTargetingError.Reason"=>{:fields=>[]}, :"AudienceSegmentCriteria.ComparisonOperator"=>{:fields=>[]}, :"DateTimeRangeTargetingError.Reason"=>{:fields=>[]}, :DayOfWeek=>{:fields=>[]}, :"DayPartTargetingError.Reason"=>{:fields=>[]}, :DeliveryTimeZone=>{:fields=>[]}, :DeliveryRateType=>{:fields=>[]}, :"EntityChildrenLimitReachedError.Reason"=>{:fields=>[]}, :EnvironmentType=>{:fields=>[]}, :"FeatureError.Reason"=>{:fields=>[]}, :"ForecastError.Reason"=>{:fields=>[]}, :"FrequencyCapError.Reason"=>{:fields=>[]}, :"GenericTargetingError.Reason"=>{:fields=>[]}, :"GeoTargetingError.Reason"=>{:fields=>[]}, :GoalType=>{:fields=>[]}, :GrpProvider=>{:fields=>[]}, :"GrpSettingsError.Reason"=>{:fields=>[]}, :GrpTargetGender=>{:fields=>[]}, :"ImageError.Reason"=>{:fields=>[]}, :"InternalApiError.Reason"=>{:fields=>[]}, :"InvalidUrlError.Reason"=>{:fields=>[]}, :"InventoryTargetingError.Reason"=>{:fields=>[]}, :"LabelEntityAssociationError.Reason"=>{:fields=>[]}, :"LineItemActivityAssociationError.Reason"=>{:fields=>[]}, :"LineItemCreativeAssociationError.Reason"=>{:fields=>[]}, :LineItemDiscountType=>{:fields=>[]}, :"LineItemError.Reason"=>{:fields=>[]}, :"LineItemFlightDateError.Reason"=>{:fields=>[]}, :"LineItemOperationError.Reason"=>{:fields=>[]}, :"LineItemSummary.ReservationStatus"=>{:fields=>[]}, :LineItemType=>{:fields=>[]}, :MinuteOfHour=>{:fields=>[]}, :"NotNullError.Reason"=>{:fields=>[]}, :"NullError.Reason"=>{:fields=>[]}, :"OrderError.Reason"=>{:fields=>[]}, :"ParseError.Reason"=>{:fields=>[]}, :"PermissionError.Reason"=>{:fields=>[]}, :CreativePersistenceType=>{:fields=>[]}, :"ProgrammaticError.Reason"=>{:fields=>[]}, :"PublisherQueryLanguageContextError.Reason"=>{:fields=>[]}, :"PublisherQueryLanguageSyntaxError.Reason"=>{:fields=>[]}, :"QuotaError.Reason"=>{:fields=>[]}, :"RangeError.Reason"=>{:fields=>[]}, :"RequiredCollectionError.Reason"=>{:fields=>[]}, :"RequiredError.Reason"=>{:fields=>[]}, :"RequiredNumberError.Reason"=>{:fields=>[]}, :"RequiredSizeError.Reason"=>{:fields=>[]}, :"ReservationDetailsError.Reason"=>{:fields=>[]}, :RoadblockingType=>{:fields=>[]}, :"AudienceSegmentError.Reason"=>{:fields=>[]}, :"ServerError.Reason"=>{:fields=>[]}, :"SetTopBoxLineItemError.Reason"=>{:fields=>[]}, :SetTopBoxSyncStatus=>{:fields=>[]}, :StartDateTimeType=>{:fields=>[]}, :"StatementError.Reason"=>{:fields=>[]}, :"StringLengthError.Reason"=>{:fields=>[]}, :TargetPlatform=>{:fields=>[]}, :"TeamError.Reason"=>{:fields=>[]}, :"TechnologyTargetingError.Reason"=>{:fields=>[]}, :TimeUnit=>{:fields=>[]}, :UnitType=>{:fields=>[]}, :"UserDomainTargetingError.Reason"=>{:fields=>[]}, :VideoBumperType=>{:fields=>[]}, :"VideoPosition.Type"=>{:fields=>[]}}
    LINEITEMSERVICE_NAMESPACES = []

    def self.get_method_signature(method_name)
      return LINEITEMSERVICE_METHODS[method_name.to_sym]
    end

    def self.get_type_signature(type_name)
      return LINEITEMSERVICE_TYPES[type_name.to_sym]
    end

    def self.get_namespace(index)
      return LINEITEMSERVICE_NAMESPACES[index]
    end
  end

  # Base class for exceptions.
  class ApplicationException < DfpApi::Errors::ApiException
    attr_reader :message  # string
  end

  # Exception class for holding a list of service errors.
  class ApiException < ApplicationException
    attr_reader :errors  # ApiError
    def initialize(exception_fault)
      @array_fields ||= []
      @array_fields << 'errors'
      super(exception_fault, LineItemServiceRegistry)
    end
  end
end; end; end
