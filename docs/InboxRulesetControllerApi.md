# MailSlurpClient::InboxRulesetControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_new_inbox_ruleset**](InboxRulesetControllerApi#create_new_inbox_ruleset) | **POST** /rulesets | Create an inbox ruleset
[**delete_inbox_ruleset**](InboxRulesetControllerApi#delete_inbox_ruleset) | **DELETE** /rulesets/{id} | Delete an inbox ruleset
[**delete_inbox_rulesets**](InboxRulesetControllerApi#delete_inbox_rulesets) | **DELETE** /rulesets | Delete inbox rulesets
[**get_inbox_ruleset**](InboxRulesetControllerApi#get_inbox_ruleset) | **GET** /rulesets/{id} | Get an inbox ruleset
[**get_inbox_rulesets**](InboxRulesetControllerApi#get_inbox_rulesets) | **GET** /rulesets | List inbox rulesets



## create_new_inbox_ruleset

> InboxRulesetDto create_new_inbox_ruleset(create_inbox_ruleset_options, opts)

Create an inbox ruleset

Create a new inbox rule for forwarding, blocking, and allowing emails when sending and receiving

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

api_instance = MailSlurpClient::InboxRulesetControllerApi.new
create_inbox_ruleset_options = MailSlurpClient::CreateInboxRulesetOptions.new # CreateInboxRulesetOptions | createInboxRulesetOptions
opts = {
  inbox_id: 'inbox_id_example' # String | Inbox id to attach ruleset to
}

begin
  #Create an inbox ruleset
  result = api_instance.create_new_inbox_ruleset(create_inbox_ruleset_options, opts)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling InboxRulesetControllerApi->create_new_inbox_ruleset: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_inbox_ruleset_options** | [**CreateInboxRulesetOptions**](CreateInboxRulesetOptions)| createInboxRulesetOptions | 
 **inbox_id** | [**String**]()| Inbox id to attach ruleset to | [optional] 

### Return type

[**InboxRulesetDto**](InboxRulesetDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_inbox_ruleset

> delete_inbox_ruleset(id)

Delete an inbox ruleset

Delete inbox ruleset

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

api_instance = MailSlurpClient::InboxRulesetControllerApi.new
id = 'id_example' # String | ID of inbox ruleset

begin
  #Delete an inbox ruleset
  api_instance.delete_inbox_ruleset(id)
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling InboxRulesetControllerApi->delete_inbox_ruleset: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**]()| ID of inbox ruleset | 

### Return type

nil (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## delete_inbox_rulesets

> delete_inbox_rulesets(opts)

Delete inbox rulesets

Delete inbox rulesets. Accepts optional inboxId filter.

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

api_instance = MailSlurpClient::InboxRulesetControllerApi.new
opts = {
  inbox_id: 'inbox_id_example' # String | Optional inbox id to attach ruleset to
}

begin
  #Delete inbox rulesets
  api_instance.delete_inbox_rulesets(opts)
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling InboxRulesetControllerApi->delete_inbox_rulesets: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**String**]()| Optional inbox id to attach ruleset to | [optional] 

### Return type

nil (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_inbox_ruleset

> InboxRulesetDto get_inbox_ruleset(id)

Get an inbox ruleset

Get inbox ruleset

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

api_instance = MailSlurpClient::InboxRulesetControllerApi.new
id = 'id_example' # String | ID of inbox ruleset

begin
  #Get an inbox ruleset
  result = api_instance.get_inbox_ruleset(id)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling InboxRulesetControllerApi->get_inbox_ruleset: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**]()| ID of inbox ruleset | 

### Return type

[**InboxRulesetDto**](InboxRulesetDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_inbox_rulesets

> PageInboxRulesetProjection get_inbox_rulesets(opts)

List inbox rulesets

List all rulesets attached to an inbox

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

api_instance = MailSlurpClient::InboxRulesetControllerApi.new
opts = {
  inbox_id: 'inbox_id_example', # String | Optional inbox id to get rulesets from
  page: 0, # Integer | Optional page index in inbox ruleset list pagination
  size: 20, # Integer | Optional page size in inbox ruleset list pagination
  sort: 'ASC' # String | Optional createdAt sort direction ASC or DESC
}

begin
  #List inbox rulesets
  result = api_instance.get_inbox_rulesets(opts)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling InboxRulesetControllerApi->get_inbox_rulesets: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox_id** | [**String**]()| Optional inbox id to get rulesets from | [optional] 
 **page** | **Integer**| Optional page index in inbox ruleset list pagination | [optional] [default to 0]
 **size** | **Integer**| Optional page size in inbox ruleset list pagination | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]

### Return type

[**PageInboxRulesetProjection**](PageInboxRulesetProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

