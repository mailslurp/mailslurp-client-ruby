# MailSlurpClient::CommonActionsControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_new_email_address**](CommonActionsControllerApi#create_new_email_address) | **POST** /createInbox | Create new random inbox
[**create_new_email_address1**](CommonActionsControllerApi#create_new_email_address1) | **POST** /newEmailAddress | Create new random inbox
[**empty_inbox**](CommonActionsControllerApi#empty_inbox) | **DELETE** /emptyInbox | Delete all emails in an inbox
[**send_email_simple**](CommonActionsControllerApi#send_email_simple) | **POST** /sendEmail | Send an email



## create_new_email_address

> Inbox create_new_email_address(opts)

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
  allow_team_access: true, # Boolean | allowTeamAccess
  expires_at: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | expiresAt
  expires_in: 56, # Integer | expiresIn
  use_domain_pool: true # Boolean | useDomainPool
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
 **allow_team_access** | **Boolean**| allowTeamAccess | [optional] 
 **expires_at** | **DateTime**| expiresAt | [optional] 
 **expires_in** | **Integer**| expiresIn | [optional] 
 **use_domain_pool** | **Boolean**| useDomainPool | [optional] 

### Return type

[**Inbox**](Inbox)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_new_email_address1

> Inbox create_new_email_address1(opts)

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
  allow_team_access: true, # Boolean | allowTeamAccess
  expires_at: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | expiresAt
  expires_in: 56, # Integer | expiresIn
  use_domain_pool: true # Boolean | useDomainPool
}

begin
  #Create new random inbox
  result = api_instance.create_new_email_address1(opts)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling CommonActionsControllerApi->create_new_email_address1: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **allow_team_access** | **Boolean**| allowTeamAccess | [optional] 
 **expires_at** | **DateTime**| expiresAt | [optional] 
 **expires_in** | **Integer**| expiresIn | [optional] 
 **use_domain_pool** | **Boolean**| useDomainPool | [optional] 

### Return type

[**Inbox**](Inbox)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


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
inbox_id = 'inbox_id_example' # String | inboxId

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
 **inbox_id** | [**String**]()| inboxId | 

### Return type

nil (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## send_email_simple

> send_email_simple(email_options)

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
email_options = MailSlurpClient::SimpleSendEmailOptions.new # SimpleSendEmailOptions | emailOptions

begin
  #Send an email
  api_instance.send_email_simple(email_options)
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling CommonActionsControllerApi->send_email_simple: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_options** | [**SimpleSendEmailOptions**](SimpleSendEmailOptions)| emailOptions | 

### Return type

nil (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

