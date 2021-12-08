=begin
#The Plaid API

#The Plaid REST API. Please see https://plaid.com/docs/api for more details.

The version of the OpenAPI document: 2020-09-14_1.56.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.1.0

=end

require 'date'
require 'time'

module Plaid
  # The status of an institution is determined by the health of its Item logins, Transactions updates, Investments updates, Liabilities updates, Auth requests, Balance requests, Identity requests, Investments requests, and Liabilities requests. A login attempt is conducted during the initial Item add in Link. If there is not enough traffic to accurately calculate an institution's status, Plaid will return null rather than potentially inaccurate data.  Institution status is accessible in the Dashboard and via the API using the `/institutions/get_by_id` endpoint with the `include_status` option set to true. Note that institution status is not available in the Sandbox environment. 
  class InstitutionStatus
    attr_accessor :item_logins

    attr_accessor :transactions_updates

    attr_accessor :auth

    attr_accessor :balance

    attr_accessor :identity

    attr_accessor :investments_updates

    attr_accessor :liabilities_updates

    attr_accessor :liabilities

    attr_accessor :investments

    # Details of recent health incidents associated with the institution.
    attr_accessor :health_incidents

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'item_logins' => :'item_logins',
        :'transactions_updates' => :'transactions_updates',
        :'auth' => :'auth',
        :'balance' => :'balance',
        :'identity' => :'identity',
        :'investments_updates' => :'investments_updates',
        :'liabilities_updates' => :'liabilities_updates',
        :'liabilities' => :'liabilities',
        :'investments' => :'investments',
        :'health_incidents' => :'health_incidents'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'item_logins' => :'ProductStatus',
        :'transactions_updates' => :'ProductStatus',
        :'auth' => :'ProductStatus',
        :'balance' => :'ProductStatus',
        :'identity' => :'ProductStatus',
        :'investments_updates' => :'ProductStatus',
        :'liabilities_updates' => :'ProductStatus',
        :'liabilities' => :'ProductStatus',
        :'investments' => :'ProductStatus',
        :'health_incidents' => :'Array<HealthIncident>'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'health_incidents'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Plaid::InstitutionStatus` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Plaid::InstitutionStatus`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'item_logins')
        self.item_logins = attributes[:'item_logins']
      end

      if attributes.key?(:'transactions_updates')
        self.transactions_updates = attributes[:'transactions_updates']
      end

      if attributes.key?(:'auth')
        self.auth = attributes[:'auth']
      end

      if attributes.key?(:'balance')
        self.balance = attributes[:'balance']
      end

      if attributes.key?(:'identity')
        self.identity = attributes[:'identity']
      end

      if attributes.key?(:'investments_updates')
        self.investments_updates = attributes[:'investments_updates']
      end

      if attributes.key?(:'liabilities_updates')
        self.liabilities_updates = attributes[:'liabilities_updates']
      end

      if attributes.key?(:'liabilities')
        self.liabilities = attributes[:'liabilities']
      end

      if attributes.key?(:'investments')
        self.investments = attributes[:'investments']
      end

      if attributes.key?(:'health_incidents')
        if (value = attributes[:'health_incidents']).is_a?(Array)
          self.health_incidents = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @item_logins.nil?
        invalid_properties.push('invalid value for "item_logins", item_logins cannot be nil.')
      end

      if @transactions_updates.nil?
        invalid_properties.push('invalid value for "transactions_updates", transactions_updates cannot be nil.')
      end

      if @auth.nil?
        invalid_properties.push('invalid value for "auth", auth cannot be nil.')
      end

      if @balance.nil?
        invalid_properties.push('invalid value for "balance", balance cannot be nil.')
      end

      if @identity.nil?
        invalid_properties.push('invalid value for "identity", identity cannot be nil.')
      end

      if @investments_updates.nil?
        invalid_properties.push('invalid value for "investments_updates", investments_updates cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @item_logins.nil?
      return false if @transactions_updates.nil?
      return false if @auth.nil?
      return false if @balance.nil?
      return false if @identity.nil?
      return false if @investments_updates.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          item_logins == o.item_logins &&
          transactions_updates == o.transactions_updates &&
          auth == o.auth &&
          balance == o.balance &&
          identity == o.identity &&
          investments_updates == o.investments_updates &&
          liabilities_updates == o.liabilities_updates &&
          liabilities == o.liabilities &&
          investments == o.investments &&
          health_incidents == o.health_incidents
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [item_logins, transactions_updates, auth, balance, identity, investments_updates, liabilities_updates, liabilities, investments, health_incidents].hash
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
        if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
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
        # models (e.g. Pet) or oneOf
        klass = Plaid.const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
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
