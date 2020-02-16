# MailSlurpClient::InboxProjection

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**created_at** | **DateTime** |  | 
**email_address** | **String** |  | [optional] 
**expires_at** | **DateTime** |  | [optional] 
**favourite** | **Boolean** |  | [optional] 
**id** | **String** |  | 
**name** | **String** |  | [optional] 
**tags** | **Array&lt;String&gt;** |  | [optional] 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::InboxProjection.new(created_at: null,
                                 email_address: null,
                                 expires_at: null,
                                 favourite: null,
                                 id: null,
                                 name: null,
                                 tags: null)
```

