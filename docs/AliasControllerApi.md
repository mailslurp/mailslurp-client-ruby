# MailSlurpClient::AliasControllerApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_alias**](AliasControllerApi#create_alias) | **POST** /aliases | Create an email alias. Must be verified by clicking link inside verification email that will be sent to the address. Once verified the alias will be active.
[**delete_alias**](AliasControllerApi#delete_alias) | **DELETE** /aliases/{aliasId} | Delete an email alias
[**get_alias**](AliasControllerApi#get_alias) | **GET** /aliases/{aliasId} | Get an email alias
[**get_alias_emails**](AliasControllerApi#get_alias_emails) | **GET** /aliases/{aliasId}/emails | Get emails for an alias
[**get_alias_threads**](AliasControllerApi#get_alias_threads) | **GET** /aliases/{aliasId}/threads | Get threads created for an alias
[**get_aliases**](AliasControllerApi#get_aliases) | **GET** /aliases | Get all email aliases you have created
[**reply_to_alias_email**](AliasControllerApi#reply_to_alias_email) | **PUT** /aliases/{aliasId}/emails/{emailId} | Reply to an email
[**send_alias_email**](AliasControllerApi#send_alias_email) | **POST** /aliases/{aliasId}/emails | Send an email from an alias inbox
[**update_alias**](AliasControllerApi#update_alias) | **PUT** /aliases/{aliasId} | Update an email alias



## create_alias

> AliasDto create_alias(create_alias_options)

Create an email alias. Must be verified by clicking link inside verification email that will be sent to the address. Once verified the alias will be active.

Email aliases use a MailSlurp randomly generated email address (or a custom domain inbox that you provide) to mask or proxy a real email address. Emails sent to the alias address will be forwarded to the hidden email address it was created for. If you want to send a reply use the threadId attached

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

api_instance = MailSlurpClient::AliasControllerApi.new
create_alias_options = MailSlurpClient::CreateAliasOptions.new # CreateAliasOptions | 

begin
  #Create an email alias. Must be verified by clicking link inside verification email that will be sent to the address. Once verified the alias will be active.
  result = api_instance.create_alias(create_alias_options)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling AliasControllerApi->create_alias: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_alias_options** | [**CreateAliasOptions**](CreateAliasOptions)|  | 

### Return type

[**AliasDto**](AliasDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*


## delete_alias

> delete_alias(alias_id)

Delete an email alias

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

api_instance = MailSlurpClient::AliasControllerApi.new
alias_id = 'alias_id_example' # String | 

begin
  #Delete an email alias
  api_instance.delete_alias(alias_id)
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling AliasControllerApi->delete_alias: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **alias_id** | [**String**]()|  | 

### Return type

nil (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_alias

> AliasDto get_alias(alias_id)

Get an email alias

Get an email alias by ID

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

api_instance = MailSlurpClient::AliasControllerApi.new
alias_id = 'alias_id_example' # String | 

begin
  #Get an email alias
  result = api_instance.get_alias(alias_id)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling AliasControllerApi->get_alias: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **alias_id** | [**String**]()|  | 

### Return type

[**AliasDto**](AliasDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## get_alias_emails

> PageEmailProjection get_alias_emails(alias_id, opts)

Get emails for an alias

Get paginated emails for an alias by ID

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

api_instance = MailSlurpClient::AliasControllerApi.new
alias_id = 'alias_id_example' # String | 
opts = {
  page: 0, # Integer | Optional page index alias email list pagination
  size: 20, # Integer | Optional page size alias email list pagination
  sort: 'ASC', # String | Optional createdAt sort direction ASC or DESC
  since: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Optional filter by sent after given date time
  before: DateTime.parse('2013-10-20T19:20:30+01:00') # DateTime | Optional filter by sent before given date time
}

begin
  #Get emails for an alias
  result = api_instance.get_alias_emails(alias_id, opts)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling AliasControllerApi->get_alias_emails: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **alias_id** | [**String**]()|  | 
 **page** | **Integer**| Optional page index alias email list pagination | [optional] [default to 0]
 **size** | **Integer**| Optional page size alias email list pagination | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]
 **since** | **DateTime**| Optional filter by sent after given date time | [optional] 
 **before** | **DateTime**| Optional filter by sent before given date time | [optional] 

### Return type

[**PageEmailProjection**](PageEmailProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## get_alias_threads

> PageThreadProjection get_alias_threads(alias_id, opts)

Get threads created for an alias

Returns threads created for an email alias in paginated form

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

api_instance = MailSlurpClient::AliasControllerApi.new
alias_id = 'alias_id_example' # String | 
opts = {
  page: 0, # Integer | Optional page index in thread list pagination
  size: 20, # Integer | Optional page size in thread list pagination
  sort: 'ASC', # String | Optional createdAt sort direction ASC or DESC
  since: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Optional filter by sent after given date time
  before: DateTime.parse('2013-10-20T19:20:30+01:00') # DateTime | Optional filter by sent before given date time
}

begin
  #Get threads created for an alias
  result = api_instance.get_alias_threads(alias_id, opts)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling AliasControllerApi->get_alias_threads: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **alias_id** | [**String**]()|  | 
 **page** | **Integer**| Optional page index in thread list pagination | [optional] [default to 0]
 **size** | **Integer**| Optional page size in thread list pagination | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]
 **since** | **DateTime**| Optional filter by sent after given date time | [optional] 
 **before** | **DateTime**| Optional filter by sent before given date time | [optional] 

### Return type

[**PageThreadProjection**](PageThreadProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## get_aliases

> PageAlias get_aliases(opts)

Get all email aliases you have created

Get all email aliases in paginated form

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

api_instance = MailSlurpClient::AliasControllerApi.new
opts = {
  page: 0, # Integer | Optional page index in alias list pagination
  size: 20, # Integer | Optional page size in alias list pagination
  sort: 'ASC', # String | Optional createdAt sort direction ASC or DESC
  since: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Filter by created at after the given timestamp
  before: DateTime.parse('2013-10-20T19:20:30+01:00') # DateTime | Filter by created at before the given timestamp
}

begin
  #Get all email aliases you have created
  result = api_instance.get_aliases(opts)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling AliasControllerApi->get_aliases: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Integer**| Optional page index in alias list pagination | [optional] [default to 0]
 **size** | **Integer**| Optional page size in alias list pagination | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]
 **since** | **DateTime**| Filter by created at after the given timestamp | [optional] 
 **before** | **DateTime**| Filter by created at before the given timestamp | [optional] 

### Return type

[**PageAlias**](PageAlias)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## reply_to_alias_email

> SentEmailDto reply_to_alias_email(alias_id, email_id, reply_to_alias_email_options)

Reply to an email

Send the reply to the email sender or reply-to and include same subject cc bcc etc. Reply to an email and the contents will be sent with the existing subject to the emails `to`, `cc`, and `bcc`.

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

api_instance = MailSlurpClient::AliasControllerApi.new
alias_id = 'alias_id_example' # String | ID of the alias that email belongs to
email_id = 'email_id_example' # String | ID of the email that should be replied to
reply_to_alias_email_options = MailSlurpClient::ReplyToAliasEmailOptions.new # ReplyToAliasEmailOptions | 

begin
  #Reply to an email
  result = api_instance.reply_to_alias_email(alias_id, email_id, reply_to_alias_email_options)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling AliasControllerApi->reply_to_alias_email: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **alias_id** | [**String**]()| ID of the alias that email belongs to | 
 **email_id** | [**String**]()| ID of the email that should be replied to | 
 **reply_to_alias_email_options** | [**ReplyToAliasEmailOptions**](ReplyToAliasEmailOptions)|  | 

### Return type

[**SentEmailDto**](SentEmailDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*


## send_alias_email

> SentEmailDto send_alias_email(alias_id, send_email_options)

Send an email from an alias inbox

Send an email from an alias. Replies to the email will be forwarded to the alias masked email address

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

api_instance = MailSlurpClient::AliasControllerApi.new
alias_id = 'alias_id_example' # String | 
send_email_options = MailSlurpClient::SendEmailOptions.new # SendEmailOptions | 

begin
  #Send an email from an alias inbox
  result = api_instance.send_alias_email(alias_id, send_email_options)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling AliasControllerApi->send_alias_email: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **alias_id** | [**String**]()|  | 
 **send_email_options** | [**SendEmailOptions**](SendEmailOptions)|  | 

### Return type

[**SentEmailDto**](SentEmailDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*


## update_alias

> AliasDto update_alias(alias_id, update_alias_options)

Update an email alias

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

api_instance = MailSlurpClient::AliasControllerApi.new
alias_id = 'alias_id_example' # String | 
update_alias_options = MailSlurpClient::UpdateAliasOptions.new # UpdateAliasOptions | 

begin
  #Update an email alias
  result = api_instance.update_alias(alias_id, update_alias_options)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling AliasControllerApi->update_alias: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **alias_id** | [**String**]()|  | 
 **update_alias_options** | [**UpdateAliasOptions**](UpdateAliasOptions)|  | 

### Return type

[**AliasDto**](AliasDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*

