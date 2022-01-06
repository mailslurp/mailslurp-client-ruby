# MailSlurpClient::InboxControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_inbox**](InboxControllerApi#create_inbox) | **POST** /inboxes | Create an inbox email address. An inbox has a real email address and can send and receive emails. Inboxes can be either &#x60;SMTP&#x60; or &#x60;HTTP&#x60; inboxes.
[**create_inbox_ruleset**](InboxControllerApi#create_inbox_ruleset) | **POST** /inboxes/{inboxId}/rulesets | Create an inbox ruleset
[**create_inbox_with_defaults**](InboxControllerApi#create_inbox_with_defaults) | **POST** /inboxes/withDefaults | Create an inbox with default options. Uses MailSlurp domain pool address and is private.
[**create_inbox_with_options**](InboxControllerApi#create_inbox_with_options) | **POST** /inboxes/withOptions | Create an inbox with options. Extended options for inbox creation.
[**delete_all_inboxes**](InboxControllerApi#delete_all_inboxes) | **DELETE** /inboxes | Delete all inboxes
[**delete_inbox**](InboxControllerApi#delete_inbox) | **DELETE** /inboxes/{inboxId} | Delete inbox
[**does_inbox_exist**](InboxControllerApi#does_inbox_exist) | **GET** /inboxes/exists | Does inbox exist
[**flush_expired**](InboxControllerApi#flush_expired) | **DELETE** /inboxes/expired | Remove expired inboxes
[**get_all_inboxes**](InboxControllerApi#get_all_inboxes) | **GET** /inboxes/paginated | List All Inboxes Paginated
[**get_emails**](InboxControllerApi#get_emails) | **GET** /inboxes/{inboxId}/emails | Get emails in an Inbox. This method is not idempotent as it allows retries and waits if you want certain conditions to be met before returning. For simple listing and sorting of known emails use the email controller instead.
[**get_inbox**](InboxControllerApi#get_inbox) | **GET** /inboxes/{inboxId} | Get Inbox. Returns properties of an inbox.
[**get_inbox_count**](InboxControllerApi#get_inbox_count) | **GET** /inboxes/count | Get total inbox count
[**get_inbox_email_count**](InboxControllerApi#get_inbox_email_count) | **GET** /inboxes/{inboxId}/emails/count | Get email count in inbox
[**get_inbox_emails_paginated**](InboxControllerApi#get_inbox_emails_paginated) | **GET** /inboxes/{inboxId}/emails/paginated | Get inbox emails paginated
[**get_inbox_sent_emails**](InboxControllerApi#get_inbox_sent_emails) | **GET** /inboxes/{inboxId}/sent | Get Inbox Sent Emails
[**get_inbox_tags**](InboxControllerApi#get_inbox_tags) | **GET** /inboxes/tags | Get inbox tags
[**get_inboxes**](InboxControllerApi#get_inboxes) | **GET** /inboxes | List Inboxes and email addresses
[**get_organization_inboxes**](InboxControllerApi#get_organization_inboxes) | **GET** /inboxes/organization | List Organization Inboxes Paginated
[**list_inbox_rulesets**](InboxControllerApi#list_inbox_rulesets) | **GET** /inboxes/{inboxId}/rulesets | List inbox rulesets
[**list_inbox_tracking_pixels**](InboxControllerApi#list_inbox_tracking_pixels) | **GET** /inboxes/{inboxId}/tracking-pixels | List inbox tracking pixels
[**send_email**](InboxControllerApi#send_email) | **POST** /inboxes/{inboxId} | Send Email
[**send_email_and_confirm**](InboxControllerApi#send_email_and_confirm) | **POST** /inboxes/{inboxId}/confirm | Send email and return sent confirmation
[**send_test_email**](InboxControllerApi#send_test_email) | **POST** /inboxes/{inboxId}/send-test-email | Send a test email to inbox
[**set_inbox_favourited**](InboxControllerApi#set_inbox_favourited) | **PUT** /inboxes/{inboxId}/favourite | Set inbox favourited state
[**update_inbox**](InboxControllerApi#update_inbox) | **PATCH** /inboxes/{inboxId} | Update Inbox. Change name and description. Email address is not editable.



## create_inbox

> InboxDto create_inbox(opts)

Create an inbox email address. An inbox has a real email address and can send and receive emails. Inboxes can be either `SMTP` or `HTTP` inboxes.

Create a new inbox and with a randomized email address to send and receive from. Pass emailAddress parameter if you wish to use a specific email address. Creating an inbox is required before sending or receiving emails. If writing tests it is recommended that you create a new inbox during each test method so that it is unique and empty. 

### Example

```ruby
# load the gem
require 'mailslurp_client'
# setup authorization
MailSlurpClient.configure do |config|
  # Configure API key authorization: API_KEY
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = MailSlurpClient::InboxControllerApi.new
opts = {
  a_custom_email_address_to_use_with_the_inbox__defaults_to_null__when_null_mail_slurp_will_assign_a_random_email_address_to_the_inbox_such_as_123mailslurp_com__if_you_use_the_use_domain_pool_option_when_the_email_address_is_null_it_will_generate_an_email_address_with_a_more_varied_domain_ending_such_as_123mailslurp_info_or_123mailslurp_biz__when_a_custom_email_address_is_provided_the_address_is_split_into_a_domain_and_the_domain_is_queried_against_your_user__if_you_have_created_the_domain_in_the_mail_slurp_dashboard_and_verified_it_you_can_use_any_email_address_that_ends_with_the_domain__note_domain_types_must_match_the_inbox_type___so_smtp_inboxes_will_only_work_with_smtp_type_domains__avoid_smtp_inboxes_if_you_need_to_send_emails_as_they_can_only_receive__send_an_email_to_this_address_and_the_inbox_will_receive_and_store_it_for_you__to_retrieve_the_email_use_the_inbox_and_email_controller_endpoints_with_the_inbox_id_: 'a_custom_email_address_to_use_with_the_inbox__defaults_to_null__when_null_mail_slurp_will_assign_a_random_email_address_to_the_inbox_such_as_123mailslurp_com__if_you_use_the_use_domain_pool_option_when_the_email_address_is_null_it_will_generate_an_email_address_with_a_more_varied_domain_ending_such_as_123mailslurp_info_or_123mailslurp_biz__when_a_custom_email_address_is_provided_the_address_is_split_into_a_domain_and_the_domain_is_queried_against_your_user__if_you_have_created_the_domain_in_the_mail_slurp_dashboard_and_verified_it_you_can_use_any_email_address_that_ends_with_the_domain__note_domain_types_must_match_the_inbox_type___so_smtp_inboxes_will_only_work_with_smtp_type_domains__avoid_smtp_inboxes_if_you_need_to_send_emails_as_they_can_only_receive__send_an_email_to_this_address_and_the_inbox_will_receive_and_store_it_for_you__to_retrieve_the_email_use_the_inbox_and_email_controller_endpoints_with_the_inbox_id__example', # String | 
  tags_that_inbox_has_been_tagged_with__tags_can_be_added_to_inboxes_to_group_different_inboxes_within_an_account__you_can_also_search_for_inboxes_by_tag_in_the_dashboard_ui_: ['tags_that_inbox_has_been_tagged_with__tags_can_be_added_to_inboxes_to_group_different_inboxes_within_an_account__you_can_also_search_for_inboxes_by_tag_in_the_dashboard_ui__example'], # Array<String> | 
  optional_name_of_the_inbox__displayed_in_the_dashboard_for_easier_search_and_used_as_the_sender_name_when_sending_emails_: 'optional_name_of_the_inbox__displayed_in_the_dashboard_for_easier_search_and_used_as_the_sender_name_when_sending_emails__example', # String | 
  optional_description_of_the_inbox_for_labelling_purposes__is_shown_in_the_dashboard_and_can_be_used_with: 'optional_description_of_the_inbox_for_labelling_purposes__is_shown_in_the_dashboard_and_can_be_used_with_example', # String | 
  use_the_mail_slurp_domain_name_pool_with_this_inbox_when_creating_the_email_address__defaults_to_null__if_enabled_the_inbox_will_be_an_email_address_with_a_domain_randomly_chosen_from_a_list_of_the_mail_slurp_domains__this_is_useful_when_the_default_mailslurp_com_email_addresses_used_with_inboxes_are_blocked_or_considered_spam_by_a_provider_or_receiving_service__when_domain_pool_is_enabled_an_email_address_will_be_generated_ending_in_mailslurp_worldinfoxyz______this_means_a_tld_is_randomly_selecting_from_a_list_of__biz__info__xyz_etc_to_add_variance_to_the_generated_email_addresses__when_null_or_false_mail_slurp_uses_the_default_behavior_of_mailslurp_com_or_custom_email_address_provided_by_the_email_address_field__note_this_feature_is_only_available_for_http_inbox_types_: true, # Boolean | 
  is_the_inbox_a_favorite__marking_an_inbox_as_a_favorite_is_typically_done_in_the_dashboard_for_quick_access_or_filtering: true, # Boolean | 
  optional_inbox_expiration_date__if_null_then_this_inbox_is_permanent_and_the_emails_in_it_wont_be_deleted__if_an_expiration_date_is_provided_or_is_required_by_your_plan_the_inbox_will_be_closed_when_the_expiration_time_is_reached__expired_inboxes_still_contain_their_emails_but_can_no_longer_send_or_receive_emails__an_expired_inbox_record_is_created_when_an_inbox_and_the_email_address_and_inbox_id_are_recorded__the_expires_at_property_is_a_timestamp_string_in_iso_date_time_format_yyyy_mm_dd_th_hmmss_sssxxx_: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | 
  number_of_milliseconds_that_inbox_should_exist_for: 56, # Integer | 
  deprecated__team_access_is_always_true__grant_team_access_to_this_inbox_and_the_emails_that_belong_to_it_for_team_members_of_your_organization_: true, # Boolean | 
  http__default_or_smtp_inbox_type__http_inboxes_are_default_and_best_solution_for_most_cases__smtp_inboxes_are_more_reliable_for_public_inbound_email_consumption__but_do_not_support_sending_emails__when_using_custom_domains_the_domain_type_must_match_the_inbox_type__http_inboxes_are_processed_by_aws_ses_while_smtp_inboxes_use_a_custom_mail_server_running_at_mx_mailslurp_com_: 'http__default_or_smtp_inbox_type__http_inboxes_are_default_and_best_solution_for_most_cases__smtp_inboxes_are_more_reliable_for_public_inbound_email_consumption__but_do_not_support_sending_emails__when_using_custom_domains_the_domain_type_must_match_the_inbox_type__http_inboxes_are_processed_by_aws_ses_while_smtp_inboxes_use_a_custom_mail_server_running_at_mx_mailslurp_com__example' # String | 
}

begin
  #Create an inbox email address. An inbox has a real email address and can send and receive emails. Inboxes can be either `SMTP` or `HTTP` inboxes.
  result = api_instance.create_inbox(opts)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling InboxControllerApi->create_inbox: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **a_custom_email_address_to_use_with_the_inbox__defaults_to_null__when_null_mail_slurp_will_assign_a_random_email_address_to_the_inbox_such_as_123mailslurp_com__if_you_use_the_use_domain_pool_option_when_the_email_address_is_null_it_will_generate_an_email_address_with_a_more_varied_domain_ending_such_as_123mailslurp_info_or_123mailslurp_biz__when_a_custom_email_address_is_provided_the_address_is_split_into_a_domain_and_the_domain_is_queried_against_your_user__if_you_have_created_the_domain_in_the_mail_slurp_dashboard_and_verified_it_you_can_use_any_email_address_that_ends_with_the_domain__note_domain_types_must_match_the_inbox_type___so_smtp_inboxes_will_only_work_with_smtp_type_domains__avoid_smtp_inboxes_if_you_need_to_send_emails_as_they_can_only_receive__send_an_email_to_this_address_and_the_inbox_will_receive_and_store_it_for_you__to_retrieve_the_email_use_the_inbox_and_email_controller_endpoints_with_the_inbox_id_** | **String**|  | [optional] 
 **tags_that_inbox_has_been_tagged_with__tags_can_be_added_to_inboxes_to_group_different_inboxes_within_an_account__you_can_also_search_for_inboxes_by_tag_in_the_dashboard_ui_** | [**Array&lt;String&gt;**](String)|  | [optional] 
 **optional_name_of_the_inbox__displayed_in_the_dashboard_for_easier_search_and_used_as_the_sender_name_when_sending_emails_** | **String**|  | [optional] 
 **optional_description_of_the_inbox_for_labelling_purposes__is_shown_in_the_dashboard_and_can_be_used_with** | **String**|  | [optional] 
 **use_the_mail_slurp_domain_name_pool_with_this_inbox_when_creating_the_email_address__defaults_to_null__if_enabled_the_inbox_will_be_an_email_address_with_a_domain_randomly_chosen_from_a_list_of_the_mail_slurp_domains__this_is_useful_when_the_default_mailslurp_com_email_addresses_used_with_inboxes_are_blocked_or_considered_spam_by_a_provider_or_receiving_service__when_domain_pool_is_enabled_an_email_address_will_be_generated_ending_in_mailslurp_worldinfoxyz______this_means_a_tld_is_randomly_selecting_from_a_list_of__biz__info__xyz_etc_to_add_variance_to_the_generated_email_addresses__when_null_or_false_mail_slurp_uses_the_default_behavior_of_mailslurp_com_or_custom_email_address_provided_by_the_email_address_field__note_this_feature_is_only_available_for_http_inbox_types_** | **Boolean**|  | [optional] 
 **is_the_inbox_a_favorite__marking_an_inbox_as_a_favorite_is_typically_done_in_the_dashboard_for_quick_access_or_filtering** | **Boolean**|  | [optional] 
 **optional_inbox_expiration_date__if_null_then_this_inbox_is_permanent_and_the_emails_in_it_wont_be_deleted__if_an_expiration_date_is_provided_or_is_required_by_your_plan_the_inbox_will_be_closed_when_the_expiration_time_is_reached__expired_inboxes_still_contain_their_emails_but_can_no_longer_send_or_receive_emails__an_expired_inbox_record_is_created_when_an_inbox_and_the_email_address_and_inbox_id_are_recorded__the_expires_at_property_is_a_timestamp_string_in_iso_date_time_format_yyyy_mm_dd_th_hmmss_sssxxx_** | **DateTime**|  | [optional] 
 **number_of_milliseconds_that_inbox_should_exist_for** | **Integer**|  | [optional] 
 **deprecated__team_access_is_always_true__grant_team_access_to_this_inbox_and_the_emails_that_belong_to_it_for_team_members_of_your_organization_** | **Boolean**|  | [optional] 
 **http__default_or_smtp_inbox_type__http_inboxes_are_default_and_best_solution_for_most_cases__smtp_inboxes_are_more_reliable_for_public_inbound_email_consumption__but_do_not_support_sending_emails__when_using_custom_domains_the_domain_type_must_match_the_inbox_type__http_inboxes_are_processed_by_aws_ses_while_smtp_inboxes_use_a_custom_mail_server_running_at_mx_mailslurp_com_** | **String**|  | [optional] 

### Return type

[**InboxDto**](InboxDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## create_inbox_ruleset

> InboxRulesetDto create_inbox_ruleset(inbox_id, create_inbox_ruleset_options)

Create an inbox ruleset

Create a new inbox rule for forwarding, blocking, and allowing emails when sending and receiving

### Example

```ruby
# load the gem
require 'mailslurp_client'
# setup authorization
MailSlurpClient.configure do |config|
  # Configure API key authorization: API_KEY
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = MailSlurpClient::InboxControllerApi.new
inbox_id = 'inbox_id_example' # String | 
create_inbox_ruleset_options = MailSlurpClient::CreateInboxRulesetOptions.new # CreateInboxRulesetOptions | 

begin
  #Create an inbox ruleset
  result = api_instance.create_inbox_ruleset(inbox_id, create_inbox_ruleset_options)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling InboxControllerApi->create_inbox_ruleset: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**String**]()|  | 
 **create_inbox_ruleset_options** | [**CreateInboxRulesetOptions**](CreateInboxRulesetOptions)|  | 

### Return type

[**InboxRulesetDto**](InboxRulesetDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*


## create_inbox_with_defaults

> InboxDto create_inbox_with_defaults

Create an inbox with default options. Uses MailSlurp domain pool address and is private.

### Example

```ruby
# load the gem
require 'mailslurp_client'
# setup authorization
MailSlurpClient.configure do |config|
  # Configure API key authorization: API_KEY
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = MailSlurpClient::InboxControllerApi.new

begin
  #Create an inbox with default options. Uses MailSlurp domain pool address and is private.
  result = api_instance.create_inbox_with_defaults
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling InboxControllerApi->create_inbox_with_defaults: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**InboxDto**](InboxDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## create_inbox_with_options

> InboxDto create_inbox_with_options(create_inbox_dto)

Create an inbox with options. Extended options for inbox creation.

Additional endpoint that allows inbox creation with request body options. Can be more flexible that other methods for some clients.

### Example

```ruby
# load the gem
require 'mailslurp_client'
# setup authorization
MailSlurpClient.configure do |config|
  # Configure API key authorization: API_KEY
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = MailSlurpClient::InboxControllerApi.new
create_inbox_dto = MailSlurpClient::CreateInboxDto.new # CreateInboxDto | 

begin
  #Create an inbox with options. Extended options for inbox creation.
  result = api_instance.create_inbox_with_options(create_inbox_dto)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling InboxControllerApi->create_inbox_with_options: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_inbox_dto** | [**CreateInboxDto**](CreateInboxDto)|  | 

### Return type

[**InboxDto**](InboxDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*


## delete_all_inboxes

> delete_all_inboxes

Delete all inboxes

Permanently delete all inboxes and associated email addresses. This will also delete all emails within the inboxes. Be careful as inboxes cannot be recovered once deleted. Note: deleting inboxes will not impact your usage limits. Monthly inbox creation limits are based on how many inboxes were created in the last 30 days, not how many inboxes you currently have.

### Example

```ruby
# load the gem
require 'mailslurp_client'
# setup authorization
MailSlurpClient.configure do |config|
  # Configure API key authorization: API_KEY
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = MailSlurpClient::InboxControllerApi.new

begin
  #Delete all inboxes
  api_instance.delete_all_inboxes
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling InboxControllerApi->delete_all_inboxes: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## delete_inbox

> delete_inbox(inbox_id)

Delete inbox

Permanently delete an inbox and associated email address as well as all emails within the given inbox. This action cannot be undone. Note: deleting an inbox will not affect your account usage. Monthly inbox usage is based on how many inboxes you create within 30 days, not how many exist at time of request.

### Example

```ruby
# load the gem
require 'mailslurp_client'
# setup authorization
MailSlurpClient.configure do |config|
  # Configure API key authorization: API_KEY
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = MailSlurpClient::InboxControllerApi.new
inbox_id = 'inbox_id_example' # String | 

begin
  #Delete inbox
  api_instance.delete_inbox(inbox_id)
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling InboxControllerApi->delete_inbox: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**String**]()|  | 

### Return type

nil (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## does_inbox_exist

> InboxExistsDto does_inbox_exist(email_address)

Does inbox exist

Check if inboxes exist by email address. Useful if you are sending emails to mailslurp addresses

### Example

```ruby
# load the gem
require 'mailslurp_client'
# setup authorization
MailSlurpClient.configure do |config|
  # Configure API key authorization: API_KEY
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = MailSlurpClient::InboxControllerApi.new
email_address = 'email_address_example' # String | Email address

begin
  #Does inbox exist
  result = api_instance.does_inbox_exist(email_address)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling InboxControllerApi->does_inbox_exist: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_address** | **String**| Email address | 

### Return type

[**InboxExistsDto**](InboxExistsDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## flush_expired

> FlushExpiredInboxesResult flush_expired(opts)

Remove expired inboxes

Remove any expired inboxes for your account (instead of waiting for scheduled removal on server)

### Example

```ruby
# load the gem
require 'mailslurp_client'
# setup authorization
MailSlurpClient.configure do |config|
  # Configure API key authorization: API_KEY
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = MailSlurpClient::InboxControllerApi.new
opts = {
  before: DateTime.parse('2013-10-20T19:20:30+01:00') # DateTime | Optional expired at before flag to flush expired inboxes that have expired before the given time
}

begin
  #Remove expired inboxes
  result = api_instance.flush_expired(opts)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling InboxControllerApi->flush_expired: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **before** | **DateTime**| Optional expired at before flag to flush expired inboxes that have expired before the given time | [optional] 

### Return type

[**FlushExpiredInboxesResult**](FlushExpiredInboxesResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## get_all_inboxes

> PageInboxProjection get_all_inboxes(opts)

List All Inboxes Paginated

List inboxes in paginated form. The results are available on the `content` property of the returned object. This method allows for page index (zero based), page size (how many results to return), and a sort direction (based on createdAt time). You Can also filter by whether an inbox is favorited or use email address pattern. This method is the recommended way to query inboxes. The alternative `getInboxes` method returns a full list of inboxes but is limited to 100 results.

### Example

```ruby
# load the gem
require 'mailslurp_client'
# setup authorization
MailSlurpClient.configure do |config|
  # Configure API key authorization: API_KEY
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = MailSlurpClient::InboxControllerApi.new
opts = {
  page: 0, # Integer | Optional page index in list pagination
  size: 20, # Integer | Optional page size in list pagination
  sort: 'ASC', # String | Optional createdAt sort direction ASC or DESC
  favourite: false, # Boolean | Optionally filter results for favourites only
  search: 'search_example', # String | Optionally filter by search words partial matching ID, tags, name, and email address
  tag: 'tag_example', # String | Optionally filter by tags. Will return inboxes that include given tags
  deprecated__optionally_filter_by_team_access_: true, # Boolean | 
  since: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Optional filter by created after given date time
  before: DateTime.parse('2013-10-20T19:20:30+01:00') # DateTime | Optional filter by created before given date time
}

begin
  #List All Inboxes Paginated
  result = api_instance.get_all_inboxes(opts)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling InboxControllerApi->get_all_inboxes: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Integer**| Optional page index in list pagination | [optional] [default to 0]
 **size** | **Integer**| Optional page size in list pagination | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]
 **favourite** | **Boolean**| Optionally filter results for favourites only | [optional] [default to false]
 **search** | **String**| Optionally filter by search words partial matching ID, tags, name, and email address | [optional] 
 **tag** | **String**| Optionally filter by tags. Will return inboxes that include given tags | [optional] 
 **deprecated__optionally_filter_by_team_access_** | **Boolean**|  | [optional] 
 **since** | **DateTime**| Optional filter by created after given date time | [optional] 
 **before** | **DateTime**| Optional filter by created before given date time | [optional] 

### Return type

[**PageInboxProjection**](PageInboxProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## get_emails

> Array&lt;EmailPreview&gt; get_emails(id_of_inbox_that_emails_belongs_to, opts)

Get emails in an Inbox. This method is not idempotent as it allows retries and waits if you want certain conditions to be met before returning. For simple listing and sorting of known emails use the email controller instead.

List emails that an inbox has received. Only emails that are sent to the inbox's email address will appear in the inbox. It may take several seconds for any email you send to an inbox's email address to appear in the inbox. To make this endpoint wait for a minimum number of emails use the `minCount` parameter. The server will retry the inbox database until the `minCount` is satisfied or the `retryTimeout` is reached

### Example

```ruby
# load the gem
require 'mailslurp_client'
# setup authorization
MailSlurpClient.configure do |config|
  # Configure API key authorization: API_KEY
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = MailSlurpClient::InboxControllerApi.new
id_of_inbox_that_emails_belongs_to = 'id_of_inbox_that_emails_belongs_to_example' # String | 
opts = {
  alias_for_limit__assessed_first_before_assessing_any_passed_limit_: 56, # Integer | 
  limit: 56, # Integer | Limit the result set, ordered by received date time sort direction. Maximum 100. For more listing options see the email controller
  sort_the_results_by_received_date_and_direction_asc_or_desc: 'sort_the_results_by_received_date_and_direction_asc_or_desc_example', # String | 
  retry_timeout: 56, # Integer | Maximum milliseconds to spend retrying inbox database until minCount emails are returned
  delay_timeout: 56, # Integer | 
  min_count: 56, # Integer | Minimum acceptable email count. Will cause request to hang (and retry) until minCount is satisfied or retryTimeout is reached.
  unread_only: true, # Boolean | 
  exclude_emails_received_after_this_iso_8601_date_time: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | 
  exclude_emails_received_before_this_iso_8601_date_time: DateTime.parse('2013-10-20T19:20:30+01:00') # DateTime | 
}

begin
  #Get emails in an Inbox. This method is not idempotent as it allows retries and waits if you want certain conditions to be met before returning. For simple listing and sorting of known emails use the email controller instead.
  result = api_instance.get_emails(id_of_inbox_that_emails_belongs_to, opts)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling InboxControllerApi->get_emails: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_of_inbox_that_emails_belongs_to** | [**String**]()|  | 
 **alias_for_limit__assessed_first_before_assessing_any_passed_limit_** | **Integer**|  | [optional] 
 **limit** | **Integer**| Limit the result set, ordered by received date time sort direction. Maximum 100. For more listing options see the email controller | [optional] 
 **sort_the_results_by_received_date_and_direction_asc_or_desc** | **String**|  | [optional] 
 **retry_timeout** | **Integer**| Maximum milliseconds to spend retrying inbox database until minCount emails are returned | [optional] 
 **delay_timeout** | **Integer**|  | [optional] 
 **min_count** | **Integer**| Minimum acceptable email count. Will cause request to hang (and retry) until minCount is satisfied or retryTimeout is reached. | [optional] 
 **unread_only** | **Boolean**|  | [optional] 
 **exclude_emails_received_after_this_iso_8601_date_time** | **DateTime**|  | [optional] 
 **exclude_emails_received_before_this_iso_8601_date_time** | **DateTime**|  | [optional] 

### Return type

[**Array&lt;EmailPreview&gt;**](EmailPreview)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## get_inbox

> InboxDto get_inbox(inbox_id)

Get Inbox. Returns properties of an inbox.

Returns an inbox's properties, including its email address and ID.

### Example

```ruby
# load the gem
require 'mailslurp_client'
# setup authorization
MailSlurpClient.configure do |config|
  # Configure API key authorization: API_KEY
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = MailSlurpClient::InboxControllerApi.new
inbox_id = 'inbox_id_example' # String | 

begin
  #Get Inbox. Returns properties of an inbox.
  result = api_instance.get_inbox(inbox_id)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling InboxControllerApi->get_inbox: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**String**]()|  | 

### Return type

[**InboxDto**](InboxDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## get_inbox_count

> CountDto get_inbox_count

Get total inbox count

### Example

```ruby
# load the gem
require 'mailslurp_client'
# setup authorization
MailSlurpClient.configure do |config|
  # Configure API key authorization: API_KEY
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = MailSlurpClient::InboxControllerApi.new

begin
  #Get total inbox count
  result = api_instance.get_inbox_count
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling InboxControllerApi->get_inbox_count: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CountDto**](CountDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## get_inbox_email_count

> CountDto get_inbox_email_count(id_of_inbox_that_emails_belongs_to)

Get email count in inbox

### Example

```ruby
# load the gem
require 'mailslurp_client'
# setup authorization
MailSlurpClient.configure do |config|
  # Configure API key authorization: API_KEY
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = MailSlurpClient::InboxControllerApi.new
id_of_inbox_that_emails_belongs_to = 'id_of_inbox_that_emails_belongs_to_example' # String | 

begin
  #Get email count in inbox
  result = api_instance.get_inbox_email_count(id_of_inbox_that_emails_belongs_to)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling InboxControllerApi->get_inbox_email_count: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_of_inbox_that_emails_belongs_to** | [**String**]()|  | 

### Return type

[**CountDto**](CountDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## get_inbox_emails_paginated

> PageEmailPreview get_inbox_emails_paginated(id_of_inbox_that_emails_belongs_to, opts)

Get inbox emails paginated

Get a paginated list of emails in an inbox. Does not hold connections open.

### Example

```ruby
# load the gem
require 'mailslurp_client'
# setup authorization
MailSlurpClient.configure do |config|
  # Configure API key authorization: API_KEY
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = MailSlurpClient::InboxControllerApi.new
id_of_inbox_that_emails_belongs_to = 'id_of_inbox_that_emails_belongs_to_example' # String | 
opts = {
  page: 0, # Integer | Optional page index in inbox emails list pagination
  size: 20, # Integer | Optional page size in inbox emails list pagination
  sort: 'ASC', # String | Optional createdAt sort direction ASC or DESC
  since: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Optional filter by received after given date time
  before: DateTime.parse('2013-10-20T19:20:30+01:00') # DateTime | Optional filter by received before given date time
}

begin
  #Get inbox emails paginated
  result = api_instance.get_inbox_emails_paginated(id_of_inbox_that_emails_belongs_to, opts)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling InboxControllerApi->get_inbox_emails_paginated: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_of_inbox_that_emails_belongs_to** | [**String**]()|  | 
 **page** | **Integer**| Optional page index in inbox emails list pagination | [optional] [default to 0]
 **size** | **Integer**| Optional page size in inbox emails list pagination | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]
 **since** | **DateTime**| Optional filter by received after given date time | [optional] 
 **before** | **DateTime**| Optional filter by received before given date time | [optional] 

### Return type

[**PageEmailPreview**](PageEmailPreview)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## get_inbox_sent_emails

> PageSentEmailProjection get_inbox_sent_emails(inbox_id, opts)

Get Inbox Sent Emails

Returns an inbox's sent email receipts. Call individual sent email endpoints for more details. Note for privacy reasons the full body of sent emails is never stored. An MD5 hash hex is available for comparison instead.

### Example

```ruby
# load the gem
require 'mailslurp_client'
# setup authorization
MailSlurpClient.configure do |config|
  # Configure API key authorization: API_KEY
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = MailSlurpClient::InboxControllerApi.new
inbox_id = 'inbox_id_example' # String | 
opts = {
  page: 0, # Integer | Optional page index in inbox sent email list pagination
  optional_page_size_in_inbox_sent_email_list_pagination: 20, # Integer | 
  sort: 'ASC', # String | Optional createdAt sort direction ASC or DESC
  search_filter: 'search_filter_example', # String | Optional sent email search
  since: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Optional filter by sent after given date time
  before: DateTime.parse('2013-10-20T19:20:30+01:00') # DateTime | Optional filter by sent before given date time
}

begin
  #Get Inbox Sent Emails
  result = api_instance.get_inbox_sent_emails(inbox_id, opts)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling InboxControllerApi->get_inbox_sent_emails: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**String**]()|  | 
 **page** | **Integer**| Optional page index in inbox sent email list pagination | [optional] [default to 0]
 **optional_page_size_in_inbox_sent_email_list_pagination** | **Integer**|  | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]
 **search_filter** | **String**| Optional sent email search | [optional] 
 **since** | **DateTime**| Optional filter by sent after given date time | [optional] 
 **before** | **DateTime**| Optional filter by sent before given date time | [optional] 

### Return type

[**PageSentEmailProjection**](PageSentEmailProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## get_inbox_tags

> Array&lt;String&gt; get_inbox_tags

Get inbox tags

Get all inbox tags

### Example

```ruby
# load the gem
require 'mailslurp_client'
# setup authorization
MailSlurpClient.configure do |config|
  # Configure API key authorization: API_KEY
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = MailSlurpClient::InboxControllerApi.new

begin
  #Get inbox tags
  result = api_instance.get_inbox_tags
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling InboxControllerApi->get_inbox_tags: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**Array&lt;String&gt;**

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## get_inboxes

> Array&lt;InboxDto&gt; get_inboxes(opts)

List Inboxes and email addresses

List the inboxes you have created. Note use of the more advanced `getAllEmails` is recommended and allows paginated access using a limit and sort parameter.

### Example

```ruby
# load the gem
require 'mailslurp_client'
# setup authorization
MailSlurpClient.configure do |config|
  # Configure API key authorization: API_KEY
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = MailSlurpClient::InboxControllerApi.new
opts = {
  size: 100, # Integer | Optional result size limit. Note an automatic limit of 100 results is applied. See the paginated `getAllEmails` for larger queries.
  sort: 'ASC', # String | Optional createdAt sort direction ASC or DESC
  since: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Optional filter by created after given date time
  before: DateTime.parse('2013-10-20T19:20:30+01:00') # DateTime | Optional filter by created before given date time
}

begin
  #List Inboxes and email addresses
  result = api_instance.get_inboxes(opts)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling InboxControllerApi->get_inboxes: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **Integer**| Optional result size limit. Note an automatic limit of 100 results is applied. See the paginated &#x60;getAllEmails&#x60; for larger queries. | [optional] [default to 100]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]
 **since** | **DateTime**| Optional filter by created after given date time | [optional] 
 **before** | **DateTime**| Optional filter by created before given date time | [optional] 

### Return type

[**Array&lt;InboxDto&gt;**](InboxDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## get_organization_inboxes

> PageOrganizationInboxProjection get_organization_inboxes(opts)

List Organization Inboxes Paginated

List organization inboxes in paginated form. These are inboxes created with `allowTeamAccess` flag enabled. Organization inboxes are `readOnly` for non-admin users. The results are available on the `content` property of the returned object. This method allows for page index (zero based), page size (how many results to return), and a sort direction (based on createdAt time). 

### Example

```ruby
# load the gem
require 'mailslurp_client'
# setup authorization
MailSlurpClient.configure do |config|
  # Configure API key authorization: API_KEY
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = MailSlurpClient::InboxControllerApi.new
opts = {
  page: 0, # Integer | Optional page index in list pagination
  size: 20, # Integer | Optional page size in list pagination
  sort: 'ASC', # String | Optional createdAt sort direction ASC or DESC
  search_filter: 'search_filter_example', # String | Optional search filter
  since: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Optional filter by created after given date time
  before: DateTime.parse('2013-10-20T19:20:30+01:00') # DateTime | Optional filter by created before given date time
}

begin
  #List Organization Inboxes Paginated
  result = api_instance.get_organization_inboxes(opts)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling InboxControllerApi->get_organization_inboxes: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Integer**| Optional page index in list pagination | [optional] [default to 0]
 **size** | **Integer**| Optional page size in list pagination | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]
 **search_filter** | **String**| Optional search filter | [optional] 
 **since** | **DateTime**| Optional filter by created after given date time | [optional] 
 **before** | **DateTime**| Optional filter by created before given date time | [optional] 

### Return type

[**PageOrganizationInboxProjection**](PageOrganizationInboxProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## list_inbox_rulesets

> PageInboxRulesetDto list_inbox_rulesets(inbox_id, opts)

List inbox rulesets

List all rulesets attached to an inbox

### Example

```ruby
# load the gem
require 'mailslurp_client'
# setup authorization
MailSlurpClient.configure do |config|
  # Configure API key authorization: API_KEY
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = MailSlurpClient::InboxControllerApi.new
inbox_id = 'inbox_id_example' # String | 
opts = {
  page: 0, # Integer | Optional page index in inbox ruleset list pagination
  size: 20, # Integer | Optional page size in inbox ruleset list pagination
  sort: 'ASC', # String | Optional createdAt sort direction ASC or DESC
  search_filter: 'search_filter_example', # String | Optional search filter
  since: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Optional filter by created after given date time
  before: DateTime.parse('2013-10-20T19:20:30+01:00') # DateTime | Optional filter by created before given date time
}

begin
  #List inbox rulesets
  result = api_instance.list_inbox_rulesets(inbox_id, opts)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling InboxControllerApi->list_inbox_rulesets: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**String**]()|  | 
 **page** | **Integer**| Optional page index in inbox ruleset list pagination | [optional] [default to 0]
 **size** | **Integer**| Optional page size in inbox ruleset list pagination | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]
 **search_filter** | **String**| Optional search filter | [optional] 
 **since** | **DateTime**| Optional filter by created after given date time | [optional] 
 **before** | **DateTime**| Optional filter by created before given date time | [optional] 

### Return type

[**PageInboxRulesetDto**](PageInboxRulesetDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## list_inbox_tracking_pixels

> PageTrackingPixelProjection list_inbox_tracking_pixels(inbox_id, opts)

List inbox tracking pixels

List all tracking pixels sent from an inbox

### Example

```ruby
# load the gem
require 'mailslurp_client'
# setup authorization
MailSlurpClient.configure do |config|
  # Configure API key authorization: API_KEY
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = MailSlurpClient::InboxControllerApi.new
inbox_id = 'inbox_id_example' # String | 
opts = {
  page: 0, # Integer | Optional page index in inbox tracking pixel list pagination
  optional_page_size_in_inbox_tracking_pixel_list_pagination: 20, # Integer | 
  sort: 'ASC', # String | Optional createdAt sort direction ASC or DESC
  search_filter: 'search_filter_example', # String | Optional search filter
  since: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Optional filter by created after given date time
  before: DateTime.parse('2013-10-20T19:20:30+01:00') # DateTime | Optional filter by created before given date time
}

begin
  #List inbox tracking pixels
  result = api_instance.list_inbox_tracking_pixels(inbox_id, opts)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling InboxControllerApi->list_inbox_tracking_pixels: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**String**]()|  | 
 **page** | **Integer**| Optional page index in inbox tracking pixel list pagination | [optional] [default to 0]
 **optional_page_size_in_inbox_tracking_pixel_list_pagination** | **Integer**|  | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]
 **search_filter** | **String**| Optional search filter | [optional] 
 **since** | **DateTime**| Optional filter by created after given date time | [optional] 
 **before** | **DateTime**| Optional filter by created before given date time | [optional] 

### Return type

[**PageTrackingPixelProjection**](PageTrackingPixelProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## send_email

> send_email(id_of_the_inbox_you_want_to_send_the_email_from, send_email_options)

Send Email

Send an email from an inbox's email address.  The request body should contain the `SendEmailOptions` that include recipients, attachments, body etc. See `SendEmailOptions` for all available properties. Note the `inboxId` refers to the inbox's id not the inbox's email address. See https://www.mailslurp.com/guides/ for more information on how to send emails. This method does not return a sent email entity due to legacy reasons. To send and get a sent email as returned response use the sister method `sendEmailAndConfirm`.

### Example

```ruby
# load the gem
require 'mailslurp_client'
# setup authorization
MailSlurpClient.configure do |config|
  # Configure API key authorization: API_KEY
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = MailSlurpClient::InboxControllerApi.new
id_of_the_inbox_you_want_to_send_the_email_from = 'id_of_the_inbox_you_want_to_send_the_email_from_example' # String | 
send_email_options = MailSlurpClient::SendEmailOptions.new # SendEmailOptions | 

begin
  #Send Email
  api_instance.send_email(id_of_the_inbox_you_want_to_send_the_email_from, send_email_options)
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling InboxControllerApi->send_email: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_of_the_inbox_you_want_to_send_the_email_from** | [**String**]()|  | 
 **send_email_options** | [**SendEmailOptions**](SendEmailOptions)|  | 

### Return type

nil (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## send_email_and_confirm

> SentEmailDto send_email_and_confirm(id_of_the_inbox_you_want_to_send_the_email_from, send_email_options)

Send email and return sent confirmation

Sister method for standard `sendEmail` method with the benefit of returning a `SentEmail` entity confirming the successful sending of the email with a link to the sent object created for it.

### Example

```ruby
# load the gem
require 'mailslurp_client'
# setup authorization
MailSlurpClient.configure do |config|
  # Configure API key authorization: API_KEY
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = MailSlurpClient::InboxControllerApi.new
id_of_the_inbox_you_want_to_send_the_email_from = 'id_of_the_inbox_you_want_to_send_the_email_from_example' # String | 
send_email_options = MailSlurpClient::SendEmailOptions.new # SendEmailOptions | 

begin
  #Send email and return sent confirmation
  result = api_instance.send_email_and_confirm(id_of_the_inbox_you_want_to_send_the_email_from, send_email_options)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling InboxControllerApi->send_email_and_confirm: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_of_the_inbox_you_want_to_send_the_email_from** | [**String**]()|  | 
 **send_email_options** | [**SendEmailOptions**](SendEmailOptions)|  | 

### Return type

[**SentEmailDto**](SentEmailDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*


## send_test_email

> send_test_email(inbox_id)

Send a test email to inbox

Send an inbox a test email to test email receiving is working

### Example

```ruby
# load the gem
require 'mailslurp_client'
# setup authorization
MailSlurpClient.configure do |config|
  # Configure API key authorization: API_KEY
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = MailSlurpClient::InboxControllerApi.new
inbox_id = 'inbox_id_example' # String | 

begin
  #Send a test email to inbox
  api_instance.send_test_email(inbox_id)
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling InboxControllerApi->send_test_email: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**String**]()|  | 

### Return type

nil (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## set_inbox_favourited

> InboxDto set_inbox_favourited(inbox_id, set_inbox_favourited_options)

Set inbox favourited state

Set and return new favourite state for an inbox

### Example

```ruby
# load the gem
require 'mailslurp_client'
# setup authorization
MailSlurpClient.configure do |config|
  # Configure API key authorization: API_KEY
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = MailSlurpClient::InboxControllerApi.new
inbox_id = 'inbox_id_example' # String | 
set_inbox_favourited_options = MailSlurpClient::SetInboxFavouritedOptions.new # SetInboxFavouritedOptions | 

begin
  #Set inbox favourited state
  result = api_instance.set_inbox_favourited(inbox_id, set_inbox_favourited_options)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling InboxControllerApi->set_inbox_favourited: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**String**]()|  | 
 **set_inbox_favourited_options** | [**SetInboxFavouritedOptions**](SetInboxFavouritedOptions)|  | 

### Return type

[**InboxDto**](InboxDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*


## update_inbox

> InboxDto update_inbox(inbox_id, update_inbox_options)

Update Inbox. Change name and description. Email address is not editable.

Update editable fields on an inbox

### Example

```ruby
# load the gem
require 'mailslurp_client'
# setup authorization
MailSlurpClient.configure do |config|
  # Configure API key authorization: API_KEY
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = MailSlurpClient::InboxControllerApi.new
inbox_id = 'inbox_id_example' # String | 
update_inbox_options = MailSlurpClient::UpdateInboxOptions.new # UpdateInboxOptions | 

begin
  #Update Inbox. Change name and description. Email address is not editable.
  result = api_instance.update_inbox(inbox_id, update_inbox_options)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling InboxControllerApi->update_inbox: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**String**]()|  | 
 **update_inbox_options** | [**UpdateInboxOptions**](UpdateInboxOptions)|  | 

### Return type

[**InboxDto**](InboxDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*

