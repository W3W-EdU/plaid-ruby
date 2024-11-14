=begin
#The Plaid API

#The Plaid REST API. Please see https://plaid.com/docs/api for more details.

The version of the OpenAPI document: 2020-09-14_1.586.4

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.3.0

=end

require 'date'
require 'time'

module Plaid
  class CraLoanStatus
    APPROVED = "APPROVED".freeze
    DECLINED = "DECLINED".freeze
    BOOKED = "BOOKED".freeze
    CURRENT = "CURRENT".freeze
    DELINQUENT = "DELINQUENT".freeze
    DEFAULT = "DEFAULT".freeze
    CHARGED_OFF = "CHARGED_OFF".freeze
    TRANSFERRED = "TRANSFERRED".freeze
    PAID_OFF = "PAID_OFF".freeze
    OTHER = "OTHER".freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def self.build_from_hash(value)
      new.build_from_hash(value)
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      # We do not validate that the value is one of the enums set in the OpenAPI
      # file because we want to be able to add to our list of enums without
      # breaking this client library.
      value
    end
  end

end
