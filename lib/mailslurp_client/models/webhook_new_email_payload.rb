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
  # NEW_EMAIL webhook payload. Sent to your webhook url endpoint via HTTP POST when an email is received by the inbox that your webhook is attached to. Use the email ID to fetch the full email body or attachments.
  class WebhookNewEmailPayload
    # Idempotent message ID. Store this ID locally or in a database to prevent message duplication.
    attr_accessor :message_id

    # ID of webhook entity being triggered
    attr_accessor :webhook_id

    # Name of the event type webhook is being triggered for.
    attr_accessor :event_name

    # Name of the webhook being triggered
    attr_accessor :webhook_name

    # Id of the inbox
    attr_accessor :inbox_id

    # Id of the domain that received an email
    attr_accessor :domain_id

    # ID of the email that was received. Use this ID for fetching the email with the `EmailController`.
    attr_accessor :email_id

    # Date time of event creation
    attr_accessor :created_at

    # List of `To` recipient email addresses that the email was addressed to. See recipients object for names.
    attr_accessor :to

    # Who the email was sent from. An email address - see fromName for the sender name.
    attr_accessor :from

    # List of `CC` recipients email addresses that the email was addressed to. See recipients object for names.
    attr_accessor :cc

    # List of `BCC` recipients email addresses that the email was addressed to. See recipients object for names.
    attr_accessor :bcc

    # The subject line of the email message as specified by SMTP subject header
    attr_accessor :subject

    # List of attachment meta data objects if attachments present
    attr_accessor :attachment_meta_datas

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'message_id' => :'messageId',
        :'webhook_id' => :'webhookId',
        :'event_name' => :'eventName',
        :'webhook_name' => :'webhookName',
        :'inbox_id' => :'inboxId',
        :'domain_id' => :'domainId',
        :'email_id' => :'emailId',
        :'created_at' => :'createdAt',
        :'to' => :'to',
        :'from' => :'from',
        :'cc' => :'cc',
        :'bcc' => :'bcc',
        :'subject' => :'subject',
        :'attachment_meta_datas' => :'attachmentMetaDatas'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'message_id' => :'String',
        :'webhook_id' => :'String',
        :'event_name' => :'String',
        :'webhook_name' => :'String',
        :'inbox_id' => :'String',
        :'domain_id' => :'String',
        :'email_id' => :'String',
        :'created_at' => :'DateTime',
        :'to' => :'Array<String>',
        :'from' => :'String',
        :'cc' => :'Array<String>',
        :'bcc' => :'Array<String>',
        :'subject' => :'String',
        :'attachment_meta_datas' => :'Array<AttachmentMetaData>'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'webhook_name',
        :'domain_id',
        :'subject',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `MailSlurpClient::WebhookNewEmailPayload` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `MailSlurpClient::WebhookNewEmailPayload`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'message_id')
        self.message_id = attributes[:'message_id']
      end

      if attributes.key?(:'webhook_id')
        self.webhook_id = attributes[:'webhook_id']
      end

      if attributes.key?(:'event_name')
        self.event_name = attributes[:'event_name']
      end

      if attributes.key?(:'webhook_name')
        self.webhook_name = attributes[:'webhook_name']
      end

      if attributes.key?(:'inbox_id')
        self.inbox_id = attributes[:'inbox_id']
      end

      if attributes.key?(:'domain_id')
        self.domain_id = attributes[:'domain_id']
      end

      if attributes.key?(:'email_id')
        self.email_id = attributes[:'email_id']
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.key?(:'to')
        if (value = attributes[:'to']).is_a?(Array)
          self.to = value
        end
      end

      if attributes.key?(:'from')
        self.from = attributes[:'from']
      end

      if attributes.key?(:'cc')
        if (value = attributes[:'cc']).is_a?(Array)
          self.cc = value
        end
      end

      if attributes.key?(:'bcc')
        if (value = attributes[:'bcc']).is_a?(Array)
          self.bcc = value
        end
      end

      if attributes.key?(:'subject')
        self.subject = attributes[:'subject']
      end

      if attributes.key?(:'attachment_meta_datas')
        if (value = attributes[:'attachment_meta_datas']).is_a?(Array)
          self.attachment_meta_datas = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @message_id.nil?
        invalid_properties.push('invalid value for "message_id", message_id cannot be nil.')
      end

      if @webhook_id.nil?
        invalid_properties.push('invalid value for "webhook_id", webhook_id cannot be nil.')
      end

      if @event_name.nil?
        invalid_properties.push('invalid value for "event_name", event_name cannot be nil.')
      end

      if @inbox_id.nil?
        invalid_properties.push('invalid value for "inbox_id", inbox_id cannot be nil.')
      end

      if @email_id.nil?
        invalid_properties.push('invalid value for "email_id", email_id cannot be nil.')
      end

      if @created_at.nil?
        invalid_properties.push('invalid value for "created_at", created_at cannot be nil.')
      end

      if @to.nil?
        invalid_properties.push('invalid value for "to", to cannot be nil.')
      end

      if @from.nil?
        invalid_properties.push('invalid value for "from", from cannot be nil.')
      end

      if @cc.nil?
        invalid_properties.push('invalid value for "cc", cc cannot be nil.')
      end

      if @bcc.nil?
        invalid_properties.push('invalid value for "bcc", bcc cannot be nil.')
      end

      if @attachment_meta_datas.nil?
        invalid_properties.push('invalid value for "attachment_meta_datas", attachment_meta_datas cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @message_id.nil?
      return false if @webhook_id.nil?
      return false if @event_name.nil?
      event_name_validator = EnumAttributeValidator.new('String', ["EMAIL_RECEIVED", "NEW_EMAIL", "NEW_CONTACT", "NEW_ATTACHMENT", "EMAIL_OPENED", "EMAIL_READ", "DELIVERY_STATUS", "BOUNCE", "BOUNCE_RECIPIENT", "NEW_SMS", "NEW_GUEST_USER"])
      return false unless event_name_validator.valid?(@event_name)
      return false if @inbox_id.nil?
      return false if @email_id.nil?
      return false if @created_at.nil?
      return false if @to.nil?
      return false if @from.nil?
      return false if @cc.nil?
      return false if @bcc.nil?
      return false if @attachment_meta_datas.nil?
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] event_name Object to be assigned
    def event_name=(event_name)
      validator = EnumAttributeValidator.new('String', ["EMAIL_RECEIVED", "NEW_EMAIL", "NEW_CONTACT", "NEW_ATTACHMENT", "EMAIL_OPENED", "EMAIL_READ", "DELIVERY_STATUS", "BOUNCE", "BOUNCE_RECIPIENT", "NEW_SMS", "NEW_GUEST_USER"])
      unless validator.valid?(event_name)
        fail ArgumentError, "invalid value for \"event_name\", must be one of #{validator.allowable_values}."
      end
      @event_name = event_name
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          message_id == o.message_id &&
          webhook_id == o.webhook_id &&
          event_name == o.event_name &&
          webhook_name == o.webhook_name &&
          inbox_id == o.inbox_id &&
          domain_id == o.domain_id &&
          email_id == o.email_id &&
          created_at == o.created_at &&
          to == o.to &&
          from == o.from &&
          cc == o.cc &&
          bcc == o.bcc &&
          subject == o.subject &&
          attachment_meta_datas == o.attachment_meta_datas
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [message_id, webhook_id, event_name, webhook_name, inbox_id, domain_id, email_id, created_at, to, from, cc, bcc, subject, attachment_meta_datas].hash
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
