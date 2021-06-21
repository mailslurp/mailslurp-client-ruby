# MailSlurpClient::InboxProjection

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**created_at** | **DateTime** |  | 
**email_address** | **String** |  | [optional] 
**favourite** | **Boolean** |  | 
**id** | **String** |  | 
**inbox_type** | **String** |  | [optional] 
**name** | **String** |  | [optional] 
**tags** | **Array&lt;String&gt;** |  | [optional] 
**team_access** | **Boolean** |  | 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::InboxProjection.new(created_at: null,
                                 email_address: null,
                                 favourite: null,
                                 id: null,
                                 inbox_type: null,
                                 name: null,
                                 tags: null,
                                 team_access: null)
```


