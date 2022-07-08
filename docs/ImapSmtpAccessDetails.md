# MailSlurpClient::ImapSmtpAccessDetails

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**smtp_server_host** | **String** | SMTP server host domain | 
**smtp_server_port** | **Integer** | SMTP server host port | 
**smtp_username** | **String** | SMTP username for login | 
**smtp_password** | **String** | SMTP  for login | 
**imap_server_host** | **String** | IMAP server host domain | 
**imap_server_port** | **Integer** | IMAP server host port | 
**imap_username** | **String** | IMAP username for login | 
**imap_password** | **String** | IMAP password for login | 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::ImapSmtpAccessDetails.new(smtp_server_host: null,
                                 smtp_server_port: null,
                                 smtp_username: null,
                                 smtp_password: null,
                                 imap_server_host: null,
                                 imap_server_port: null,
                                 imap_username: null,
                                 imap_password: null)
```


