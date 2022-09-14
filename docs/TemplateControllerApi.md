# MailSlurpClient::TemplateControllerApi

All URIs are relative to *https://ruby.api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_template**](TemplateControllerApi#create_template) | **POST** /templates | Create a Template
[**delete_template**](TemplateControllerApi#delete_template) | **DELETE** /templates/{templateId} | Delete email template
[**get_all_templates**](TemplateControllerApi#get_all_templates) | **GET** /templates/paginated | List templates
[**get_template**](TemplateControllerApi#get_template) | **GET** /templates/{templateId} | Get template
[**get_template_preview_html**](TemplateControllerApi#get_template_preview_html) | **GET** /templates/{templateId}/preview/html | Get template preview HTML
[**get_template_preview_json**](TemplateControllerApi#get_template_preview_json) | **GET** /templates/{templateId}/preview/json | Get template preview Json
[**get_templates**](TemplateControllerApi#get_templates) | **GET** /templates | List templates
[**update_template**](TemplateControllerApi#update_template) | **PUT** /templates/{templateId} | Update template



## create_template

> TemplateDto create_template(create_template_options)

Create a Template

Create an email template with variables for use with templated transactional emails.

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
create_template_options = MailSlurpClient::CreateTemplateOptions.new # CreateTemplateOptions | 

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
 **create_template_options** | [**CreateTemplateOptions**](CreateTemplateOptions)|  | 

### Return type

[**TemplateDto**](TemplateDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*


## delete_template

> delete_template(template_id)

Delete email template

Delete template

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
template_id = 'template_id_example' # String | Template ID

begin
  #Delete email template
  api_instance.delete_template(template_id)
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling TemplateControllerApi->delete_template: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template_id** | [**String**]()| Template ID | 

### Return type

nil (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_all_templates

> PageTemplateProjection get_all_templates(opts)

List templates

Get all templates in paginated format

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
  page: 0, # Integer | Optional page index in list pagination
  size: 20, # Integer | Optional page size in list pagination
  sort: 'ASC', # String | Optional createdAt sort direction ASC or DESC
  since: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Filter by created at after the given timestamp
  before: DateTime.parse('2013-10-20T19:20:30+01:00') # DateTime | Filter by created at before the given timestamp
}

begin
  #List templates
  result = api_instance.get_all_templates(opts)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling TemplateControllerApi->get_all_templates: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Integer**| Optional page index in list pagination | [optional] [default to 0]
 **size** | **Integer**| Optional page size in list pagination | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]
 **since** | **DateTime**| Filter by created at after the given timestamp | [optional] 
 **before** | **DateTime**| Filter by created at before the given timestamp | [optional] 

### Return type

[**PageTemplateProjection**](PageTemplateProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## get_template

> TemplateDto get_template(template_id)

Get template

Get email template

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
template_id = 'template_id_example' # String | Template ID

begin
  #Get template
  result = api_instance.get_template(template_id)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling TemplateControllerApi->get_template: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template_id** | [**String**]()| Template ID | 

### Return type

[**TemplateDto**](TemplateDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## get_template_preview_html

> String get_template_preview_html(template_id)

Get template preview HTML

Get email template preview with passed template variables in HTML format for browsers. Pass template variables as query params.

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
template_id = 'template_id_example' # String | Template ID

begin
  #Get template preview HTML
  result = api_instance.get_template_preview_html(template_id)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling TemplateControllerApi->get_template_preview_html: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template_id** | [**String**]()| Template ID | 

### Return type

**String**

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/html;charset=utf-8, text/html


## get_template_preview_json

> TemplatePreview get_template_preview_json(template_id)

Get template preview Json

Get email template preview with passed template variables in JSON format. Pass template variables as query params.

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
template_id = 'template_id_example' # String | Template ID

begin
  #Get template preview Json
  result = api_instance.get_template_preview_json(template_id)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling TemplateControllerApi->get_template_preview_json: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template_id** | [**String**]()| Template ID | 

### Return type

[**TemplatePreview**](TemplatePreview)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## get_templates

> Array&lt;TemplateProjection&gt; get_templates

List templates

Get all templates

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
  #List templates
  result = api_instance.get_templates
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling TemplateControllerApi->get_templates: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;TemplateProjection&gt;**](TemplateProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## update_template

> TemplateDto update_template(template_id, create_template_options)

Update template

Update email template

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
template_id = 'template_id_example' # String | Template ID
create_template_options = MailSlurpClient::CreateTemplateOptions.new # CreateTemplateOptions | 

begin
  #Update template
  result = api_instance.update_template(template_id, create_template_options)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling TemplateControllerApi->update_template: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template_id** | [**String**]()| Template ID | 
 **create_template_options** | [**CreateTemplateOptions**](CreateTemplateOptions)|  | 

### Return type

[**TemplateDto**](TemplateDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*

