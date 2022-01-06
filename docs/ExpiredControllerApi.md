# MailSlurpClient::ExpiredControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_expiration_defaults**](ExpiredControllerApi#get_expiration_defaults) | **GET** /expired/defaults | Get default expiration settings
[**get_expired_inbox_by_inbox_id**](ExpiredControllerApi#get_expired_inbox_by_inbox_id) | **GET** /expired/inbox/{inboxId} | Get expired inbox record for a previously existing inbox
[**get_expired_inbox_record**](ExpiredControllerApi#get_expired_inbox_record) | **GET** /expired/{expiredId} | Get an expired inbox record
[**get_expired_inboxes**](ExpiredControllerApi#get_expired_inboxes) | **GET** /expired | List records of expired inboxes



## get_expiration_defaults

> ExpirationDefaults get_expiration_defaults

Get default expiration settings

Return default times used for inbox expiration

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

api_instance = MailSlurpClient::ExpiredControllerApi.new

begin
  #Get default expiration settings
  result = api_instance.get_expiration_defaults
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling ExpiredControllerApi->get_expiration_defaults: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ExpirationDefaults**](ExpirationDefaults)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## get_expired_inbox_by_inbox_id

> ExpiredInboxDto get_expired_inbox_by_inbox_id(inbox_id)

Get expired inbox record for a previously existing inbox

Use the inboxId to return an ExpiredInboxRecord if an inbox has expired. Inboxes expire and are disabled if an expiration date is set or plan requires. Returns 404 if no expired inbox is found for the inboxId

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

api_instance = MailSlurpClient::ExpiredControllerApi.new
inbox_id = 'inbox_id_example' # String | ID of inbox you want to retrieve (not the inbox ID)

begin
  #Get expired inbox record for a previously existing inbox
  result = api_instance.get_expired_inbox_by_inbox_id(inbox_id)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling ExpiredControllerApi->get_expired_inbox_by_inbox_id: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**String**]()| ID of inbox you want to retrieve (not the inbox ID) | 

### Return type

[**ExpiredInboxDto**](ExpiredInboxDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## get_expired_inbox_record

> ExpiredInboxDto get_expired_inbox_record(id_of_the_expired_inbox_record_you_want_to_retrieve__this_is_different_from_the_id_of_the_inbox_you_are_interested_in__see_other_methods_for_getting_expired_inbox_record_for_an_inbox_inbox_id)

Get an expired inbox record

Inboxes created with an expiration date will expire after the given date and be moved to an ExpiredInbox entity. You can still read emails in the inbox but it can no longer send or receive emails. Fetch the expired inboxes to view the old inboxes properties

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

api_instance = MailSlurpClient::ExpiredControllerApi.new
id_of_the_expired_inbox_record_you_want_to_retrieve__this_is_different_from_the_id_of_the_inbox_you_are_interested_in__see_other_methods_for_getting_expired_inbox_record_for_an_inbox_inbox_id = 'id_of_the_expired_inbox_record_you_want_to_retrieve__this_is_different_from_the_id_of_the_inbox_you_are_interested_in__see_other_methods_for_getting_expired_inbox_record_for_an_inbox_inbox_id_example' # String | 

begin
  #Get an expired inbox record
  result = api_instance.get_expired_inbox_record(id_of_the_expired_inbox_record_you_want_to_retrieve__this_is_different_from_the_id_of_the_inbox_you_are_interested_in__see_other_methods_for_getting_expired_inbox_record_for_an_inbox_inbox_id)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling ExpiredControllerApi->get_expired_inbox_record: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_of_the_expired_inbox_record_you_want_to_retrieve__this_is_different_from_the_id_of_the_inbox_you_are_interested_in__see_other_methods_for_getting_expired_inbox_record_for_an_inbox_inbox_id** | [**String**]()|  | 

### Return type

[**ExpiredInboxDto**](ExpiredInboxDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## get_expired_inboxes

> PageExpiredInboxRecordProjection get_expired_inboxes(opts)

List records of expired inboxes

Inboxes created with an expiration date will expire after the given date. An ExpiredInboxRecord is created that records the inboxes old ID and email address. You can still read emails in the inbox (using the inboxes old ID) but the email address associated with the inbox can no longer send or receive emails. Fetch expired inbox records to view the old inboxes properties

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

api_instance = MailSlurpClient::ExpiredControllerApi.new
opts = {
  page: 0, # Integer | Optional page index in inbox sent email list pagination
  size: 20, # Integer | Optional page size in inbox sent email list pagination
  sort: 'ASC', # String | Optional createdAt sort direction ASC or DESC
  since: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Filter by created at after the given timestamp
  before: DateTime.parse('2013-10-20T19:20:30+01:00') # DateTime | Filter by created at before the given timestamp
}

begin
  #List records of expired inboxes
  result = api_instance.get_expired_inboxes(opts)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling ExpiredControllerApi->get_expired_inboxes: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Integer**| Optional page index in inbox sent email list pagination | [optional] [default to 0]
 **size** | **Integer**| Optional page size in inbox sent email list pagination | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]
 **since** | **DateTime**| Filter by created at after the given timestamp | [optional] 
 **before** | **DateTime**| Filter by created at before the given timestamp | [optional] 

### Return type

[**PageExpiredInboxRecordProjection**](PageExpiredInboxRecordProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*

