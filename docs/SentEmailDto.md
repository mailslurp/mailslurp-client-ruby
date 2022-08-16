# MailSlurpClient::SentEmailDto

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | ID of sent email | 
**user_id** | **String** | User ID | 
**inbox_id** | **String** | Inbox ID email was sent from | 
**domain_id** | **String** | Domain ID | [optional] 
**to** | **Array&lt;String&gt;** | Recipients email was sent to | [optional] 
**from** | **String** |  | [optional] 
**reply_to** | **String** |  | [optional] 
**cc** | **Array&lt;String&gt;** |  | [optional] 
**bcc** | **Array&lt;String&gt;** |  | [optional] 
**attachments** | **Array&lt;String&gt;** | Array of IDs of attachments that were sent with this email | [optional] 
**subject** | **String** |  | [optional] 
**body_md5_hash** | **String** | MD5 Hash | [optional] 
**body** | **String** |  | [optional] 
**to_contacts** | **Array&lt;String&gt;** |  | [optional] 
**to_group** | **String** |  | [optional] 
**charset** | **String** |  | [optional] 
**is_html** | **Boolean** |  | [optional] 
**sent_at** | **DateTime** |  | 
**pixel_ids** | **Array&lt;String&gt;** |  | [optional] 
**message_id** | **String** |  | [optional] 
**message_ids** | **Array&lt;String&gt;** |  | [optional] 
**virtual_send** | **Boolean** |  | [optional] 
**template_id** | **String** |  | [optional] 
**template_variables** | **Hash&lt;String, Object&gt;** |  | [optional] 
**html** | **Boolean** |  | [optional] 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::SentEmailDto.new(id: null,
                                 user_id: null,
                                 inbox_id: null,
                                 domain_id: null,
                                 to: null,
                                 from: null,
                                 reply_to: null,
                                 cc: null,
                                 bcc: null,
                                 attachments: null,
                                 subject: null,
                                 body_md5_hash: null,
                                 body: null,
                                 to_contacts: null,
                                 to_group: null,
                                 charset: null,
                                 is_html: null,
                                 sent_at: null,
                                 pixel_ids: null,
                                 message_id: null,
                                 message_ids: null,
                                 virtual_send: null,
                                 template_id: null,
                                 template_variables: null,
                                 html: null)
```


