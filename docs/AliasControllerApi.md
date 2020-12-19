# MailSlurpClient::AliasControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_alias**](AliasControllerApi.md#create_alias) | **POST** /aliases | Create an email alias. Must be verified by clicking link inside verification email that will be sent to the address. Once verified the alias will be active.
[**delete_alias**](AliasControllerApi.md#delete_alias) | **DELETE** /aliases/{aliasId} | Delete an email alias
[**get_alias**](AliasControllerApi.md#get_alias) | **GET** /aliases/{aliasId} | Get an email alias
[**get_alias_threads**](AliasControllerApi.md#get_alias_threads) | **GET** /aliases/{aliasId}/threads | Get threads created for an alias
[**get_aliases**](AliasControllerApi.md#get_aliases) | **GET** /aliases | Get all email aliases you have created
[**update_alias**](AliasControllerApi.md#update_alias) | **PUT** /aliases/{aliasId} | Update an email alias



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
create_alias_options = MailSlurpClient::CreateAliasOptions.new # CreateAliasOptions | createAliasOptions

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
 **create_alias_options** | [**CreateAliasOptions**](CreateAliasOptions.md)| createAliasOptions | 

### Return type

[**AliasDto**](AliasDto.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


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
alias_id = 'alias_id_example' # String | aliasId

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
 **alias_id** | [**String**](.md)| aliasId | 

### Return type

nil (empty response body)

### Authorization

[API_KEY](../README.md#API_KEY)

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
alias_id = 'alias_id_example' # String | aliasId

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
 **alias_id** | [**String**](.md)| aliasId | 

### Return type

[**AliasDto**](AliasDto.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


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
alias_id = 'alias_id_example' # String | aliasId
opts = {
  page: 0, # Integer | Optional page index in thread list pagination
  size: 20, # Integer | Optional page size in thread list pagination
  sort: 'ASC' # String | Optional createdAt sort direction ASC or DESC
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
 **alias_id** | [**String**](.md)| aliasId | 
 **page** | **Integer**| Optional page index in thread list pagination | [optional] [default to 0]
 **size** | **Integer**| Optional page size in thread list pagination | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]

### Return type

[**PageThreadProjection**](PageThreadProjection.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


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
  sort: 'ASC' # String | Optional createdAt sort direction ASC or DESC
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

### Return type

[**PageAlias**](PageAlias.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_alias

> update_alias(alias_id, update_alias_options)

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
alias_id = 'alias_id_example' # String | aliasId
update_alias_options = MailSlurpClient::UpdateAliasOptions.new # UpdateAliasOptions | updateAliasOptions

begin
  #Update an email alias
  api_instance.update_alias(alias_id, update_alias_options)
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling AliasControllerApi->update_alias: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **alias_id** | [**String**](.md)| aliasId | 
 **update_alias_options** | [**UpdateAliasOptions**](UpdateAliasOptions.md)| updateAliasOptions | 

### Return type

nil (empty response body)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

