# MailSlurpClient::ImapSmtpAccessDetails

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**secure_smtp_server_host** | **String** | Secure TLS SMTP server host domain | 
**secure_smtp_server_port** | **Integer** | Secure TLS SMTP server host port | 
**secure_smtp_username** | **String** | Secure TLS SMTP username for login | 
**secure_smtp_password** | **String** | Secure TLS SMTP password for login | 
**smtp_server_host** | **String** | SMTP server host domain | 
**smtp_server_port** | **Integer** | SMTP server host port | 
**smtp_username** | **String** | SMTP username for login | 
**smtp_password** | **String** | SMTP password for login | 
**imap_server_host** | **String** | IMAP server host domain | 
**imap_server_port** | **Integer** | IMAP server host port | 
**imap_username** | **String** | IMAP username for login | 
**imap_password** | **String** | IMAP password for login | 

## Code Sample

```ruby
require 'MailSlurpClient'

instance = MailSlurpClient::ImapSmtpAccessDetails.new(secure_smtp_server_host: null,
                                 secure_smtp_server_port: null,
                                 secure_smtp_username: null,
                                 secure_smtp_password: null,
                                 smtp_server_host: null,
                                 smtp_server_port: null,
                                 smtp_username: null,
                                 smtp_password: null,
                                 imap_server_host: null,
                                 imap_server_port: null,
                                 imap_username: null,
                                 imap_password: null)
```


