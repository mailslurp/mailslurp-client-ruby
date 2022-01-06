=begin
#MailSlurp API

#MailSlurp is an API for sending and receiving emails from dynamically allocated email addresses. It's designed for developers and QA teams to test applications, process inbound emails, send templated notifications, attachments, and more.  ## Resources  - [Homepage](https://www.mailslurp.com) - Get an [API KEY](https://app.mailslurp.com/sign-up/) - Generated [SDK Clients](https://www.mailslurp.com/docs/) - [Examples](https://github.com/mailslurp/examples) repository

The version of the OpenAPI document: 6.5.2
Contact: contact@mailslurp.dev
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'date'

module MailSlurpClient
  # Domain plus verification records and status
  class DomainDto
    attr_accessor :id

    attr_accessor :user_id

    # Custom domain name
    attr_accessor :domain

    # Verification tokens
    attr_accessor :verification_token

    # Unique token DKIM tokens
    attr_accessor :dkim_tokens

    # List of DNS domain name records (C, MX, TXT) etc that you must add to the DNS server associated with your domain provider.
    attr_accessor :domain_name_records

    # The optional catch all inbox that will receive emails sent to the domain that cannot be matched.
    attr_accessor :catch_all_inbox_id

    attr_accessor :created_at

    attr_accessor :updated_at

    # Type of domain. Dictates type of inbox that can be created with domain. HTTP means inboxes are processed using SES while SMTP inboxes use a custom SMTP mail server. SMTP does not support sending so use HTTP for sending emails.
    attr_accessor :domain_type

    attr_accessor :verified

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
        :'id' => :'id',
        :'user_id' => :'userId',
        :'domain' => :'domain',
        :'verification_token' => :'verificationToken',
        :'dkim_tokens' => :'dkimTokens',
        :'domain_name_records' => :'domainNameRecords',
        :'catch_all_inbox_id' => :'catchAllInboxId',
        :'created_at' => :'createdAt',
        :'updated_at' => :'updatedAt',
        :'domain_type' => :'domainType',
        :'verified' => :'verified'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'id' => :'String',
        :'user_id' => :'String',
        :'domain' => :'String',
        :'verification_token' => :'String',
        :'dkim_tokens' => :'Array<String>',
        :'domain_name_records' => :'Array<DomainNameRecord>',
        :'catch_all_inbox_id' => :'String',
        :'created_at' => :'DateTime',
        :'updated_at' => :'DateTime',
        :'domain_type' => :'String',
        :'verified' => :'Boolean'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `MailSlurpClient::DomainDto` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `MailSlurpClient::DomainDto`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'user_id')
        self.user_id = attributes[:'user_id']
      end

      if attributes.key?(:'domain')
        self.domain = attributes[:'domain']
      end

      if attributes.key?(:'verification_token')
        self.verification_token = attributes[:'verification_token']
      end

      if attributes.key?(:'dkim_tokens')
        if (value = attributes[:'dkim_tokens']).is_a?(Array)
          self.dkim_tokens = value
        end
      end

      if attributes.key?(:'domain_name_records')
        if (value = attributes[:'domain_name_records']).is_a?(Array)
          self.domain_name_records = value
        end
      end

      if attributes.key?(:'catch_all_inbox_id')
        self.catch_all_inbox_id = attributes[:'catch_all_inbox_id']
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.key?(:'updated_at')
        self.updated_at = attributes[:'updated_at']
      end

      if attributes.key?(:'domain_type')
        self.domain_type = attributes[:'domain_type']
      end

      if attributes.key?(:'verified')
        self.verified = attributes[:'verified']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      domain_type_validator = EnumAttributeValidator.new('String', ["HTTP_INBOX", "SMTP_DOMAIN"])
      return false unless domain_type_validator.valid?(@domain_type)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] domain_type Object to be assigned
    def domain_type=(domain_type)
      validator = EnumAttributeValidator.new('String', ["HTTP_INBOX", "SMTP_DOMAIN"])
      unless validator.valid?(domain_type)
        fail ArgumentError, "invalid value for \"domain_type\", must be one of #{validator.allowable_values}."
      end
      @domain_type = domain_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          user_id == o.user_id &&
          domain == o.domain &&
          verification_token == o.verification_token &&
          dkim_tokens == o.dkim_tokens &&
          domain_name_records == o.domain_name_records &&
          catch_all_inbox_id == o.catch_all_inbox_id &&
          created_at == o.created_at &&
          updated_at == o.updated_at &&
          domain_type == o.domain_type &&
          verified == o.verified
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, user_id, domain, verification_token, dkim_tokens, domain_name_records, catch_all_inbox_id, created_at, updated_at, domain_type, verified].hash
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
