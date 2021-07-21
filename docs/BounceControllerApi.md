# MailSlurpClient::BounceControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_bounced_email**](BounceControllerApi#get_bounced_email) | **GET** /bounce/emails/{id} | Get a bounced email.
[**get_bounced_email1**](BounceControllerApi#get_bounced_email1) | **GET** /bounce/recipients/{id} | Get a bounced email.
[**get_bounced_emails**](BounceControllerApi#get_bounced_emails) | **GET** /bounce/emails | Get paginated list of bounced emails.
[**get_bounced_recipients**](BounceControllerApi#get_bounced_recipients) | **GET** /bounce/recipients | Get paginated list of bounced recipients.



## get_bounced_email

> get_bounced_email(id)

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
  api_instance.get_bounced_email(id)
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling BounceControllerApi->get_bounced_email: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**]()| ID of the bounced email to fetch | 

### Return type

nil (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_bounced_email1

> get_bounced_email1(id)

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
  api_instance.get_bounced_email1(id)
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling BounceControllerApi->get_bounced_email1: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**]()| ID of the bounced recipient | 

### Return type

nil (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_bounced_emails

> get_bounced_emails(opts)

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
  sort: 'ASC' # String | Optional createdAt sort direction ASC or DESC
}

begin
  #Get paginated list of bounced emails.
  api_instance.get_bounced_emails(opts)
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling BounceControllerApi->get_bounced_emails: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Integer**| Optional page index  | [optional] [default to 0]
 **size** | **Integer**| Optional page size  | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]

### Return type

nil (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_bounced_recipients

> get_bounced_recipients(opts)

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
  sort: 'ASC' # String | Optional createdAt sort direction ASC or DESC
}

begin
  #Get paginated list of bounced recipients.
  api_instance.get_bounced_recipients(opts)
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

### Return type

nil (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

