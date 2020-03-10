# MailSlurpClient::CommonActionsControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_new_email_address**](CommonActionsControllerApi.md#create_new_email_address) | **POST** /newEmailAddress | Create new random inbox
[**empty_inbox**](CommonActionsControllerApi.md#empty_inbox) | **DELETE** /emptyInbox | Delete all emails in an inbox
[**send_email_simple**](CommonActionsControllerApi.md#send_email_simple) | **POST** /sendEmail | Send an email from a random email address


# **create_new_email_address**
> Inbox create_new_email_address

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

begin
  #Create new random inbox
  result = api_instance.create_new_email_address
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling CommonActionsControllerApi->create_new_email_address: #{e}"
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



# **empty_inbox**
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

api_instance = MailSlurpClient::CommonActionsControllerApi.new
send_email_options = MailSlurpClient::SendEmailOptions.new # SendEmailOptions | sendEmailOptions

begin
  #Send an email from a random email address
  api_instance.send_email_simple(send_email_options)
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling CommonActionsControllerApi->send_email_simple: #{e}"
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



