# MailSlurpClient::AliasControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_alias**](AliasControllerApi.md#create_alias) | **POST** /aliases | Create an email alias
[**create_anonymous_alias**](AliasControllerApi.md#create_anonymous_alias) | **POST** /aliases/anonymous | Create an anonymous email alias
[**delete_alias**](AliasControllerApi.md#delete_alias) | **DELETE** /aliases/{aliasId} | Delete an owned alias
[**get_alias**](AliasControllerApi.md#get_alias) | **GET** /aliases/{aliasId} | Get an email alias
[**get_aliases**](AliasControllerApi.md#get_aliases) | **GET** /aliases | Get all email aliases
[**update_alias**](AliasControllerApi.md#update_alias) | **PUT** /aliases/{aliasId} | Update an owned alias



## create_alias

> create_alias(create_owned_alias_options)

Create an email alias

Create an email alias belonging to a user ID. To create anonymous aliases use the `createAnonymousAlias` method.

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
create_owned_alias_options = MailSlurpClient::CreateOwnedAliasOptions.new # CreateOwnedAliasOptions | createOwnedAliasOptions

begin
  #Create an email alias
  api_instance.create_alias(create_owned_alias_options)
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling AliasControllerApi->create_alias: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_owned_alias_options** | [**CreateOwnedAliasOptions**](CreateOwnedAliasOptions.md)| createOwnedAliasOptions | 

### Return type

nil (empty response body)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_anonymous_alias

> ModelAlias create_anonymous_alias(create_anonymous_alias_options)

Create an anonymous email alias

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
create_anonymous_alias_options = MailSlurpClient::CreateAnonymousAliasOptions.new # CreateAnonymousAliasOptions | createAnonymousAliasOptions

begin
  #Create an anonymous email alias
  result = api_instance.create_anonymous_alias(create_anonymous_alias_options)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling AliasControllerApi->create_anonymous_alias: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_anonymous_alias_options** | [**CreateAnonymousAliasOptions**](CreateAnonymousAliasOptions.md)| createAnonymousAliasOptions | 

### Return type

[**ModelAlias**](ModelAlias.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_alias

> delete_alias(alias_id)

Delete an owned alias

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
  #Delete an owned alias
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

> ModelAlias get_alias(alias_id)

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

[**ModelAlias**](ModelAlias.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_aliases

> PageAlias get_aliases(opts)

Get all email aliases

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
  #Get all email aliases
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

> update_alias(alias_id, create_owned_alias_options)

Update an owned alias

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
create_owned_alias_options = MailSlurpClient::CreateOwnedAliasOptions.new # CreateOwnedAliasOptions | createOwnedAliasOptions

begin
  #Update an owned alias
  api_instance.update_alias(alias_id, create_owned_alias_options)
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling AliasControllerApi->update_alias: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **alias_id** | [**String**](.md)| aliasId | 
 **create_owned_alias_options** | [**CreateOwnedAliasOptions**](CreateOwnedAliasOptions.md)| createOwnedAliasOptions | 

### Return type

nil (empty response body)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

