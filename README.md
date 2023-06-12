# MailSlurp Ruby Client

> Create real email addresses on demand. Send and receive emails and attachments from code and tests using Ruby.

MailSlurp is an email API service that lets you create real email addresses in code. You can then send and receive emails and attachments in Ruby applications and tests.

## Quick links

- [API documentation](https://docs.mailslurp.com/api/)
- [Method Documentation](https://ruby.mailslurp.com/)
- [Gem Package](https://rubygems.org/gems/mailslurp_client)
- [Github Source](https://github.com/mailslurp/mailslurp-client-ruby)
- [SMTP access details](https://www.mailslurp.com/guides/smtp-imap/)
- [Send email in Ruby with SMTP](https://www.mailslurp.com/smtp/ruby-send-email-smtp/)

### Common controllers

- [Email controller](https://ruby.mailslurp.com/MailSlurpClient/EmailControllerApi.html) send and receive emails
- [Inbox controller](https://ruby.mailslurp.com/MailSlurpClient/InboxControllerApi.html) create and manage email addresses
- [WaitFor controller](https://ruby.mailslurp.com/MailSlurpClient/WaitForControllerApi.html) wait for expected emails to arrive


### Example tutorials

## Get started

This section describes how to get up and running with the Ruby client.

See the [examples page](https://www.mailslurp.com/examples/) for more examples and use with common frameworks such as Rails and RSpec.

See the method documentation for a [list of all functions](https://ruby.mailslurp.com/)

### Create API Key

First you'll need an API Key. [Create a free account](https://app.mailslurp.com) and copy the key from your dashboard.

### Ruby requirements

The MailSlurp client requires Ruby 2.x or 3.x and the ruby-dev package. You most likely have these packages but if not: 

`sudo apt-get install ruby-dev`

### Install Gem

```bash
gem install mailslurp_client
```

Or in your `Gemfile`:

```ruby
gem 'mailslurp_client', '~> 8.3', '>= 8.3.0'
```

And then run bundler install:

```bash
gem install bundler
bundle install
```

#### Libcurl requirements

You may need to install `typhoeus` if you encounter libcurl errors.


### Configure the client

```ruby
require 'mailslurp_client'

# configure mailslurp client globally with API key (or pass each controller a client instance)
MailSlurpClient.configure do |config|
    config.api_key['x-api-key'] = "YOUR_API_KEY_HERE"
end
```

## Common uses

MailSlurp can be used for anything email related: sending and receiving emails, creating email addresses, or testing email processes.

Here are some common uses:

### Create inboxes

To use MailSlurp you need to create inboxes. These are email accounts that have an ID and a real email address. See methods on the [inbox controller](https://ruby.mailslurp.com/MailSlurpClient/InboxControllerApi.html) for more information.

```ruby
inbox_controller = MailSlurpClient::InboxControllerApi.new
inbox = inbox_controller.create_inbox
```

In a test:

```ruby
it 'can create email addresses' do
    inbox_controller = MailSlurpClient::InboxControllerApi.new
    inbox = inbox_controller.create_inbox

    expect(inbox.id).not_to be_nil
    expect(inbox.email_address).to include("mailslurp.com")
end
```

#### More options

The `create_inbox` method has some limitations in the Ruby client. To create inboxes with more options use the alternative
`create_inbox_with_options` method. (This uses a request body instead of query parameters.)

```ruby
it 'can an inbox with tags' do
    inbox_controller = MailSlurpClient::InboxControllerApi.new
    # create an inbox with tags
    inbox = inbox_controller.create_inbox_with_options({
      tags: ['t1','t2'],
      description: "test with tags",
      name: "test name"
    })

    # has tags
    expect(inbox.id).to be_truthy
    expect(inbox.description).to be_truthy
    expect(inbox.name).to be_truthy
    expect(inbox.tags).to include('t1')
    expect(inbox.tags).to include('t2')

    # can update tags
    inbox_updated = inbox_controller.update_inbox(inbox.id, {
      tags: ['newtag']
    })
    expect(inbox_updated.tags).to eq(['newtag'])
end
```

#### Inbox types

Inboxes can be either `SMTP` or `HTTP` type. Set the inbox type using the `inboxType` property. SMTP inboxes are handled by a custom mailserver and support a wide range of clients while HTTP inboxes use Amazon SES and don't support some older clients like Outlook. SMTP inboxes are recommended for public facing email addresses while HTTP inboxes are best for application testing. Please see the guide on [types of inboxes](https://www.mailslurp.com/guides/smtp-vs-http-email-inboxes/) for more information.


### Configure NET/SMTP access
SMTP type inboxes allow SMTP and IMAP access using unique host, port, password, and username. Use the `inbox_controller.get_imap_smtp_access` method to access SMTP credentials. Then configure `net/smtp` in Ruby to send email using SMTP.

```ruby
it 'can send email using SMTP' do
  inbox_controller = MailSlurpClient::InboxControllerApi.new

  # create two inboxes
  inbox1 = inbox_controller.create_inbox_with_options({ inboxType: 'SMTP_INBOX' })
  inbox2 = inbox_controller.create_inbox

  expect(inbox1.email_address).to include('@mailslurp.mx')

  # get smtp access for inbox
  smtp_access = inbox_controller.get_imap_smtp_access({ inbox_id: inbox1.id })

  # compose email
  message = <<~MESSAGE_END
    From: #{inbox1.email_address}
    To: #{inbox2.email_address}
    Subject: Test smtp email

    This is a test
  MESSAGE_END

  # configure SMTP with host port and "PLAIN" authentication
  Net::SMTP.start(smtp_access.smtp_server_host, smtp_access.smtp_server_port, 'greeting.your.domain',
                  smtp_access.smtp_username, smtp_access.smtp_password, :plain) do |smtp|
    # send email
    smtp.send_message message, inbox1.email_address, inbox2.email_address
  end

  # now confirm email was sent
  wait_for_controller = MailSlurpClient::WaitForControllerApi.new
  email = wait_for_controller.wait_for_latest_email({ inbox_id: inbox2.id })
  expect(email.subject).to include("Test smtp email")
end
```

### List inboxes

Inboxes you create can be listed in a paginated way using the [InboxController](https://ruby.mailslurp.com/MailSlurpClient/InboxControllerApi.html)).

```ruby
it 'can list inboxes' do
    inbox_controller = MailSlurpClient::InboxControllerApi.new
    paged_inboxes = inbox_controller.get_all_inboxes({ page: 0, size: 20 })

    # assert on pagination fields
    expect(paged_inboxes.content).not_to be_empty
    expect(paged_inboxes.number).to be(0)
    expect(paged_inboxes.size).to be(20)

    # can access inbox result
    expect(paged_inboxes.content[0].id).not_to be_empty
end
```


### Send emails

You can send HTML emails easily with the inbox controller. First create an inbox then use its ID with the `send_email` method.
To send attachments see the [Method Documentation](https://ruby.mailslurp.com/).

```ruby
# create an inbox
inbox_controller = MailSlurpClient::InboxControllerApi.new
inbox = inbox_controller.create_inbox

# send an email from the inbox
inbox_controller.send_email(inbox.id, {
    send_email_options: {
        to: ["test@example.org"],
        subject: "Test",
        isHTML: true,
        body: <<-HEREDOC
          <h1>Hello!</h1>
          <p>MailSlurp supports HTML</p>
        HEREDOC
    }
})
```

You can also use objects for most [method options](https://ruby.mailslurp.com/MailSlurpClient/SendEmailOptions.html):

```ruby
opts = {
  send_email_options: MailSlurpClient::SendEmailOptions.new(
    {
      to: [inbox_2.email_address],
      subject: 'Test email',
      from: inbox_1.email_address,
      body: 'Test email content',
      is_html: true,
      attachments: attachment_ids
    }
  )
}
inbox_controller.send_email(inbox_1.id, opts)
```

### Receive emails

To read already existing emails use the [Email Controller](https://ruby.mailslurp.com/MailSlurpClient/EmailControllerApi.html). To wait for expected emails to arrive use the [WaitFor Controller](https://ruby.mailslurp.com/MailSlurpClient/WaitForControllerApi.html).
You can use MailSlurp to wait for at least 1 unread email in an inbox and return it.
If a timeout is exceeded it will throw an error instead:

```ruby
waitfor_controller = MailSlurpClient::WaitForControllerApi.new
email = waitfor_controller.wait_for_latest_email({ inbox_id: inbox.id, unread_only: true, timeout: 30_000 })

# verify email contents
expect(email.subject).to include("Test")
expect(email.body).to include("Your email body")
```

### Extract email content

To parse an email and extract content use regex patterns like so:

```ruby
wait_controller = MailSlurpClient::WaitForControllerApi.new
email = wait_controller.wait_for_latest_email({ inbox_id: inbox.id, unread_only: true, timeout: 30_000 })

# assert the email is a confirmation 
expect(email.subject).to include("Please confirm your email address")

# extract a 6 digit code from the email body
match = email.body.match(/code is ([0-9]{6})/)
if match == nil then
  raise "Could not find match in body #{email.body}"
end 
code, * = match.captures
```

### Attachments

You can send attachments by first uploading files with the [AttachmentControllerApi](https://ruby.mailslurp.com/MailSlurpClient/AttachmentControllerApi.html) then using the returned attachment IDs in the send email method.

MailSlurp endpoints use base64 string encoding for upload and download files. To encode or decode strings in Ruby make sure you use the **strict** variables that avoid added newlines.

#### Upload and send

```ruby
# upload a file to mailslurp to use as attachment
# @return [Array<String>]
def upload_file
# read a file to upload
data = File.open(PATH_TO_ATTACHMENT).read

# encode the data as base64 string (must be strict to avoid ruby adding new line characters)
encoded = Base64.strict_encode64(data)

attachment_controller = MailSlurpClient::AttachmentControllerApi.new
upload_options = MailSlurpClient::UploadAttachmentOptions.new(
  {
    base64_contents: encoded,
    content_type: 'text/plain',
    filename: 'attachment.txt'
  }
)

# return list of attachment ids
attachment_controller.upload_attachment(upload_options)
end
```

To send attachments

```ruby
attachment_ids = upload_file

opts = {
  send_email_options: MailSlurpClient::SendEmailOptions.new(
    {
      to: [inbox_2.email_address],
      subject: 'Test email',
      from: inbox_1.email_address,
      body: 'Test email content',
      is_html: true,
      attachments: attachment_ids
    }
  )
}
inbox_controller.send_email(inbox_1.id, opts)
```

#### Download received attachments

```ruby
 # wait for the email to arrive (or fetch directly using email controller if you know it is there)
wait_opts = {
  inbox_id: inbox_2.id,
  timeout: 30_000,
  unread_only: true
}
email = wait_controller.wait_for_latest_email(wait_opts)

# find the attachments on the email object
expect(email.attachments.size).to be(1)

# download the attachment as base64 (easier than byte arrays for ruby client)
email_controller = MailSlurpClient::EmailControllerApi.new
downloaded_attachment = email_controller.download_attachment_base64(email.attachments[0], email.id)

# extract attachment content
expect(downloaded_attachment.content_type).to eq("text/plain")
expect(downloaded_attachment.size_bytes).to be_truthy
expect(downloaded_attachment.base64_file_contents).to be_truthy
```

## Examples

### Send email between two inboxes

It is common to use MailSlurp in test environments. Here is an example RSpec test:

```ruby

require 'mailslurp_client'

# read mailslurp api key from environment variables
API_KEY = ENV['API_KEY']

describe 'use MailSlurp ruby sdk to create email addresses then send and receive email' do
  before(:all) do
    expect(API_KEY).to be_truthy

    # configure mailslurp with API key
    MailSlurpClient.configure do |config|
      config.api_key['x-api-key'] = API_KEY
    end
  end

  it 'can an inbox with an email address' do
    # create a new email address
    inbox_controller = MailSlurpClient::InboxControllerApi.new
    inbox = inbox_controller.create_inbox

    # has a mailslurp email address
    expect(inbox.id).to be_truthy
    expect(inbox.email_address).to include('@mailslurp.com')
  end

  it 'can send and receive emails' do
    inbox_controller = MailSlurpClient::InboxControllerApi.new
    wait_controller  = MailSlurpClient::WaitForControllerApi.new

    # create two inboxes
    inbox_1 = inbox_controller.create_inbox
    inbox_2 = inbox_controller.create_inbox

    # send email from inbox 1 to inbox 2 (you can send emails to any address)
    # for send options see https://ruby.mailslurp.com/MailSlurpClient/SendEmailOptions.html
    opts = {
      send_email_options: MailSlurpClient::SendEmailOptions.new(
        {
          to: [inbox_2.email_address],
          subject: 'Test email',
          from: inbox_1.email_address,
          body: 'Test email content',
          is_html: true
        }
      )
    }
    inbox_controller.send_email(inbox_1.id, opts)

    expect(inbox_2.id).to be_truthy

    # now wait for the email to arrive
    wait_opts = {
      inbox_id: inbox_2.id,
      timeout: 30_000,
      unread_only: true
    }
    email = wait_controller.wait_for_latest_email(wait_opts)
    expect(email.body).to include('Test email content')
  end
end
```

## SDK Documentation

See the [examples page](https://www.mailslurp.com/examples/) or the full [Method Documentation](https://ruby.mailslurp.com/) on Github.
