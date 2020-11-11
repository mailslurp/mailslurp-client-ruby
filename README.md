---
label: Ruby
title: Ruby
icon: devicon-ruby-plain
featured: true
meta:
  - name: description
    content: Send and receive emails in Ruby, Rails and more. Ruby test email API.
---

# MailSlurp Ruby Client

> Create real email addresses on demand. Send and receive emails and attachments from code and tests using Ruby.

MailSlurp is an email API service that lets you create real email addresses in code. You can then send and receive emails and attachments in Ruby applications and tests.

## Quick links

- [Method Documentation](./docs)
- [Gem Package](https://rubygems.org/gems/mailslurp_client)
- [Github Source](https://github.com/mailslurp/mailslurp-client-ruby)

## Get started

::: tip
This section describes how to get up and running with the Ruby client.

See the [examples page](https://www.mailslurp.com/examples/) for more examples and use with common frameworks such as Rails and RSpec.

See the method documentation for a [list of all functions](https://github.com/mailslurp/mailslurp-client-ruby)
:::

### Create API Key

First you'll need an API Key. [Create a free account](https://app.mailslurp.com) and copy the key from your dashboard.

### Install Gem

```bash
gem install mailslurp_client
```

Or in your `Gemfile`:

```ruby
gem 'mailslurp_client', '~> 7.0', '>= 7.0.8'
```

### Configure the client

```ruby
require 'mailslurp_client'

# configure the mailslurp client with an API Key
MailSlurpClient.configure do |config|
    config.api_key['x-api-key'] = "YOUR_API_KEY_HERE"
end
```

## Common uses

MailSlurp can be used for anything email related: sending and receiving emails, creating email addresses, or testing email processes.

Here are some common uses:

### Create inboxes

To use MailSlurp you need to create inboxes. These are email accounts that have an ID and a real email address.

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

### Send emails

You can send HTML emails easily with the inbox controller. First create an inbox then use its ID with the `send_email` method.
To send attachments see the [Method Documentation](./docs).

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

### Receive emails

You can use MailSlurp to wait for at least 1 unread email in an inbox and return it.
If a timeout is exceeded it will throw an error instead:

```ruby
waitfor_controller = MailSlurpClient::WaitForControllerApi.new
email = waitfor_controller.wait_for_latest_email({ inbox_id: inbox.id, unread_only: true })

# verify email contents
expect(email.subject).to include("Test")
expect(email.body).to include("Your email body")
```

## SDK Documentation

See the [examples page](https://www.mailslurp.com/examples/) or the full [Method Documentation](./docs) on Github.
