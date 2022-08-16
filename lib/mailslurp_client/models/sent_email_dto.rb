=begin
#MailSlurp API

#MailSlurp is an API for sending and receiving emails from dynamically allocated email addresses. It's designed for developers and QA teams to test applications, process inbound emails, send templated notifications, attachments, and more.  ## Resources  - [Homepage](https://www.mailslurp.com) - Get an [API KEY](https://app.mailslurp.com/sign-up/) - Generated [SDK Clients](https://docs.mailslurp.com/) - [Examples](https://github.com/mailslurp/examples) repository

The version of the OpenAPI document: 6.5.2
Contact: contact@mailslurp.dev
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'date'

module MailSlurpClient
  # Sent email details
  class SentEmailDto
    # ID of sent email
    attr_accessor :id

    # User ID
    attr_accessor :user_id

    # Inbox ID email was sent from
    attr_accessor :inbox_id

    # Domain ID
    attr_accessor :domain_id

    # Recipients email was sent to
    attr_accessor :to

    attr_accessor :from

    attr_accessor :reply_to

    attr_accessor :cc

    attr_accessor :bcc

    # Array of IDs of attachments that were sent with this email
    attr_accessor :attachments

    attr_accessor :subject

    # MD5 Hash
    attr_accessor :body_md5_hash

    attr_accessor :body

    attr_accessor :to_contacts

    attr_accessor :to_group

    attr_accessor :charset

    attr_accessor :is_html

    attr_accessor :sent_at

    attr_accessor :pixel_ids

    attr_accessor :message_id

    attr_accessor :message_ids

    attr_accessor :virtual_send

    attr_accessor :template_id

    attr_accessor :template_variables

    attr_accessor :html

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'user_id' => :'userId',
        :'inbox_id' => :'inboxId',
        :'domain_id' => :'domainId',
        :'to' => :'to',
        :'from' => :'from',
        :'reply_to' => :'replyTo',
        :'cc' => :'cc',
        :'bcc' => :'bcc',
        :'attachments' => :'attachments',
        :'subject' => :'subject',
        :'body_md5_hash' => :'bodyMD5Hash',
        :'body' => :'body',
        :'to_contacts' => :'toContacts',
        :'to_group' => :'toGroup',
        :'charset' => :'charset',
        :'is_html' => :'isHTML',
        :'sent_at' => :'sentAt',
        :'pixel_ids' => :'pixelIds',
        :'message_id' => :'messageId',
        :'message_ids' => :'messageIds',
        :'virtual_send' => :'virtualSend',
        :'template_id' => :'templateId',
        :'template_variables' => :'templateVariables',
        :'html' => :'html'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'id' => :'String',
        :'user_id' => :'String',
        :'inbox_id' => :'String',
        :'domain_id' => :'String',
        :'to' => :'Array<String>',
        :'from' => :'String',
        :'reply_to' => :'String',
        :'cc' => :'Array<String>',
        :'bcc' => :'Array<String>',
        :'attachments' => :'Array<String>',
        :'subject' => :'String',
        :'body_md5_hash' => :'String',
        :'body' => :'String',
        :'to_contacts' => :'Array<String>',
        :'to_group' => :'String',
        :'charset' => :'String',
        :'is_html' => :'Boolean',
        :'sent_at' => :'DateTime',
        :'pixel_ids' => :'Array<String>',
        :'message_id' => :'String',
        :'message_ids' => :'Array<String>',
        :'virtual_send' => :'Boolean',
        :'template_id' => :'String',
        :'template_variables' => :'Hash<String, Object>',
        :'html' => :'Boolean'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `MailSlurpClient::SentEmailDto` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `MailSlurpClient::SentEmailDto`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'user_id')
        self.user_id = attributes[:'user_id']
      end

      if attributes.key?(:'inbox_id')
        self.inbox_id = attributes[:'inbox_id']
      end

      if attributes.key?(:'domain_id')
        self.domain_id = attributes[:'domain_id']
      end

      if attributes.key?(:'to')
        if (value = attributes[:'to']).is_a?(Array)
          self.to = value
        end
      end

      if attributes.key?(:'from')
        self.from = attributes[:'from']
      end

      if attributes.key?(:'reply_to')
        self.reply_to = attributes[:'reply_to']
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

      if attributes.key?(:'attachments')
        if (value = attributes[:'attachments']).is_a?(Array)
          self.attachments = value
        end
      end

      if attributes.key?(:'subject')
        self.subject = attributes[:'subject']
      end

      if attributes.key?(:'body_md5_hash')
        self.body_md5_hash = attributes[:'body_md5_hash']
      end

      if attributes.key?(:'body')
        self.body = attributes[:'body']
      end

      if attributes.key?(:'to_contacts')
        if (value = attributes[:'to_contacts']).is_a?(Array)
          self.to_contacts = value
        end
      end

      if attributes.key?(:'to_group')
        self.to_group = attributes[:'to_group']
      end

      if attributes.key?(:'charset')
        self.charset = attributes[:'charset']
      end

      if attributes.key?(:'is_html')
        self.is_html = attributes[:'is_html']
      end

      if attributes.key?(:'sent_at')
        self.sent_at = attributes[:'sent_at']
      end

      if attributes.key?(:'pixel_ids')
        if (value = attributes[:'pixel_ids']).is_a?(Array)
          self.pixel_ids = value
        end
      end

      if attributes.key?(:'message_id')
        self.message_id = attributes[:'message_id']
      end

      if attributes.key?(:'message_ids')
        if (value = attributes[:'message_ids']).is_a?(Array)
          self.message_ids = value
        end
      end

      if attributes.key?(:'virtual_send')
        self.virtual_send = attributes[:'virtual_send']
      end

      if attributes.key?(:'template_id')
        self.template_id = attributes[:'template_id']
      end

      if attributes.key?(:'template_variables')
        if (value = attributes[:'template_variables']).is_a?(Hash)
          self.template_variables = value
        end
      end

      if attributes.key?(:'html')
        self.html = attributes[:'html']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      if @user_id.nil?
        invalid_properties.push('invalid value for "user_id", user_id cannot be nil.')
      end

      if @inbox_id.nil?
        invalid_properties.push('invalid value for "inbox_id", inbox_id cannot be nil.')
      end

      if @sent_at.nil?
        invalid_properties.push('invalid value for "sent_at", sent_at cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @id.nil?
      return false if @user_id.nil?
      return false if @inbox_id.nil?
      return false if @sent_at.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          user_id == o.user_id &&
          inbox_id == o.inbox_id &&
          domain_id == o.domain_id &&
          to == o.to &&
          from == o.from &&
          reply_to == o.reply_to &&
          cc == o.cc &&
          bcc == o.bcc &&
          attachments == o.attachments &&
          subject == o.subject &&
          body_md5_hash == o.body_md5_hash &&
          body == o.body &&
          to_contacts == o.to_contacts &&
          to_group == o.to_group &&
          charset == o.charset &&
          is_html == o.is_html &&
          sent_at == o.sent_at &&
          pixel_ids == o.pixel_ids &&
          message_id == o.message_id &&
          message_ids == o.message_ids &&
          virtual_send == o.virtual_send &&
          template_id == o.template_id &&
          template_variables == o.template_variables &&
          html == o.html
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, user_id, inbox_id, domain_id, to, from, reply_to, cc, bcc, attachments, subject, body_md5_hash, body, to_contacts, to_group, charset, is_html, sent_at, pixel_ids, message_id, message_ids, virtual_send, template_id, template_variables, html].hash
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
