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
  # Options for updating an inbox replier
  class UpdateInboxReplierOptions
    # Inbox ID to attach replier to
    attr_accessor :inbox_id

    # Name for replier
    attr_accessor :name

    # Field to match against to trigger inbox replier for inbound email
    attr_accessor :field

    # String or wildcard style match for field specified when evaluating reply rules
    attr_accessor :match

    # Reply-to email address when sending replying
    attr_accessor :reply_to

    # Subject override when replying to email
    attr_accessor :subject

    # Send email from address
    attr_accessor :from

    # Email reply charset
    attr_accessor :charset

    # Send HTML email
    attr_accessor :is_html

    # Ignore sender replyTo when responding. Send directly to the sender if enabled.
    attr_accessor :ignore_reply_to

    # Email body for reply
    attr_accessor :body

    # ID of template to use when sending a reply
    attr_accessor :template_id

    # Template variable values
    attr_accessor :template_variables

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
        :'inbox_id' => :'inboxId',
        :'name' => :'name',
        :'field' => :'field',
        :'match' => :'match',
        :'reply_to' => :'replyTo',
        :'subject' => :'subject',
        :'from' => :'from',
        :'charset' => :'charset',
        :'is_html' => :'isHTML',
        :'ignore_reply_to' => :'ignoreReplyTo',
        :'body' => :'body',
        :'template_id' => :'templateId',
        :'template_variables' => :'templateVariables'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'inbox_id' => :'String',
        :'name' => :'String',
        :'field' => :'String',
        :'match' => :'String',
        :'reply_to' => :'String',
        :'subject' => :'String',
        :'from' => :'String',
        :'charset' => :'String',
        :'is_html' => :'Boolean',
        :'ignore_reply_to' => :'Boolean',
        :'body' => :'String',
        :'template_id' => :'String',
        :'template_variables' => :'Hash<String, Object>'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'name',
        :'reply_to',
        :'subject',
        :'from',
        :'charset',
        :'is_html',
        :'ignore_reply_to',
        :'body',
        :'template_id',
        :'template_variables'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `MailSlurpClient::UpdateInboxReplierOptions` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `MailSlurpClient::UpdateInboxReplierOptions`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'inbox_id')
        self.inbox_id = attributes[:'inbox_id']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'field')
        self.field = attributes[:'field']
      end

      if attributes.key?(:'match')
        self.match = attributes[:'match']
      end

      if attributes.key?(:'reply_to')
        self.reply_to = attributes[:'reply_to']
      end

      if attributes.key?(:'subject')
        self.subject = attributes[:'subject']
      end

      if attributes.key?(:'from')
        self.from = attributes[:'from']
      end

      if attributes.key?(:'charset')
        self.charset = attributes[:'charset']
      end

      if attributes.key?(:'is_html')
        self.is_html = attributes[:'is_html']
      end

      if attributes.key?(:'ignore_reply_to')
        self.ignore_reply_to = attributes[:'ignore_reply_to']
      end

      if attributes.key?(:'body')
        self.body = attributes[:'body']
      end

      if attributes.key?(:'template_id')
        self.template_id = attributes[:'template_id']
      end

      if attributes.key?(:'template_variables')
        if (value = attributes[:'template_variables']).is_a?(Hash)
          self.template_variables = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @inbox_id.nil?
        invalid_properties.push('invalid value for "inbox_id", inbox_id cannot be nil.')
      end

      if @field.nil?
        invalid_properties.push('invalid value for "field", field cannot be nil.')
      end

      if @match.nil?
        invalid_properties.push('invalid value for "match", match cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @inbox_id.nil?
      return false if @field.nil?
      field_validator = EnumAttributeValidator.new('String', ["RECIPIENTS", "SENDER", "SUBJECT", "ATTACHMENTS"])
      return false unless field_validator.valid?(@field)
      return false if @match.nil?
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] field Object to be assigned
    def field=(field)
      validator = EnumAttributeValidator.new('String', ["RECIPIENTS", "SENDER", "SUBJECT", "ATTACHMENTS"])
      unless validator.valid?(field)
        fail ArgumentError, "invalid value for \"field\", must be one of #{validator.allowable_values}."
      end
      @field = field
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          inbox_id == o.inbox_id &&
          name == o.name &&
          field == o.field &&
          match == o.match &&
          reply_to == o.reply_to &&
          subject == o.subject &&
          from == o.from &&
          charset == o.charset &&
          is_html == o.is_html &&
          ignore_reply_to == o.ignore_reply_to &&
          body == o.body &&
          template_id == o.template_id &&
          template_variables == o.template_variables
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [inbox_id, name, field, match, reply_to, subject, from, charset, is_html, ignore_reply_to, body, template_id, template_variables].hash
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
