# MailSlurpClient::Inbox

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**created** | **DateTime** |  | [optional] 
**created_at** | **DateTime** |  | 
**description** | **String** | Description of inbox | [optional] 
**email_address** | **String** | The inbox&#39;s email address. Send an email to this address and the inbox will receive it | [optional] 
**expires_at** | **DateTime** | When if ever will the inbox expire | [optional] 
**favourite** | **Boolean** | Is the inbox favourited | [optional] 
**id** | **String** |  | 
**name** | **String** | Name of inbox | [optional] 
**tags** | **Array&lt;String&gt;** | Tags that inbox has been tagged with | [optional] 
**user_id** | **String** |  | [optional] 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::Inbox.new(created: null,
                                 created_at: null,
                                 description: null,
                                 email_address: null,
                                 expires_at: null,
                                 favourite: null,
                                 id: null,
                                 name: null,
                                 tags: null,
                                 user_id: null)
```


