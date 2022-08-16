# MailSlurpClient::DomainNameRecord

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**record_type** | **String** | Domain Name Server Record Types | 
**name** | **String** |  | 
**record_entries** | **Array&lt;String&gt;** |  | 
**ttl** | **Integer** |  | 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::DomainNameRecord.new(record_type: null,
                                 name: null,
                                 record_entries: null,
                                 ttl: null)
```


