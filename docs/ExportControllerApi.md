# MailSlurpClient::ExportControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**export_entities**](ExportControllerApi#export_entities) | **GET** /export | Export inboxes link callable via browser
[**get_export_link**](ExportControllerApi#get_export_link) | **POST** /export | Get export link



## export_entities

> String export_entities(api_key, export_type, output_format, opts)

Export inboxes link callable via browser

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

api_instance = MailSlurpClient::ExportControllerApi.new
api_key = 'api_key_example' # String | apiKey
export_type = 'export_type_example' # String | exportType
output_format = 'output_format_example' # String | outputFormat
opts = {
  created_earliest_time: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | createdEarliestTime
  created_oldest_time: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | createdOldestTime
  exclude_previously_exported: true, # Boolean | excludePreviouslyExported
  filter: 'filter_example', # String | filter
  list_separator_token: 'list_separator_token_example' # String | listSeparatorToken
}

begin
  #Export inboxes link callable via browser
  result = api_instance.export_entities(api_key, export_type, output_format, opts)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling ExportControllerApi->export_entities: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api_key** | **String**| apiKey | 
 **export_type** | **String**| exportType | 
 **output_format** | **String**| outputFormat | 
 **created_earliest_time** | **DateTime**| createdEarliestTime | [optional] 
 **created_oldest_time** | **DateTime**| createdOldestTime | [optional] 
 **exclude_previously_exported** | **Boolean**| excludePreviouslyExported | [optional] 
 **filter** | **String**| filter | [optional] 
 **list_separator_token** | **String**| listSeparatorToken | [optional] 

### Return type

**String**

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_export_link

> ExportLink get_export_link(export_type, export_options, opts)

Get export link

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

api_instance = MailSlurpClient::ExportControllerApi.new
export_type = 'export_type_example' # String | exportType
export_options = MailSlurpClient::ExportOptions.new # ExportOptions | exportOptions
opts = {
  api_key: 'api_key_example' # String | apiKey
}

begin
  #Get export link
  result = api_instance.get_export_link(export_type, export_options, opts)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling ExportControllerApi->get_export_link: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **export_type** | **String**| exportType | 
 **export_options** | [**ExportOptions**](ExportOptions)| exportOptions | 
 **api_key** | **String**| apiKey | [optional] 

### Return type

[**ExportLink**](ExportLink)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

