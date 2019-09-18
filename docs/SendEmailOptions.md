# MailSlurpClient::SendEmailOptions

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**attachments** | **Array&lt;String&gt;** | Optional list of attachment IDs to send with this email. You must first upload each attachment separately in order to obtain attachment IDs | [optional] 
**bcc** | **Array&lt;String&gt;** | Optional list of bcc destination email addresses | [optional] 
**body** | **String** | Contents of email. If HTML set isHTML to true. You can use moustache templates here if you provide a templateVariables option | [optional] 
**cc** | **Array&lt;String&gt;** | Optional list of cc destination email addresses | [optional] 
**charset** | **String** | Optional charset | [optional] 
**from** | **String** | Optional from address. If not set source inbox address will be used | [optional] 
**html** | **BOOLEAN** |  | [optional] 
**reply_to** | **String** | Optional replyTo header | [optional] 
**subject** | **String** | Optional email subject line | [optional] 
**template_variables** | [**Object**](.md) | Optional map of template variables. Will replace moustache syntax variables in subject or body with the associated values | [optional] 
**to** | **Array&lt;String&gt;** | List of destination email addresses. Even single recipients must be in array form. | 


