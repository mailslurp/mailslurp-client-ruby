# MailSlurpClient::SendWithQueueResult

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**user_id** | **String** |  | 
**subject** | **String** |  | [optional] 
**inbox_id** | **String** |  | [optional] 
**header_id** | **String** |  | 
**delivered** | **Boolean** |  | 
**exception_name** | **String** |  | [optional] 
**message** | **String** |  | [optional] 
**created_at** | **DateTime** |  | 
**updated_at** | **DateTime** |  | 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::SendWithQueueResult.new(id: null,
                                 user_id: null,
                                 subject: null,
                                 inbox_id: null,
                                 header_id: null,
                                 delivered: null,
                                 exception_name: null,
                                 message: null,
                                 created_at: null,
                                 updated_at: null)
```


