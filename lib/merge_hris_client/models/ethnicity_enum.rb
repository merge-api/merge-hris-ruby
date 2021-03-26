=begin
#Merge HRIS API

#The unified API for building rich integrations with multiple HR Information System platforms.

The version of the OpenAPI document: 1.0
Contact: hello@merge.dev
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.0

=end

require 'date'
require 'time'

module MergeHRISClient
  class EthnicityEnum
    AMERICAN_INDIAN_OR_ALASKA_NATIVE = "AMERICAN_INDIAN_OR_ALASKA_NATIVE".freeze
    ASIAN_OR_INDIAN_SUBCONTINENT = "ASIAN_OR_INDIAN_SUBCONTINENT".freeze
    BLACK_OR_AFRICAN_AMERICAN = "BLACK_OR_AFRICAN_AMERICAN".freeze
    HISPANIC_OR_LATINO = "HISPANIC_OR_LATINO".freeze
    NATIVE_HAWAIIAN_OR_OTHER_PACIFIC_ISLANDER = "NATIVE_HAWAIIAN_OR_OTHER_PACIFIC_ISLANDER".freeze
    TWO_OR_MORE_RACES = "TWO_OR_MORE_RACES".freeze
    WHITE = "WHITE".freeze
    PREFER_NOT_TO_DISCLOSE = "PREFER_NOT_TO_DISCLOSE".freeze

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
      constantValues = EthnicityEnum.constants.select { |c| EthnicityEnum::const_get(c) == value }
      value
    end
  end
end
