# MailSlurpClient::FormControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**submit_form**](FormControllerApi.md#submit_form) | **POST** /forms | Submit a form to be parsed and sent as an email to an address determined by the form fields



## submit_form

> String submit_form(opts)

Submit a form to be parsed and sent as an email to an address determined by the form fields

This endpoint allows you to submit HTML forms and receive the field values and files via email.   #### Parameters The endpoint looks for special meta parameters in the form fields OR in the URL request parameters. The meta parameters can be used to specify the behaviour of the email.   You must provide at-least a `_to` email address to tell the endpoint where the form should be emailed. These can be submitted as hidden HTML input fields with the corresponding `name` attributes or as URL query parameters such as `?_to=test@example.com`  The endpoint takes all other form fields that are named and includes them in the message body of the email. Files are sent as attachments.  #### Submitting This endpoint accepts form submission via POST method. It accepts `application/x-www-form-urlencoded`, and `multipart/form-data` content-types.  #### HTML Example ```html <form    action=\"https://api.mailslurp.com/forms\"   method=\"post\" >   <input name=\"_to\" type=\"hidden\" value=\"test@example.com\"/>   <textarea name=\"feedback\"></textarea>   <button type=\"submit\">Submit</button> </form> ```  #### URL Example ```html <form    action=\"https://api.mailslurp.com/forms?_to=test@example.com\"   method=\"post\" >   <textarea name=\"feedback\"></textarea>   <button type=\"submit\">Submit</button> </form> ```    The email address is specified by a `_to` field OR is extracted from an email alias specified by a `_toAlias` field (see the alias controller for more information).  Endpoint accepts .  You can specify a content type in HTML forms using the `enctype` attribute, for instance: `<form enctype=\"multipart/form-data\">`.  

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

api_instance = MailSlurpClient::FormControllerApi.new
opts = {
  _email_address: '_email_address_example', # String | Email address of the submitting user. Include this if you wish to record the submitters email address and reply to it later.
  _redirect_to: '_redirect_to_example', # String | Optional URL to redirect form submitter to after submission. If not present user will see a success message.
  _spam_check: '_spam_check_example', # String | Optional but recommended field that catches spammers out. Include as a hidden form field but LEAVE EMPTY. Spam-bots will usually fill every field. If the _spamCheck field is filled the form submission will be ignored.
  _subject: '_subject_example', # String | Optional subject of the email that will be sent.
  _success_message: '_success_message_example', # String | Optional success message to display if no _redirectTo present.
  _to: '_to_example', # String | The email address that submitted form should be sent to.
  other_parameters: 'other_parameters_example' # String | All other parameters or fields will be accepted and attached to the sent email. This includes files and any HTML form field with a name. These fields will become the body of the email that is sent.
}

begin
  #Submit a form to be parsed and sent as an email to an address determined by the form fields
  result = api_instance.submit_form(opts)
  p result
rescue MailSlurpClient::ApiError => e
  puts "Exception when calling FormControllerApi->submit_form: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_email_address** | **String**| Email address of the submitting user. Include this if you wish to record the submitters email address and reply to it later. | [optional] 
 **_redirect_to** | **String**| Optional URL to redirect form submitter to after submission. If not present user will see a success message. | [optional] 
 **_spam_check** | **String**| Optional but recommended field that catches spammers out. Include as a hidden form field but LEAVE EMPTY. Spam-bots will usually fill every field. If the _spamCheck field is filled the form submission will be ignored. | [optional] 
 **_subject** | **String**| Optional subject of the email that will be sent. | [optional] 
 **_success_message** | **String**| Optional success message to display if no _redirectTo present. | [optional] 
 **_to** | **String**| The email address that submitted form should be sent to. | [optional] 
 **other_parameters** | **String**| All other parameters or fields will be accepted and attached to the sent email. This includes files and any HTML form field with a name. These fields will become the body of the email that is sent. | [optional] 

### Return type

**String**

### Authorization

[API_KEY](../README.md#API_KEY)

### HTTP request headers

- **Content-Type**: multipart/form-data, application/x-www-form-urlencoded
- **Accept**: application/json

