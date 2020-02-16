# MailSlurpClient::SendEmailOptions

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**attachments** | **Array&lt;String&gt;** | Optional list of attachment IDs to send with this email. You must first upload each attachment separately in order to obtain attachment IDs | [optional] 
**bcc** | **Array&lt;String&gt;** | Optional list of bcc destination email addresses | [optional] 
**body** | **String** | Contents of email. If body contains HTML then set &#x60;isHTML&#x60; to true. You can use moustache template syntax in the body in conjunction with &#x60;toGroup&#x60; contact variables or &#x60;templateVariables&#x60; data. | [optional] 
**cc** | **Array&lt;String&gt;** | Optional list of cc destination email addresses | [optional] 
**charset** | **String** | Optional charset | [optional] 
**from** | **String** | Optional from address. If not set source inbox address will be used | [optional] 
**is_html** | **Boolean** | Optional HTML flag. If true the &#x60;content-type&#x60; of the email will be &#x60;text/html&#x60; | [optional] 
**reply_to** | **String** | Optional replyTo header | [optional] 
**subject** | **String** | Optional email subject line | [optional] 
**template** | **String** | Optional template ID to use for body. Will override body if provided | [optional] 
**template_variables** | [**Object**](.md) | Optional map of template variables. Will replace moustache syntax variables in subject and body or template with the associated values | [optional] 
**to** | **Array&lt;String&gt;** | List of destination email addresses. Even single recipients must be in array form. Max 100 recipients. | [optional] 
**to_contacts** | **Array&lt;String&gt;** | Optional list of contact IDs to send email to | [optional] 
**to_group** | **String** | Optional contact group ID to send email to | [optional] 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::SendEmailOptions.new(attachments: null,
                                 bcc: null,
                                 body: null,
                                 cc: null,
                                 charset: null,
                                 from: null,
                                 is_html: null,
                                 reply_to: null,
                                 subject: null,
                                 template: null,
                                 template_variables: null,
                                 to: null,
                                 to_contacts: null,
                                 to_group: null)
```


