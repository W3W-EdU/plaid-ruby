=begin
#The Plaid API

#The Plaid REST API. Please see https://plaid.com/docs/api for more details.

The version of the OpenAPI document: 2020-09-14_1.525.1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.3.0

=end

require 'date'
require 'time'

module Plaid
  # W2 is an object that represents income data taken from a W2 tax document.
  class W2
    attr_accessor :employer

    attr_accessor :employee

    # The tax year of the W2 document.
    attr_accessor :tax_year

    # An employee identification number or EIN.
    attr_accessor :employer_id_number

    # Wages from tips and other compensation.
    attr_accessor :wages_tips_other_comp

    # Federal income tax withheld for the tax year.
    attr_accessor :federal_income_tax_withheld

    # Wages from social security.
    attr_accessor :social_security_wages

    # Social security tax withheld for the tax year.
    attr_accessor :social_security_tax_withheld

    # Wages and tips from medicare.
    attr_accessor :medicare_wages_and_tips

    # Medicare tax withheld for the tax year.
    attr_accessor :medicare_tax_withheld

    # Tips from social security.
    attr_accessor :social_security_tips

    # Allocated tips.
    attr_accessor :allocated_tips

    # Contents from box 9 on the W2.
    attr_accessor :box_9

    # Dependent care benefits.
    attr_accessor :dependent_care_benefits

    # Nonqualified plans.
    attr_accessor :nonqualified_plans

    attr_accessor :box_12

    # Statutory employee.
    attr_accessor :statutory_employee

    # Retirement plan.
    attr_accessor :retirement_plan

    # Third party sick pay.
    attr_accessor :third_party_sick_pay

    # Other.
    attr_accessor :other

    attr_accessor :state_and_local_wages

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'employer' => :'employer',
        :'employee' => :'employee',
        :'tax_year' => :'tax_year',
        :'employer_id_number' => :'employer_id_number',
        :'wages_tips_other_comp' => :'wages_tips_other_comp',
        :'federal_income_tax_withheld' => :'federal_income_tax_withheld',
        :'social_security_wages' => :'social_security_wages',
        :'social_security_tax_withheld' => :'social_security_tax_withheld',
        :'medicare_wages_and_tips' => :'medicare_wages_and_tips',
        :'medicare_tax_withheld' => :'medicare_tax_withheld',
        :'social_security_tips' => :'social_security_tips',
        :'allocated_tips' => :'allocated_tips',
        :'box_9' => :'box_9',
        :'dependent_care_benefits' => :'dependent_care_benefits',
        :'nonqualified_plans' => :'nonqualified_plans',
        :'box_12' => :'box_12',
        :'statutory_employee' => :'statutory_employee',
        :'retirement_plan' => :'retirement_plan',
        :'third_party_sick_pay' => :'third_party_sick_pay',
        :'other' => :'other',
        :'state_and_local_wages' => :'state_and_local_wages'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'employer' => :'PaystubEmployer',
        :'employee' => :'Employee',
        :'tax_year' => :'String',
        :'employer_id_number' => :'String',
        :'wages_tips_other_comp' => :'String',
        :'federal_income_tax_withheld' => :'String',
        :'social_security_wages' => :'String',
        :'social_security_tax_withheld' => :'String',
        :'medicare_wages_and_tips' => :'String',
        :'medicare_tax_withheld' => :'String',
        :'social_security_tips' => :'String',
        :'allocated_tips' => :'String',
        :'box_9' => :'String',
        :'dependent_care_benefits' => :'String',
        :'nonqualified_plans' => :'String',
        :'box_12' => :'Array<W2Box12>',
        :'statutory_employee' => :'String',
        :'retirement_plan' => :'String',
        :'third_party_sick_pay' => :'String',
        :'other' => :'String',
        :'state_and_local_wages' => :'Array<W2StateAndLocalWages>'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'tax_year',
        :'employer_id_number',
        :'wages_tips_other_comp',
        :'federal_income_tax_withheld',
        :'social_security_wages',
        :'social_security_tax_withheld',
        :'medicare_wages_and_tips',
        :'medicare_tax_withheld',
        :'social_security_tips',
        :'allocated_tips',
        :'box_9',
        :'dependent_care_benefits',
        :'nonqualified_plans',
        :'statutory_employee',
        :'retirement_plan',
        :'third_party_sick_pay',
        :'other',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Plaid::W2` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Plaid::W2`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'employer')
        self.employer = attributes[:'employer']
      end

      if attributes.key?(:'employee')
        self.employee = attributes[:'employee']
      end

      if attributes.key?(:'tax_year')
        self.tax_year = attributes[:'tax_year']
      end

      if attributes.key?(:'employer_id_number')
        self.employer_id_number = attributes[:'employer_id_number']
      end

      if attributes.key?(:'wages_tips_other_comp')
        self.wages_tips_other_comp = attributes[:'wages_tips_other_comp']
      end

      if attributes.key?(:'federal_income_tax_withheld')
        self.federal_income_tax_withheld = attributes[:'federal_income_tax_withheld']
      end

      if attributes.key?(:'social_security_wages')
        self.social_security_wages = attributes[:'social_security_wages']
      end

      if attributes.key?(:'social_security_tax_withheld')
        self.social_security_tax_withheld = attributes[:'social_security_tax_withheld']
      end

      if attributes.key?(:'medicare_wages_and_tips')
        self.medicare_wages_and_tips = attributes[:'medicare_wages_and_tips']
      end

      if attributes.key?(:'medicare_tax_withheld')
        self.medicare_tax_withheld = attributes[:'medicare_tax_withheld']
      end

      if attributes.key?(:'social_security_tips')
        self.social_security_tips = attributes[:'social_security_tips']
      end

      if attributes.key?(:'allocated_tips')
        self.allocated_tips = attributes[:'allocated_tips']
      end

      if attributes.key?(:'box_9')
        self.box_9 = attributes[:'box_9']
      end

      if attributes.key?(:'dependent_care_benefits')
        self.dependent_care_benefits = attributes[:'dependent_care_benefits']
      end

      if attributes.key?(:'nonqualified_plans')
        self.nonqualified_plans = attributes[:'nonqualified_plans']
      end

      if attributes.key?(:'box_12')
        if (value = attributes[:'box_12']).is_a?(Array)
          self.box_12 = value
        end
      end

      if attributes.key?(:'statutory_employee')
        self.statutory_employee = attributes[:'statutory_employee']
      end

      if attributes.key?(:'retirement_plan')
        self.retirement_plan = attributes[:'retirement_plan']
      end

      if attributes.key?(:'third_party_sick_pay')
        self.third_party_sick_pay = attributes[:'third_party_sick_pay']
      end

      if attributes.key?(:'other')
        self.other = attributes[:'other']
      end

      if attributes.key?(:'state_and_local_wages')
        if (value = attributes[:'state_and_local_wages']).is_a?(Array)
          self.state_and_local_wages = value
        end
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
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          employer == o.employer &&
          employee == o.employee &&
          tax_year == o.tax_year &&
          employer_id_number == o.employer_id_number &&
          wages_tips_other_comp == o.wages_tips_other_comp &&
          federal_income_tax_withheld == o.federal_income_tax_withheld &&
          social_security_wages == o.social_security_wages &&
          social_security_tax_withheld == o.social_security_tax_withheld &&
          medicare_wages_and_tips == o.medicare_wages_and_tips &&
          medicare_tax_withheld == o.medicare_tax_withheld &&
          social_security_tips == o.social_security_tips &&
          allocated_tips == o.allocated_tips &&
          box_9 == o.box_9 &&
          dependent_care_benefits == o.dependent_care_benefits &&
          nonqualified_plans == o.nonqualified_plans &&
          box_12 == o.box_12 &&
          statutory_employee == o.statutory_employee &&
          retirement_plan == o.retirement_plan &&
          third_party_sick_pay == o.third_party_sick_pay &&
          other == o.other &&
          state_and_local_wages == o.state_and_local_wages
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [employer, employee, tax_year, employer_id_number, wages_tips_other_comp, federal_income_tax_withheld, social_security_wages, social_security_tax_withheld, medicare_wages_and_tips, medicare_tax_withheld, social_security_tips, allocated_tips, box_9, dependent_care_benefits, nonqualified_plans, box_12, statutory_employee, retirement_plan, third_party_sick_pay, other, state_and_local_wages].hash
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
