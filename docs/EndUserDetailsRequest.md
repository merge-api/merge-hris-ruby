# MergeHRISClient::EndUserDetailsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **end_user_email_address** | **String** | Your end user&#39;s email address. This is purely for identification purposes - setting this value will not cause any emails to be sent. |  |
| **end_user_organization_name** | **String** | Your end user&#39;s organization. |  |
| **end_user_origin_id** | **String** | This unique identifier typically represents the ID for your end user in your product&#39;s database. This value must be distinct from other Linked Accounts&#39; unique identifiers. |  |
| **categories** | [**Array&lt;CategoriesEnum&gt;**](CategoriesEnum.md) | The integration categories to show in Merge Link. |  |
| **integration** | **String** | The slug of a specific pre-selected integration for this linking flow token. For examples of slugs, see https://docs.merge.dev/guides/merge-link/single-integration/. | [optional] |
| **link_expiry_mins** | **Integer** | An integer number of minutes between [30, 720 or 10080 if for a Magic Link URL] for how long this token is valid. Defaults to 30. | [optional][default to 30] |
| **should_create_magic_link_url** | **Boolean** | Whether to generate a Magic Link URL. Defaults to false. For more information on Magic Link, see https://merge.dev/blog/integrations-fast-say-hello-to-magic-link. | [optional][default to false] |
| **common_models** | [**Array&lt;CommonModelScopesBodyRequest&gt;**](CommonModelScopesBodyRequest.md) | An array of objects to specify the models and fields that will be disabled for a given Linked Account. Each object uses model_id, enabled_actions, and disabled_fields to specify the model, method, and fields that are scoped for a given Linked Account. | [optional] |
| **category_common_model_scopes** | **Hash&lt;String, Array&lt;IndividualCommonModelScopeDeserializerRequest&gt;&gt;** | When creating a Link Token, you can set permissions for Common Models that will apply to the account that is going to be linked. Any model or field not specified in link token payload will default to existing settings. | [optional] |
| **language** | **String** | The language code for the language to localize Merge Link to. | [optional] |
| **integration_specific_config** | [**Hash&lt;String, AnyType&gt;**](AnyType.md) | A JSON object containing integration-specific configuration options. | [optional] |

## Example

```ruby
require 'merge_hris_client'

instance = MergeHRISClient::EndUserDetailsRequest.new(
  end_user_email_address: example@gmail.com,
  end_user_organization_name: Test Organization,
  end_user_origin_id: 12345,
  categories: [&quot;hris&quot;,&quot;ats&quot;],
  integration: bamboohr,
  link_expiry_mins: null,
  should_create_magic_link_url: null,
  common_models: null,
  category_common_model_scopes: {&quot;hris&quot;:[{&quot;model_name&quot;:&quot;Employee&quot;,&quot;model_permissions&quot;:{&quot;READ&quot;:{&quot;is_enabled&quot;:true},&quot;WRITE&quot;:{&quot;is_enabled&quot;:true}},&quot;field_permissions&quot;:{&quot;enabled&quot;:[&quot;first_name&quot;,&quot;last_name&quot;,&quot;personal_email&quot;],&quot;disabled&quot;:[&quot;preferred_name&quot;]}},{&quot;model_name&quot;:&quot;Employment&quot;,&quot;model_permissions&quot;:{&quot;READ&quot;:{&quot;is_enabled&quot;:false},&quot;WRITE&quot;:{&quot;is_enabled&quot;:false}},&quot;field_permissions&quot;:{&quot;enabled&quot;:[&quot;effective_date&quot;]}}],&quot;ats&quot;:[{&quot;model_name&quot;:&quot;Job&quot;,&quot;model_permissions&quot;:{&quot;READ&quot;:{&quot;is_enabled&quot;:true},&quot;WRITE&quot;:{&quot;is_enabled&quot;:true}},&quot;field_permissions&quot;:{&quot;enabled&quot;:[&quot;name&quot;],&quot;disabled&quot;:[&quot;description&quot;]}},{&quot;model_name&quot;:&quot;Department&quot;,&quot;model_permissions&quot;:{&quot;READ&quot;:{&quot;is_enabled&quot;:true},&quot;WRITE&quot;:{&quot;is_enabled&quot;:true}}}]},
  language: null,
  integration_specific_config: {&quot;rippling&quot;:{&quot;oauth_code&quot;:&quot;3h1jj8ssdf31dfji3o1jjdfjasd&quot;}}
)
```

