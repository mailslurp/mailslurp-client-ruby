# MailSlurpClient::InboxForwarderControllerApi

All URIs are relative to *https://ruby.api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_new_inbox_forwarder**](InboxForwarderControllerApi#create_new_inbox_forwarder) | **POST** /forwarders | Create an inbox forwarder
[**delete_inbox_forwarder**](InboxForwarderControllerApi#delete_inbox_forwarder) | **DELETE** /forwarders/{id} | Delete an inbox forwarder
[**delete_inbox_forwarders**](InboxForwarderControllerApi#delete_inbox_forwarders) | **DELETE** /forwarders | Delete inbox forwarders
[**get_inbox_forwarder**](InboxForwarderControllerApi#get_inbox_forwarder) | **GET** /forwarders/{id} | Get an inbox forwarder
[**get_inbox_forwarders**](InboxForwarderControllerApi#get_inbox_forwarders) | **GET** /forwarders | List inbox forwarders
[**test_inbox_forwarder**](InboxForwarderControllerApi#test_inbox_forwarder) | **POST** /forwarders/{id}/test | Test an inbox forwarder
[**test_inbox_forwarders_for_inbox**](InboxForwarderControllerApi#test_inbox_forwarders_for_inbox) | **PUT** /forwarders | Test inbox forwarders for inbox
[**test_new_inbox_forwarder**](InboxForwarderControllerApi#test_new_inbox_forwarder) | **PATCH** /forwarders | Test new inbox forwarder



## create_new_inbox_forwarder

> InboxForwarderDto create_new_inbox_forwarder(inbox_id, create_inbox_forwarder_options)

Create an inbox forwarder

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

api_instance = MailSlurpClient::InboxForwarderControllerApi.new
inbox_id = 'inbox_id_example' # String | Inbox id to attach forwarder to
create_inbox_forwarder_options = MailSlurpClient::CreateInboxForwarderOptions.new # CreateInboxForwarderOptions | 

begin
  #Create an inbox forwarder
  result = api_instance.create_new_inbox_forwarder(inbox_id, create_inbox_forwarder_options)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling InboxForwarderControllerApi->create_new_inbox_forwarder: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**String**]()| Inbox id to attach forwarder to | 
 **create_inbox_forwarder_options** | [**CreateInboxForwarderOptions**](CreateInboxForwarderOptions)|  | 

### Return type

[**InboxForwarderDto**](InboxForwarderDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*


## delete_inbox_forwarder

> delete_inbox_forwarder(id)

Delete an inbox forwarder

Delete inbox forwarder

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

api_instance = MailSlurpClient::InboxForwarderControllerApi.new
id = 'id_example' # String | ID of inbox forwarder

begin
  #Delete an inbox forwarder
  api_instance.delete_inbox_forwarder(id)
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling InboxForwarderControllerApi->delete_inbox_forwarder: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**]()| ID of inbox forwarder | 

### Return type

nil (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## delete_inbox_forwarders

> delete_inbox_forwarders(opts)

Delete inbox forwarders

Delete inbox forwarders. Accepts optional inboxId filter.

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

api_instance = MailSlurpClient::InboxForwarderControllerApi.new
opts = {
  inbox_id: 'inbox_id_example' # String | Optional inbox id to attach forwarder to
}

begin
  #Delete inbox forwarders
  api_instance.delete_inbox_forwarders(opts)
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling InboxForwarderControllerApi->delete_inbox_forwarders: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**String**]()| Optional inbox id to attach forwarder to | [optional] 

### Return type

nil (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_inbox_forwarder

> InboxForwarderDto get_inbox_forwarder(id)

Get an inbox forwarder

Get inbox ruleset

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

api_instance = MailSlurpClient::InboxForwarderControllerApi.new
id = 'id_example' # String | ID of inbox forwarder

begin
  #Get an inbox forwarder
  result = api_instance.get_inbox_forwarder(id)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling InboxForwarderControllerApi->get_inbox_forwarder: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**]()| ID of inbox forwarder | 

### Return type

[**InboxForwarderDto**](InboxForwarderDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## get_inbox_forwarders

> PageInboxForwarderDto get_inbox_forwarders(opts)

List inbox forwarders

List all forwarders attached to an inbox

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

api_instance = MailSlurpClient::InboxForwarderControllerApi.new
opts = {
  inbox_id: 'inbox_id_example', # String | Optional inbox id to get forwarders from
  page: 0, # Integer | Optional page index in inbox forwarder list pagination
  size: 20, # Integer | Optional page size in inbox forwarder list pagination
  sort: 'ASC', # String | Optional createdAt sort direction ASC or DESC
  search_filter: 'search_filter_example', # String | Optional search filter
  since: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Filter by created at after the given timestamp
  before: DateTime.parse('2013-10-20T19:20:30+01:00') # DateTime | Filter by created at before the given timestamp
}

begin
  #List inbox forwarders
  result = api_instance.get_inbox_forwarders(opts)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling InboxForwarderControllerApi->get_inbox_forwarders: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**String**]()| Optional inbox id to get forwarders from | [optional] 
 **page** | **Integer**| Optional page index in inbox forwarder list pagination | [optional] [default to 0]
 **size** | **Integer**| Optional page size in inbox forwarder list pagination | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]
 **search_filter** | **String**| Optional search filter | [optional] 
 **since** | **DateTime**| Filter by created at after the given timestamp | [optional] 
 **before** | **DateTime**| Filter by created at before the given timestamp | [optional] 

### Return type

[**PageInboxForwarderDto**](PageInboxForwarderDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## test_inbox_forwarder

> InboxForwarderTestResult test_inbox_forwarder(id, inbox_forwarder_test_options)

Test an inbox forwarder

Test an inbox forwarder

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

api_instance = MailSlurpClient::InboxForwarderControllerApi.new
id = 'id_example' # String | ID of inbox forwarder
inbox_forwarder_test_options = MailSlurpClient::InboxForwarderTestOptions.new # InboxForwarderTestOptions | 

begin
  #Test an inbox forwarder
  result = api_instance.test_inbox_forwarder(id, inbox_forwarder_test_options)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling InboxForwarderControllerApi->test_inbox_forwarder: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**]()| ID of inbox forwarder | 
 **inbox_forwarder_test_options** | [**InboxForwarderTestOptions**](InboxForwarderTestOptions)|  | 

### Return type

[**InboxForwarderTestResult**](InboxForwarderTestResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*


## test_inbox_forwarders_for_inbox

> InboxForwarderTestResult test_inbox_forwarders_for_inbox(inbox_id, inbox_forwarder_test_options)

Test inbox forwarders for inbox

Test inbox forwarders for inbox

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

api_instance = MailSlurpClient::InboxForwarderControllerApi.new
inbox_id = 'inbox_id_example' # String | ID of inbox
inbox_forwarder_test_options = MailSlurpClient::InboxForwarderTestOptions.new # InboxForwarderTestOptions | 

begin
  #Test inbox forwarders for inbox
  result = api_instance.test_inbox_forwarders_for_inbox(inbox_id, inbox_forwarder_test_options)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling InboxForwarderControllerApi->test_inbox_forwarders_for_inbox: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**String**]()| ID of inbox | 
 **inbox_forwarder_test_options** | [**InboxForwarderTestOptions**](InboxForwarderTestOptions)|  | 

### Return type

[**InboxForwarderTestResult**](InboxForwarderTestResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*


## test_new_inbox_forwarder

> InboxForwarderTestResult test_new_inbox_forwarder(test_new_inbox_forwarder_options)

Test new inbox forwarder

Test new inbox forwarder

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

api_instance = MailSlurpClient::InboxForwarderControllerApi.new
test_new_inbox_forwarder_options = MailSlurpClient::TestNewInboxForwarderOptions.new # TestNewInboxForwarderOptions | 

begin
  #Test new inbox forwarder
  result = api_instance.test_new_inbox_forwarder(test_new_inbox_forwarder_options)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling InboxForwarderControllerApi->test_new_inbox_forwarder: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **test_new_inbox_forwarder_options** | [**TestNewInboxForwarderOptions**](TestNewInboxForwarderOptions)|  | 

### Return type

[**InboxForwarderTestResult**](InboxForwarderTestResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*

