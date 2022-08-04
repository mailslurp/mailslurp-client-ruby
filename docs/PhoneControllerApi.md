# MailSlurpClient::PhoneControllerApi

All URIs are relative to *https://ruby.api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_emergency_address**](PhoneControllerApi#create_emergency_address) | **POST** /phone/emergency-addresses | 
[**delete_emergency_address**](PhoneControllerApi#delete_emergency_address) | **DELETE** /phone/emergency-addresses/{addressId} | 
[**delete_phone_number**](PhoneControllerApi#delete_phone_number) | **DELETE** /phone/numbers/{phoneNumberId} | 
[**get_emergency_address**](PhoneControllerApi#get_emergency_address) | **GET** /phone/emergency-addresses/{addressId} | 
[**get_emergency_addresses**](PhoneControllerApi#get_emergency_addresses) | **GET** /phone/emergency-addresses | 
[**get_phone_number**](PhoneControllerApi#get_phone_number) | **GET** /phone/numbers/{phoneNumberId} | 
[**get_phone_numbers**](PhoneControllerApi#get_phone_numbers) | **GET** /phone/numbers | 
[**get_phone_plans**](PhoneControllerApi#get_phone_plans) | **GET** /phone/plans | 
[**test_phone_number_send_sms**](PhoneControllerApi#test_phone_number_send_sms) | **POST** /phone/numbers/{phoneNumberId}/test | 



## create_emergency_address

> EmergencyAddress create_emergency_address(create_emergency_address_options)



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

api_instance = MailSlurpClient::PhoneControllerApi.new
create_emergency_address_options = MailSlurpClient::CreateEmergencyAddressOptions.new # CreateEmergencyAddressOptions | 

begin
  result = api_instance.create_emergency_address(create_emergency_address_options)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling PhoneControllerApi->create_emergency_address: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_emergency_address_options** | [**CreateEmergencyAddressOptions**](CreateEmergencyAddressOptions)|  | 

### Return type

[**EmergencyAddress**](EmergencyAddress)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*


## delete_emergency_address

> EmptyResponseDto delete_emergency_address(address_id)



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

api_instance = MailSlurpClient::PhoneControllerApi.new
address_id = 'address_id_example' # String | 

begin
  result = api_instance.delete_emergency_address(address_id)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling PhoneControllerApi->delete_emergency_address: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address_id** | [**String**]()|  | 

### Return type

[**EmptyResponseDto**](EmptyResponseDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## delete_phone_number

> delete_phone_number(phone_number_id)



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

api_instance = MailSlurpClient::PhoneControllerApi.new
phone_number_id = 'phone_number_id_example' # String | 

begin
  api_instance.delete_phone_number(phone_number_id)
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling PhoneControllerApi->delete_phone_number: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **phone_number_id** | [**String**]()|  | 

### Return type

nil (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_emergency_address

> EmergencyAddress get_emergency_address(address_id)



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

api_instance = MailSlurpClient::PhoneControllerApi.new
address_id = 'address_id_example' # String | 

begin
  result = api_instance.get_emergency_address(address_id)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling PhoneControllerApi->get_emergency_address: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address_id** | [**String**]()|  | 

### Return type

[**EmergencyAddress**](EmergencyAddress)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## get_emergency_addresses

> Array&lt;EmergencyAddressDto&gt; get_emergency_addresses



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

api_instance = MailSlurpClient::PhoneControllerApi.new

begin
  result = api_instance.get_emergency_addresses
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling PhoneControllerApi->get_emergency_addresses: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;EmergencyAddressDto&gt;**](EmergencyAddressDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## get_phone_number

> PhoneNumberDto get_phone_number(phone_number_id)



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

api_instance = MailSlurpClient::PhoneControllerApi.new
phone_number_id = 'phone_number_id_example' # String | 

begin
  result = api_instance.get_phone_number(phone_number_id)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling PhoneControllerApi->get_phone_number: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **phone_number_id** | [**String**]()|  | 

### Return type

[**PhoneNumberDto**](PhoneNumberDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## get_phone_numbers

> PagePhoneNumberProjection get_phone_numbers(opts)



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

api_instance = MailSlurpClient::PhoneControllerApi.new
opts = {
  phone_country: 'phone_country_example', # String | Optional phone country
  page: 0, # Integer | Optional page index for list pagination
  size: 20, # Integer | Optional page size for list pagination
  sort: 'ASC', # String | Optional createdAt sort direction ASC or DESC
  since: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Filter by created at after the given timestamp
  before: DateTime.parse('2013-10-20T19:20:30+01:00') # DateTime | Filter by created at before the given timestamp
}

begin
  result = api_instance.get_phone_numbers(opts)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling PhoneControllerApi->get_phone_numbers: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **phone_country** | **String**| Optional phone country | [optional] 
 **page** | **Integer**| Optional page index for list pagination | [optional] [default to 0]
 **size** | **Integer**| Optional page size for list pagination | [optional] [default to 20]
 **sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &#39;ASC&#39;]
 **since** | **DateTime**| Filter by created at after the given timestamp | [optional] 
 **before** | **DateTime**| Filter by created at before the given timestamp | [optional] 

### Return type

[**PagePhoneNumberProjection**](PagePhoneNumberProjection)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## get_phone_plans

> Array&lt;PhonePlanDto&gt; get_phone_plans



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

api_instance = MailSlurpClient::PhoneControllerApi.new

begin
  result = api_instance.get_phone_plans
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling PhoneControllerApi->get_phone_plans: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;PhonePlanDto&gt;**](PhonePlanDto)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## test_phone_number_send_sms

> test_phone_number_send_sms(phone_number_id, test_phone_number_options, opts)



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

api_instance = MailSlurpClient::PhoneControllerApi.new
phone_number_id = 'phone_number_id_example' # String | 
test_phone_number_options = MailSlurpClient::TestPhoneNumberOptions.new # TestPhoneNumberOptions | 
opts = {
  x_test_id: 'x_test_id_example' # String | 
}

begin
  api_instance.test_phone_number_send_sms(phone_number_id, test_phone_number_options, opts)
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling PhoneControllerApi->test_phone_number_send_sms: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **phone_number_id** | [**String**]()|  | 
 **test_phone_number_options** | [**TestPhoneNumberOptions**](TestPhoneNumberOptions)|  | 
 **x_test_id** | **String**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

