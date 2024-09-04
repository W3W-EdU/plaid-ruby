=begin
#The Plaid API

#The Plaid REST API. Please see https://plaid.com/docs/api for more details.

The version of the OpenAPI document: 2020-09-14_1.556.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.3.0

=end

require 'date'
require 'time'

module Plaid
  # Metadata about the application
  class Application
    # This field will map to the application ID that is returned from /item/application/list, or provided to the institution in an oauth redirect.
    attr_accessor :application_id

    # The name of the application
    attr_accessor :name

    # A human-readable name of the application for display purposes
    attr_accessor :display_name

    # The date this application was granted production access at Plaid in [ISO 8601](https://wikipedia.org/wiki/ISO_8601) (YYYY-MM-DD) format in UTC.
    attr_accessor :join_date

    # A URL that links to the application logo image.
    attr_accessor :logo_url

    # The URL for the application's website
    attr_accessor :application_url

    # A string provided by the connected app stating why they use their respective enabled products.
    attr_accessor :reason_for_access

    # A string representing client’s broad use case as assessed by Plaid.
    attr_accessor :use_case

    # A string representing the name of client’s legal entity.
    attr_accessor :company_legal_name

    # A string representing the city of the client’s headquarters.
    attr_accessor :city

    # A string representing the region of the client’s headquarters.
    attr_accessor :region

    # A string representing the postal code of the client’s headquarters.
    attr_accessor :postal_code

    # A string representing the country code of the client’s headquarters.
    attr_accessor :country_code

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'application_id' => :'application_id',
        :'name' => :'name',
        :'display_name' => :'display_name',
        :'join_date' => :'join_date',
        :'logo_url' => :'logo_url',
        :'application_url' => :'application_url',
        :'reason_for_access' => :'reason_for_access',
        :'use_case' => :'use_case',
        :'company_legal_name' => :'company_legal_name',
        :'city' => :'city',
        :'region' => :'region',
        :'postal_code' => :'postal_code',
        :'country_code' => :'country_code'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'application_id' => :'String',
        :'name' => :'String',
        :'display_name' => :'String',
        :'join_date' => :'Date',
        :'logo_url' => :'String',
        :'application_url' => :'String',
        :'reason_for_access' => :'String',
        :'use_case' => :'String',
        :'company_legal_name' => :'String',
        :'city' => :'String',
        :'region' => :'String',
        :'postal_code' => :'String',
        :'country_code' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'display_name',
        :'logo_url',
        :'application_url',
        :'reason_for_access',
        :'use_case',
        :'company_legal_name',
        :'city',
        :'region',
        :'postal_code',
        :'country_code'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Plaid::Application` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Plaid::Application`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'application_id')
        self.application_id = attributes[:'application_id']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'display_name')
        self.display_name = attributes[:'display_name']
      end

      if attributes.key?(:'join_date')
        self.join_date = attributes[:'join_date']
      end

      if attributes.key?(:'logo_url')
        self.logo_url = attributes[:'logo_url']
      end

      if attributes.key?(:'application_url')
        self.application_url = attributes[:'application_url']
      end

      if attributes.key?(:'reason_for_access')
        self.reason_for_access = attributes[:'reason_for_access']
      end

      if attributes.key?(:'use_case')
        self.use_case = attributes[:'use_case']
      end

      if attributes.key?(:'company_legal_name')
        self.company_legal_name = attributes[:'company_legal_name']
      end

      if attributes.key?(:'city')
        self.city = attributes[:'city']
      end

      if attributes.key?(:'region')
        self.region = attributes[:'region']
      end

      if attributes.key?(:'postal_code')
        self.postal_code = attributes[:'postal_code']
      end

      if attributes.key?(:'country_code')
        self.country_code = attributes[:'country_code']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @application_id.nil?
        invalid_properties.push('invalid value for "application_id", application_id cannot be nil.')
      end

      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end

      if @join_date.nil?
        invalid_properties.push('invalid value for "join_date", join_date cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @application_id.nil?
      return false if @name.nil?
      return false if @join_date.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          application_id == o.application_id &&
          name == o.name &&
          display_name == o.display_name &&
          join_date == o.join_date &&
          logo_url == o.logo_url &&
          application_url == o.application_url &&
          reason_for_access == o.reason_for_access &&
          use_case == o.use_case &&
          company_legal_name == o.company_legal_name &&
          city == o.city &&
          region == o.region &&
          postal_code == o.postal_code &&
          country_code == o.country_code
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [application_id, name, display_name, join_date, logo_url, application_url, reason_for_access, use_case, company_legal_name, city, region, postal_code, country_code].hash
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
      attributes = attributes.transform_keys(&:to_sym)
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
