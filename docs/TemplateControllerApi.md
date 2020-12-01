# MailSlurpClient::TemplateControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_template**](TemplateControllerApi.md#create_template) | **POST** /templates | Create a Template
[**delete_template**](TemplateControllerApi.md#delete_template) | **DELETE** /templates/{TemplateId} | Delete Template
[**get_all_templates**](TemplateControllerApi.md#get_all_templates) | **GET** /templates/paginated | Get all Templates in paginated format
[**get_template**](TemplateControllerApi.md#get_template) | **GET** /templates/{TemplateId} | Get Template
[**get_templates**](TemplateControllerApi.md#get_templates) | **GET** /templates | Get all Templates



## create_template

> TemplateDto create_template(create_template_options)

Create a Template

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

api_instance = MailSlurpClient::TemplateControllerApi.new
create_template_options = MailSlurpClient::CreateTemplateOptions.new # CreateTemplateOptions | createTemplateOptions

begin
  #Create a Template
  result = api_instance.create_template(create_template_options)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling TemplateControllerApi->create_template: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_template_options** | [**CreateTemplateOptions**](CreateTemplateOptions.md)| createTemplateOptions | 

### Return type

[**TemplateDto**](TemplateDto.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_template

> delete_template(template_id)

Delete Template

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

api_instance = MailSlurpClient::TemplateControllerApi.new
template_id = 'template_id_example' # String | TemplateId

begin
  #Delete Template
  api_instance.delete_template(template_id)
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling TemplateControllerApi->delete_template: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template_id** | [**String**](.md)| TemplateId | 

### Return type

nil (empty response body)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_all_templates

> PageTemplateProjection get_all_templates(opts)

Get all Templates in paginated format

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

api_instance = MailSlurpClient::TemplateControllerApi.new
opts = {
  page: 0, # Integer | Optional page index in inbox list pagination
  size: 20, # Integer | Optional page size in inbox list pagination
  sort: 'ASC' # String | Optional createdAt sort direction ASC or DESC
}

begin
  #Get all Templates in paginated format
  result = api_instance.get_all_templates(opts)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling TemplateControllerApi->get_all_templates: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Integer**| Optional page index in inbox list pagination | [optional] [default to 0]
 **size** | **Integer**| Optional page size in inbox list pagination | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]

### Return type

[**PageTemplateProjection**](PageTemplateProjection.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_template

> TemplateDto get_template(template_id)

Get Template

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

api_instance = MailSlurpClient::TemplateControllerApi.new
template_id = 'template_id_example' # String | TemplateId

begin
  #Get Template
  result = api_instance.get_template(template_id)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling TemplateControllerApi->get_template: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template_id** | [**String**](.md)| TemplateId | 

### Return type

[**TemplateDto**](TemplateDto.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_templates

> Array&lt;TemplateProjection&gt; get_templates

Get all Templates

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

api_instance = MailSlurpClient::TemplateControllerApi.new

begin
  #Get all Templates
  result = api_instance.get_templates
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling TemplateControllerApi->get_templates: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;TemplateProjection&gt;**](TemplateProjection.md)

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

