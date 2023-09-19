=begin
#The Plaid API

#The Plaid REST API. Please see https://plaid.com/docs/api for more details.

The version of the OpenAPI document: 2020-09-14_1.431.7

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.1.0

=end

require 'date'
require 'time'

module Plaid
  class EntityWatchlistCode
    CA_CON = "CA_CON".freeze
    EU_CON = "EU_CON".freeze
    IZ_SOE = "IZ_SOE".freeze
    IZ_UNC = "IZ_UNC".freeze
    IZ_WBK = "IZ_WBK".freeze
    US_CAP = "US_CAP".freeze
    US_FSE = "US_FSE".freeze
    US_MBS = "US_MBS".freeze
    US_SDN = "US_SDN".freeze
    US_SSI = "US_SSI".freeze
    US_CMC = "US_CMC".freeze
    US_UVL = "US_UVL".freeze
    AU_CON = "AU_CON".freeze
    UK_HMC = "UK_HMC".freeze

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
