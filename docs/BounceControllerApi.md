# MailSlurpClient::BounceControllerApi

All URIs are relative to *https://ruby.api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**filter_bounced_recipient**](BounceControllerApi#filter_bounced_recipient) | **POST** /bounce/filter-recipients | Filter a list of email recipients and remove those who have bounced
[**get_bounced_email**](BounceControllerApi#get_bounced_email) | **GET** /bounce/emails/{id} | Get a bounced email.
[**get_bounced_emails**](BounceControllerApi#get_bounced_emails) | **GET** /bounce/emails | Get paginated list of bounced emails.
[**get_bounced_recipient**](BounceControllerApi#get_bounced_recipient) | **GET** /bounce/recipients/{id} | Get a bounced email.
[**get_bounced_recipients**](BounceControllerApi#get_bounced_recipients) | **GET** /bounce/recipients | Get paginated list of bounced recipients.



## filter_bounced_recipient

> FilterBouncedRecipientsResult filter_bounced_recipient(filter_bounced_recipients_options)

Filter a list of email recipients and remove those who have bounced

Prevent email sending errors by remove recipients who have resulted in past email bounces or complaints

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

api_instance = MailSlurpClient::BounceControllerApi.new
filter_bounced_recipients_options = MailSlurpClient::FilterBouncedRecipientsOptions.new # FilterBouncedRecipientsOptions | 

begin
  #Filter a list of email recipients and remove those who have bounced
  result = api_instance.filter_bounced_recipient(filter_bounced_recipients_options)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling BounceControllerApi->filter_bounced_recipient: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_bounced_recipients_options** | [**FilterBouncedRecipientsOptions**](FilterBouncedRecipientsOptions)|  | 

### Return type

[**FilterBouncedRecipientsResult**](FilterBouncedRecipientsResult)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*


## get_bounced_email

> BouncedEmailDto get_bounced_email(id)

Get a bounced email.

Bounced emails are email you have sent that were rejected by a recipient

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

api_instance = MailSlurpClient::BounceControllerApi.new
id = 'id_example' # String | ID of the bounced email to fetch

begin
  #Get a bounced email.
  result = api_instance.get_bounced_email(id)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling BounceControllerApi->get_bounced_email: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**]()| ID of the bounced email to fetch | 

### Return type

[**BouncedEmailDto**](BouncedEmailDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## get_bounced_emails

> PageBouncedEmail get_bounced_emails(opts)

Get paginated list of bounced emails.

Bounced emails are email you have sent that were rejected by a recipient

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

api_instance = MailSlurpClient::BounceControllerApi.new
opts = {
  page: 0, # Integer | Optional page index
  size: 20, # Integer | Optional page size 
  sort: 'ASC', # String | Optional createdAt sort direction ASC or DESC
  since: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Filter by created at after the given timestamp
  before: DateTime.parse('2013-10-20T19:20:30+01:00') # DateTime | Filter by created at before the given timestamp
}

begin
  #Get paginated list of bounced emails.
  result = api_instance.get_bounced_emails(opts)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling BounceControllerApi->get_bounced_emails: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Integer**| Optional page index | [optional] [default to 0]
 **size** | **Integer**| Optional page size  | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]
 **since** | **DateTime**| Filter by created at after the given timestamp | [optional] 
 **before** | **DateTime**| Filter by created at before the given timestamp | [optional] 

### Return type

[**PageBouncedEmail**](PageBouncedEmail)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## get_bounced_recipient

> BouncedRecipientDto get_bounced_recipient(id)

Get a bounced email.

Bounced emails are email you have sent that were rejected by a recipient

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

api_instance = MailSlurpClient::BounceControllerApi.new
id = 'id_example' # String | ID of the bounced recipient

begin
  #Get a bounced email.
  result = api_instance.get_bounced_recipient(id)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling BounceControllerApi->get_bounced_recipient: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**]()| ID of the bounced recipient | 

### Return type

[**BouncedRecipientDto**](BouncedRecipientDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## get_bounced_recipients

> PageBouncedRecipients get_bounced_recipients(opts)

Get paginated list of bounced recipients.

Bounced recipients are email addresses that you have sent emails to that did not accept the sent email. Once a recipient is bounced you cannot send emails to that address.

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

api_instance = MailSlurpClient::BounceControllerApi.new
opts = {
  page: 0, # Integer | Optional page index 
  size: 20, # Integer | Optional page size 
  sort: 'ASC', # String | Optional createdAt sort direction ASC or DESC
  since: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Filter by created at after the given timestamp
  before: DateTime.parse('2013-10-20T19:20:30+01:00') # DateTime | Filter by created at before the given timestamp
}

begin
  #Get paginated list of bounced recipients.
  result = api_instance.get_bounced_recipients(opts)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling BounceControllerApi->get_bounced_recipients: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Integer**| Optional page index  | [optional] [default to 0]
 **size** | **Integer**| Optional page size  | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]
 **since** | **DateTime**| Filter by created at after the given timestamp | [optional] 
 **before** | **DateTime**| Filter by created at before the given timestamp | [optional] 

### Return type

[**PageBouncedRecipients**](PageBouncedRecipients)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*

