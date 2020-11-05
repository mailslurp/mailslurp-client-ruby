# MailSlurpClient::UpdateInboxOptions

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**description** | **String** | Optional description of an inbox for labelling purposes | [optional] 
**expires_at** | **DateTime** | When, if ever, will the inbox expire and be deleted. If null then this inbox is permanent and the emails in it won&#39;t be deleted. Timestamp passed as string. | [optional] 
**favourite** | **Boolean** | Is the inbox favourited | [optional] 
**name** | **String** | Optional name of the inbox. Displayed in the dashboard for easier search | [optional] 
**tags** | **Array&lt;String&gt;** | Tags that inbox has been tagged with | [optional] 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::UpdateInboxOptions.new(description: null,
                                 expires_at: null,
                                 favourite: null,
                                 name: null,
                                 tags: null)
```

