# MailSlurpClient::CommonOperationsApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_new_email_address**](CommonOperationsApi.md#create_new_email_address) | **POST** /newEmailAddress | Create new email address
[**delete_email_address**](CommonOperationsApi.md#delete_email_address) | **DELETE** /deleteEmailAddress | Delete email address and its emails
[**send_email_simple**](CommonOperationsApi.md#send_email_simple) | **POST** /sendEmail | Send an email from a random email address
[**wait_for_latest_email**](CommonOperationsApi.md#wait_for_latest_email) | **GET** /fetchLatestEmail | Fetch inbox&#39;s latest email or if empty wait for email to arrive
[**wait_for_nth_email**](CommonOperationsApi.md#wait_for_nth_email) | **GET** /waitForNthEmail | Wait for or fetch the email with a given index in the inbox specified


# **create_new_email_address**
> Inbox create_new_email_address

Create new email address

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

api_instance = MailSlurpClient::CommonOperationsApi.new

begin
  #Create new email address
  result = api_instance.create_new_email_address
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling CommonOperationsApi->create_new_email_address: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Inbox**](Inbox.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **delete_email_address**
> delete_email_address(inbox_id)

Delete email address and its emails

Deletes an inbox

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

api_instance = MailSlurpClient::CommonOperationsApi.new
inbox_id = 'inbox_id_example' # String | inboxId

begin
  #Delete email address and its emails
  api_instance.delete_email_address(inbox_id)
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling CommonOperationsApi->delete_email_address: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**String**](.md)| inboxId | 

### Return type

nil (empty response body)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **send_email_simple**
> send_email_simple(send_email_options)

Send an email from a random email address

To specify an email address first create an inbox and use that with the other send email methods

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

api_instance = MailSlurpClient::CommonOperationsApi.new
send_email_options = MailSlurpClient::SendEmailOptions.new # SendEmailOptions | sendEmailOptions

begin
  #Send an email from a random email address
  api_instance.send_email_simple(send_email_options)
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling CommonOperationsApi->send_email_simple: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **send_email_options** | [**SendEmailOptions**](SendEmailOptions.md)| sendEmailOptions | 

### Return type

nil (empty response body)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **wait_for_latest_email**
> Email wait_for_latest_email(opts)

Fetch inbox's latest email or if empty wait for email to arrive

Will return either the last received email or wait for an email to arrive and return that. If you need to wait for an email for a non-empty inbox see the other receive methods.

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

api_instance = MailSlurpClient::CommonOperationsApi.new
opts = {
  inbox_email_address: 'inbox_email_address_example', # String | Email address of the inbox we are fetching emails from
  inbox_id: 'inbox_id_example' # String | Id of the inbox we are fetching emails from
}

begin
  #Fetch inbox's latest email or if empty wait for email to arrive
  result = api_instance.wait_for_latest_email(opts)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling CommonOperationsApi->wait_for_latest_email: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_email_address** | **String**| Email address of the inbox we are fetching emails from | [optional] 
 **inbox_id** | [**String**](.md)| Id of the inbox we are fetching emails from | [optional] 

### Return type

[**Email**](Email.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **wait_for_nth_email**
> Email wait_for_nth_email(opts)

Wait for or fetch the email with a given index in the inbox specified

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

api_instance = MailSlurpClient::CommonOperationsApi.new
opts = {
  inbox_id: 'inbox_id_example', # String | Id of the inbox we are fetching emails from
  index: 56 # Integer | Zero based index of the email to wait for
}

begin
  #Wait for or fetch the email with a given index in the inbox specified
  result = api_instance.wait_for_nth_email(opts)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling CommonOperationsApi->wait_for_nth_email: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**String**](.md)| Id of the inbox we are fetching emails from | [optional] 
 **index** | **Integer**| Zero based index of the email to wait for | [optional] 

### Return type

[**Email**](Email.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



