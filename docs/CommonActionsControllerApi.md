# MailSlurpClient::CommonActionsControllerApi

All URIs are relative to *https://ruby.api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_new_email_address**](CommonActionsControllerApi#create_new_email_address) | **POST** /newEmailAddress | Create new random inbox
[**create_random_inbox**](CommonActionsControllerApi#create_random_inbox) | **POST** /createInbox | Create new random inbox
[**delete_email_address**](CommonActionsControllerApi#delete_email_address) | **DELETE** /deleteEmailAddress | Delete inbox email address by inbox id
[**empty_inbox**](CommonActionsControllerApi#empty_inbox) | **DELETE** /emptyInbox | Delete all emails in an inbox
[**send_email_simple**](CommonActionsControllerApi#send_email_simple) | **POST** /sendEmail | Send an email



## create_new_email_address

> InboxDto create_new_email_address(opts)

Create new random inbox

Returns an Inbox with an `id` and an `emailAddress`

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

api_instance = MailSlurpClient::CommonActionsControllerApi.new
opts = {
  allow_team_access: true, # Boolean | 
  use_domain_pool: true, # Boolean | 
  expires_at: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | 
  expires_in: 56, # Integer | 
  email_address: 'email_address_example', # String | 
  inbox_type: 'inbox_type_example', # String | 
  description: 'description_example', # String | 
  name: 'name_example', # String | 
  tags: ['tags_example'], # Array<String> | 
  favourite: true, # Boolean | 
  virtual_inbox: true # Boolean | 
}

begin
  #Create new random inbox
  result = api_instance.create_new_email_address(opts)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling CommonActionsControllerApi->create_new_email_address: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **allow_team_access** | **Boolean**|  | [optional] 
 **use_domain_pool** | **Boolean**|  | [optional] 
 **expires_at** | **DateTime**|  | [optional] 
 **expires_in** | **Integer**|  | [optional] 
 **email_address** | **String**|  | [optional] 
 **inbox_type** | **String**|  | [optional] 
 **description** | **String**|  | [optional] 
 **name** | **String**|  | [optional] 
 **tags** | [**Array&lt;String&gt;**](String)|  | [optional] 
 **favourite** | **Boolean**|  | [optional] 
 **virtual_inbox** | **Boolean**|  | [optional] 

### Return type

[**InboxDto**](InboxDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## create_random_inbox

> InboxDto create_random_inbox(opts)

Create new random inbox

Returns an Inbox with an `id` and an `emailAddress`

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

api_instance = MailSlurpClient::CommonActionsControllerApi.new
opts = {
  allow_team_access: true, # Boolean | 
  use_domain_pool: true, # Boolean | 
  expires_at: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | 
  expires_in: 56, # Integer | 
  email_address: 'email_address_example', # String | 
  inbox_type: 'inbox_type_example', # String | 
  description: 'description_example', # String | 
  name: 'name_example', # String | 
  tags: ['tags_example'], # Array<String> | 
  favourite: true, # Boolean | 
  virtual_inbox: true # Boolean | 
}

begin
  #Create new random inbox
  result = api_instance.create_random_inbox(opts)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling CommonActionsControllerApi->create_random_inbox: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **allow_team_access** | **Boolean**|  | [optional] 
 **use_domain_pool** | **Boolean**|  | [optional] 
 **expires_at** | **DateTime**|  | [optional] 
 **expires_in** | **Integer**|  | [optional] 
 **email_address** | **String**|  | [optional] 
 **inbox_type** | **String**|  | [optional] 
 **description** | **String**|  | [optional] 
 **name** | **String**|  | [optional] 
 **tags** | [**Array&lt;String&gt;**](String)|  | [optional] 
 **favourite** | **Boolean**|  | [optional] 
 **virtual_inbox** | **Boolean**|  | [optional] 

### Return type

[**InboxDto**](InboxDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## delete_email_address

> delete_email_address(inbox_id)

Delete inbox email address by inbox id

Deletes inbox email address

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

api_instance = MailSlurpClient::CommonActionsControllerApi.new
inbox_id = 'inbox_id_example' # String | 

begin
  #Delete inbox email address by inbox id
  api_instance.delete_email_address(inbox_id)
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling CommonActionsControllerApi->delete_email_address: #{e}"
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


## empty_inbox

> empty_inbox(inbox_id)

Delete all emails in an inbox

Deletes all emails

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

api_instance = MailSlurpClient::CommonActionsControllerApi.new
inbox_id = 'inbox_id_example' # String | 

begin
  #Delete all emails in an inbox
  api_instance.empty_inbox(inbox_id)
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling CommonActionsControllerApi->empty_inbox: #{e}"
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


## send_email_simple

> send_email_simple(simple_send_email_options)

Send an email

If no senderId or inboxId provided a random email address will be used to send from.

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

api_instance = MailSlurpClient::CommonActionsControllerApi.new
simple_send_email_options = MailSlurpClient::SimpleSendEmailOptions.new # SimpleSendEmailOptions | 

begin
  #Send an email
  api_instance.send_email_simple(simple_send_email_options)
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling CommonActionsControllerApi->send_email_simple: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **simple_send_email_options** | [**SimpleSendEmailOptions**](SimpleSendEmailOptions)|  | 

### Return type

nil (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

