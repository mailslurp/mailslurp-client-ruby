# MailSlurpClient::SendEmailOptions

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**attachments** | **Array&lt;String&gt;** | Optional list of attachment IDs to send with this email. You must first upload each attachment separately in order to obtain attachment IDs. This way you can reuse attachments with different emails once uploaded. | [optional] 
**bcc** | **Array&lt;String&gt;** | Optional list of bcc destination email addresses | [optional] 
**body** | **String** | Optional contents of email. If body contains HTML then set &#x60;isHTML&#x60; to true to ensure that email clients render it correctly. You can use moustache template syntax in the email body in conjunction with &#x60;toGroup&#x60; contact variables or &#x60;templateVariables&#x60; data. If you need more templating control consider creating a template and using the &#x60;template&#x60; property instead of the body. | [optional] 
**cc** | **Array&lt;String&gt;** | Optional list of cc destination email addresses | [optional] 
**charset** | **String** | Optional charset | [optional] 
**from** | **String** | Optional from address. If not set the source inbox address will be used for this field. Beware of potential spam penalties when setting this field to an address not used by the inbox. For custom email addresses use a custom domain. | [optional] 
**is_html** | **Boolean** | Optional HTML flag. If true the &#x60;content-type&#x60; of the email will be &#x60;text/html&#x60;. Set to true when sending HTML to ensure proper rending on email clients | [optional] 
**reply_to** | **String** | Optional replyTo header | [optional] 
**send_strategy** | **String** | Optional strategy to use when sending the email | [optional] 
**subject** | **String** | Optional email subject line | [optional] 
**template** | **String** | Optional template ID to use for body. Will override body if provided. When using a template make sure you pass the corresponding map of &#x60;templateVariables&#x60;. You can find which variables are needed by fetching the template itself or viewing it in the dashboard. | [optional] 
**template_variables** | [**Object**](.md) | Optional map of template variables. Will replace moustache syntax variables in subject and body or template with the associated values if found. | [optional] 
**to** | **Array&lt;String&gt;** | List of destination email addresses. Even single recipients must be in array form. Maximum recipients per email depends on your plan. If you need to send many emails try using contacts or contact groups or use a non standard sendStrategy to ensure that spam filters are not triggered (many recipients in one email can affect your spam rating). | [optional] 
**to_contacts** | **Array&lt;String&gt;** | Optional list of contact IDs to send email to. Manage your contacts via the API or dashboard. When contacts are used the email is sent to each contact separately so they will not see other recipients. | [optional] 
**to_group** | **String** | Optional contact group ID to send email to. You can create contacts and contact groups in the API or dashboard and use them for email campaigns. When contact groups are used the email is sent to each contact separately so they will not see other recipients | [optional] 

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
                                 send_strategy: null,
                                 subject: null,
                                 template: null,
                                 template_variables: null,
                                 to: null,
                                 to_contacts: null,
                                 to_group: null)
```

