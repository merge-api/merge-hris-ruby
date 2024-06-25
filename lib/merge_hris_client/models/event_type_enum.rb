=begin
#Merge HRIS API

#The unified API for building rich integrations with multiple HR Information System platforms.

The version of the OpenAPI document: 1.0
Contact: hello@merge.dev
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.1.1

=end

require 'date'
require 'time'

module MergeHRISClient
  class EventTypeEnum
    CREATED_REMOTE_PRODUCTION_API_KEY = "CREATED_REMOTE_PRODUCTION_API_KEY".freeze
    DELETED_REMOTE_PRODUCTION_API_KEY = "DELETED_REMOTE_PRODUCTION_API_KEY".freeze
    CREATED_TEST_API_KEY = "CREATED_TEST_API_KEY".freeze
    DELETED_TEST_API_KEY = "DELETED_TEST_API_KEY".freeze
    REGENERATED_PRODUCTION_API_KEY = "REGENERATED_PRODUCTION_API_KEY".freeze
    INVITED_USER = "INVITED_USER".freeze
    TWO_FACTOR_AUTH_ENABLED = "TWO_FACTOR_AUTH_ENABLED".freeze
    TWO_FACTOR_AUTH_DISABLED = "TWO_FACTOR_AUTH_DISABLED".freeze
    DELETED_LINKED_ACCOUNT = "DELETED_LINKED_ACCOUNT".freeze
    CREATED_DESTINATION = "CREATED_DESTINATION".freeze
    DELETED_DESTINATION = "DELETED_DESTINATION".freeze
    CHANGED_DESTINATION = "CHANGED_DESTINATION".freeze
    CHANGED_SCOPES = "CHANGED_SCOPES".freeze
    CHANGED_PERSONAL_INFORMATION = "CHANGED_PERSONAL_INFORMATION".freeze
    CHANGED_ORGANIZATION_SETTINGS = "CHANGED_ORGANIZATION_SETTINGS".freeze
    ENABLED_INTEGRATION = "ENABLED_INTEGRATION".freeze
    DISABLED_INTEGRATION = "DISABLED_INTEGRATION".freeze
    ENABLED_CATEGORY = "ENABLED_CATEGORY".freeze
    DISABLED_CATEGORY = "DISABLED_CATEGORY".freeze
    CHANGED_PASSWORD = "CHANGED_PASSWORD".freeze
    RESET_PASSWORD = "RESET_PASSWORD".freeze
    ENABLED_REDACT_UNMAPPED_DATA_FOR_ORGANIZATION = "ENABLED_REDACT_UNMAPPED_DATA_FOR_ORGANIZATION".freeze
    ENABLED_REDACT_UNMAPPED_DATA_FOR_LINKED_ACCOUNT = "ENABLED_REDACT_UNMAPPED_DATA_FOR_LINKED_ACCOUNT".freeze
    DISABLED_REDACT_UNMAPPED_DATA_FOR_ORGANIZATION = "DISABLED_REDACT_UNMAPPED_DATA_FOR_ORGANIZATION".freeze
    DISABLED_REDACT_UNMAPPED_DATA_FOR_LINKED_ACCOUNT = "DISABLED_REDACT_UNMAPPED_DATA_FOR_LINKED_ACCOUNT".freeze
    CREATED_INTEGRATION_WIDE_FIELD_MAPPING = "CREATED_INTEGRATION_WIDE_FIELD_MAPPING".freeze
    CREATED_LINKED_ACCOUNT_FIELD_MAPPING = "CREATED_LINKED_ACCOUNT_FIELD_MAPPING".freeze
    CHANGED_INTEGRATION_WIDE_FIELD_MAPPING = "CHANGED_INTEGRATION_WIDE_FIELD_MAPPING".freeze
    CHANGED_LINKED_ACCOUNT_FIELD_MAPPING = "CHANGED_LINKED_ACCOUNT_FIELD_MAPPING".freeze
    DELETED_INTEGRATION_WIDE_FIELD_MAPPING = "DELETED_INTEGRATION_WIDE_FIELD_MAPPING".freeze
    DELETED_LINKED_ACCOUNT_FIELD_MAPPING = "DELETED_LINKED_ACCOUNT_FIELD_MAPPING".freeze
    FORCED_LINKED_ACCOUNT_RESYNC = "FORCED_LINKED_ACCOUNT_RESYNC".freeze
    MUTED_ISSUE = "MUTED_ISSUE".freeze
    GENERATED_MAGIC_LINK = "GENERATED_MAGIC_LINK".freeze
    ENABLED_MERGE_WEBHOOK = "ENABLED_MERGE_WEBHOOK".freeze
    DISABLED_MERGE_WEBHOOK = "DISABLED_MERGE_WEBHOOK".freeze
    MERGE_WEBHOOK_TARGET_CHANGED = "MERGE_WEBHOOK_TARGET_CHANGED".freeze
    END_USER_CREDENTIALS_ACCESSED = "END_USER_CREDENTIALS_ACCESSED".freeze

    MERGE_NONSTANDARD_VALUE = "MERGE_NONSTANDARD_VALUE".freeze

    attr_accessor :value
    attr_accessor :raw_value

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      @raw_value = value
      if ["CREATED_REMOTE_PRODUCTION_API_KEY", "DELETED_REMOTE_PRODUCTION_API_KEY", "CREATED_TEST_API_KEY", "DELETED_TEST_API_KEY", "REGENERATED_PRODUCTION_API_KEY", "INVITED_USER", "TWO_FACTOR_AUTH_ENABLED", "TWO_FACTOR_AUTH_DISABLED", "DELETED_LINKED_ACCOUNT", "CREATED_DESTINATION", "DELETED_DESTINATION", "CHANGED_DESTINATION", "CHANGED_SCOPES", "CHANGED_PERSONAL_INFORMATION", "CHANGED_ORGANIZATION_SETTINGS", "ENABLED_INTEGRATION", "DISABLED_INTEGRATION", "ENABLED_CATEGORY", "DISABLED_CATEGORY", "CHANGED_PASSWORD", "RESET_PASSWORD", "ENABLED_REDACT_UNMAPPED_DATA_FOR_ORGANIZATION", "ENABLED_REDACT_UNMAPPED_DATA_FOR_LINKED_ACCOUNT", "DISABLED_REDACT_UNMAPPED_DATA_FOR_ORGANIZATION", "DISABLED_REDACT_UNMAPPED_DATA_FOR_LINKED_ACCOUNT", "CREATED_INTEGRATION_WIDE_FIELD_MAPPING", "CREATED_LINKED_ACCOUNT_FIELD_MAPPING", "CHANGED_INTEGRATION_WIDE_FIELD_MAPPING", "CHANGED_LINKED_ACCOUNT_FIELD_MAPPING", "DELETED_INTEGRATION_WIDE_FIELD_MAPPING", "DELETED_LINKED_ACCOUNT_FIELD_MAPPING", "FORCED_LINKED_ACCOUNT_RESYNC", "MUTED_ISSUE", "GENERATED_MAGIC_LINK", "ENABLED_MERGE_WEBHOOK", "DISABLED_MERGE_WEBHOOK", "MERGE_WEBHOOK_TARGET_CHANGED", "END_USER_CREDENTIALS_ACCESSED", ].include? value
        @value = value
      else
        @value = MERGE_NONSTANDARD_VALUE
      end

      self
    end

    def self.build_from_hash(value)
      EventTypeEnum.new.build_from_hash(value)
    end
  end

end
