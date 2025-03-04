=begin
#MailSlurp API

#MailSlurp is an API for sending and receiving emails and SMS from dynamically allocated email addresses and phone numbers. It's designed for developers and QA teams to test applications, process inbound emails, send templated notifications, attachments, and more.  ## Resources  - [Homepage](https://www.mailslurp.com) - Get an [API KEY](https://app.mailslurp.com/sign-up/) - Generated [SDK Clients](https://docs.mailslurp.com/) - [Examples](https://github.com/mailslurp/examples) repository

The version of the OpenAPI document: 6.5.2
Contact: contact@mailslurp.dev
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'date'

module MailSlurpClient
  # Preview of an email message. For full message (including body and attachments) call the `getEmail` or other email endpoints with the provided email ID.
  class EmailPreview
    # ID of the email entity
    attr_accessor :id

    # ID of the inbox that received the email
    attr_accessor :inbox_id

    # ID of the domain that received the email
    attr_accessor :domain_id

    # The subject line of the email message as specified by SMTP subject header
    attr_accessor :subject

    # List of `To` recipient email addresses that the email was addressed to. See recipients object for names.
    attr_accessor :to

    # Who the email was sent from. An email address - see fromName for the sender name.
    attr_accessor :from

    # List of `BCC` recipients email addresses that the email was addressed to. See recipients object for names.
    attr_accessor :bcc

    # List of `CC` recipients email addresses that the email was addressed to. See recipients object for names.
    attr_accessor :cc

    # When was the email received by MailSlurp
    attr_accessor :created_at

    # Read flag. Has the email ever been viewed in the dashboard or fetched via the API with a hydrated body? If so the email is marked as read. Paginated results do not affect read status. Read status is different to email opened event as it depends on your own account accessing the email. Email opened is determined by tracking pixels sent to other uses if enable during sending. You can listened for both email read and email opened events using webhooks.
    attr_accessor :read

    # List of IDs of attachments found in the email. Use these IDs with the Inbox and Email Controllers to download attachments and attachment meta data such as filesize, name, extension.
    attr_accessor :attachments

    # MailSlurp thread ID for email chain that enables lookup for In-Reply-To and References fields.
    attr_accessor :thread_id

    # RFC 5322 Message-ID header value without angle brackets.
    attr_accessor :message_id

    # Parsed value of In-Reply-To header. A Message-ID in a thread.
    attr_accessor :in_reply_to

    attr_accessor :sender

    attr_accessor :recipients

    attr_accessor :favourite

    attr_accessor :body_part_content_types

    attr_accessor :plus_address

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'inbox_id' => :'inboxId',
        :'domain_id' => :'domainId',
        :'subject' => :'subject',
        :'to' => :'to',
        :'from' => :'from',
        :'bcc' => :'bcc',
        :'cc' => :'cc',
        :'created_at' => :'createdAt',
        :'read' => :'read',
        :'attachments' => :'attachments',
        :'thread_id' => :'threadId',
        :'message_id' => :'messageId',
        :'in_reply_to' => :'inReplyTo',
        :'sender' => :'sender',
        :'recipients' => :'recipients',
        :'favourite' => :'favourite',
        :'body_part_content_types' => :'bodyPartContentTypes',
        :'plus_address' => :'plusAddress'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'id' => :'String',
        :'inbox_id' => :'String',
        :'domain_id' => :'String',
        :'subject' => :'String',
        :'to' => :'Array<String>',
        :'from' => :'String',
        :'bcc' => :'Array<String>',
        :'cc' => :'Array<String>',
        :'created_at' => :'DateTime',
        :'read' => :'Boolean',
        :'attachments' => :'Array<String>',
        :'thread_id' => :'String',
        :'message_id' => :'String',
        :'in_reply_to' => :'String',
        :'sender' => :'Sender',
        :'recipients' => :'EmailRecipients',
        :'favourite' => :'Boolean',
        :'body_part_content_types' => :'Array<String>',
        :'plus_address' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'inbox_id',
        :'domain_id',
        :'subject',
        :'to',
        :'from',
        :'bcc',
        :'cc',
        :'attachments',
        :'thread_id',
        :'message_id',
        :'in_reply_to',
        :'sender',
        :'recipients',
        :'favourite',
        :'body_part_content_types',
        :'plus_address'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `MailSlurpClient::EmailPreview` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `MailSlurpClient::EmailPreview`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'inbox_id')
        self.inbox_id = attributes[:'inbox_id']
      end

      if attributes.key?(:'domain_id')
        self.domain_id = attributes[:'domain_id']
      end

      if attributes.key?(:'subject')
        self.subject = attributes[:'subject']
      end

      if attributes.key?(:'to')
        if (value = attributes[:'to']).is_a?(Array)
          self.to = value
        end
      end

      if attributes.key?(:'from')
        self.from = attributes[:'from']
      end

      if attributes.key?(:'bcc')
        if (value = attributes[:'bcc']).is_a?(Array)
          self.bcc = value
        end
      end

      if attributes.key?(:'cc')
        if (value = attributes[:'cc']).is_a?(Array)
          self.cc = value
        end
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.key?(:'read')
        self.read = attributes[:'read']
      end

      if attributes.key?(:'attachments')
        if (value = attributes[:'attachments']).is_a?(Array)
          self.attachments = value
        end
      end

      if attributes.key?(:'thread_id')
        self.thread_id = attributes[:'thread_id']
      end

      if attributes.key?(:'message_id')
        self.message_id = attributes[:'message_id']
      end

      if attributes.key?(:'in_reply_to')
        self.in_reply_to = attributes[:'in_reply_to']
      end

      if attributes.key?(:'sender')
        self.sender = attributes[:'sender']
      end

      if attributes.key?(:'recipients')
        self.recipients = attributes[:'recipients']
      end

      if attributes.key?(:'favourite')
        self.favourite = attributes[:'favourite']
      end

      if attributes.key?(:'body_part_content_types')
        if (value = attributes[:'body_part_content_types']).is_a?(Array)
          self.body_part_content_types = value
        end
      end

      if attributes.key?(:'plus_address')
        self.plus_address = attributes[:'plus_address']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      if @created_at.nil?
        invalid_properties.push('invalid value for "created_at", created_at cannot be nil.')
      end

      if @read.nil?
        invalid_properties.push('invalid value for "read", read cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @id.nil?
      return false if @created_at.nil?
      return false if @read.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          inbox_id == o.inbox_id &&
          domain_id == o.domain_id &&
          subject == o.subject &&
          to == o.to &&
          from == o.from &&
          bcc == o.bcc &&
          cc == o.cc &&
          created_at == o.created_at &&
          read == o.read &&
          attachments == o.attachments &&
          thread_id == o.thread_id &&
          message_id == o.message_id &&
          in_reply_to == o.in_reply_to &&
          sender == o.sender &&
          recipients == o.recipients &&
          favourite == o.favourite &&
          body_part_content_types == o.body_part_content_types &&
          plus_address == o.plus_address
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, inbox_id, domain_id, subject, to, from, bcc, cc, created_at, read, attachments, thread_id, message_id, in_reply_to, sender, recipients, favourite, body_part_content_types, plus_address].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        MailSlurpClient.const_get(type).build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end
        
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end
  end
end
