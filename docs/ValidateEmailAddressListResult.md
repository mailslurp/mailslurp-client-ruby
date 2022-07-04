# MailSlurpClient::ValidateEmailAddressListResult

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**valid_email_addresses** | **Array&lt;String&gt;** |  | 
**invalid_email_addresses** | **Array&lt;String&gt;** |  | 
**result_map_email_address_is_valid** | **Hash&lt;String, Boolean&gt;** |  | 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::ValidateEmailAddressListResult.new(valid_email_addresses: null,
                                 invalid_email_addresses: null,
                                 result_map_email_address_is_valid: null)
```


