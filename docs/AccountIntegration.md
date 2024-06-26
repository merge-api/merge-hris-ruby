# MergeHRISClient::AccountIntegration

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Company name. |  |
| **abbreviated_name** | **String** | Optional. This shortened name appears in places with limited space, usually in conjunction with the platform&#39;s logo (e.g., Merge Link menu).&lt;br&gt;&lt;br&gt;Example: &lt;i&gt;Workforce Now (in lieu of ADP Workforce Now), SuccessFactors (in lieu of SAP SuccessFactors)&lt;/i&gt; | [optional] |
| **categories** | [**Array&lt;CategoriesEnum&gt;**](CategoriesEnum.md) | Category or categories this integration belongs to. Multiple categories should be comma separated, i.e. [ats, hris]. | [optional][readonly] |
| **image** | **String** | Company logo in rectangular shape. &lt;b&gt;Upload an image with a clear background.&lt;/b&gt; | [optional] |
| **square_image** | **String** | Company logo in square shape. &lt;b&gt;Upload an image with a white background.&lt;/b&gt; | [optional] |
| **color** | **String** | The color of this integration used for buttons and text throughout the app and landing pages. &lt;b&gt;Choose a darker, saturated color.&lt;/b&gt; | [optional] |
| **slug** | **String** |  | [optional][readonly] |
| **api_endpoints_to_documentation_urls** | [**Hash&lt;String, AnyType&gt;**](AnyType.md) | Mapping of API endpoints to documentation urls for support. Example: {&#39;GET&#39;: [[&#39;/common-model-scopes&#39;, &#39;https://docs.merge.dev/accounting/common-model-scopes/#common_model_scopes_retrieve&#39;],[&#39;/common-model-actions&#39;, &#39;https://docs.merge.dev/accounting/common-model-actions/#common_model_actions_retrieve&#39;]], &#39;POST&#39;: []} | [optional] |
| **webhook_setup_guide_url** | **String** | Setup guide URL for third party webhook creation. Exposed in Merge Docs. | [optional] |
| **category_beta_status** | **Object** | Category or categories this integration is in beta status for. | [optional][readonly] |

## Example

```ruby
require 'merge_hris_client'

instance = MergeHRISClient::AccountIntegration.new(
  name: null,
  abbreviated_name: null,
  categories: null,
  image: null,
  square_image: null,
  color: null,
  slug: null,
  api_endpoints_to_documentation_urls: null,
  webhook_setup_guide_url: null,
  category_beta_status: null
)
```

