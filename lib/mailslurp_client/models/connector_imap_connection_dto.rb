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
  class ConnectorImapConnectionDto
    attr_accessor :connector_id

    attr_accessor :imap_host

    attr_accessor :imap_port

    attr_accessor :imap_username

    attr_accessor :imap_password

    attr_accessor :imap_ssl

    attr_accessor :select_folder

    attr_accessor :search_terms

    attr_accessor :enabled

    attr_accessor :created_at

    attr_accessor :id

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'connector_id' => :'connectorId',
        :'imap_host' => :'imapHost',
        :'imap_port' => :'imapPort',
        :'imap_username' => :'imapUsername',
        :'imap_password' => :'imapPassword',
        :'imap_ssl' => :'imapSsl',
        :'select_folder' => :'selectFolder',
        :'search_terms' => :'searchTerms',
        :'enabled' => :'enabled',
        :'created_at' => :'createdAt',
        :'id' => :'id'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'connector_id' => :'String',
        :'imap_host' => :'String',
        :'imap_port' => :'Integer',
        :'imap_username' => :'String',
        :'imap_password' => :'String',
        :'imap_ssl' => :'Boolean',
        :'select_folder' => :'String',
        :'search_terms' => :'String',
        :'enabled' => :'Boolean',
        :'created_at' => :'DateTime',
        :'id' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `MailSlurpClient::ConnectorImapConnectionDto` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `MailSlurpClient::ConnectorImapConnectionDto`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'connector_id')
        self.connector_id = attributes[:'connector_id']
      end

      if attributes.key?(:'imap_host')
        self.imap_host = attributes[:'imap_host']
      end

      if attributes.key?(:'imap_port')
        self.imap_port = attributes[:'imap_port']
      end

      if attributes.key?(:'imap_username')
        self.imap_username = attributes[:'imap_username']
      end

      if attributes.key?(:'imap_password')
        self.imap_password = attributes[:'imap_password']
      end

      if attributes.key?(:'imap_ssl')
        self.imap_ssl = attributes[:'imap_ssl']
      end

      if attributes.key?(:'select_folder')
        self.select_folder = attributes[:'select_folder']
      end

      if attributes.key?(:'search_terms')
        self.search_terms = attributes[:'search_terms']
      end

      if attributes.key?(:'enabled')
        self.enabled = attributes[:'enabled']
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @connector_id.nil?
        invalid_properties.push('invalid value for "connector_id", connector_id cannot be nil.')
      end

      if @created_at.nil?
        invalid_properties.push('invalid value for "created_at", created_at cannot be nil.')
      end

      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @connector_id.nil?
      return false if @created_at.nil?
      return false if @id.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          connector_id == o.connector_id &&
          imap_host == o.imap_host &&
          imap_port == o.imap_port &&
          imap_username == o.imap_username &&
          imap_password == o.imap_password &&
          imap_ssl == o.imap_ssl &&
          select_folder == o.select_folder &&
          search_terms == o.search_terms &&
          enabled == o.enabled &&
          created_at == o.created_at &&
          id == o.id
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [connector_id, imap_host, imap_port, imap_username, imap_password, imap_ssl, select_folder, search_terms, enabled, created_at, id].hash
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
