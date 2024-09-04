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
  class RiskSignalDocumentType
    UNKNOWN = "UNKNOWN".freeze
    BANK_STATEMENT = "BANK_STATEMENT".freeze
    BENEFITS_STATEMENT = "BENEFITS_STATEMENT".freeze
    BUSINESS_FILING = "BUSINESS_FILING".freeze
    CHECK = "CHECK".freeze
    DRIVING_LICENSE = "DRIVING_LICENSE".freeze
    FINANCIAL_STATEMENT = "FINANCIAL_STATEMENT".freeze
    INVOICE = "INVOICE".freeze
    PAYSLIP = "PAYSLIP".freeze
    SOCIAL_SECURITY_CARD = "SOCIAL_SECURITY_CARD".freeze
    TAX_FORM = "TAX_FORM".freeze
    UTILITY_BILL = "UTILITY_BILL".freeze

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
