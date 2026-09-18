# Reference
## root
<details><summary><code>client.root.<a href="/lib/mailchimp/root/client.rb">list</a>() -> Mailchimp::Root::Types::ListRootResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get links to all other resources available in the API.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.root.list
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**fields:** `String` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**exclude_fields:** `String` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Root::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## AccountExports
<details><summary><code>client.account_exports.<a href="/lib/mailchimp/account_exports/client.rb">list</a>() -> Mailchimp::AccountExports::Types::ListAccountExportsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get a list of account exports for a given account.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.account_exports.list
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**fields:** `String` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**exclude_fields:** `String` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**count:** `Integer` — The number of records to return. Default value is 10. Maximum value is 1000
    
</dd>
</dl>

<dl>
<dd>

**offset:** `Integer` — Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::AccountExports::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.account_exports.<a href="/lib/mailchimp/account_exports/client.rb">create</a>(request) -> Mailchimp::AccountExports::Types::CreateAccountExportsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Create a new account export in your Mailchimp account.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.account_exports.create(include_stages: %w[audiences gallery_files])
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**include_stages:** `Internal::Types::Array[Mailchimp::AccountExports::Types::CreateAccountExportsRequestIncludeStagesItem]` — The stages of an account export to include.
    
</dd>
</dl>

<dl>
<dd>

**since_timestamp:** `String` — An ISO 8601 date that will limit the export to only records created after a given time. For instance, the reports stage will contain any campaign sent after the given timestamp. Audiences, however, are excluded from this limit.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::AccountExports::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.account_exports.<a href="/lib/mailchimp/account_exports/client.rb">get</a>(export_id:) -> Mailchimp::AccountExports::Types::GetAccountExportsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get information about a specific account export.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.account_exports.get(export_id: "export_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**export_id:** `String` — The unique id for the account export.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `String` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**exclude_fields:** `String` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::AccountExports::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## ActivityFeed
<details><summary><code>client.activity_feed.<a href="/lib/mailchimp/activity_feed/client.rb">list</a>() -> Internal::Types::Array[Mailchimp::ActivityFeed::Types::ListActivityFeedResponseItem]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get information about the activity feed endpoint's resources.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.activity_feed.list
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request_options:** `Mailchimp::ActivityFeed::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.activity_feed.<a href="/lib/mailchimp/activity_feed/client.rb">list_chimp_chatter</a>() -> Mailchimp::ActivityFeed::Types::ListChimpChatterActivityFeedResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Return the Chimp Chatter for this account ordered by most recent.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.activity_feed.list_chimp_chatter
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**count:** `Integer` — The number of records to return. Default value is 10. Maximum value is 1000
    
</dd>
</dl>

<dl>
<dd>

**offset:** `Integer` — Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::ActivityFeed::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Audiences
<details><summary><code>client.audiences.<a href="/lib/mailchimp/audiences/client.rb">get_audience_contact_list</a>(audience_id:) -> Mailchimp::Audiences::Types::GetAudienceContactListResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get a list of omni-channel contacts for a given audience.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.audiences.get_audience_contact_list(audience_id: "audience_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**audience_id:** `String` — The unique ID for the audience.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `String` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**exclude_fields:** `String` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**count:** `Integer` — The number of records to return. Default value is 10. Maximum value is 1000
    
</dd>
</dl>

<dl>
<dd>

**cursor:** `String` — Paginate through a collection of records by setting the `cursor` parameter to a `next_cursor` attribute returned by a previous request. Default value fetches the first "page" of results.
    
</dd>
</dl>

<dl>
<dd>

**created_before:** `String` — Restricts the response to contacts created at or before the specified time (inclusive). Uses ISO 8601 format: 2025-04-23T15:41:36+00:00.
    
</dd>
</dl>

<dl>
<dd>

**created_since:** `String` — Restricts the response to contacts created after the specified time (exclusive). Uses ISO 8601 format: 2025-04-23T15:41:36+00:00.
    
</dd>
</dl>

<dl>
<dd>

**updated_before:** `String` — Restricts the response to contacts updated at or before the specified time (inclusive). Uses ISO 8601 format: 2025-04-23T15:41:36+00:00.
    
</dd>
</dl>

<dl>
<dd>

**updated_since:** `String` — Restricts the response to contacts updated after the specified time (exclusive). Uses ISO 8601 format: 2025-04-23T15:41:36+00:00.
    
</dd>
</dl>

<dl>
<dd>

**sort_field:** `Mailchimp::Audiences::Types::GetAudienceContactListRequestSortField` — Specifies the field to sort the returned contacts by.
    
</dd>
</dl>

<dl>
<dd>

**sort_dir:** `Mailchimp::Audiences::Types::GetAudienceContactListRequestSortDir` — Determines the order direction for sorted results.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Audiences::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.audiences.<a href="/lib/mailchimp/audiences/client.rb">create_audience_contact</a>(audience_id:, request) -> Mailchimp::Types::AudiencesContact</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Create a new omni-channel contact for an audience.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.audiences.create_audience_contact(audience_id: "audience_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**audience_id:** `String` — The unique ID for the audience.
    
</dd>
</dl>

<dl>
<dd>

**merge_field_validation_mode:** `Mailchimp::Audiences::Types::CreateAudienceContactRequestMergeFieldValidationMode` — Defines how merge field validation is handled. When set to `ignore_required_checks`, the API does not raise an error if required merge fields are missing from the request. When set to `strict`, the API enforces validation and returns an error if any required merge field is not provided. If this setting is omitted, `strict` is applied by default.
    
</dd>
</dl>

<dl>
<dd>

**data_mode:** `Mailchimp::Audiences::Types::CreateAudienceContactRequestDataMode` — Indicates the data processing mode. In `historical` mode, contact data changes do not trigger automations or webhooks. In `live mode`, such changes do trigger them.
    
</dd>
</dl>

<dl>
<dd>

**email_channel:** `Mailchimp::Audiences::Types::CreateAudienceContactRequestEmailChannel` 
    
</dd>
</dl>

<dl>
<dd>

**language:** `String` — The contact's detected language.
    
</dd>
</dl>

<dl>
<dd>

**merge_fields:** `Internal::Types::Hash[String, Mailchimp::Audiences::Types::CreateAudienceContactRequestMergeFieldsValue]` — A dictionary of merge fields where the keys are the merge tags. See the [Merge Fields documentation](https://mailchimp.com/developer/marketing/docs/merge-fields/#structure) for more about the structure.
    
</dd>
</dl>

<dl>
<dd>

**sms_channel:** `Mailchimp::Audiences::Types::CreateAudienceContactRequestSmsChannel` 
    
</dd>
</dl>

<dl>
<dd>

**tags:** `Internal::Types::Array[Mailchimp::Audiences::Types::CreateAudienceContactRequestTagsItem]` — An array of tags to add to the contact. Accepts tag name strings or objects with name and status. This operation is append-only; existing tags will be preserved, and only new tags from this array will be added.
    
</dd>
</dl>

<dl>
<dd>

**update_existing:** `Internal::Types::Boolean` — If a contact already exists, update them instead of returning a conflict error. When `true` and a matching contact is found (by email or phone), the existing contact is updated with the provided channel data. Defaults to `false`.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Audiences::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.audiences.<a href="/lib/mailchimp/audiences/client.rb">get_audience_contact</a>(audience_id:, contact_id:) -> Mailchimp::Types::AudiencesContact</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Retrieve a specific omni-channel contact in an audience.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.audiences.get_audience_contact(
  audience_id: "audience_id",
  contact_id: "contact_id"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**audience_id:** `String` — The unique ID for the audience.
    
</dd>
</dl>

<dl>
<dd>

**contact_id:** `String` — A unique identifier for the contact, which can be a Mailchimp contact ID or a channel hash. A channel hash must follow the format email:[md5_hash] (where the hash is the MD5 of the lowercased email address) or sms:[sha256_hash] (where the hash is the SHA256 of the E.164-formatted phone number).
    
</dd>
</dl>

<dl>
<dd>

**fields:** `String` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**exclude_fields:** `String` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Audiences::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.audiences.<a href="/lib/mailchimp/audiences/client.rb">patch_audience_contact</a>(audience_id:, contact_id:, request) -> Mailchimp::Types::AudiencesContact</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Update an existing omni-channel contact.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.audiences.patch_audience_contact(
  audience_id: "audience_id",
  contact_id: "contact_id"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**audience_id:** `String` — The unique ID for the audience.
    
</dd>
</dl>

<dl>
<dd>

**contact_id:** `String` — The unique id for the contact.
    
</dd>
</dl>

<dl>
<dd>

**merge_field_validation_mode:** `Mailchimp::Audiences::Types::PatchAudienceContactRequestMergeFieldValidationMode` — Defines how merge field validation is handled. When set to `ignore_required_checks`, the API does not raise an error if required merge fields are missing from the request. When set to `strict`, the API enforces validation and returns an error if any required merge field is not provided. If this setting is omitted, `strict` is applied by default.
    
</dd>
</dl>

<dl>
<dd>

**data_mode:** `Mailchimp::Audiences::Types::PatchAudienceContactRequestDataMode` — Indicates the data processing mode. In `historical` mode, contact data changes do not trigger automations or webhooks. In `live mode`, such changes do trigger them.
    
</dd>
</dl>

<dl>
<dd>

**email_channel:** `Mailchimp::Audiences::Types::PatchAudienceContactRequestEmailChannel` 
    
</dd>
</dl>

<dl>
<dd>

**language:** `String` — The contact's detected language.
    
</dd>
</dl>

<dl>
<dd>

**merge_fields:** `Internal::Types::Hash[String, Mailchimp::Audiences::Types::PatchAudienceContactRequestMergeFieldsValue]` — A dictionary of merge fields where the keys are the merge tags. See the [Merge Fields documentation](https://mailchimp.com/developer/marketing/docs/merge-fields/#structure) for more about the structure.
    
</dd>
</dl>

<dl>
<dd>

**sms_channel:** `Mailchimp::Audiences::Types::PatchAudienceContactRequestSmsChannel` 
    
</dd>
</dl>

<dl>
<dd>

**tags:** `Internal::Types::Array[Mailchimp::Audiences::Types::PatchAudienceContactRequestTagsItem]` — An array of tags to add to the contact. Accepts tag name strings or objects with name and status. This operation is append-only; existing tags will be preserved, and only new tags from this array will be added.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Audiences::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.audiences.<a href="/lib/mailchimp/audiences/client.rb">post_audiences_contacts_actions_archive</a>(audience_id:, contact_id:) -> </code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Archives a Contact.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.audiences.post_audiences_contacts_actions_archive(
  audience_id: "audience_id",
  contact_id: "contact_id"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**audience_id:** `String` — The unique ID for the audience.
    
</dd>
</dl>

<dl>
<dd>

**contact_id:** `String` — The unique id for the contact.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Audiences::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.audiences.<a href="/lib/mailchimp/audiences/client.rb">post_audiences_contacts_actions_forget</a>(audience_id:, contact_id:) -> </code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Forgets a Contact.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.audiences.post_audiences_contacts_actions_forget(
  audience_id: "audience_id",
  contact_id: "contact_id"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**audience_id:** `String` — The unique ID for the audience.
    
</dd>
</dl>

<dl>
<dd>

**contact_id:** `String` — The unique id for the contact.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Audiences::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## AuthorizedApps
<details><summary><code>client.authorized_apps.<a href="/lib/mailchimp/authorized_apps/client.rb">list</a>() -> Mailchimp::AuthorizedApps::Types::ListAuthorizedAppsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get a list of an account's registered, connected applications.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.authorized_apps.list
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**fields:** `String` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**exclude_fields:** `String` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**count:** `Integer` — The number of records to return. Default value is 10. Maximum value is 1000
    
</dd>
</dl>

<dl>
<dd>

**offset:** `Integer` — Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::AuthorizedApps::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.authorized_apps.<a href="/lib/mailchimp/authorized_apps/client.rb">get</a>(app_id:) -> Mailchimp::AuthorizedApps::Types::GetAuthorizedAppsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get information about a specific authorized application.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.authorized_apps.get(app_id: "app_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**app_id:** `String` — The unique id for the connected authorized application.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `String` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**exclude_fields:** `String` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::AuthorizedApps::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## automations
<details><summary><code>client.automations.<a href="/lib/mailchimp/automations/client.rb">list</a>() -> Mailchimp::Automations::Types::ListAutomationsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get a summary of an account's classic automations.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.automations.list
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**count:** `Integer` — The number of records to return. Default value is 10. Maximum value is 1000
    
</dd>
</dl>

<dl>
<dd>

**offset:** `Integer` — Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `String` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**exclude_fields:** `String` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**before_create_time:** `String` — Restrict the response to automations created before this time. Uses the ISO 8601 time format: 2015-10-21T15:41:36+00:00.
    
</dd>
</dl>

<dl>
<dd>

**since_create_time:** `String` — Restrict the response to automations created after this time. Uses the ISO 8601 time format: 2015-10-21T15:41:36+00:00.
    
</dd>
</dl>

<dl>
<dd>

**before_start_time:** `String` — Restrict the response to automations started before this time. Uses the ISO 8601 time format: 2015-10-21T15:41:36+00:00.
    
</dd>
</dl>

<dl>
<dd>

**since_start_time:** `String` — Restrict the response to automations started after this time. Uses the ISO 8601 time format: 2015-10-21T15:41:36+00:00.
    
</dd>
</dl>

<dl>
<dd>

**status:** `Mailchimp::Automations::Types::ListAutomationsRequestStatus` — Restrict the results to automations with the specified status.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Automations::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.automations.<a href="/lib/mailchimp/automations/client.rb">create</a>(request) -> Mailchimp::Types::AutomationWorkflow</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Create a new classic automation in your Mailchimp account.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.automations.create(
  recipients: {},
  trigger_settings: {
    workflow_type: "abandonedBrowse"
  }
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**recipients:** `Mailchimp::Automations::Types::CreateAutomationsRequestRecipients` — List settings for the Automation.
    
</dd>
</dl>

<dl>
<dd>

**settings:** `Mailchimp::Automations::Types::CreateAutomationsRequestSettings` — The settings for the Automation workflow.
    
</dd>
</dl>

<dl>
<dd>

**trigger_settings:** `Mailchimp::Automations::Types::CreateAutomationsRequestTriggerSettings` — Trigger settings for the Automation.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Automations::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.automations.<a href="/lib/mailchimp/automations/client.rb">get</a>(workflow_id:) -> Mailchimp::Types::AutomationWorkflow</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get a summary of an individual classic automation workflow's settings and content. The `trigger_settings` object returns information for the first email in the workflow.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.automations.get(workflow_id: "workflow_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**workflow_id:** `String` — The unique id for the Automation workflow.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `String` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**exclude_fields:** `String` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Automations::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.automations.<a href="/lib/mailchimp/automations/client.rb">create_action_archive</a>(workflow_id:) -> </code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Archiving will permanently end your automation and keep the report data. You’ll be able to replicate your archived automation, but you can’t restart it.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.automations.create_action_archive(workflow_id: "workflow_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**workflow_id:** `String` — The unique id for the Automation workflow.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Automations::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.automations.<a href="/lib/mailchimp/automations/client.rb">create_action_pause_all_email</a>(workflow_id:) -> </code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Pause all emails in a specific classic automation workflow.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.automations.create_action_pause_all_email(workflow_id: "workflow_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**workflow_id:** `String` — The unique id for the Automation workflow.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Automations::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.automations.<a href="/lib/mailchimp/automations/client.rb">create_action_start_all_email</a>(workflow_id:) -> </code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Start all emails in a classic automation workflow.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.automations.create_action_start_all_email(workflow_id: "workflow_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**workflow_id:** `String` — The unique id for the Automation workflow.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Automations::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.automations.<a href="/lib/mailchimp/automations/client.rb">list_emails</a>(workflow_id:) -> Mailchimp::Automations::Types::ListEmailsAutomationsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get a summary of the emails in a classic automation workflow.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.automations.list_emails(workflow_id: "workflow_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**workflow_id:** `String` — The unique id for the Automation workflow.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Automations::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.automations.<a href="/lib/mailchimp/automations/client.rb">get_email</a>(workflow_id:, workflow_email_id:) -> Mailchimp::Types::AutomationWorkflowEmail</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get information about an individual classic automation workflow email.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.automations.get_email(
  workflow_id: "workflow_id",
  workflow_email_id: "workflow_email_id"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**workflow_id:** `String` — The unique id for the Automation workflow.
    
</dd>
</dl>

<dl>
<dd>

**workflow_email_id:** `String` — The unique id for the Automation workflow email.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Automations::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.automations.<a href="/lib/mailchimp/automations/client.rb">delete_email</a>(workflow_id:, workflow_email_id:) -> </code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Removes an individual classic automation workflow email. Emails from certain workflow types, including the Abandoned Cart Email (abandonedCart) and Product Retargeting Email (abandonedBrowse) Workflows, cannot be deleted.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.automations.delete_email(
  workflow_id: "workflow_id",
  workflow_email_id: "workflow_email_id"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**workflow_id:** `String` — The unique id for the Automation workflow.
    
</dd>
</dl>

<dl>
<dd>

**workflow_email_id:** `String` — The unique id for the Automation workflow email.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Automations::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.automations.<a href="/lib/mailchimp/automations/client.rb">update_email</a>(workflow_id:, workflow_email_id:, request) -> Mailchimp::Types::AutomationWorkflowEmail</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Update settings for a classic automation workflow email.  Only works with workflows of type: abandonedBrowse, abandonedCart, emailFollowup, or singleWelcome.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.automations.update_email(
  workflow_id: "workflow_id",
  workflow_email_id: "workflow_email_id"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**workflow_id:** `String` — The unique id for the Automation workflow.
    
</dd>
</dl>

<dl>
<dd>

**workflow_email_id:** `String` — The unique id for the Automation workflow email.
    
</dd>
</dl>

<dl>
<dd>

**delay:** `Mailchimp::Automations::Types::UpdateEmailAutomationsRequestDelay` — The delay settings for an automation email.
    
</dd>
</dl>

<dl>
<dd>

**settings:** `Mailchimp::Automations::Types::UpdateEmailAutomationsRequestSettings` — Settings for the campaign including the email subject, from name, and from email address.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Automations::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.automations.<a href="/lib/mailchimp/automations/client.rb">create_email_action_pause</a>(workflow_id:, workflow_email_id:) -> </code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Pause an automated email.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.automations.create_email_action_pause(
  workflow_id: "workflow_id",
  workflow_email_id: "workflow_email_id"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**workflow_id:** `String` — The unique id for the Automation workflow.
    
</dd>
</dl>

<dl>
<dd>

**workflow_email_id:** `String` — The unique id for the Automation workflow email.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Automations::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.automations.<a href="/lib/mailchimp/automations/client.rb">create_email_action_start</a>(workflow_id:, workflow_email_id:) -> </code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Start an automated email.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.automations.create_email_action_start(
  workflow_id: "workflow_id",
  workflow_email_id: "workflow_email_id"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**workflow_id:** `String` — The unique id for the Automation workflow.
    
</dd>
</dl>

<dl>
<dd>

**workflow_email_id:** `String` — The unique id for the Automation workflow email.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Automations::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.automations.<a href="/lib/mailchimp/automations/client.rb">list_email_queue</a>(workflow_id:, workflow_email_id:) -> Mailchimp::Automations::Types::ListEmailQueueAutomationsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get information about a classic automation email queue.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.automations.list_email_queue(
  workflow_id: "workflow_id",
  workflow_email_id: "workflow_email_id"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**workflow_id:** `String` — The unique id for the Automation workflow.
    
</dd>
</dl>

<dl>
<dd>

**workflow_email_id:** `String` — The unique id for the Automation workflow email.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Automations::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.automations.<a href="/lib/mailchimp/automations/client.rb">create_email_queue</a>(workflow_id:, workflow_email_id:, request) -> Mailchimp::Types::SubscriberInAutomationQueue</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Manually add a subscriber to a workflow, bypassing the default trigger settings. You can also use this endpoint to trigger a series of automated emails in an API 3.0 workflow type.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.automations.create_email_queue(
  workflow_id: "workflow_id",
  workflow_email_id: "workflow_email_id",
  email_address: "email_address"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**workflow_id:** `String` — The unique id for the Automation workflow.
    
</dd>
</dl>

<dl>
<dd>

**workflow_email_id:** `String` — The unique id for the Automation workflow email.
    
</dd>
</dl>

<dl>
<dd>

**email_address:** `String` — The list member's email address.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Automations::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.automations.<a href="/lib/mailchimp/automations/client.rb">get_email_queue</a>(workflow_id:, workflow_email_id:, subscriber_hash:) -> Mailchimp::Types::SubscriberInAutomationQueue</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get information about a specific subscriber in a classic automation email queue.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.automations.get_email_queue(
  workflow_id: "workflow_id",
  workflow_email_id: "workflow_email_id",
  subscriber_hash: "subscriber_hash"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**workflow_id:** `String` — The unique id for the Automation workflow.
    
</dd>
</dl>

<dl>
<dd>

**workflow_email_id:** `String` — The unique id for the Automation workflow email.
    
</dd>
</dl>

<dl>
<dd>

**subscriber_hash:** `String` — The MD5 hash of the lowercase version of the list member's email address.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Automations::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.automations.<a href="/lib/mailchimp/automations/client.rb">list_removed_subscribers</a>(workflow_id:) -> Mailchimp::Automations::Types::ListRemovedSubscribersAutomationsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get information about subscribers who were removed from a classic automation workflow.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.automations.list_removed_subscribers(workflow_id: "workflow_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**workflow_id:** `String` — The unique id for the Automation workflow.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Automations::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.automations.<a href="/lib/mailchimp/automations/client.rb">create_removed_subscriber</a>(workflow_id:, request) -> Mailchimp::Types::SubscriberRemovedFromAutomationWorkflow</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Remove a subscriber from a specific classic automation workflow. You can remove a subscriber at any point in an automation workflow, regardless of how many emails they've been sent from that workflow. Once they're removed, they can never be added back to the same workflow.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.automations.create_removed_subscriber(
  workflow_id: "workflow_id",
  email_address: "email_address"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**workflow_id:** `String` — The unique id for the Automation workflow.
    
</dd>
</dl>

<dl>
<dd>

**email_address:** `String` — The list member's email address.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Automations::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.automations.<a href="/lib/mailchimp/automations/client.rb">get_removed_subscriber</a>(workflow_id:, subscriber_hash:) -> Mailchimp::Types::SubscriberRemovedFromAutomationWorkflow</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get information about a specific subscriber who was removed from a classic automation workflow.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.automations.get_removed_subscriber(
  workflow_id: "workflow_id",
  subscriber_hash: "subscriber_hash"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**workflow_id:** `String` — The unique id for the Automation workflow.
    
</dd>
</dl>

<dl>
<dd>

**subscriber_hash:** `String` — The MD5 hash of the lowercase version of the list member's email address.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Automations::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## BatchWebhooks
<details><summary><code>client.batch_webhooks.<a href="/lib/mailchimp/batch_webhooks/client.rb">list</a>() -> Mailchimp::BatchWebhooks::Types::ListBatchWebhooksResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get all webhooks that have been configured for batches.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.batch_webhooks.list
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**fields:** `String` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**exclude_fields:** `String` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**count:** `Integer` — The number of records to return. Default value is 10. Maximum value is 1000
    
</dd>
</dl>

<dl>
<dd>

**offset:** `Integer` — Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::BatchWebhooks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.batch_webhooks.<a href="/lib/mailchimp/batch_webhooks/client.rb">create</a>(request) -> Mailchimp::BatchWebhooks::Types::CreateBatchWebhooksResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Configure a webhook that will fire whenever any batch request completes processing.  You may only have a maximum of 20 batch webhooks.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.batch_webhooks.create(url: "http://yourdomain.com/webhook")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**enabled:** `Internal::Types::Boolean` — Whether the webhook receives requests or not.
    
</dd>
</dl>

<dl>
<dd>

**url:** `String` — A valid URL for the Webhook.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::BatchWebhooks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.batch_webhooks.<a href="/lib/mailchimp/batch_webhooks/client.rb">get</a>(batch_webhook_id:) -> Mailchimp::Types::BatchWebhook</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get information about a specific batch webhook.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.batch_webhooks.get(batch_webhook_id: "batch_webhook_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**batch_webhook_id:** `String` — The unique id for the batch webhook.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `String` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**exclude_fields:** `String` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::BatchWebhooks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.batch_webhooks.<a href="/lib/mailchimp/batch_webhooks/client.rb">delete</a>(batch_webhook_id:) -> </code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Remove a batch webhook. Webhooks will no longer be sent to the given URL.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.batch_webhooks.delete(batch_webhook_id: "batch_webhook_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**batch_webhook_id:** `String` — The unique id for the batch webhook.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::BatchWebhooks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.batch_webhooks.<a href="/lib/mailchimp/batch_webhooks/client.rb">update</a>(batch_webhook_id:, request) -> Mailchimp::Types::BatchWebhook</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Update a webhook that will fire whenever any batch request completes processing.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.batch_webhooks.update(batch_webhook_id: "batch_webhook_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**batch_webhook_id:** `String` — The unique id for the batch webhook.
    
</dd>
</dl>

<dl>
<dd>

**enabled:** `Internal::Types::Boolean` — Whether the webhook receives requests or not.
    
</dd>
</dl>

<dl>
<dd>

**url:** `String` — A valid URL for the Webhook.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::BatchWebhooks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## batches
<details><summary><code>client.batches.<a href="/lib/mailchimp/batches/client.rb">list</a>() -> Mailchimp::Batches::Types::ListBatchesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get a summary of batch requests that have been made.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.batches.list
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**fields:** `String` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**exclude_fields:** `String` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**count:** `Integer` — The number of records to return. Default value is 10. Maximum value is 1000
    
</dd>
</dl>

<dl>
<dd>

**offset:** `Integer` — Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Batches::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.batches.<a href="/lib/mailchimp/batches/client.rb">create</a>(request) -> Mailchimp::Types::Batch</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Begin processing a batch operations request.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.batches.create(operations: [{
  method_: "GET",
  path: "/lists"
}])
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**operations:** `Internal::Types::Array[Mailchimp::Batches::Types::CreateBatchesRequestOperationsItem]` — An array of objects that describes operations to perform.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Batches::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.batches.<a href="/lib/mailchimp/batches/client.rb">get</a>(batch_id:) -> Mailchimp::Types::Batch</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get the status of a batch request.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.batches.get(batch_id: "batch_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**batch_id:** `String` — The unique id for the batch operation.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `String` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**exclude_fields:** `String` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Batches::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.batches.<a href="/lib/mailchimp/batches/client.rb">delete</a>(batch_id:) -> </code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Stops a batch request from running. Since only one batch request is run at a time, this can be used to cancel a long running request. The results of any completed operations will not be available after this call.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.batches.delete(batch_id: "batch_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**batch_id:** `String` — The unique id for the batch operation.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Batches::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## CampaignFolders
<details><summary><code>client.campaign_folders.<a href="/lib/mailchimp/campaign_folders/client.rb">list</a>() -> Mailchimp::Types::CampaignFolders</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get all folders used to organize campaigns.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.campaign_folders.list
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**fields:** `String` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**exclude_fields:** `String` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**count:** `Integer` — The number of records to return. Default value is 10. Maximum value is 1000
    
</dd>
</dl>

<dl>
<dd>

**offset:** `Integer` — Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::CampaignFolders::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.campaign_folders.<a href="/lib/mailchimp/campaign_folders/client.rb">create</a>(request) -> Mailchimp::Types::CampaignFolders</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Create a new campaign folder.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.campaign_folders.create(name: "name")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**name:** `String` — Name to associate with the folder.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::CampaignFolders::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.campaign_folders.<a href="/lib/mailchimp/campaign_folders/client.rb">get</a>(folder_id:) -> Mailchimp::CampaignFolders::Types::GetCampaignFoldersResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get information about a specific folder used to organize campaigns.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.campaign_folders.get(folder_id: "folder_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**folder_id:** `String` — The unique id for the campaign folder.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `String` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**exclude_fields:** `String` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::CampaignFolders::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.campaign_folders.<a href="/lib/mailchimp/campaign_folders/client.rb">delete</a>(folder_id:) -> </code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Delete a specific campaign folder, and mark all the campaigns in the folder as 'unfiled'.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.campaign_folders.delete(folder_id: "folder_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**folder_id:** `String` — The unique id for the campaign folder.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::CampaignFolders::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.campaign_folders.<a href="/lib/mailchimp/campaign_folders/client.rb">update</a>(folder_id:, request) -> Mailchimp::CampaignFolders::Types::UpdateCampaignFoldersResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Update a specific folder used to organize campaigns.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.campaign_folders.update(
  folder_id: "folder_id",
  name: "name"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**folder_id:** `String` — The unique id for the campaign folder.
    
</dd>
</dl>

<dl>
<dd>

**name:** `String` — Name to associate with the folder.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::CampaignFolders::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## campaigns
<details><summary><code>client.campaigns.<a href="/lib/mailchimp/campaigns/client.rb">list</a>() -> Mailchimp::Campaigns::Types::ListCampaignsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get all campaigns in an account.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.campaigns.list
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**fields:** `String` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**exclude_fields:** `String` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**count:** `Integer` — The number of records to return. Default value is 10. Maximum value is 1000
    
</dd>
</dl>

<dl>
<dd>

**offset:** `Integer` — Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    
</dd>
</dl>

<dl>
<dd>

**type:** `Mailchimp::Campaigns::Types::ListCampaignsRequestType` — The campaign type.
    
</dd>
</dl>

<dl>
<dd>

**status:** `Mailchimp::Campaigns::Types::ListCampaignsRequestStatus` — The status of the campaign.
    
</dd>
</dl>

<dl>
<dd>

**before_send_time:** `String` — Restrict the response to campaigns sent before the set time. Uses ISO 8601 time format: 2015-10-21T15:41:36+00:00.
    
</dd>
</dl>

<dl>
<dd>

**since_send_time:** `String` — Restrict the response to campaigns sent after the set time. Uses ISO 8601 time format: 2015-10-21T15:41:36+00:00.
    
</dd>
</dl>

<dl>
<dd>

**before_create_time:** `String` — Restrict the response to campaigns created before the set time. Uses ISO 8601 time format: 2015-10-21T15:41:36+00:00.
    
</dd>
</dl>

<dl>
<dd>

**since_create_time:** `String` — Restrict the response to campaigns created after the set time. Uses ISO 8601 time format: 2015-10-21T15:41:36+00:00.
    
</dd>
</dl>

<dl>
<dd>

**list_id:** `String` — The unique id for the list.
    
</dd>
</dl>

<dl>
<dd>

**folder_id:** `String` — The unique folder id.
    
</dd>
</dl>

<dl>
<dd>

**member_id:** `String` — Retrieve campaigns sent to a particular list member. Member ID is The MD5 hash of the lowercase version of the list member’s email address.
    
</dd>
</dl>

<dl>
<dd>

**sort_field:** `Mailchimp::Campaigns::Types::ListCampaignsRequestSortField` — Returns files sorted by the specified field.
    
</dd>
</dl>

<dl>
<dd>

**sort_dir:** `Mailchimp::Campaigns::Types::ListCampaignsRequestSortDir` — Determines the order direction for sorted results.
    
</dd>
</dl>

<dl>
<dd>

**include_resend_shortcut_eligibility:** `Internal::Types::Boolean` — Return the `resend_shortcut_eligibility` field in the response, which tells you if the campaign is eligible for the various Campaign Resend Shortcuts offered.
    
</dd>
</dl>

<dl>
<dd>

**include_resend_shortcut_usage:** `Internal::Types::Boolean` — Return the `resend_shortcut_usage` field in the response.  This includes information about campaigns related by a shortcut.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Campaigns::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.campaigns.<a href="/lib/mailchimp/campaigns/client.rb">create</a>(request) -> Mailchimp::Types::Campaign</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Create a new Mailchimp campaign.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.campaigns.create(type: "regular")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**content_type:** `Mailchimp::Campaigns::Types::CreateCampaignsRequestContentType` — How the campaign's content is put together. The old drag and drop editor uses 'template' while the new editor uses 'multichannel'. Defaults to template.
    
</dd>
</dl>

<dl>
<dd>

**recipients:** `Mailchimp::Campaigns::Types::CreateCampaignsRequestRecipients` — List settings for the campaign.
    
</dd>
</dl>

<dl>
<dd>

**rss_opts:** `Mailchimp::Campaigns::Types::CreateCampaignsRequestRssOpts` — [RSS](https://mailchimp.com/help/share-your-blog-posts-with-mailchimp/) options, specific to an RSS campaign.
    
</dd>
</dl>

<dl>
<dd>

**settings:** `Mailchimp::Campaigns::Types::CreateCampaignsRequestSettings` — The settings for your campaign, including subject, from name, reply-to address, and more.
    
</dd>
</dl>

<dl>
<dd>

**social_card:** `Mailchimp::Campaigns::Types::CreateCampaignsRequestSocialCard` — The preview for the campaign, rendered by social networks like Facebook and Twitter. [Learn more](https://mailchimp.com/help/enable-and-customize-social-cards/).
    
</dd>
</dl>

<dl>
<dd>

**tracking:** `Mailchimp::Types::CampaignTrackingOptions` 
    
</dd>
</dl>

<dl>
<dd>

**type:** `Mailchimp::Campaigns::Types::CreateCampaignsRequestType` — There are four types of [campaigns](https://mailchimp.com/help/getting-started-with-campaigns/) you can create in Mailchimp. A/B Split campaigns have been deprecated and variate campaigns should be used instead.
    
</dd>
</dl>

<dl>
<dd>

**variate_settings:** `Mailchimp::Campaigns::Types::CreateCampaignsRequestVariateSettings` — The settings specific to A/B test campaigns.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Campaigns::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.campaigns.<a href="/lib/mailchimp/campaigns/client.rb">get</a>(campaign_id:) -> Mailchimp::Types::Campaign</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get information about a specific campaign.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.campaigns.get(campaign_id: "campaign_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**campaign_id:** `String` — The unique id for the campaign.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `String` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**exclude_fields:** `String` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**include_resend_shortcut_eligibility:** `Internal::Types::Boolean` — Return the `resend_shortcut_eligibility` field in the response, which tells you if the campaign is eligible for the various Campaign Resend Shortcuts offered.
    
</dd>
</dl>

<dl>
<dd>

**include_resend_shortcut_usage:** `Internal::Types::Boolean` — Return the `resend_shortcut_usage` field in the response.  This includes information about campaigns related by a shortcut.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Campaigns::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.campaigns.<a href="/lib/mailchimp/campaigns/client.rb">delete</a>(campaign_id:) -> </code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Remove a campaign from your Mailchimp account.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.campaigns.delete(campaign_id: "campaign_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**campaign_id:** `String` — The unique id for the campaign.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Campaigns::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.campaigns.<a href="/lib/mailchimp/campaigns/client.rb">update</a>(campaign_id:, request) -> Mailchimp::Types::Campaign</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Update some or all of the settings for a specific campaign.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.campaigns.update(campaign_id: "campaign_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**campaign_id:** `String` — The unique id for the campaign.
    
</dd>
</dl>

<dl>
<dd>

**recipients:** `Mailchimp::Campaigns::Types::UpdateCampaignsRequestRecipients` — List settings for the campaign.
    
</dd>
</dl>

<dl>
<dd>

**rss_opts:** `Mailchimp::Campaigns::Types::UpdateCampaignsRequestRssOpts` — [RSS](https://mailchimp.com/help/share-your-blog-posts-with-mailchimp/) options for a campaign.
    
</dd>
</dl>

<dl>
<dd>

**settings:** `Mailchimp::Campaigns::Types::UpdateCampaignsRequestSettings` — The settings for your campaign, including subject, from name, reply-to address, and more.
    
</dd>
</dl>

<dl>
<dd>

**social_card:** `Mailchimp::Campaigns::Types::UpdateCampaignsRequestSocialCard` — The preview for the campaign, rendered by social networks like Facebook and Twitter. [Learn more](https://mailchimp.com/help/enable-and-customize-social-cards/).
    
</dd>
</dl>

<dl>
<dd>

**tracking:** `Mailchimp::Types::CampaignTrackingOptions` 
    
</dd>
</dl>

<dl>
<dd>

**variate_settings:** `Mailchimp::Campaigns::Types::UpdateCampaignsRequestVariateSettings` — The settings specific to A/B test campaigns.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Campaigns::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.campaigns.<a href="/lib/mailchimp/campaigns/client.rb">create_action_cancel_send</a>(campaign_id:) -> </code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Cancel a Regular or Plain-Text Campaign after you send, before all of your recipients receive it. This feature is included with Mailchimp Pro.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.campaigns.create_action_cancel_send(campaign_id: "campaign_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**campaign_id:** `String` — The unique id for the campaign.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Campaigns::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.campaigns.<a href="/lib/mailchimp/campaigns/client.rb">create_action_create_resend</a>(campaign_id:, request) -> Mailchimp::Types::Campaign</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Remove the guesswork for resending a campaign to certain segments. You can use this endpoint as a shortcut to replicate a campaign and resend it to common segments, such as those who didn't open the campaign, or any new subscribers since it was sent.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.campaigns.create_action_create_resend(campaign_id: "campaign_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**campaign_id:** `String` — The unique id for the campaign.
    
</dd>
</dl>

<dl>
<dd>

**shortcut_type:** `Mailchimp::Campaigns::Types::CreateActionCreateResendCampaignsRequestShortcutType` — Which campaign resend shortcut to use. Default is `to_non_openers`.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Campaigns::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.campaigns.<a href="/lib/mailchimp/campaigns/client.rb">create_action_pause</a>(campaign_id:) -> </code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Pause an RSS-Driven campaign.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.campaigns.create_action_pause(campaign_id: "campaign_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**campaign_id:** `String` — The unique id for the campaign.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Campaigns::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.campaigns.<a href="/lib/mailchimp/campaigns/client.rb">create_action_replicate</a>(campaign_id:) -> Mailchimp::Types::Campaign</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Replicate a campaign in saved or send status.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.campaigns.create_action_replicate(campaign_id: "campaign_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**campaign_id:** `String` — The unique id for the campaign.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Campaigns::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.campaigns.<a href="/lib/mailchimp/campaigns/client.rb">create_action_resume</a>(campaign_id:) -> </code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Resume an RSS-Driven campaign.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.campaigns.create_action_resume(campaign_id: "campaign_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**campaign_id:** `String` — The unique id for the campaign.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Campaigns::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.campaigns.<a href="/lib/mailchimp/campaigns/client.rb">create_action_schedule</a>(campaign_id:, request) -> </code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Schedule a campaign for delivery. If you're using Multivariate Campaigns to test send times or sending RSS Campaigns, use the send action instead.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.campaigns.create_action_schedule(
  campaign_id: "campaign_id",
  schedule_time: "2024-01-15T09:30:00Z"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**campaign_id:** `String` — The unique id for the campaign.
    
</dd>
</dl>

<dl>
<dd>

**batch_delivery:** `Mailchimp::Campaigns::Types::CreateActionScheduleCampaignsRequestBatchDelivery` — Choose whether the campaign should use [Batch Delivery](https://mailchimp.com/help/schedule-batch-delivery/). Cannot be set to `true` for campaigns using [Timewarp](https://mailchimp.com/help/use-timewarp/).
    
</dd>
</dl>

<dl>
<dd>

**schedule_time:** `String` — The UTC date and time to schedule the campaign for delivery in ISO 8601 format. Campaigns may only be scheduled to send on the quarter-hour (:00, :15, :30, :45).
    
</dd>
</dl>

<dl>
<dd>

**timewarp:** `Internal::Types::Boolean` — Choose whether the campaign should use [Timewarp](https://mailchimp.com/help/use-timewarp/) when sending. Campaigns scheduled with Timewarp are localized based on the recipients' time zones. For example, a Timewarp campaign with a `schedule_time` of 13:00 will be sent to each recipient at 1:00pm in their local time. Cannot be set to `true` for campaigns using [Batch Delivery](https://mailchimp.com/help/schedule-batch-delivery/).
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Campaigns::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.campaigns.<a href="/lib/mailchimp/campaigns/client.rb">create_action_send</a>(campaign_id:) -> </code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Send a Mailchimp campaign. For RSS Campaigns, the campaign will send according to its schedule. All other campaigns will send immediately.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.campaigns.create_action_send(campaign_id: "campaign_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**campaign_id:** `String` — The unique id for the campaign.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Campaigns::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.campaigns.<a href="/lib/mailchimp/campaigns/client.rb">create_action_test</a>(campaign_id:, request) -> </code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Send a test email.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.campaigns.create_action_test(
  campaign_id: "campaign_id",
  send_type: "html",
  test_emails: ["test_emails"]
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**campaign_id:** `String` — The unique id for the campaign.
    
</dd>
</dl>

<dl>
<dd>

**send_type:** `Mailchimp::Campaigns::Types::CreateActionTestCampaignsRequestSendType` — Choose the type of test email to send.
    
</dd>
</dl>

<dl>
<dd>

**test_emails:** `Internal::Types::Array[String]` — An array of email addresses to send the test email to.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Campaigns::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.campaigns.<a href="/lib/mailchimp/campaigns/client.rb">create_action_unschedule</a>(campaign_id:) -> </code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Unschedule a scheduled campaign that hasn't started sending.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.campaigns.create_action_unschedule(campaign_id: "campaign_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**campaign_id:** `String` — The unique id for the campaign.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Campaigns::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.campaigns.<a href="/lib/mailchimp/campaigns/client.rb">get_content</a>(campaign_id:) -> Mailchimp::Types::CampaignContent</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get the the HTML and plain-text content for a campaign.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.campaigns.get_content(campaign_id: "campaign_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**campaign_id:** `String` — The unique id for the campaign.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `String` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**exclude_fields:** `String` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Campaigns::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.campaigns.<a href="/lib/mailchimp/campaigns/client.rb">upsert_content</a>(campaign_id:, request) -> Mailchimp::Types::CampaignContent</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Set the content for a campaign.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.campaigns.upsert_content(campaign_id: "campaign_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**campaign_id:** `String` — The unique id for the campaign.
    
</dd>
</dl>

<dl>
<dd>

**request:** `Mailchimp::Types::CampaignContent` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Campaigns::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.campaigns.<a href="/lib/mailchimp/campaigns/client.rb">list_feedback</a>(campaign_id:) -> Mailchimp::Campaigns::Types::ListFeedbackCampaignsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get team feedback while you're working together on a Mailchimp campaign.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.campaigns.list_feedback(campaign_id: "campaign_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**campaign_id:** `String` — The unique id for the campaign.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `String` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**exclude_fields:** `String` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Campaigns::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.campaigns.<a href="/lib/mailchimp/campaigns/client.rb">create_feedback</a>(campaign_id:, request) -> Mailchimp::Campaigns::Types::CreateFeedbackCampaignsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Add feedback on a specific campaign.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.campaigns.create_feedback(
  campaign_id: "campaign_id",
  message: "message"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**campaign_id:** `String` — The unique id for the campaign.
    
</dd>
</dl>

<dl>
<dd>

**block_id:** `Integer` — The block id for the editable block that the feedback addresses.
    
</dd>
</dl>

<dl>
<dd>

**is_complete:** `Internal::Types::Boolean` — The status of feedback.
    
</dd>
</dl>

<dl>
<dd>

**message:** `String` — The content of the feedback.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Campaigns::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.campaigns.<a href="/lib/mailchimp/campaigns/client.rb">get_feedback</a>(campaign_id:, feedback_id:) -> Mailchimp::Types::CampaignFeedback</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get a specific feedback message from a campaign.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.campaigns.get_feedback(
  campaign_id: "campaign_id",
  feedback_id: "feedback_id"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**campaign_id:** `String` — The unique id for the campaign.
    
</dd>
</dl>

<dl>
<dd>

**feedback_id:** `String` — The unique id for the feedback message.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `String` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**exclude_fields:** `String` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Campaigns::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.campaigns.<a href="/lib/mailchimp/campaigns/client.rb">delete_feedback</a>(campaign_id:, feedback_id:) -> </code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Remove a specific feedback message for a campaign.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.campaigns.delete_feedback(
  campaign_id: "campaign_id",
  feedback_id: "feedback_id"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**campaign_id:** `String` — The unique id for the campaign.
    
</dd>
</dl>

<dl>
<dd>

**feedback_id:** `String` — The unique id for the feedback message.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Campaigns::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.campaigns.<a href="/lib/mailchimp/campaigns/client.rb">update_feedback</a>(campaign_id:, feedback_id:, request) -> Mailchimp::Types::CampaignFeedback</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Update a specific feedback message for a campaign.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.campaigns.update_feedback(
  campaign_id: "campaign_id",
  feedback_id: "feedback_id"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**campaign_id:** `String` — The unique id for the campaign.
    
</dd>
</dl>

<dl>
<dd>

**feedback_id:** `String` — The unique id for the feedback message.
    
</dd>
</dl>

<dl>
<dd>

**block_id:** `Integer` — The block id for the editable block that the feedback addresses.
    
</dd>
</dl>

<dl>
<dd>

**is_complete:** `Internal::Types::Boolean` — The status of feedback.
    
</dd>
</dl>

<dl>
<dd>

**message:** `String` — The content of the feedback.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Campaigns::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.campaigns.<a href="/lib/mailchimp/campaigns/client.rb">list_send_checklist</a>(campaign_id:) -> Mailchimp::Campaigns::Types::ListSendChecklistCampaignsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Review the send checklist for a campaign, and resolve any issues before sending.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.campaigns.list_send_checklist(campaign_id: "campaign_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**campaign_id:** `String` — The unique id for the campaign.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `String` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**exclude_fields:** `String` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Campaigns::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## ConnectedSites
<details><summary><code>client.connected_sites.<a href="/lib/mailchimp/connected_sites/client.rb">list</a>() -> Mailchimp::ConnectedSites::Types::ListConnectedSitesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get all connected sites in an account.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.connected_sites.list
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**fields:** `String` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**exclude_fields:** `String` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**count:** `Integer` — The number of records to return. Default value is 10. Maximum value is 1000
    
</dd>
</dl>

<dl>
<dd>

**offset:** `Integer` — Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::ConnectedSites::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.connected_sites.<a href="/lib/mailchimp/connected_sites/client.rb">create</a>(request) -> Mailchimp::Types::ConnectedSite</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Create a new Mailchimp connected site.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.connected_sites.create(
  domain: "example.com",
  foreign_id: "MC001"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**domain:** `String` — The connected site domain.
    
</dd>
</dl>

<dl>
<dd>

**foreign_id:** `String` — The unique identifier for the site.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::ConnectedSites::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.connected_sites.<a href="/lib/mailchimp/connected_sites/client.rb">get</a>(connected_site_id:) -> Mailchimp::Types::ConnectedSite</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get information about a specific connected site.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.connected_sites.get(connected_site_id: "connected_site_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**connected_site_id:** `String` — The unique identifier for the site.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `String` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**exclude_fields:** `String` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::ConnectedSites::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.connected_sites.<a href="/lib/mailchimp/connected_sites/client.rb">delete</a>(connected_site_id:) -> </code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Remove a connected site from your Mailchimp account.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.connected_sites.delete(connected_site_id: "connected_site_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**connected_site_id:** `String` — The unique identifier for the site.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::ConnectedSites::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.connected_sites.<a href="/lib/mailchimp/connected_sites/client.rb">create_action_verify_script_installation</a>(connected_site_id:) -> </code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Verify that the connected sites script has been installed, either via the script URL or fragment.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.connected_sites.create_action_verify_script_installation(connected_site_id: "connected_site_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**connected_site_id:** `String` — The unique identifier for the site.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::ConnectedSites::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## conversations
<details><summary><code>client.conversations.<a href="/lib/mailchimp/conversations/client.rb">list</a>() -> Mailchimp::Conversations::Types::ListConversationsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get a list of conversations for the account. Conversations has been deprecated in favor of Inbox and these endpoints don't include Inbox data. Past Conversations are still available via this endpoint, but new campaign replies and other Inbox messages aren’t available using this endpoint.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.conversations.list
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**fields:** `String` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**exclude_fields:** `String` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**count:** `Integer` — The number of records to return. Default value is 10. Maximum value is 1000
    
</dd>
</dl>

<dl>
<dd>

**offset:** `Integer` — Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    
</dd>
</dl>

<dl>
<dd>

**has_unread_messages:** `Mailchimp::Conversations::Types::ListConversationsRequestHasUnreadMessages` — Whether the conversation has any unread messages.
    
</dd>
</dl>

<dl>
<dd>

**list_id:** `String` — The unique id for the list.
    
</dd>
</dl>

<dl>
<dd>

**campaign_id:** `String` — The unique id for the campaign.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Conversations::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.conversations.<a href="/lib/mailchimp/conversations/client.rb">get</a>(conversation_id:) -> Mailchimp::Types::Conversation</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get details about an individual conversation. Conversations has been deprecated in favor of Inbox and these endpoints don't include Inbox data. Past Conversations are still available via this endpoint, but new campaign replies and other Inbox messages aren’t available using this endpoint.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.conversations.get(conversation_id: "conversation_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**conversation_id:** `String` — The unique id for the conversation.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `String` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**exclude_fields:** `String` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Conversations::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.conversations.<a href="/lib/mailchimp/conversations/client.rb">list_messages</a>(conversation_id:) -> Mailchimp::Conversations::Types::ListMessagesConversationsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get messages from a specific conversation. Conversations has been deprecated in favor of Inbox and these endpoints don't include Inbox data. Past Conversations are still available via this endpoint, but new campaign replies and other Inbox messages aren’t available using this endpoint.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.conversations.list_messages(conversation_id: "conversation_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**conversation_id:** `String` — The unique id for the conversation.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `String` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**exclude_fields:** `String` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**is_read:** `Mailchimp::Conversations::Types::ListMessagesConversationsRequestIsRead` — Whether a conversation message has been marked as read.
    
</dd>
</dl>

<dl>
<dd>

**before_timestamp:** `String` — Restrict the response to messages created before the set time. Uses ISO 8601 time format: 2015-10-21T15:41:36+00:00.
    
</dd>
</dl>

<dl>
<dd>

**since_timestamp:** `String` — Restrict the response to messages created after the set time. Uses ISO 8601 time format: 2015-10-21T15:41:36+00:00.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Conversations::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.conversations.<a href="/lib/mailchimp/conversations/client.rb">get_message</a>(conversation_id:, message_id:) -> Mailchimp::Types::ConversationMessage</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get an individual message in a conversation. Conversations has been deprecated in favor of Inbox and these endpoints don't include Inbox data. Past Conversations are still available via this endpoint, but new campaign replies and other Inbox messages aren’t available using this endpoint.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.conversations.get_message(
  conversation_id: "conversation_id",
  message_id: "message_id"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**conversation_id:** `String` — The unique id for the conversation.
    
</dd>
</dl>

<dl>
<dd>

**message_id:** `String` — The unique id for the conversation message.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `String` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**exclude_fields:** `String` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Conversations::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## CustomerJourneys
<details><summary><code>client.customer_journeys.<a href="/lib/mailchimp/customer_journeys/client.rb">create_journey_step_action_trigger</a>(journey_id:, step_id:, request) -> </code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

A step trigger in an Automation flow. To use it, create a starting point or step from the Automation flow builder in the app using the Customer Journeys API condition. We’ll provide a url during the process that includes the {journey_id} and {step_id}. You’ll then be able to use this endpoint to trigger the condition for the posted contact.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.customer_journeys.create_journey_step_action_trigger(
  journey_id: 1,
  step_id: 1,
  email_address: "email_address"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**journey_id:** `Integer` — The id for the flow.
    
</dd>
</dl>

<dl>
<dd>

**step_id:** `Integer` — The id for the Step.
    
</dd>
</dl>

<dl>
<dd>

**email_address:** `String` — The list member's email address.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::CustomerJourneys::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## ecommerce
<details><summary><code>client.ecommerce.<a href="/lib/mailchimp/ecommerce/client.rb">list</a>() -> Mailchimp::Ecommerce::Types::ListEcommerceResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get information about the e-commerce endpoint's resources.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ecommerce.list
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request_options:** `Mailchimp::Ecommerce::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ecommerce.<a href="/lib/mailchimp/ecommerce/client.rb">list_orders</a>() -> Mailchimp::Ecommerce::Types::ListOrdersEcommerceResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get information about an account's orders.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ecommerce.list_orders
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**fields:** `String` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**exclude_fields:** `String` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**count:** `Integer` — The number of records to return. Default value is 10. Maximum value is 1000
    
</dd>
</dl>

<dl>
<dd>

**offset:** `Integer` — Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    
</dd>
</dl>

<dl>
<dd>

**campaign_id:** `String` — Restrict results to orders with a specific `campaign_id` value.
    
</dd>
</dl>

<dl>
<dd>

**outreach_id:** `String` — Restrict results to orders with a specific `outreach_id` value.
    
</dd>
</dl>

<dl>
<dd>

**customer_id:** `String` — Restrict results to orders made by a specific customer.
    
</dd>
</dl>

<dl>
<dd>

**has_outreach:** `Internal::Types::Boolean` — Restrict results to orders that have an outreach attached. For example, an email campaign or Facebook ad.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Ecommerce::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ecommerce.<a href="/lib/mailchimp/ecommerce/client.rb">list_stores</a>() -> Mailchimp::Ecommerce::Types::ListStoresEcommerceResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get information about all stores in the account.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ecommerce.list_stores
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**fields:** `String` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**exclude_fields:** `String` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**count:** `Integer` — The number of records to return. Default value is 10. Maximum value is 1000
    
</dd>
</dl>

<dl>
<dd>

**offset:** `Integer` — Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Ecommerce::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ecommerce.<a href="/lib/mailchimp/ecommerce/client.rb">create_store</a>(request) -> Mailchimp::Types::ECommerceStore</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Add a new store to your Mailchimp account.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ecommerce.create_store(
  currency_code: "USD",
  id: "example_store",
  list_id: "1a2df69511",
  name: "Freddie's Cat Hat Emporium"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**address:** `Mailchimp::Ecommerce::Types::CreateStoreEcommerceRequestAddress` — The store address.
    
</dd>
</dl>

<dl>
<dd>

**currency_code:** `String` — The three-letter ISO 4217 code for the currency that the store accepts.
    
</dd>
</dl>

<dl>
<dd>

**domain:** `String` — The store domain. This parameter is required for Connected Sites and Google Ads.
    
</dd>
</dl>

<dl>
<dd>

**email_address:** `String` — The email address for the store.
    
</dd>
</dl>

<dl>
<dd>

**id:** `String` — The unique identifier for the store.
    
</dd>
</dl>

<dl>
<dd>

**is_syncing:** `Internal::Types::Boolean` — Whether to disable automations because the store is currently [syncing](https://mailchimp.com/developer/marketing/docs/e-commerce/#pausing-store-automations).
    
</dd>
</dl>

<dl>
<dd>

**list_id:** `String` — The unique identifier for the list associated with the store. The `list_id` for a specific store cannot change.
    
</dd>
</dl>

<dl>
<dd>

**money_format:** `String` — The currency format for the store. For example: `$`, `£`, etc.
    
</dd>
</dl>

<dl>
<dd>

**name:** `String` — The name of the store.
    
</dd>
</dl>

<dl>
<dd>

**phone:** `String` — The store phone number.
    
</dd>
</dl>

<dl>
<dd>

**platform:** `String` — The e-commerce platform of the store.
    
</dd>
</dl>

<dl>
<dd>

**primary_locale:** `String` — The primary locale for the store. For example: `en`, `de`, etc.
    
</dd>
</dl>

<dl>
<dd>

**timezone:** `String` — The timezone for the store.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Ecommerce::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ecommerce.<a href="/lib/mailchimp/ecommerce/client.rb">get_store</a>(store_id:) -> Mailchimp::Types::ECommerceStore</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get information about a specific store.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ecommerce.get_store(store_id: "store_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**store_id:** `String` — The store id.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `String` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**exclude_fields:** `String` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Ecommerce::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ecommerce.<a href="/lib/mailchimp/ecommerce/client.rb">delete_store</a>(store_id:) -> </code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Delete a store. Deleting a store will also delete any associated subresources, including Customers, Orders, Products, and Carts.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ecommerce.delete_store(store_id: "store_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**store_id:** `String` — The store id.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Ecommerce::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ecommerce.<a href="/lib/mailchimp/ecommerce/client.rb">update_store</a>(store_id:, request) -> Mailchimp::Types::ECommerceStore</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Update a store.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ecommerce.update_store(store_id: "store_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**store_id:** `String` — The store id.
    
</dd>
</dl>

<dl>
<dd>

**address:** `Mailchimp::Ecommerce::Types::UpdateStoreEcommerceRequestAddress` — The store address.
    
</dd>
</dl>

<dl>
<dd>

**currency_code:** `String` — The three-letter ISO 4217 code for the currency that the store accepts.
    
</dd>
</dl>

<dl>
<dd>

**domain:** `String` — The store domain.
    
</dd>
</dl>

<dl>
<dd>

**email_address:** `String` — The email address for the store.
    
</dd>
</dl>

<dl>
<dd>

**is_syncing:** `Internal::Types::Boolean` — Whether to disable automations because the store is currently [syncing](https://mailchimp.com/developer/marketing/docs/e-commerce/#pausing-store-automations).
    
</dd>
</dl>

<dl>
<dd>

**money_format:** `String` — The currency format for the store. For example: `$`, `£`, etc.
    
</dd>
</dl>

<dl>
<dd>

**name:** `String` — The name of the store.
    
</dd>
</dl>

<dl>
<dd>

**phone:** `String` — The store phone number.
    
</dd>
</dl>

<dl>
<dd>

**platform:** `String` — The e-commerce platform of the store.
    
</dd>
</dl>

<dl>
<dd>

**primary_locale:** `String` — The primary locale for the store. For example: `en`, `de`, etc.
    
</dd>
</dl>

<dl>
<dd>

**timezone:** `String` — The timezone for the store.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Ecommerce::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ecommerce.<a href="/lib/mailchimp/ecommerce/client.rb">list_store_carts</a>(store_id:) -> Mailchimp::Ecommerce::Types::ListStoreCartsEcommerceResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get information about a store's carts.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ecommerce.list_store_carts(store_id: "store_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**store_id:** `String` — The store id.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `String` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**exclude_fields:** `String` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**count:** `Integer` — The number of records to return. Default value is 10. Maximum value is 1000
    
</dd>
</dl>

<dl>
<dd>

**offset:** `Integer` — Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Ecommerce::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ecommerce.<a href="/lib/mailchimp/ecommerce/client.rb">create_store_cart</a>(store_id:, request) -> Mailchimp::Types::ECommerceCart</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Add a new cart to a store.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ecommerce.create_store_cart(
  store_id: "store_id",
  currency_code: "currency_code",
  customer: {
    id: "id"
  },
  id: "id",
  lines: [{
    id: "id",
    price: 1.1,
    product_id: "product_id",
    product_variant_id: "product_variant_id",
    quantity: 1
  }],
  order_total: 1.1
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**store_id:** `String` — The store id.
    
</dd>
</dl>

<dl>
<dd>

**campaign_id:** `String` — A string that uniquely identifies the campaign for a cart.
    
</dd>
</dl>

<dl>
<dd>

**checkout_url:** `String` — The URL for the cart. This parameter is required for [Abandoned Cart](https://mailchimp.com/help/create-a-classic-abandoned-cart-email/) automations.
    
</dd>
</dl>

<dl>
<dd>

**currency_code:** `String` — The three-letter ISO 4217 code for the currency that the cart uses.
    
</dd>
</dl>

<dl>
<dd>

**customer:** `Mailchimp::Types::EcommerceStoresCartsPost` 
    
</dd>
</dl>

<dl>
<dd>

**id:** `Mailchimp::Ecommerce::Types::CreateStoreCartEcommerceRequestID` — A unique identifier for the cart.
    
</dd>
</dl>

<dl>
<dd>

**lines:** `Internal::Types::Array[Mailchimp::Ecommerce::Types::CreateStoreCartEcommerceRequestLinesItem]` — An array of the cart's line items.
    
</dd>
</dl>

<dl>
<dd>

**order_total:** `Mailchimp::Ecommerce::Types::CreateStoreCartEcommerceRequestOrderTotal` 
    
</dd>
</dl>

<dl>
<dd>

**tax_total:** `Mailchimp::Ecommerce::Types::CreateStoreCartEcommerceRequestTaxTotal` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Ecommerce::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ecommerce.<a href="/lib/mailchimp/ecommerce/client.rb">get_store_cart</a>(store_id:, cart_id:) -> Mailchimp::Types::ECommerceCart</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get information about a specific cart.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ecommerce.get_store_cart(
  store_id: "store_id",
  cart_id: "cart_id"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**store_id:** `String` — The store id.
    
</dd>
</dl>

<dl>
<dd>

**cart_id:** `String` — The id for the cart.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `String` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**exclude_fields:** `String` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Ecommerce::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ecommerce.<a href="/lib/mailchimp/ecommerce/client.rb">delete_store_cart</a>(store_id:, cart_id:) -> </code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Delete a cart.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ecommerce.delete_store_cart(
  store_id: "store_id",
  cart_id: "cart_id"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**store_id:** `String` — The store id.
    
</dd>
</dl>

<dl>
<dd>

**cart_id:** `String` — The id for the cart.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Ecommerce::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ecommerce.<a href="/lib/mailchimp/ecommerce/client.rb">update_store_cart</a>(store_id:, cart_id:, request) -> Mailchimp::Types::ECommerceCart</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Update a specific cart.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ecommerce.update_store_cart(
  store_id: "store_id",
  cart_id: "cart_id"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**store_id:** `String` — The store id.
    
</dd>
</dl>

<dl>
<dd>

**cart_id:** `String` — The id for the cart.
    
</dd>
</dl>

<dl>
<dd>

**campaign_id:** `String` — A string that uniquely identifies the campaign associated with a cart.
    
</dd>
</dl>

<dl>
<dd>

**checkout_url:** `String` — The URL for the cart. This parameter is required for [Abandoned Cart](https://mailchimp.com/help/create-a-classic-abandoned-cart-email/) automations.
    
</dd>
</dl>

<dl>
<dd>

**currency_code:** `String` — The three-letter ISO 4217 code for the currency that the cart uses.
    
</dd>
</dl>

<dl>
<dd>

**customer:** `Mailchimp::Types::EcommerceStoresCartsPatch` 
    
</dd>
</dl>

<dl>
<dd>

**id:** `Mailchimp::Ecommerce::Types::UpdateStoreCartEcommerceRequestID` — A unique identifier for the cart.
    
</dd>
</dl>

<dl>
<dd>

**lines:** `Internal::Types::Array[Mailchimp::Ecommerce::Types::UpdateStoreCartEcommerceRequestLinesItem]` — An array of the cart's line items.
    
</dd>
</dl>

<dl>
<dd>

**order_total:** `Mailchimp::Ecommerce::Types::UpdateStoreCartEcommerceRequestOrderTotal` 
    
</dd>
</dl>

<dl>
<dd>

**tax_total:** `Mailchimp::Ecommerce::Types::UpdateStoreCartEcommerceRequestTaxTotal` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Ecommerce::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ecommerce.<a href="/lib/mailchimp/ecommerce/client.rb">list_store_cart_lines</a>(store_id:, cart_id:) -> Mailchimp::Ecommerce::Types::ListStoreCartLinesEcommerceResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get information about a cart's line items.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ecommerce.list_store_cart_lines(
  store_id: "store_id",
  cart_id: "cart_id"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**store_id:** `String` — The store id.
    
</dd>
</dl>

<dl>
<dd>

**cart_id:** `String` — The id for the cart.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `String` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**exclude_fields:** `String` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**count:** `Integer` — The number of records to return. Default value is 10. Maximum value is 1000
    
</dd>
</dl>

<dl>
<dd>

**offset:** `Integer` — Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Ecommerce::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ecommerce.<a href="/lib/mailchimp/ecommerce/client.rb">create_store_cart_line</a>(store_id:, cart_id:, request) -> Mailchimp::Types::ECommerceCartLineItem</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Add a new line item to an existing cart.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ecommerce.create_store_cart_line(
  store_id: "store_id",
  cart_id: "cart_id",
  id: "id",
  price: 1.1,
  product_id: "product_id",
  product_variant_id: "product_variant_id",
  quantity: 1
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**store_id:** `String` — The store id.
    
</dd>
</dl>

<dl>
<dd>

**cart_id:** `String` — The id for the cart.
    
</dd>
</dl>

<dl>
<dd>

**id:** `String` — A unique identifier for the cart line item.
    
</dd>
</dl>

<dl>
<dd>

**price:** `Mailchimp::Ecommerce::Types::CreateStoreCartLineEcommerceRequestPrice` 
    
</dd>
</dl>

<dl>
<dd>

**product_id:** `String` — A unique identifier for the product associated with the cart line item.
    
</dd>
</dl>

<dl>
<dd>

**product_variant_id:** `String` — A unique identifier for the product variant associated with the cart line item.
    
</dd>
</dl>

<dl>
<dd>

**quantity:** `Integer` — The quantity of a cart line item.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Ecommerce::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ecommerce.<a href="/lib/mailchimp/ecommerce/client.rb">get_store_cart_line</a>(store_id:, cart_id:, line_id:) -> Mailchimp::Types::ECommerceCartLineItem</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get information about a specific cart line item.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ecommerce.get_store_cart_line(
  store_id: "store_id",
  cart_id: "cart_id",
  line_id: "line_id"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**store_id:** `String` — The store id.
    
</dd>
</dl>

<dl>
<dd>

**cart_id:** `String` — The id for the cart.
    
</dd>
</dl>

<dl>
<dd>

**line_id:** `String` — The id for the line item of a cart.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `String` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**exclude_fields:** `String` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Ecommerce::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ecommerce.<a href="/lib/mailchimp/ecommerce/client.rb">delete_store_cart_line</a>(store_id:, cart_id:, line_id:) -> </code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Delete a specific cart line item.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ecommerce.delete_store_cart_line(
  store_id: "store_id",
  cart_id: "cart_id",
  line_id: "line_id"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**store_id:** `String` — The store id.
    
</dd>
</dl>

<dl>
<dd>

**cart_id:** `String` — The id for the cart.
    
</dd>
</dl>

<dl>
<dd>

**line_id:** `String` — The id for the line item of a cart.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Ecommerce::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ecommerce.<a href="/lib/mailchimp/ecommerce/client.rb">update_store_cart_line</a>(store_id:, cart_id:, line_id:, request) -> Mailchimp::Types::ECommerceCartLineItem</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Update a specific cart line item.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ecommerce.update_store_cart_line(
  store_id: "store_id",
  cart_id: "cart_id",
  line_id: "line_id"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**store_id:** `String` — The store id.
    
</dd>
</dl>

<dl>
<dd>

**cart_id:** `String` — The id for the cart.
    
</dd>
</dl>

<dl>
<dd>

**line_id:** `String` — The id for the line item of a cart.
    
</dd>
</dl>

<dl>
<dd>

**price:** `Mailchimp::Ecommerce::Types::UpdateStoreCartLineEcommerceRequestPrice` 
    
</dd>
</dl>

<dl>
<dd>

**product_id:** `String` — A unique identifier for the product associated with the cart line item.
    
</dd>
</dl>

<dl>
<dd>

**product_variant_id:** `String` — A unique identifier for the product variant associated with the cart line item.
    
</dd>
</dl>

<dl>
<dd>

**quantity:** `Integer` — The quantity of a cart line item.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Ecommerce::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ecommerce.<a href="/lib/mailchimp/ecommerce/client.rb">list_store_customers</a>(store_id:) -> Mailchimp::Ecommerce::Types::ListStoreCustomersEcommerceResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get information about a store's customers.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ecommerce.list_store_customers(store_id: "store_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**store_id:** `String` — The store id.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `String` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**exclude_fields:** `String` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**count:** `Integer` — The number of records to return. Default value is 10. Maximum value is 1000
    
</dd>
</dl>

<dl>
<dd>

**offset:** `Integer` — Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    
</dd>
</dl>

<dl>
<dd>

**email_address:** `String` — Restrict the response to customers with the email address.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Ecommerce::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ecommerce.<a href="/lib/mailchimp/ecommerce/client.rb">create_store_customer</a>(store_id:, request) -> Mailchimp::Types::ECommerceCustomer</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Add a new customer to a store.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ecommerce.create_store_customer(
  store_id: "store_id",
  id: "id",
  opt_in_status: true
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**store_id:** `String` — The store id.
    
</dd>
</dl>

<dl>
<dd>

**address:** `Mailchimp::Ecommerce::Types::CreateStoreCustomerEcommerceRequestAddress` — The customer's address.
    
</dd>
</dl>

<dl>
<dd>

**company:** `String` — The customer's company.
    
</dd>
</dl>

<dl>
<dd>

**email_address:** `String` — The customer's email address.
    
</dd>
</dl>

<dl>
<dd>

**first_name:** `String` — The customer's first name.
    
</dd>
</dl>

<dl>
<dd>

**id:** `String` — A unique identifier for the customer. Limited to 50 characters.
    
</dd>
</dl>

<dl>
<dd>

**last_name:** `String` — The customer's last name.
    
</dd>
</dl>

<dl>
<dd>

**opt_in_status:** `Internal::Types::Boolean` — The customer's opt-in status. This value will never overwrite the opt-in status of a pre-existing Mailchimp list member, but will apply to list members that are added through the e-commerce API endpoints. Customers who don't opt in to your Mailchimp list [will be added as `Transactional` members](https://mailchimp.com/developer/marketing/docs/e-commerce/#customers).
    
</dd>
</dl>

<dl>
<dd>

**sms_phone_number:** `String` — A US phone number for SMS contact.
    
</dd>
</dl>

<dl>
<dd>

**total_spent:** `Mailchimp::Ecommerce::Types::CreateStoreCustomerEcommerceRequestTotalSpent` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Ecommerce::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ecommerce.<a href="/lib/mailchimp/ecommerce/client.rb">get_store_customer</a>(store_id:, customer_id:) -> Mailchimp::Types::ECommerceCustomer</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get information about a specific customer.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ecommerce.get_store_customer(
  store_id: "store_id",
  customer_id: "customer_id"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**store_id:** `String` — The store id.
    
</dd>
</dl>

<dl>
<dd>

**customer_id:** `String` — The id for the customer of a store.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `String` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**exclude_fields:** `String` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Ecommerce::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ecommerce.<a href="/lib/mailchimp/ecommerce/client.rb">upsert_store_customer</a>(store_id:, customer_id:, request) -> Mailchimp::Types::ECommerceCustomer</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Add or update a customer.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ecommerce.upsert_store_customer(
  store_id: "store_id",
  customer_id: "customer_id"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**store_id:** `String` — The store id.
    
</dd>
</dl>

<dl>
<dd>

**customer_id:** `String` — The id for the customer of a store.
    
</dd>
</dl>

<dl>
<dd>

**address:** `Mailchimp::Ecommerce::Types::UpsertStoreCustomerEcommerceRequestAddress` — The customer's address.
    
</dd>
</dl>

<dl>
<dd>

**company:** `String` — The customer's company.
    
</dd>
</dl>

<dl>
<dd>

**email_address:** `String` — The customer's email address.
    
</dd>
</dl>

<dl>
<dd>

**first_name:** `String` — The customer's first name.
    
</dd>
</dl>

<dl>
<dd>

**id:** `String` — A unique identifier for the customer. Limited to 50 characters.
    
</dd>
</dl>

<dl>
<dd>

**last_name:** `String` — The customer's last name.
    
</dd>
</dl>

<dl>
<dd>

**opt_in_status:** `Internal::Types::Boolean` — The customer's opt-in status. This value will never overwrite the opt-in status of a pre-existing Mailchimp list member, but will apply to list members that are added through the e-commerce API endpoints. Customers who don't opt in to your Mailchimp list [will be added as `Transactional` members](https://mailchimp.com/developer/marketing/docs/e-commerce/#customers).
    
</dd>
</dl>

<dl>
<dd>

**sms_phone_number:** `String` — A US phone number for SMS contact.
    
</dd>
</dl>

<dl>
<dd>

**total_spent:** `Mailchimp::Ecommerce::Types::UpsertStoreCustomerEcommerceRequestTotalSpent` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Ecommerce::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ecommerce.<a href="/lib/mailchimp/ecommerce/client.rb">delete_store_customer</a>(store_id:, customer_id:) -> </code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Delete a customer from a store.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ecommerce.delete_store_customer(
  store_id: "store_id",
  customer_id: "customer_id"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**store_id:** `String` — The store id.
    
</dd>
</dl>

<dl>
<dd>

**customer_id:** `String` — The id for the customer of a store.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Ecommerce::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ecommerce.<a href="/lib/mailchimp/ecommerce/client.rb">update_store_customer</a>(store_id:, customer_id:, request) -> Mailchimp::Types::ECommerceCustomer</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Update a customer.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ecommerce.update_store_customer(
  store_id: "store_id",
  customer_id: "customer_id"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**store_id:** `String` — The store id.
    
</dd>
</dl>

<dl>
<dd>

**customer_id:** `String` — The id for the customer of a store.
    
</dd>
</dl>

<dl>
<dd>

**request:** `Mailchimp::Types::EcommerceStoresCartsPatch` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Ecommerce::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ecommerce.<a href="/lib/mailchimp/ecommerce/client.rb">list_store_orders</a>(store_id:) -> Mailchimp::Ecommerce::Types::ListStoreOrdersEcommerceResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get information about a store's orders.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ecommerce.list_store_orders(store_id: "store_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**store_id:** `String` — The store id.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `String` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**exclude_fields:** `String` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**count:** `Integer` — The number of records to return. Default value is 10. Maximum value is 1000
    
</dd>
</dl>

<dl>
<dd>

**offset:** `Integer` — Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    
</dd>
</dl>

<dl>
<dd>

**customer_id:** `String` — Restrict results to orders made by a specific customer.
    
</dd>
</dl>

<dl>
<dd>

**has_outreach:** `Internal::Types::Boolean` — Restrict results to orders that have an outreach attached. For example, an email campaign or Facebook ad.
    
</dd>
</dl>

<dl>
<dd>

**campaign_id:** `String` — Restrict results to orders with a specific `campaign_id` value.
    
</dd>
</dl>

<dl>
<dd>

**outreach_id:** `String` — Restrict results to orders with a specific `outreach_id` value.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Ecommerce::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ecommerce.<a href="/lib/mailchimp/ecommerce/client.rb">create_store_order</a>(store_id:, request) -> Mailchimp::Types::ECommerceOrder</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Add a new order to a store.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ecommerce.create_store_order(
  store_id: "store_id",
  currency_code: "currency_code",
  customer: {
    id: "id"
  },
  id: "id",
  lines: [{
    id: "id",
    price: 1.1,
    product_id: "product_id",
    product_variant_id: "product_variant_id",
    quantity: 1
  }],
  order_total: 1.1
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**store_id:** `String` — The store id.
    
</dd>
</dl>

<dl>
<dd>

**billing_address:** `Mailchimp::Ecommerce::Types::CreateStoreOrderEcommerceRequestBillingAddress` — The billing address for the order.
    
</dd>
</dl>

<dl>
<dd>

**campaign_id:** `String` — A string that uniquely identifies the campaign for an order.
    
</dd>
</dl>

<dl>
<dd>

**cart_id:** `Mailchimp::Ecommerce::Types::CreateStoreOrderEcommerceRequestCartID` — A cart id that the order was placed for.
    
</dd>
</dl>

<dl>
<dd>

**cancelled_at_foreign:** `String` — The date and time the order was cancelled in ISO 8601 format. Note: passing a value for this parameter will cancel the order being created.
    
</dd>
</dl>

<dl>
<dd>

**currency_code:** `String` — The three-letter ISO 4217 code for the currency that the store accepts.
    
</dd>
</dl>

<dl>
<dd>

**customer:** `Mailchimp::Types::EcommerceStoresCartsPost` 
    
</dd>
</dl>

<dl>
<dd>

**discount_total:** `Mailchimp::Ecommerce::Types::CreateStoreOrderEcommerceRequestDiscountTotal` 
    
</dd>
</dl>

<dl>
<dd>

**financial_status:** `String` — The order status. Use this parameter to trigger [Order Notifications](https://mailchimp.com/developer/marketing/docs/e-commerce/#order-notifications).
    
</dd>
</dl>

<dl>
<dd>

**fulfillment_status:** `String` — The fulfillment status for the order. Use this parameter to trigger [Order Notifications](https://mailchimp.com/developer/marketing/docs/e-commerce/#order-notifications).
    
</dd>
</dl>

<dl>
<dd>

**id:** `String` — A unique identifier for the order.
    
</dd>
</dl>

<dl>
<dd>

**landing_site:** `String` — The URL for the page where the buyer landed when entering the shop.
    
</dd>
</dl>

<dl>
<dd>

**lines:** `Internal::Types::Array[Mailchimp::Ecommerce::Types::CreateStoreOrderEcommerceRequestLinesItem]` — An array of the order's line items.
    
</dd>
</dl>

<dl>
<dd>

**order_total:** `Mailchimp::Ecommerce::Types::CreateStoreOrderEcommerceRequestOrderTotal` 
    
</dd>
</dl>

<dl>
<dd>

**order_url:** `String` — The URL for the order.
    
</dd>
</dl>

<dl>
<dd>

**outreach:** `Mailchimp::Ecommerce::Types::CreateStoreOrderEcommerceRequestOutreach` — The outreach associated with this order. For example, an email campaign or Facebook ad.
    
</dd>
</dl>

<dl>
<dd>

**processed_at_foreign:** `String` — The date and time the order was processed in ISO 8601 format.
    
</dd>
</dl>

<dl>
<dd>

**promos:** `Internal::Types::Array[Mailchimp::Ecommerce::Types::CreateStoreOrderEcommerceRequestPromosItem]` — The promo codes applied on the order
    
</dd>
</dl>

<dl>
<dd>

**shipping_address:** `Mailchimp::Ecommerce::Types::CreateStoreOrderEcommerceRequestShippingAddress` — The shipping address for the order.
    
</dd>
</dl>

<dl>
<dd>

**shipping_total:** `Mailchimp::Ecommerce::Types::CreateStoreOrderEcommerceRequestShippingTotal` 
    
</dd>
</dl>

<dl>
<dd>

**tax_total:** `Mailchimp::Ecommerce::Types::CreateStoreOrderEcommerceRequestTaxTotal` 
    
</dd>
</dl>

<dl>
<dd>

**tracking_carrier:** `String` — The tracking carrier associated with the order.
    
</dd>
</dl>

<dl>
<dd>

**tracking_code:** `Mailchimp::Ecommerce::Types::CreateStoreOrderEcommerceRequestTrackingCode` — The Mailchimp tracking code for the order. Uses the 'mc_tc' parameter in E-Commerce tracking URLs.
    
</dd>
</dl>

<dl>
<dd>

**tracking_number:** `String` — The tracking number associated with the order.
    
</dd>
</dl>

<dl>
<dd>

**tracking_url:** `String` — The tracking URL associated with the order.
    
</dd>
</dl>

<dl>
<dd>

**updated_at_foreign:** `String` — The date and time the order was updated in ISO 8601 format.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Ecommerce::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ecommerce.<a href="/lib/mailchimp/ecommerce/client.rb">get_store_order</a>(store_id:, order_id:) -> Mailchimp::Types::ECommerceOrder</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get information about a specific order.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ecommerce.get_store_order(
  store_id: "store_id",
  order_id: "order_id"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**store_id:** `String` — The store id.
    
</dd>
</dl>

<dl>
<dd>

**order_id:** `String` — The id for the order in a store.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `String` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**exclude_fields:** `String` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Ecommerce::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ecommerce.<a href="/lib/mailchimp/ecommerce/client.rb">delete_store_order</a>(store_id:, order_id:) -> </code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Delete an order.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ecommerce.delete_store_order(
  store_id: "store_id",
  order_id: "order_id"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**store_id:** `String` — The store id.
    
</dd>
</dl>

<dl>
<dd>

**order_id:** `String` — The id for the order in a store.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Ecommerce::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ecommerce.<a href="/lib/mailchimp/ecommerce/client.rb">update_store_order</a>(store_id:, order_id:, request) -> Mailchimp::Types::ECommerceOrder</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Update a specific order.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ecommerce.update_store_order(
  store_id: "store_id",
  order_id: "order_id"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**store_id:** `String` — The store id.
    
</dd>
</dl>

<dl>
<dd>

**order_id:** `String` — The id for the order in a store.
    
</dd>
</dl>

<dl>
<dd>

**billing_address:** `Mailchimp::Ecommerce::Types::UpdateStoreOrderEcommerceRequestBillingAddress` — The billing address for the order.
    
</dd>
</dl>

<dl>
<dd>

**campaign_id:** `String` — A string that uniquely identifies the campaign associated with an order.
    
</dd>
</dl>

<dl>
<dd>

**cart_id:** `Mailchimp::Ecommerce::Types::UpdateStoreOrderEcommerceRequestCartID` — A cart id that the order was placed for.
    
</dd>
</dl>

<dl>
<dd>

**cancelled_at_foreign:** `String` — The date and time the order was cancelled in ISO 8601 format. Note: passing a value for this parameter will cancel the order being edited.
    
</dd>
</dl>

<dl>
<dd>

**currency_code:** `String` — The three-letter ISO 4217 code for the currency that the store accepts.
    
</dd>
</dl>

<dl>
<dd>

**customer:** `Mailchimp::Types::EcommerceStoresCartsPatch` 
    
</dd>
</dl>

<dl>
<dd>

**discount_total:** `Mailchimp::Ecommerce::Types::UpdateStoreOrderEcommerceRequestDiscountTotal` 
    
</dd>
</dl>

<dl>
<dd>

**financial_status:** `String` — The order status. Use this parameter to trigger [Order Notifications](https://mailchimp.com/developer/marketing/docs/e-commerce/#order-notifications).
    
</dd>
</dl>

<dl>
<dd>

**fulfillment_status:** `String` — The fulfillment status for the order. Use this parameter to trigger [Order Notifications](https://mailchimp.com/developer/marketing/docs/e-commerce/#order-notifications).
    
</dd>
</dl>

<dl>
<dd>

**id:** `String` — A unique identifier for the order.
    
</dd>
</dl>

<dl>
<dd>

**landing_site:** `String` — The URL for the page where the buyer landed when entering the shop.
    
</dd>
</dl>

<dl>
<dd>

**lines:** `Internal::Types::Array[Mailchimp::Ecommerce::Types::UpdateStoreOrderEcommerceRequestLinesItem]` — An array of the order's line items.
    
</dd>
</dl>

<dl>
<dd>

**order_total:** `Mailchimp::Ecommerce::Types::UpdateStoreOrderEcommerceRequestOrderTotal` 
    
</dd>
</dl>

<dl>
<dd>

**order_url:** `String` — The URL for the order.
    
</dd>
</dl>

<dl>
<dd>

**outreach:** `Mailchimp::Ecommerce::Types::UpdateStoreOrderEcommerceRequestOutreach` — The outreach associated with this order. For example, an email campaign or Facebook ad.
    
</dd>
</dl>

<dl>
<dd>

**processed_at_foreign:** `String` — The date and time the order was processed in ISO 8601 format.
    
</dd>
</dl>

<dl>
<dd>

**promos:** `Internal::Types::Array[Mailchimp::Ecommerce::Types::UpdateStoreOrderEcommerceRequestPromosItem]` — The promo codes applied on the order. Note: Patch will completely replace the value of promos with the new one provided.
    
</dd>
</dl>

<dl>
<dd>

**shipping_address:** `Mailchimp::Ecommerce::Types::UpdateStoreOrderEcommerceRequestShippingAddress` — The shipping address for the order.
    
</dd>
</dl>

<dl>
<dd>

**shipping_total:** `Mailchimp::Ecommerce::Types::UpdateStoreOrderEcommerceRequestShippingTotal` 
    
</dd>
</dl>

<dl>
<dd>

**tax_total:** `Mailchimp::Ecommerce::Types::UpdateStoreOrderEcommerceRequestTaxTotal` 
    
</dd>
</dl>

<dl>
<dd>

**tracking_carrier:** `String` — The tracking carrier associated with the order.
    
</dd>
</dl>

<dl>
<dd>

**tracking_code:** `Mailchimp::Ecommerce::Types::UpdateStoreOrderEcommerceRequestTrackingCode` — The Mailchimp tracking code for the order. Uses the 'mc_tc' parameter in E-Commerce tracking URLs.
    
</dd>
</dl>

<dl>
<dd>

**tracking_number:** `String` — The tracking number associated with the order.
    
</dd>
</dl>

<dl>
<dd>

**tracking_url:** `String` — The tracking URL associated with the order.
    
</dd>
</dl>

<dl>
<dd>

**updated_at_foreign:** `String` — The date and time the order was updated in ISO 8601 format.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Ecommerce::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ecommerce.<a href="/lib/mailchimp/ecommerce/client.rb">list_store_order_lines</a>(store_id:, order_id:) -> Mailchimp::Ecommerce::Types::ListStoreOrderLinesEcommerceResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get information about an order's line items.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ecommerce.list_store_order_lines(
  store_id: "store_id",
  order_id: "order_id"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**store_id:** `String` — The store id.
    
</dd>
</dl>

<dl>
<dd>

**order_id:** `String` — The id for the order in a store.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `String` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**exclude_fields:** `String` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**count:** `Integer` — The number of records to return. Default value is 10. Maximum value is 1000
    
</dd>
</dl>

<dl>
<dd>

**offset:** `Integer` — Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Ecommerce::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ecommerce.<a href="/lib/mailchimp/ecommerce/client.rb">create_store_order_line</a>(store_id:, order_id:, request) -> Mailchimp::Types::ECommerceOrderLineItem</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Add a new line item to an existing order.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ecommerce.create_store_order_line(
  store_id: "store_id",
  order_id: "order_id",
  id: "id",
  price: 1.1,
  product_id: "product_id",
  product_variant_id: "product_variant_id",
  quantity: 1
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**store_id:** `String` — The store id.
    
</dd>
</dl>

<dl>
<dd>

**order_id:** `String` — The id for the order in a store.
    
</dd>
</dl>

<dl>
<dd>

**discount:** `Mailchimp::Ecommerce::Types::CreateStoreOrderLineEcommerceRequestDiscount` 
    
</dd>
</dl>

<dl>
<dd>

**id:** `String` — A unique identifier for the order line item.
    
</dd>
</dl>

<dl>
<dd>

**price:** `Mailchimp::Ecommerce::Types::CreateStoreOrderLineEcommerceRequestPrice` 
    
</dd>
</dl>

<dl>
<dd>

**product:** `Mailchimp::Types::EcommerceStoresOrdersPost` 
    
</dd>
</dl>

<dl>
<dd>

**product_id:** `String` — A unique identifier for the product associated with the order line item.
    
</dd>
</dl>

<dl>
<dd>

**product_variant_id:** `String` — A unique identifier for the product variant associated with the order line item.
    
</dd>
</dl>

<dl>
<dd>

**quantity:** `Integer` — The quantity of an order line item.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Ecommerce::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ecommerce.<a href="/lib/mailchimp/ecommerce/client.rb">get_store_order_line</a>(store_id:, order_id:, line_id:) -> Mailchimp::Types::ECommerceOrderLineItem</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get information about a specific order line item.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ecommerce.get_store_order_line(
  store_id: "store_id",
  order_id: "order_id",
  line_id: "line_id"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**store_id:** `String` — The store id.
    
</dd>
</dl>

<dl>
<dd>

**order_id:** `String` — The id for the order in a store.
    
</dd>
</dl>

<dl>
<dd>

**line_id:** `String` — The id for the line item of an order.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `String` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**exclude_fields:** `String` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Ecommerce::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ecommerce.<a href="/lib/mailchimp/ecommerce/client.rb">delete_store_order_line</a>(store_id:, order_id:, line_id:) -> </code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Delete a specific order line item.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ecommerce.delete_store_order_line(
  store_id: "store_id",
  order_id: "order_id",
  line_id: "line_id"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**store_id:** `String` — The store id.
    
</dd>
</dl>

<dl>
<dd>

**order_id:** `String` — The id for the order in a store.
    
</dd>
</dl>

<dl>
<dd>

**line_id:** `String` — The id for the line item of an order.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Ecommerce::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ecommerce.<a href="/lib/mailchimp/ecommerce/client.rb">update_store_order_line</a>(store_id:, order_id:, line_id:, request) -> Mailchimp::Types::ECommerceOrderLineItem</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Update a specific order line item.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ecommerce.update_store_order_line(
  store_id: "store_id",
  order_id: "order_id",
  line_id: "line_id"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**store_id:** `String` — The store id.
    
</dd>
</dl>

<dl>
<dd>

**order_id:** `String` — The id for the order in a store.
    
</dd>
</dl>

<dl>
<dd>

**line_id:** `String` — The id for the line item of an order.
    
</dd>
</dl>

<dl>
<dd>

**discount:** `Mailchimp::Ecommerce::Types::UpdateStoreOrderLineEcommerceRequestDiscount` 
    
</dd>
</dl>

<dl>
<dd>

**id:** `String` — A unique identifier for the order line item.
    
</dd>
</dl>

<dl>
<dd>

**price:** `Mailchimp::Ecommerce::Types::UpdateStoreOrderLineEcommerceRequestPrice` 
    
</dd>
</dl>

<dl>
<dd>

**product_id:** `String` — A unique identifier for the product associated with the order line item.
    
</dd>
</dl>

<dl>
<dd>

**product_variant_id:** `String` — A unique identifier for the product variant associated with the order line item.
    
</dd>
</dl>

<dl>
<dd>

**quantity:** `Integer` — The quantity of an order line item.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Ecommerce::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ecommerce.<a href="/lib/mailchimp/ecommerce/client.rb">list_store_products</a>(store_id:) -> Mailchimp::Ecommerce::Types::ListStoreProductsEcommerceResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get information about a store's products.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ecommerce.list_store_products(store_id: "store_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**store_id:** `String` — The store id.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `String` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**exclude_fields:** `String` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**count:** `Integer` — The number of records to return. Default value is 10. Maximum value is 1000
    
</dd>
</dl>

<dl>
<dd>

**offset:** `Integer` — Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Ecommerce::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ecommerce.<a href="/lib/mailchimp/ecommerce/client.rb">create_store_product</a>(store_id:, request) -> Mailchimp::Types::ECommerceProduct</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Add a new product to a store.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ecommerce.create_store_product(
  store_id: "store_id",
  id: "id",
  title: "Cat Hat",
  variants: [{
    id: "id",
    title: "Cat Hat"
  }]
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**store_id:** `String` — The store id.
    
</dd>
</dl>

<dl>
<dd>

**request:** `Mailchimp::Types::EcommerceStoresOrdersPost` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Ecommerce::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ecommerce.<a href="/lib/mailchimp/ecommerce/client.rb">get_store_product</a>(store_id:, product_id:) -> Mailchimp::Types::ECommerceProduct</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get information about a specific product.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ecommerce.get_store_product(
  store_id: "store_id",
  product_id: "product_id"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**store_id:** `String` — The store id.
    
</dd>
</dl>

<dl>
<dd>

**product_id:** `String` — The id for the product of a store.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `String` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**exclude_fields:** `String` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Ecommerce::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ecommerce.<a href="/lib/mailchimp/ecommerce/client.rb">upsert_store_product</a>(store_id:, product_id:, request) -> Mailchimp::Types::ECommerceProduct</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Update a specific product.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ecommerce.upsert_store_product(
  store_id: "store_id",
  product_id: "product_id",
  id: "id"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**store_id:** `String` — The store id.
    
</dd>
</dl>

<dl>
<dd>

**product_id:** `String` — The id for the product of a store.
    
</dd>
</dl>

<dl>
<dd>

**description:** `String` — The description of a product.
    
</dd>
</dl>

<dl>
<dd>

**handle:** `String` — The handle of a product.
    
</dd>
</dl>

<dl>
<dd>

**id:** `Mailchimp::Ecommerce::Types::UpsertStoreProductEcommerceRequestID` — A unique identifier for the product.
    
</dd>
</dl>

<dl>
<dd>

**image_url:** `String` — The image URL for a product.
    
</dd>
</dl>

<dl>
<dd>

**images:** `Internal::Types::Array[Mailchimp::Ecommerce::Types::UpsertStoreProductEcommerceRequestImagesItem]` — An array of the product's images.
    
</dd>
</dl>

<dl>
<dd>

**published_at_foreign:** `String` — The date and time the product was published.
    
</dd>
</dl>

<dl>
<dd>

**title:** `String` — The title of a product.
    
</dd>
</dl>

<dl>
<dd>

**type:** `String` — The type of product.
    
</dd>
</dl>

<dl>
<dd>

**url:** `String` — The URL for a product.
    
</dd>
</dl>

<dl>
<dd>

**variants:** `Internal::Types::Array[Mailchimp::Ecommerce::Types::UpsertStoreProductEcommerceRequestVariantsItem]` — An array of the product's variants. At least one variant is required for each product. A variant can use the same `id` and `title` as the parent product.
    
</dd>
</dl>

<dl>
<dd>

**vendor:** `String` — The vendor for a product.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Ecommerce::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ecommerce.<a href="/lib/mailchimp/ecommerce/client.rb">delete_store_product</a>(store_id:, product_id:) -> </code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Delete a product.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ecommerce.delete_store_product(
  store_id: "store_id",
  product_id: "product_id"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**store_id:** `String` — The store id.
    
</dd>
</dl>

<dl>
<dd>

**product_id:** `String` — The id for the product of a store.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Ecommerce::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ecommerce.<a href="/lib/mailchimp/ecommerce/client.rb">update_store_product</a>(store_id:, product_id:, request) -> Mailchimp::Types::ECommerceProduct</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Update a specific product.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ecommerce.update_store_product(
  store_id: "store_id",
  product_id: "product_id"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**store_id:** `String` — The store id.
    
</dd>
</dl>

<dl>
<dd>

**product_id:** `String` — The id for the product of a store.
    
</dd>
</dl>

<dl>
<dd>

**description:** `String` — The description of a product.
    
</dd>
</dl>

<dl>
<dd>

**handle:** `String` — The handle of a product.
    
</dd>
</dl>

<dl>
<dd>

**id:** `Mailchimp::Ecommerce::Types::UpdateStoreProductEcommerceRequestID` — A unique identifier for the product.
    
</dd>
</dl>

<dl>
<dd>

**image_url:** `String` — The image URL for a product.
    
</dd>
</dl>

<dl>
<dd>

**images:** `Internal::Types::Array[Mailchimp::Ecommerce::Types::UpdateStoreProductEcommerceRequestImagesItem]` — An array of the product's images.
    
</dd>
</dl>

<dl>
<dd>

**published_at_foreign:** `String` — The date and time the product was published in ISO 8601 format.
    
</dd>
</dl>

<dl>
<dd>

**title:** `String` — The title of a product.
    
</dd>
</dl>

<dl>
<dd>

**type:** `String` — The type of product.
    
</dd>
</dl>

<dl>
<dd>

**url:** `String` — The URL for a product.
    
</dd>
</dl>

<dl>
<dd>

**variants:** `Internal::Types::Array[Mailchimp::Ecommerce::Types::UpdateStoreProductEcommerceRequestVariantsItem]` — An array of the product's variants. At least one variant is required for each product. A variant can use the same `id` and `title` as the parent product.
    
</dd>
</dl>

<dl>
<dd>

**vendor:** `String` — The vendor for a product.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Ecommerce::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ecommerce.<a href="/lib/mailchimp/ecommerce/client.rb">list_store_product_images</a>(store_id:, product_id:) -> Mailchimp::Ecommerce::Types::ListStoreProductImagesEcommerceResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get information about a product's images.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ecommerce.list_store_product_images(
  store_id: "store_id",
  product_id: "product_id"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**store_id:** `String` — The store id.
    
</dd>
</dl>

<dl>
<dd>

**product_id:** `String` — The id for the product of a store.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `String` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**exclude_fields:** `String` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**count:** `Integer` — The number of records to return. Default value is 10. Maximum value is 1000
    
</dd>
</dl>

<dl>
<dd>

**offset:** `Integer` — Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Ecommerce::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ecommerce.<a href="/lib/mailchimp/ecommerce/client.rb">create_store_product_image</a>(store_id:, product_id:, request) -> Mailchimp::Ecommerce::Types::CreateStoreProductImageEcommerceResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Add a new image to the product.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ecommerce.create_store_product_image(
  store_id: "store_id",
  product_id: "product_id",
  id: "id",
  url: "url"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**store_id:** `String` — The store id.
    
</dd>
</dl>

<dl>
<dd>

**product_id:** `String` — The id for the product of a store.
    
</dd>
</dl>

<dl>
<dd>

**id:** `String` — A unique identifier for the product image.
    
</dd>
</dl>

<dl>
<dd>

**url:** `String` — The URL for a product image.
    
</dd>
</dl>

<dl>
<dd>

**variant_ids:** `Internal::Types::Array[Mailchimp::Ecommerce::Types::CreateStoreProductImageEcommerceRequestVariantIDsItem]` — The list of product variants using the image.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Ecommerce::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ecommerce.<a href="/lib/mailchimp/ecommerce/client.rb">get_store_product_image</a>(store_id:, product_id:, image_id:) -> Mailchimp::Ecommerce::Types::GetStoreProductImageEcommerceResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get information about a specific product image.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ecommerce.get_store_product_image(
  store_id: "store_id",
  product_id: "product_id",
  image_id: "image_id"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**store_id:** `String` — The store id.
    
</dd>
</dl>

<dl>
<dd>

**product_id:** `String` — The id for the product of a store.
    
</dd>
</dl>

<dl>
<dd>

**image_id:** `String` — The id for the product image.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `String` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**exclude_fields:** `String` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Ecommerce::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ecommerce.<a href="/lib/mailchimp/ecommerce/client.rb">delete_store_product_image</a>(store_id:, product_id:, image_id:) -> </code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Delete a product image.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ecommerce.delete_store_product_image(
  store_id: "store_id",
  product_id: "product_id",
  image_id: "image_id"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**store_id:** `String` — The store id.
    
</dd>
</dl>

<dl>
<dd>

**product_id:** `String` — The id for the product of a store.
    
</dd>
</dl>

<dl>
<dd>

**image_id:** `String` — The id for the product image.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Ecommerce::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ecommerce.<a href="/lib/mailchimp/ecommerce/client.rb">update_store_product_image</a>(store_id:, product_id:, image_id:, request) -> Mailchimp::Ecommerce::Types::UpdateStoreProductImageEcommerceResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Update a product image.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ecommerce.update_store_product_image(
  store_id: "store_id",
  product_id: "product_id",
  image_id: "image_id"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**store_id:** `String` — The store id.
    
</dd>
</dl>

<dl>
<dd>

**product_id:** `String` — The id for the product of a store.
    
</dd>
</dl>

<dl>
<dd>

**image_id:** `String` — The id for the product image.
    
</dd>
</dl>

<dl>
<dd>

**id:** `String` — A unique identifier for the product image.
    
</dd>
</dl>

<dl>
<dd>

**url:** `String` — The URL for a product image.
    
</dd>
</dl>

<dl>
<dd>

**variant_ids:** `Internal::Types::Array[Mailchimp::Ecommerce::Types::UpdateStoreProductImageEcommerceRequestVariantIDsItem]` — The list of product variants using the image.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Ecommerce::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ecommerce.<a href="/lib/mailchimp/ecommerce/client.rb">list_store_product_variants</a>(store_id:, product_id:) -> Mailchimp::Ecommerce::Types::ListStoreProductVariantsEcommerceResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get information about a product's variants.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ecommerce.list_store_product_variants(
  store_id: "store_id",
  product_id: "product_id"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**store_id:** `String` — The store id.
    
</dd>
</dl>

<dl>
<dd>

**product_id:** `String` — The id for the product of a store.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `String` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**exclude_fields:** `String` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**count:** `Integer` — The number of records to return. Default value is 10. Maximum value is 1000
    
</dd>
</dl>

<dl>
<dd>

**offset:** `Integer` — Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Ecommerce::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ecommerce.<a href="/lib/mailchimp/ecommerce/client.rb">create_store_product_variant</a>(store_id:, product_id:, request) -> Mailchimp::Types::ECommerceProductVariant</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Add a new variant to the product.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ecommerce.create_store_product_variant(
  store_id: "store_id",
  product_id: "product_id",
  id: "id",
  title: "Cat Hat"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**store_id:** `String` — The store id.
    
</dd>
</dl>

<dl>
<dd>

**product_id:** `String` — The id for the product of a store.
    
</dd>
</dl>

<dl>
<dd>

**backorders:** `String` — The backorders of a product variant.
    
</dd>
</dl>

<dl>
<dd>

**id:** `Mailchimp::Ecommerce::Types::CreateStoreProductVariantEcommerceRequestID` — A unique identifier for the product variant.
    
</dd>
</dl>

<dl>
<dd>

**image_url:** `String` — The image URL for a product variant.
    
</dd>
</dl>

<dl>
<dd>

**inventory_quantity:** `Integer` — The inventory quantity of a product variant.
    
</dd>
</dl>

<dl>
<dd>

**price:** `Mailchimp::Ecommerce::Types::CreateStoreProductVariantEcommerceRequestPrice` 
    
</dd>
</dl>

<dl>
<dd>

**sku:** `String` — The stock keeping unit (SKU) of a product variant.
    
</dd>
</dl>

<dl>
<dd>

**title:** `String` — The title of a product variant.
    
</dd>
</dl>

<dl>
<dd>

**url:** `String` — The URL for a product variant.
    
</dd>
</dl>

<dl>
<dd>

**visibility:** `String` — The visibility of a product variant.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Ecommerce::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ecommerce.<a href="/lib/mailchimp/ecommerce/client.rb">get_store_product_variant</a>(store_id:, product_id:, variant_id:) -> Mailchimp::Types::ECommerceProductVariant</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get information about a specific product variant.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ecommerce.get_store_product_variant(
  store_id: "store_id",
  product_id: "product_id",
  variant_id: "variant_id"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**store_id:** `String` — The store id.
    
</dd>
</dl>

<dl>
<dd>

**product_id:** `String` — The id for the product of a store.
    
</dd>
</dl>

<dl>
<dd>

**variant_id:** `String` — The id for the product variant.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `String` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**exclude_fields:** `String` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Ecommerce::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ecommerce.<a href="/lib/mailchimp/ecommerce/client.rb">upsert_store_product_variant</a>(store_id:, product_id:, variant_id:, request) -> Mailchimp::Types::ECommerceProductVariant</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Add or update a product variant.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ecommerce.upsert_store_product_variant(
  store_id: "store_id",
  product_id: "product_id",
  variant_id: "variant_id"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**store_id:** `String` — The store id.
    
</dd>
</dl>

<dl>
<dd>

**product_id:** `String` — The id for the product of a store.
    
</dd>
</dl>

<dl>
<dd>

**variant_id:** `String` — The id for the product variant.
    
</dd>
</dl>

<dl>
<dd>

**backorders:** `String` — The backorders of a product variant.
    
</dd>
</dl>

<dl>
<dd>

**id:** `String` — A unique identifier for the product variant.
    
</dd>
</dl>

<dl>
<dd>

**image_url:** `String` — The image URL for a product variant.
    
</dd>
</dl>

<dl>
<dd>

**inventory_quantity:** `Integer` — The inventory quantity of a product variant.
    
</dd>
</dl>

<dl>
<dd>

**price:** `Mailchimp::Ecommerce::Types::UpsertStoreProductVariantEcommerceRequestPrice` 
    
</dd>
</dl>

<dl>
<dd>

**sku:** `String` — The stock keeping unit (SKU) of a product variant.
    
</dd>
</dl>

<dl>
<dd>

**title:** `String` — The title of a product variant.
    
</dd>
</dl>

<dl>
<dd>

**url:** `String` — The URL for a product variant.
    
</dd>
</dl>

<dl>
<dd>

**visibility:** `String` — The visibility of a product variant.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Ecommerce::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ecommerce.<a href="/lib/mailchimp/ecommerce/client.rb">delete_store_product_variant</a>(store_id:, product_id:, variant_id:) -> </code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Delete a product variant.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ecommerce.delete_store_product_variant(
  store_id: "store_id",
  product_id: "product_id",
  variant_id: "variant_id"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**store_id:** `String` — The store id.
    
</dd>
</dl>

<dl>
<dd>

**product_id:** `String` — The id for the product of a store.
    
</dd>
</dl>

<dl>
<dd>

**variant_id:** `String` — The id for the product variant.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Ecommerce::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ecommerce.<a href="/lib/mailchimp/ecommerce/client.rb">update_store_product_variant</a>(store_id:, product_id:, variant_id:, request) -> Mailchimp::Types::ECommerceProductVariant</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Update a product variant.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ecommerce.update_store_product_variant(
  store_id: "store_id",
  product_id: "product_id",
  variant_id: "variant_id"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**store_id:** `String` — The store id.
    
</dd>
</dl>

<dl>
<dd>

**product_id:** `String` — The id for the product of a store.
    
</dd>
</dl>

<dl>
<dd>

**variant_id:** `String` — The id for the product variant.
    
</dd>
</dl>

<dl>
<dd>

**backorders:** `String` — The backorders of a product variant.
    
</dd>
</dl>

<dl>
<dd>

**image_url:** `String` — The image URL for a product variant.
    
</dd>
</dl>

<dl>
<dd>

**inventory_quantity:** `Integer` — The inventory quantity of a product variant.
    
</dd>
</dl>

<dl>
<dd>

**price:** `Mailchimp::Ecommerce::Types::UpdateStoreProductVariantEcommerceRequestPrice` 
    
</dd>
</dl>

<dl>
<dd>

**sku:** `String` — The stock keeping unit (SKU) of a product variant.
    
</dd>
</dl>

<dl>
<dd>

**title:** `String` — The title of a product variant.
    
</dd>
</dl>

<dl>
<dd>

**url:** `String` — The URL for a product variant.
    
</dd>
</dl>

<dl>
<dd>

**visibility:** `String` — The visibility of a product variant.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Ecommerce::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ecommerce.<a href="/lib/mailchimp/ecommerce/client.rb">list_store_promo_rules</a>(store_id:) -> Mailchimp::Ecommerce::Types::ListStorePromoRulesEcommerceResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get information about a store's promo rules.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ecommerce.list_store_promo_rules(store_id: "store_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**store_id:** `String` — The store id.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `String` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**exclude_fields:** `String` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**count:** `Integer` — The number of records to return. Default value is 10. Maximum value is 1000
    
</dd>
</dl>

<dl>
<dd>

**offset:** `Integer` — Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Ecommerce::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ecommerce.<a href="/lib/mailchimp/ecommerce/client.rb">create_store_promo_rule</a>(store_id:, request) -> Mailchimp::Types::ECommercePromoRule</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Add a new promo rule to a store.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ecommerce.create_store_promo_rule(
  store_id: "store_id",
  amount: 1.1,
  description: "Save BIG during our summer sale!",
  id: "id",
  target: "per_item",
  type: "fixed"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**store_id:** `String` — The store id.
    
</dd>
</dl>

<dl>
<dd>

**amount:** `Mailchimp::Ecommerce::Types::CreateStorePromoRuleEcommerceRequestAmount` 
    
</dd>
</dl>

<dl>
<dd>

**created_at_foreign:** `String` — The date and time the promotion was created in ISO 8601 format.
    
</dd>
</dl>

<dl>
<dd>

**description:** `String` — The description of a promotion restricted to UTF-8 characters with max length 255.
    
</dd>
</dl>

<dl>
<dd>

**enabled:** `Internal::Types::Boolean` — Whether the promo rule is currently enabled.
    
</dd>
</dl>

<dl>
<dd>

**ends_at:** `Mailchimp::Ecommerce::Types::CreateStorePromoRuleEcommerceRequestEndsAt` 
    
</dd>
</dl>

<dl>
<dd>

**id:** `String` — A unique identifier for the promo rule. If Ecommerce platform does not support promo rule, use promo code id as promo rule id. Restricted to UTF-8 characters with max length 50.
    
</dd>
</dl>

<dl>
<dd>

**starts_at:** `Mailchimp::Ecommerce::Types::CreateStorePromoRuleEcommerceRequestStartsAt` 
    
</dd>
</dl>

<dl>
<dd>

**target:** `Mailchimp::Ecommerce::Types::CreateStorePromoRuleEcommerceRequestTarget` — The target that the discount applies to.
    
</dd>
</dl>

<dl>
<dd>

**title:** `String` — The title that will show up in promotion campaign. Restricted to UTF-8 characters with max length of 100 bytes.
    
</dd>
</dl>

<dl>
<dd>

**type:** `Mailchimp::Ecommerce::Types::CreateStorePromoRuleEcommerceRequestType` — Type of discount. For free shipping set type to fixed.
    
</dd>
</dl>

<dl>
<dd>

**updated_at_foreign:** `String` — The date and time the promotion was updated in ISO 8601 format.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Ecommerce::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ecommerce.<a href="/lib/mailchimp/ecommerce/client.rb">get_store_promo_rule</a>(store_id:, promo_rule_id:) -> Mailchimp::Types::ECommercePromoRule</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get information about a specific promo rule.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ecommerce.get_store_promo_rule(
  store_id: "store_id",
  promo_rule_id: "promo_rule_id"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**store_id:** `String` — The store id.
    
</dd>
</dl>

<dl>
<dd>

**promo_rule_id:** `String` — The id for the promo rule of a store.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `String` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**exclude_fields:** `String` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Ecommerce::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ecommerce.<a href="/lib/mailchimp/ecommerce/client.rb">delete_store_promo_rule</a>(store_id:, promo_rule_id:) -> </code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Delete a promo rule from a store.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ecommerce.delete_store_promo_rule(
  store_id: "store_id",
  promo_rule_id: "promo_rule_id"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**store_id:** `String` — The store id.
    
</dd>
</dl>

<dl>
<dd>

**promo_rule_id:** `String` — The id for the promo rule of a store.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Ecommerce::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ecommerce.<a href="/lib/mailchimp/ecommerce/client.rb">update_store_promo_rule</a>(store_id:, promo_rule_id:, request) -> Mailchimp::Types::ECommercePromoRule</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Update a promo rule.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ecommerce.update_store_promo_rule(
  store_id: "store_id",
  promo_rule_id: "promo_rule_id"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**store_id:** `String` — The store id.
    
</dd>
</dl>

<dl>
<dd>

**promo_rule_id:** `String` — The id for the promo rule of a store.
    
</dd>
</dl>

<dl>
<dd>

**amount:** `Mailchimp::Ecommerce::Types::UpdateStorePromoRuleEcommerceRequestAmount` 
    
</dd>
</dl>

<dl>
<dd>

**created_at_foreign:** `String` — The date and time the promotion was created in ISO 8601 format.
    
</dd>
</dl>

<dl>
<dd>

**description:** `String` — The description of a promotion restricted to UTF-8 characters with max length 255.
    
</dd>
</dl>

<dl>
<dd>

**enabled:** `Internal::Types::Boolean` — Whether the promo rule is currently enabled.
    
</dd>
</dl>

<dl>
<dd>

**ends_at:** `Mailchimp::Ecommerce::Types::UpdateStorePromoRuleEcommerceRequestEndsAt` 
    
</dd>
</dl>

<dl>
<dd>

**id:** `String` — A unique identifier for the promo rule. If Ecommerce platform does not support promo rule, use promo code id as promo rule id. Restricted to UTF-8 characters with max length 50.
    
</dd>
</dl>

<dl>
<dd>

**starts_at:** `Mailchimp::Ecommerce::Types::UpdateStorePromoRuleEcommerceRequestStartsAt` 
    
</dd>
</dl>

<dl>
<dd>

**target:** `Mailchimp::Ecommerce::Types::UpdateStorePromoRuleEcommerceRequestTarget` — The target that the discount applies to.
    
</dd>
</dl>

<dl>
<dd>

**title:** `String` — The title that will show up in promotion campaign. Restricted to UTF-8 characters with max length of 100 bytes.
    
</dd>
</dl>

<dl>
<dd>

**type:** `Mailchimp::Ecommerce::Types::UpdateStorePromoRuleEcommerceRequestType` — Type of discount. For free shipping set type to fixed.
    
</dd>
</dl>

<dl>
<dd>

**updated_at_foreign:** `String` — The date and time the promotion was updated in ISO 8601 format.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Ecommerce::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ecommerce.<a href="/lib/mailchimp/ecommerce/client.rb">list_store_promo_rule_promo_codes</a>(store_id:, promo_rule_id:) -> Mailchimp::Ecommerce::Types::ListStorePromoRulePromoCodesEcommerceResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get information about a store's promo codes.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ecommerce.list_store_promo_rule_promo_codes(
  store_id: "store_id",
  promo_rule_id: "promo_rule_id"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**store_id:** `String` — The store id.
    
</dd>
</dl>

<dl>
<dd>

**promo_rule_id:** `String` — The id for the promo rule of a store.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `String` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**exclude_fields:** `String` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**count:** `Integer` — The number of records to return. Default value is 10. Maximum value is 1000
    
</dd>
</dl>

<dl>
<dd>

**offset:** `Integer` — Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Ecommerce::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ecommerce.<a href="/lib/mailchimp/ecommerce/client.rb">create_store_promo_rule_promo_code</a>(store_id:, promo_rule_id:, request) -> Mailchimp::Types::ECommercePromoCode</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Add a new promo code to a store.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ecommerce.create_store_promo_rule_promo_code(
  store_id: "store_id",
  promo_rule_id: "promo_rule_id",
  code: "summersale",
  id: "id",
  redemption_url: "A url that applies promo code directly at checkout or a url that points to sale page or store url"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**store_id:** `String` — The store id.
    
</dd>
</dl>

<dl>
<dd>

**promo_rule_id:** `String` — The id for the promo rule of a store.
    
</dd>
</dl>

<dl>
<dd>

**code:** `String` — The discount code. Restricted to UTF-8 characters with max length 50.
    
</dd>
</dl>

<dl>
<dd>

**created_at_foreign:** `String` — The date and time the promotion was created in ISO 8601 format.
    
</dd>
</dl>

<dl>
<dd>

**enabled:** `Internal::Types::Boolean` — Whether the promo code is currently enabled.
    
</dd>
</dl>

<dl>
<dd>

**id:** `String` — A unique identifier for the promo code. Restricted to UTF-8 characters with max length 50.
    
</dd>
</dl>

<dl>
<dd>

**redemption_url:** `String` — The url that should be used in the promotion campaign restricted to UTF-8 characters with max length 2000.
    
</dd>
</dl>

<dl>
<dd>

**updated_at_foreign:** `String` — The date and time the promotion was updated in ISO 8601 format.
    
</dd>
</dl>

<dl>
<dd>

**usage_count:** `Integer` — Number of times promo code has been used.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Ecommerce::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ecommerce.<a href="/lib/mailchimp/ecommerce/client.rb">get_store_promo_rule_promo_code</a>(store_id:, promo_rule_id:, promo_code_id:) -> Mailchimp::Types::ECommercePromoCode</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get information about a specific promo code.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ecommerce.get_store_promo_rule_promo_code(
  store_id: "store_id",
  promo_rule_id: "promo_rule_id",
  promo_code_id: "promo_code_id"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**store_id:** `String` — The store id.
    
</dd>
</dl>

<dl>
<dd>

**promo_rule_id:** `String` — The id for the promo rule of a store.
    
</dd>
</dl>

<dl>
<dd>

**promo_code_id:** `String` — The id for the promo code of a store.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `String` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**exclude_fields:** `String` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Ecommerce::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ecommerce.<a href="/lib/mailchimp/ecommerce/client.rb">delete_store_promo_rule_promo_code</a>(store_id:, promo_rule_id:, promo_code_id:) -> </code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Delete a promo code from a store.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ecommerce.delete_store_promo_rule_promo_code(
  store_id: "store_id",
  promo_rule_id: "promo_rule_id",
  promo_code_id: "promo_code_id"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**store_id:** `String` — The store id.
    
</dd>
</dl>

<dl>
<dd>

**promo_rule_id:** `String` — The id for the promo rule of a store.
    
</dd>
</dl>

<dl>
<dd>

**promo_code_id:** `String` — The id for the promo code of a store.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Ecommerce::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ecommerce.<a href="/lib/mailchimp/ecommerce/client.rb">update_store_promo_rule_promo_code</a>(store_id:, promo_rule_id:, promo_code_id:, request) -> Mailchimp::Types::ECommercePromoCode</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Update a promo code.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ecommerce.update_store_promo_rule_promo_code(
  store_id: "store_id",
  promo_rule_id: "promo_rule_id",
  promo_code_id: "promo_code_id"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**store_id:** `String` — The store id.
    
</dd>
</dl>

<dl>
<dd>

**promo_rule_id:** `String` — The id for the promo rule of a store.
    
</dd>
</dl>

<dl>
<dd>

**promo_code_id:** `String` — The id for the promo code of a store.
    
</dd>
</dl>

<dl>
<dd>

**code:** `String` — The discount code. Restricted to UTF-8 characters with max length 50.
    
</dd>
</dl>

<dl>
<dd>

**created_at_foreign:** `String` — The date and time the promotion was created in ISO 8601 format.
    
</dd>
</dl>

<dl>
<dd>

**enabled:** `Internal::Types::Boolean` — Whether the promo code is currently enabled.
    
</dd>
</dl>

<dl>
<dd>

**id:** `String` — A unique identifier for the promo code. Restricted to UTF-8 characters with max length 50.
    
</dd>
</dl>

<dl>
<dd>

**redemption_url:** `String` — The url that should be used in the promotion campaign restricted to UTF-8 characters with max length 2000.
    
</dd>
</dl>

<dl>
<dd>

**updated_at_foreign:** `String` — The date and time the promotion was updated in ISO 8601 format.
    
</dd>
</dl>

<dl>
<dd>

**usage_count:** `Integer` — Number of times promo code has been used.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Ecommerce::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## FacebookAds
<details><summary><code>client.facebook_ads.<a href="/lib/mailchimp/facebook_ads/client.rb">list</a>() -> Mailchimp::FacebookAds::Types::ListFacebookAdsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get list of Facebook ads.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.facebook_ads.list
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**fields:** `String` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**exclude_fields:** `String` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**count:** `Integer` — The number of records to return. Default value is 10. Maximum value is 1000
    
</dd>
</dl>

<dl>
<dd>

**offset:** `Integer` — Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    
</dd>
</dl>

<dl>
<dd>

**sort_field:** `Mailchimp::FacebookAds::Types::ListFacebookAdsRequestSortField` — Returns files sorted by the specified field.
    
</dd>
</dl>

<dl>
<dd>

**sort_dir:** `Mailchimp::FacebookAds::Types::ListFacebookAdsRequestSortDir` — Determines the order direction for sorted results.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::FacebookAds::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.facebook_ads.<a href="/lib/mailchimp/facebook_ads/client.rb">get</a>(outreach_id:) -> Mailchimp::Types::FacebookAds</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get details of a Facebook ad.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.facebook_ads.get(outreach_id: "outreach_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**outreach_id:** `String` — The outreach id.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `String` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**exclude_fields:** `String` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::FacebookAds::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## FileManager
<details><summary><code>client.file_manager.<a href="/lib/mailchimp/file_manager/client.rb">list</a>() -> Internal::Types::Array[Mailchimp::FileManager::Types::ListFileManagerResponseItem]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get information about the file-manager endpoint's resources
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.file_manager.list
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request_options:** `Mailchimp::FileManager::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.file_manager.<a href="/lib/mailchimp/file_manager/client.rb">list_files</a>() -> Mailchimp::FileManager::Types::ListFilesFileManagerResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get a list of available images and files stored in the File Manager for the account.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.file_manager.list_files
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**fields:** `String` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**exclude_fields:** `String` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**count:** `Integer` — The number of records to return. Default value is 10. Maximum value is 1000
    
</dd>
</dl>

<dl>
<dd>

**offset:** `Integer` — Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    
</dd>
</dl>

<dl>
<dd>

**type:** `String` — The file type for the File Manager file.
    
</dd>
</dl>

<dl>
<dd>

**created_by:** `String` — The Mailchimp account user who created the File Manager file.
    
</dd>
</dl>

<dl>
<dd>

**before_created_at:** `String` — Restrict the response to files created before the set date. Uses ISO 8601 time format: 2015-10-21T15:41:36+00:00.
    
</dd>
</dl>

<dl>
<dd>

**since_created_at:** `String` — Restrict the response to files created after the set date. Uses ISO 8601 time format: 2015-10-21T15:41:36+00:00.
    
</dd>
</dl>

<dl>
<dd>

**sort_field:** `Mailchimp::FileManager::Types::ListFilesFileManagerRequestSortField` — Returns files sorted by the specified field.
    
</dd>
</dl>

<dl>
<dd>

**sort_dir:** `Mailchimp::FileManager::Types::ListFilesFileManagerRequestSortDir` — Determines the order direction for sorted results.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::FileManager::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.file_manager.<a href="/lib/mailchimp/file_manager/client.rb">create_file</a>(request) -> Mailchimp::Types::GalleryFile</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Upload a new image or file to the File Manager.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.file_manager.create_file(
  file_data: "file_data",
  name: "name"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**file_data:** `String` — The base64-encoded contents of the file.
    
</dd>
</dl>

<dl>
<dd>

**folder_id:** `Integer` — The id of the folder.
    
</dd>
</dl>

<dl>
<dd>

**name:** `String` — The name of the file.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::FileManager::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.file_manager.<a href="/lib/mailchimp/file_manager/client.rb">get_file</a>(file_id:) -> Mailchimp::Types::GalleryFile</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get information about a specific file in the File Manager.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.file_manager.get_file(file_id: "file_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**file_id:** `String` — The unique id for the File Manager file.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `String` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**exclude_fields:** `String` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::FileManager::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.file_manager.<a href="/lib/mailchimp/file_manager/client.rb">delete_file</a>(file_id:) -> </code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Remove a specific file from the File Manager.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.file_manager.delete_file(file_id: "file_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**file_id:** `String` — The unique id for the File Manager file.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::FileManager::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.file_manager.<a href="/lib/mailchimp/file_manager/client.rb">update_file</a>(file_id:, request) -> Mailchimp::Types::GalleryFile</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Update a file in the File Manager.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.file_manager.update_file(file_id: "file_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**file_id:** `String` — The unique id for the File Manager file.
    
</dd>
</dl>

<dl>
<dd>

**folder_id:** `Integer` — The id of the folder. Setting `folder_id` to `0` will remove a file from its current folder.
    
</dd>
</dl>

<dl>
<dd>

**name:** `String` — The name of the file.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::FileManager::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.file_manager.<a href="/lib/mailchimp/file_manager/client.rb">list_folders</a>() -> Mailchimp::FileManager::Types::ListFoldersFileManagerResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get a list of all folders in the File Manager.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.file_manager.list_folders
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**fields:** `String` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**exclude_fields:** `String` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**count:** `Integer` — The number of records to return. Default value is 10. Maximum value is 1000
    
</dd>
</dl>

<dl>
<dd>

**offset:** `Integer` — Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    
</dd>
</dl>

<dl>
<dd>

**created_by:** `String` — The Mailchimp account user who created the File Manager file.
    
</dd>
</dl>

<dl>
<dd>

**before_created_at:** `String` — Restrict the response to files created before the set date. Uses ISO 8601 time format: 2015-10-21T15:41:36+00:00.
    
</dd>
</dl>

<dl>
<dd>

**since_created_at:** `String` — Restrict the response to files created after the set date. Uses ISO 8601 time format: 2015-10-21T15:41:36+00:00.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::FileManager::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.file_manager.<a href="/lib/mailchimp/file_manager/client.rb">create_folder</a>(request) -> Mailchimp::FileManager::Types::CreateFolderFileManagerResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Create a new folder in the File Manager.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.file_manager.create_folder(name: "name")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**name:** `String` — The name of the folder.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::FileManager::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.file_manager.<a href="/lib/mailchimp/file_manager/client.rb">get_folder</a>(folder_id:) -> Mailchimp::FileManager::Types::GetFolderFileManagerResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get information about a specific folder in the File Manager.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.file_manager.get_folder(folder_id: "folder_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**folder_id:** `String` — The unique id for the File Manager folder.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `String` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**exclude_fields:** `String` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::FileManager::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.file_manager.<a href="/lib/mailchimp/file_manager/client.rb">delete_folder</a>(folder_id:) -> </code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Delete a specific folder in the File Manager.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.file_manager.delete_folder(folder_id: "folder_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**folder_id:** `String` — The unique id for the File Manager folder.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::FileManager::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.file_manager.<a href="/lib/mailchimp/file_manager/client.rb">update_folder</a>(folder_id:, request) -> Mailchimp::FileManager::Types::UpdateFolderFileManagerResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Update a specific File Manager folder.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.file_manager.update_folder(
  folder_id: "folder_id",
  name: "name"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**folder_id:** `String` — The unique id for the File Manager folder.
    
</dd>
</dl>

<dl>
<dd>

**name:** `String` — The name of the folder.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::FileManager::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.file_manager.<a href="/lib/mailchimp/file_manager/client.rb">list_folder_files</a>(folder_id:) -> Mailchimp::FileManager::Types::ListFolderFilesFileManagerResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get a list of available images and files stored in this folder.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.file_manager.list_folder_files(folder_id: "folder_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**folder_id:** `String` — The unique id for the File Manager folder.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `String` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**exclude_fields:** `String` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**count:** `Integer` — The number of records to return. Default value is 10. Maximum value is 1000
    
</dd>
</dl>

<dl>
<dd>

**offset:** `Integer` — Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    
</dd>
</dl>

<dl>
<dd>

**type:** `String` — The file type for the File Manager file.
    
</dd>
</dl>

<dl>
<dd>

**created_by:** `String` — The Mailchimp account user who created the File Manager file.
    
</dd>
</dl>

<dl>
<dd>

**before_created_at:** `String` — Restrict the response to files created before the set date. Uses ISO 8601 time format: 2015-10-21T15:41:36+00:00.
    
</dd>
</dl>

<dl>
<dd>

**since_created_at:** `String` — Restrict the response to files created after the set date. Uses ISO 8601 time format: 2015-10-21T15:41:36+00:00.
    
</dd>
</dl>

<dl>
<dd>

**sort_field:** `Mailchimp::FileManager::Types::ListFolderFilesFileManagerRequestSortField` — Returns files sorted by the specified field.
    
</dd>
</dl>

<dl>
<dd>

**sort_dir:** `Mailchimp::FileManager::Types::ListFolderFilesFileManagerRequestSortDir` — Determines the order direction for sorted results.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::FileManager::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## LandingPages
<details><summary><code>client.landing_pages.<a href="/lib/mailchimp/landing_pages/client.rb">list</a>() -> Mailchimp::LandingPages::Types::ListLandingPagesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get all landing pages.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.landing_pages.list
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**sort_dir:** `Mailchimp::LandingPages::Types::ListLandingPagesRequestSortDir` — Determines the order direction for sorted results.
    
</dd>
</dl>

<dl>
<dd>

**sort_field:** `Mailchimp::LandingPages::Types::ListLandingPagesRequestSortField` — Returns files sorted by the specified field.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `String` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**exclude_fields:** `String` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**count:** `Integer` — The number of records to return. Default value is 10. Maximum value is 1000
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::LandingPages::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.landing_pages.<a href="/lib/mailchimp/landing_pages/client.rb">create</a>(request) -> Mailchimp::Types::LandingPage</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Create an unpublished and contentless Mailchimp landing page.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.landing_pages.create
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**use_default_list:** `Internal::Types::Boolean` — Will create the Landing Page using the account's Default List instead of requiring a list_id.
    
</dd>
</dl>

<dl>
<dd>

**description:** `String` — The description of this landing page.
    
</dd>
</dl>

<dl>
<dd>

**list_id:** `String` — The list's ID associated with this landing page.
    
</dd>
</dl>

<dl>
<dd>

**name:** `String` — The name of this landing page.
    
</dd>
</dl>

<dl>
<dd>

**store_id:** `String` — The ID of the store associated with this landing page.
    
</dd>
</dl>

<dl>
<dd>

**template_id:** `Integer` — The template_id of this landing page.
    
</dd>
</dl>

<dl>
<dd>

**title:** `String` — The title of this landing page seen in the browser's title bar.
    
</dd>
</dl>

<dl>
<dd>

**tracking:** `Mailchimp::LandingPages::Types::CreateLandingPagesRequestTracking` — The tracking settings applied to this landing page.
    
</dd>
</dl>

<dl>
<dd>

**type:** `Mailchimp::LandingPages::Types::CreateLandingPagesRequestType` — The type of template the landing page has.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::LandingPages::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.landing_pages.<a href="/lib/mailchimp/landing_pages/client.rb">get</a>(page_id:) -> Mailchimp::Types::LandingPage</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get information about a specific page.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.landing_pages.get(page_id: "page_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**page_id:** `String` — The unique id for the page.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `String` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**exclude_fields:** `String` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::LandingPages::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.landing_pages.<a href="/lib/mailchimp/landing_pages/client.rb">delete</a>(page_id:) -> </code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Delete a landing page.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.landing_pages.delete(page_id: "page_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**page_id:** `String` — The unique id for the page.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::LandingPages::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.landing_pages.<a href="/lib/mailchimp/landing_pages/client.rb">update</a>(page_id:, request) -> Mailchimp::Types::LandingPage</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Update a landing page.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.landing_pages.update(page_id: "page_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**page_id:** `String` — The unique id for the page.
    
</dd>
</dl>

<dl>
<dd>

**description:** `String` — The description of this landing page.
    
</dd>
</dl>

<dl>
<dd>

**list_id:** `String` — The list's ID associated with this landing page.
    
</dd>
</dl>

<dl>
<dd>

**name:** `String` — The name of this landing page.
    
</dd>
</dl>

<dl>
<dd>

**store_id:** `String` — The ID of the store associated with this landing page.
    
</dd>
</dl>

<dl>
<dd>

**title:** `String` — The title of this landing page seen in the browser's title bar.
    
</dd>
</dl>

<dl>
<dd>

**tracking:** `Mailchimp::LandingPages::Types::UpdateLandingPagesRequestTracking` — The tracking settings applied to this landing page.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::LandingPages::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.landing_pages.<a href="/lib/mailchimp/landing_pages/client.rb">create_action_publish</a>(page_id:) -> </code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Publish a landing page that is in draft, unpublished, or has been previously published and edited.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.landing_pages.create_action_publish(page_id: "page_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**page_id:** `String` — The unique id for the page.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::LandingPages::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.landing_pages.<a href="/lib/mailchimp/landing_pages/client.rb">create_action_unpublish</a>(page_id:) -> </code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Unpublish a landing page that is in draft or has been published.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.landing_pages.create_action_unpublish(page_id: "page_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**page_id:** `String` — The unique id for the page.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::LandingPages::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.landing_pages.<a href="/lib/mailchimp/landing_pages/client.rb">list_content</a>(page_id:) -> Mailchimp::LandingPages::Types::ListContentLandingPagesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get the the HTML for your landing page.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.landing_pages.list_content(page_id: "page_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**page_id:** `String` — The unique id for the page.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `String` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**exclude_fields:** `String` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::LandingPages::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## lists
<details><summary><code>client.lists.<a href="/lib/mailchimp/lists/client.rb">list</a>() -> Mailchimp::Lists::Types::ListListsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get information about all lists in the account.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.lists.list
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**fields:** `String` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**exclude_fields:** `String` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**count:** `Integer` — The number of records to return. Default value is 10. Maximum value is 1000
    
</dd>
</dl>

<dl>
<dd>

**offset:** `Integer` — Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    
</dd>
</dl>

<dl>
<dd>

**before_date_created:** `String` — Restrict response to lists created before the set date. Uses ISO 8601 time format: 2015-10-21T15:41:36+00:00.
    
</dd>
</dl>

<dl>
<dd>

**since_date_created:** `String` — Restrict results to lists created after the set date. Uses ISO 8601 time format: 2015-10-21T15:41:36+00:00.
    
</dd>
</dl>

<dl>
<dd>

**before_campaign_last_sent:** `String` — Restrict results to lists created before the last campaign send date. Uses ISO 8601 time format: 2015-10-21T15:41:36+00:00.
    
</dd>
</dl>

<dl>
<dd>

**since_campaign_last_sent:** `String` — Restrict results to lists created after the last campaign send date. Uses ISO 8601 time format: 2015-10-21T15:41:36+00:00.
    
</dd>
</dl>

<dl>
<dd>

**email:** `String` — Restrict results to lists that include a specific subscriber's email address.
    
</dd>
</dl>

<dl>
<dd>

**sort_field:** `Mailchimp::Lists::Types::ListListsRequestSortField` — Returns files sorted by the specified field.
    
</dd>
</dl>

<dl>
<dd>

**sort_dir:** `Mailchimp::Lists::Types::ListListsRequestSortDir` — Determines the order direction for sorted results.
    
</dd>
</dl>

<dl>
<dd>

**has_ecommerce_store:** `Internal::Types::Boolean` — Restrict results to lists that contain an active, connected, undeleted ecommerce store.
    
</dd>
</dl>

<dl>
<dd>

**include_total_contacts:** `Internal::Types::Boolean` — Deprecated. Return the total_contacts field in the stats response, which contains an approximate count of subscribed, unsubscribed, and transactional contacts. For a complete audience contact count, use the /audiences endpoint instead.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Lists::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/lib/mailchimp/lists/client.rb">create</a>(request) -> Mailchimp::Types::SubscriberList</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Create a new list in your Mailchimp account.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.lists.create(
  campaign_defaults: {
    from_email: "from_email",
    from_name: "from_name",
    language: "language",
    subject: "subject"
  },
  contact: {
    address1: "address1",
    city: "city",
    company: "company",
    country: "country"
  },
  email_type_option: true,
  name: "name",
  permission_reminder: "permission_reminder"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**campaign_defaults:** `Mailchimp::Lists::Types::CreateListsRequestCampaignDefaults` — [Default values for campaigns](https://mailchimp.com/help/edit-your-emails-subject-preview-text-from-name-or-from-email-address/) created for this list.
    
</dd>
</dl>

<dl>
<dd>

**contact:** `Mailchimp::Lists::Types::CreateListsRequestContact` — [Contact information displayed in campaign footers](https://mailchimp.com/help/about-campaign-footers/) to comply with international spam laws.
    
</dd>
</dl>

<dl>
<dd>

**double_optin:** `Internal::Types::Boolean` — Whether or not to require the subscriber to confirm subscription via email.
    
</dd>
</dl>

<dl>
<dd>

**email_type_option:** `Internal::Types::Boolean` — Whether the list supports [multiple formats for emails](https://mailchimp.com/help/audience-settings-and-defaults/). When set to `true`, subscribers can choose whether they want to receive HTML or plain-text emails. When set to `false`, subscribers will receive HTML emails, with a plain-text alternative backup.
    
</dd>
</dl>

<dl>
<dd>

**marketing_permissions:** `Internal::Types::Boolean` — Whether or not the list has marketing permissions (eg. GDPR) enabled.
    
</dd>
</dl>

<dl>
<dd>

**name:** `String` — The name of the list.
    
</dd>
</dl>

<dl>
<dd>

**notify_on_subscribe:** `String` — The email address to send [subscribe notifications](https://mailchimp.com/help/change-subscribe-and-unsubscribe-notifications/) to.
    
</dd>
</dl>

<dl>
<dd>

**notify_on_unsubscribe:** `String` — The email address to send [unsubscribe notifications](https://mailchimp.com/help/change-subscribe-and-unsubscribe-notifications/) to.
    
</dd>
</dl>

<dl>
<dd>

**permission_reminder:** `String` — The [permission reminder](https://mailchimp.com/help/edit-the-permission-reminder/) for the list.
    
</dd>
</dl>

<dl>
<dd>

**use_archive_bar:** `Internal::Types::Boolean` — Whether campaigns for this list use the [Archive Bar](https://mailchimp.com/help/about-email-campaign-archives-and-pages/) in archives by default.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Lists::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/lib/mailchimp/lists/client.rb">get</a>(list_id:) -> Mailchimp::Types::SubscriberList</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get information about a specific list in your Mailchimp account. Results include list members who have signed up but haven't confirmed their subscription yet and unsubscribed or cleaned.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.lists.get(list_id: "list_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**list_id:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `String` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**exclude_fields:** `String` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**include_total_contacts:** `Internal::Types::Boolean` — Deprecated. Return the total_contacts field in the stats response, which contains an approximate count of subscribed, unsubscribed, and transactional contacts. For a complete audience contact count, use the /audiences endpoint instead.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Lists::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/lib/mailchimp/lists/client.rb">batch_subscribe_or_unsubscribe</a>(list_id:, request) -> Mailchimp::Lists::Types::BatchSubscribeOrUnsubscribeListsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Batch subscribe or unsubscribe list members.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.lists.batch_subscribe_or_unsubscribe(
  list_id: "list_id",
  members: []
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**list_id:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**skip_merge_validation:** `Internal::Types::Boolean` — If skip_merge_validation is true, member data will be accepted without merge field values, even if the merge field is usually required. This defaults to false.
    
</dd>
</dl>

<dl>
<dd>

**skip_duplicate_check:** `Internal::Types::Boolean` — If skip_duplicate_check is true, we will ignore duplicates sent in the request when using the batch sub/unsub on the lists endpoint. The status of the first appearance in the request will be saved. This defaults to false.
    
</dd>
</dl>

<dl>
<dd>

**members:** `Internal::Types::Array[Mailchimp::Lists::Types::BatchSubscribeOrUnsubscribeListsRequestMembersItem]` — An array of objects, each representing an email address and the subscription status for a specific list. Up to 500 members may be added or updated with each API call.
    
</dd>
</dl>

<dl>
<dd>

**sync_tags:** `Internal::Types::Boolean` — Whether this batch operation will replace all existing tags with tags in request.
    
</dd>
</dl>

<dl>
<dd>

**update_existing:** `Internal::Types::Boolean` — Whether this batch operation will change existing members' subscription status.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Lists::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/lib/mailchimp/lists/client.rb">delete</a>(list_id:) -> </code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Delete a list from your Mailchimp account. If you delete a list, you'll lose the list history—including subscriber activity, unsubscribes, complaints, and bounces. You’ll also lose subscribers’ email addresses, unless you exported and backed up your list.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.lists.delete(list_id: "list_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**list_id:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Lists::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/lib/mailchimp/lists/client.rb">update</a>(list_id:, request) -> Mailchimp::Types::SubscriberList</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Update the settings for a specific list.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.lists.update(list_id: "list_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**list_id:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**campaign_defaults:** `Mailchimp::Lists::Types::UpdateListsRequestCampaignDefaults` — [Default values for campaigns](https://mailchimp.com/help/edit-your-emails-subject-preview-text-from-name-or-from-email-address/) created for this list.
    
</dd>
</dl>

<dl>
<dd>

**contact:** `Mailchimp::Lists::Types::UpdateListsRequestContact` — [Contact information displayed in campaign footers](https://mailchimp.com/help/about-campaign-footers/) to comply with international spam laws.
    
</dd>
</dl>

<dl>
<dd>

**double_optin:** `Internal::Types::Boolean` — Whether or not to require the subscriber to confirm subscription via email.
    
</dd>
</dl>

<dl>
<dd>

**email_type_option:** `Internal::Types::Boolean` — Whether the list supports [multiple formats for emails](https://mailchimp.com/help/audience-settings-and-defaults/). When set to `true`, subscribers can choose whether they want to receive HTML or plain-text emails. When set to `false`, subscribers will receive HTML emails, with a plain-text alternative backup.
    
</dd>
</dl>

<dl>
<dd>

**marketing_permissions:** `Internal::Types::Boolean` — Whether or not the list has marketing permissions (eg. GDPR) enabled.
    
</dd>
</dl>

<dl>
<dd>

**name:** `String` — The name of the list.
    
</dd>
</dl>

<dl>
<dd>

**notify_on_subscribe:** `String` — The email address to send [subscribe notifications](https://mailchimp.com/help/change-subscribe-and-unsubscribe-notifications/) to.
    
</dd>
</dl>

<dl>
<dd>

**notify_on_unsubscribe:** `String` — The email address to send [unsubscribe notifications](https://mailchimp.com/help/change-subscribe-and-unsubscribe-notifications/) to.
    
</dd>
</dl>

<dl>
<dd>

**permission_reminder:** `String` — The [permission reminder](https://mailchimp.com/help/edit-the-permission-reminder/) for the list.
    
</dd>
</dl>

<dl>
<dd>

**use_archive_bar:** `Internal::Types::Boolean` — Whether campaigns for this list use the [Archive Bar](https://mailchimp.com/help/about-email-campaign-archives-and-pages/) in archives by default.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Lists::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/lib/mailchimp/lists/client.rb">list_abuse_reports</a>(list_id:) -> Mailchimp::Lists::Types::ListAbuseReportsListsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get all abuse reports for a specific list.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.lists.list_abuse_reports(list_id: "list_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**list_id:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `String` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**exclude_fields:** `String` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**count:** `Integer` — The number of records to return. Default value is 10. Maximum value is 1000
    
</dd>
</dl>

<dl>
<dd>

**offset:** `Integer` — Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Lists::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/lib/mailchimp/lists/client.rb">get_abuse_report</a>(list_id:, report_id:) -> Mailchimp::Types::ListsAbuseReports</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get details about a specific abuse report.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.lists.get_abuse_report(
  list_id: "list_id",
  report_id: "report_id"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**list_id:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**report_id:** `String` — The id for the abuse report.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `String` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**exclude_fields:** `String` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**count:** `Integer` — The number of records to return. Default value is 10. Maximum value is 1000
    
</dd>
</dl>

<dl>
<dd>

**offset:** `Integer` — Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Lists::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/lib/mailchimp/lists/client.rb">list_activity</a>(list_id:) -> Mailchimp::Lists::Types::ListActivityListsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get up to the previous 180 days of daily detailed aggregated activity stats for a list, not including Automation activity.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.lists.list_activity(list_id: "list_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**list_id:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `String` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**exclude_fields:** `String` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**count:** `Integer` — The number of records to return. Default value is 10. Maximum value is 1000
    
</dd>
</dl>

<dl>
<dd>

**offset:** `Integer` — Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Lists::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/lib/mailchimp/lists/client.rb">list_clients</a>(list_id:) -> Mailchimp::Lists::Types::ListClientsListsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get a list of the top email clients based on user-agent strings.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.lists.list_clients(list_id: "list_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**list_id:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `String` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**exclude_fields:** `String` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Lists::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/lib/mailchimp/lists/client.rb">list_growth_history</a>(list_id:) -> Mailchimp::Lists::Types::ListGrowthHistoryListsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get a month-by-month summary of a specific list's growth activity.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.lists.list_growth_history(list_id: "list_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**list_id:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `String` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**exclude_fields:** `String` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**count:** `Integer` — The number of records to return. Default value is 10. Maximum value is 1000
    
</dd>
</dl>

<dl>
<dd>

**offset:** `Integer` — Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    
</dd>
</dl>

<dl>
<dd>

**sort_field:** `Mailchimp::Lists::Types::ListGrowthHistoryListsRequestSortField` — Returns files sorted by the specified field.
    
</dd>
</dl>

<dl>
<dd>

**sort_dir:** `Mailchimp::Lists::Types::ListGrowthHistoryListsRequestSortDir` — Determines the order direction for sorted results.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Lists::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/lib/mailchimp/lists/client.rb">get_growth_history</a>(list_id:, month:) -> Mailchimp::Types::GrowthHistory</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get a summary of a specific list's growth activity for a specific month and year.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.lists.get_growth_history(
  list_id: "list_id",
  month: "month"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**list_id:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**month:** `String` — A specific month of list growth history.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `String` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**exclude_fields:** `String` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Lists::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/lib/mailchimp/lists/client.rb">list_interest_categories</a>(list_id:) -> Mailchimp::Lists::Types::ListInterestCategoriesListsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get information about a list's interest categories.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.lists.list_interest_categories(list_id: "list_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**list_id:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `String` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**exclude_fields:** `String` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**count:** `Integer` — The number of records to return. Default value is 10. Maximum value is 1000
    
</dd>
</dl>

<dl>
<dd>

**offset:** `Integer` — Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    
</dd>
</dl>

<dl>
<dd>

**type:** `String` — Restrict results a type of interest group
    
</dd>
</dl>

<dl>
<dd>

**sort_field:** `Mailchimp::Lists::Types::ListInterestCategoriesListsRequestSortField` — Returns interest categories sorted by the specified field. Defaults to display_order.
    
</dd>
</dl>

<dl>
<dd>

**sort_dir:** `Mailchimp::Lists::Types::ListInterestCategoriesListsRequestSortDir` — Determines the order direction for sorted results.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Lists::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/lib/mailchimp/lists/client.rb">create_interest_category</a>(list_id:, request) -> Mailchimp::Types::InterestCategory</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Create a new interest category.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.lists.create_interest_category(
  list_id: "list_id",
  title: "title",
  type: "checkboxes"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**list_id:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**display_order:** `Integer` — The order that the categories are displayed in the list. Lower numbers display first.
    
</dd>
</dl>

<dl>
<dd>

**title:** `String` — The text description of this category. This field appears on signup forms and is often phrased as a question.
    
</dd>
</dl>

<dl>
<dd>

**type:** `Mailchimp::Lists::Types::CreateInterestCategoryListsRequestType` — Determines how this category’s interests appear on signup forms.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Lists::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/lib/mailchimp/lists/client.rb">get_interest_category</a>(list_id:, interest_category_id:) -> Mailchimp::Types::InterestCategory</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get information about a specific interest category.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.lists.get_interest_category(
  list_id: "list_id",
  interest_category_id: "interest_category_id"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**list_id:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**interest_category_id:** `String` — The unique ID for the interest category.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `String` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**exclude_fields:** `String` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Lists::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/lib/mailchimp/lists/client.rb">delete_interest_category</a>(list_id:, interest_category_id:) -> </code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Delete a specific interest category.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.lists.delete_interest_category(
  list_id: "list_id",
  interest_category_id: "interest_category_id"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**list_id:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**interest_category_id:** `String` — The unique ID for the interest category.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Lists::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/lib/mailchimp/lists/client.rb">update_interest_category</a>(list_id:, interest_category_id:, request) -> Mailchimp::Types::InterestCategory</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Update a specific interest category.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.lists.update_interest_category(
  list_id: "list_id",
  interest_category_id: "interest_category_id"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**list_id:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**interest_category_id:** `String` — The unique ID for the interest category.
    
</dd>
</dl>

<dl>
<dd>

**display_order:** `Integer` — The order that the categories are displayed in the list. Lower numbers display first.
    
</dd>
</dl>

<dl>
<dd>

**title:** `String` — The text description of this category. This field appears on signup forms and is often phrased as a question.
    
</dd>
</dl>

<dl>
<dd>

**type:** `Mailchimp::Lists::Types::UpdateInterestCategoryListsRequestType` — Determines how this category’s interests appear on signup forms.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Lists::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/lib/mailchimp/lists/client.rb">list_interest_category_interests</a>(list_id:, interest_category_id:) -> Mailchimp::Lists::Types::ListInterestCategoryInterestsListsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get a list of this category's interests.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.lists.list_interest_category_interests(
  list_id: "list_id",
  interest_category_id: "interest_category_id"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**list_id:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**interest_category_id:** `String` — The unique ID for the interest category.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `String` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**exclude_fields:** `String` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**count:** `Integer` — The number of records to return. Default value is 10. Maximum value is 1000
    
</dd>
</dl>

<dl>
<dd>

**offset:** `Integer` — Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Lists::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/lib/mailchimp/lists/client.rb">create_interest_category_interest</a>(list_id:, interest_category_id:, request) -> Mailchimp::Types::Interest</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Create a new interest or 'group name' for a specific category.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.lists.create_interest_category_interest(
  list_id: "list_id",
  interest_category_id: "interest_category_id",
  name: "name"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**list_id:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**interest_category_id:** `String` — The unique ID for the interest category.
    
</dd>
</dl>

<dl>
<dd>

**display_order:** `Integer` — The display order for interests.
    
</dd>
</dl>

<dl>
<dd>

**name:** `String` — The name of the interest. This can be shown publicly on a subscription form.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Lists::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/lib/mailchimp/lists/client.rb">get_interest_category_interest</a>(list_id:, interest_category_id:, interest_id:) -> Mailchimp::Types::Interest</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get interests or 'group names' for a specific category.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.lists.get_interest_category_interest(
  list_id: "list_id",
  interest_category_id: "interest_category_id",
  interest_id: "interest_id"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**list_id:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**interest_category_id:** `String` — The unique ID for the interest category.
    
</dd>
</dl>

<dl>
<dd>

**interest_id:** `String` — The specific interest or 'group name'.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `String` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**exclude_fields:** `String` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Lists::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/lib/mailchimp/lists/client.rb">delete_interest_category_interest</a>(list_id:, interest_category_id:, interest_id:) -> </code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Delete interests or group names in a specific category.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.lists.delete_interest_category_interest(
  list_id: "list_id",
  interest_category_id: "interest_category_id",
  interest_id: "interest_id"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**list_id:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**interest_category_id:** `String` — The unique ID for the interest category.
    
</dd>
</dl>

<dl>
<dd>

**interest_id:** `String` — The specific interest or 'group name'.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Lists::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/lib/mailchimp/lists/client.rb">update_interest_category_interest</a>(list_id:, interest_category_id:, interest_id:, request) -> Mailchimp::Types::Interest</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Update interests or 'group names' for a specific category.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.lists.update_interest_category_interest(
  list_id: "list_id",
  interest_category_id: "interest_category_id",
  interest_id: "interest_id"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**list_id:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**interest_category_id:** `String` — The unique ID for the interest category.
    
</dd>
</dl>

<dl>
<dd>

**interest_id:** `String` — The specific interest or 'group name'.
    
</dd>
</dl>

<dl>
<dd>

**display_order:** `Integer` — The display order for interests.
    
</dd>
</dl>

<dl>
<dd>

**name:** `String` — The name of the interest. This can be shown publicly on a subscription form.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Lists::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/lib/mailchimp/lists/client.rb">list_locations</a>(list_id:) -> Mailchimp::Lists::Types::ListLocationsListsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get the locations (countries) that the list's subscribers have been tagged to based on geocoding their IP address.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.lists.list_locations(list_id: "list_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**list_id:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `String` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**exclude_fields:** `String` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Lists::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/lib/mailchimp/lists/client.rb">list_members</a>(list_id:) -> Mailchimp::Lists::Types::ListMembersListsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get information about members in a specific Mailchimp list.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.lists.list_members(list_id: "list_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**list_id:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `String` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**exclude_fields:** `String` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**count:** `Integer` — The number of records to return. Default value is 10. Maximum value is 1000
    
</dd>
</dl>

<dl>
<dd>

**offset:** `Integer` — Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    
</dd>
</dl>

<dl>
<dd>

**email_type:** `String` — The email type.
    
</dd>
</dl>

<dl>
<dd>

**status:** `Mailchimp::Lists::Types::ListMembersListsRequestStatus` — The subscriber's status.
    
</dd>
</dl>

<dl>
<dd>

**since_timestamp_opt:** `String` — Restrict results to subscribers who opted-in after the set timeframe. Uses ISO 8601 time format: 2015-10-21T15:41:36+00:00.
    
</dd>
</dl>

<dl>
<dd>

**before_timestamp_opt:** `String` — Restrict results to subscribers who opted-in before the set timeframe. Uses ISO 8601 time format: 2015-10-21T15:41:36+00:00.
    
</dd>
</dl>

<dl>
<dd>

**since_last_changed:** `String` — Restrict results to subscribers whose information changed after the set timeframe. Uses ISO 8601 time format: 2015-10-21T15:41:36+00:00.
    
</dd>
</dl>

<dl>
<dd>

**before_last_changed:** `String` — Restrict results to subscribers whose information changed before the set timeframe. Uses ISO 8601 time format: 2015-10-21T15:41:36+00:00.
    
</dd>
</dl>

<dl>
<dd>

**unique_email_id:** `String` — A unique identifier for the email address across all Mailchimp lists.
    
</dd>
</dl>

<dl>
<dd>

**vip_only:** `Internal::Types::Boolean` — A filter to return only the list's VIP members. Passing `true` will restrict results to VIP list members, passing `false` will return all list members.
    
</dd>
</dl>

<dl>
<dd>

**interest_category_id:** `String` — The unique id for the interest category.
    
</dd>
</dl>

<dl>
<dd>

**interest_ids:** `String` — Used to filter list members by interests. Must be accompanied by interest_category_id and interest_match. The value must be a comma separated list of interest ids present for any supplied interest categories.
    
</dd>
</dl>

<dl>
<dd>

**interest_match:** `Mailchimp::Lists::Types::ListMembersListsRequestInterestMatch` — Used to filter list members by interests. Must be accompanied by interest_category_id and interest_ids. "any" will match a member with any of the interest supplied, "all" will only match members with every interest supplied, and "none" will match members without any of the interest supplied.
    
</dd>
</dl>

<dl>
<dd>

**sort_field:** `Mailchimp::Lists::Types::ListMembersListsRequestSortField` — Returns files sorted by the specified field.
    
</dd>
</dl>

<dl>
<dd>

**sort_dir:** `Mailchimp::Lists::Types::ListMembersListsRequestSortDir` — Determines the order direction for sorted results.
    
</dd>
</dl>

<dl>
<dd>

**since_last_campaign:** `Internal::Types::Boolean` — Filter subscribers by those subscribed/unsubscribed/pending/cleaned since last email campaign send. Member status is required to use this filter.
    
</dd>
</dl>

<dl>
<dd>

**unsubscribed_since:** `String` — Filter subscribers by those unsubscribed since a specific date. Using any status other than unsubscribed with this filter will result in an error.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Lists::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/lib/mailchimp/lists/client.rb">create_member</a>(list_id:, request) -> Mailchimp::Types::ListMembers</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Add a new member to the list.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.lists.create_member(
  list_id: "list_id",
  email_address: "email_address",
  status: "subscribed"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**list_id:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**skip_merge_validation:** `Internal::Types::Boolean` — If skip_merge_validation is true, member data will be accepted without merge field values, even if the merge field is usually required. This defaults to false.
    
</dd>
</dl>

<dl>
<dd>

**email_address:** `String` — Email address for a subscriber.
    
</dd>
</dl>

<dl>
<dd>

**email_type:** `String` — Type of email this member asked to get ('html' or 'text').
    
</dd>
</dl>

<dl>
<dd>

**interests:** `Internal::Types::Hash[String, Internal::Types::Boolean]` — The key of this object's properties is the ID of the interest in question.
    
</dd>
</dl>

<dl>
<dd>

**ip_opt:** `String` — The IP address the subscriber used to confirm their opt-in status.
    
</dd>
</dl>

<dl>
<dd>

**ip_signup:** `String` — IP address the subscriber signed up from.
    
</dd>
</dl>

<dl>
<dd>

**language:** `String` — If set/detected, the [subscriber's language](https://mailchimp.com/help/view-and-edit-contact-languages/).
    
</dd>
</dl>

<dl>
<dd>

**location:** `Mailchimp::Lists::Types::CreateMemberListsRequestLocation` — Subscriber location information.
    
</dd>
</dl>

<dl>
<dd>

**marketing_permissions:** `Internal::Types::Array[Mailchimp::Lists::Types::CreateMemberListsRequestMarketingPermissionsItem]` — The marketing permissions for the subscriber.
    
</dd>
</dl>

<dl>
<dd>

**merge_fields:** `Internal::Types::Hash[String, Mailchimp::Lists::Types::CreateMemberListsRequestMergeFieldsValue]` — A dictionary of merge fields where the keys are the merge tags. See the [Merge Fields documentation](https://mailchimp.com/developer/marketing/docs/merge-fields/#structure) for more about the structure.
    
</dd>
</dl>

<dl>
<dd>

**status:** `Mailchimp::Lists::Types::CreateMemberListsRequestStatus` — Subscriber's current status.
    
</dd>
</dl>

<dl>
<dd>

**tags:** `Internal::Types::Array[String]` — The tags that are associated with a member.
    
</dd>
</dl>

<dl>
<dd>

**timestamp_opt:** `Mailchimp::Lists::Types::CreateMemberListsRequestTimestampOpt` 
    
</dd>
</dl>

<dl>
<dd>

**timestamp_signup:** `Mailchimp::Lists::Types::CreateMemberListsRequestTimestampSignup` 
    
</dd>
</dl>

<dl>
<dd>

**vip:** `Internal::Types::Boolean` — [VIP status](https://mailchimp.com/help/designate-and-send-to-vip-contacts/) for subscriber.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Lists::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/lib/mailchimp/lists/client.rb">get_member</a>(list_id:, subscriber_hash:) -> Mailchimp::Types::ListMembers</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get information about a specific list member, including a currently subscribed, unsubscribed, or bounced member.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.lists.get_member(
  list_id: "list_id",
  subscriber_hash: "subscriber_hash"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**list_id:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**subscriber_hash:** `String` — The MD5 hash of the lowercase version of the list member's email address. This endpoint also accepts a list member's email address or contact_id.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `String` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**exclude_fields:** `String` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Lists::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/lib/mailchimp/lists/client.rb">upsert_member</a>(list_id:, subscriber_hash:, request) -> Mailchimp::Types::ListMembers</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Add or update a list member.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.lists.upsert_member(
  list_id: "list_id",
  subscriber_hash: "subscriber_hash",
  email_address: "email_address"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**list_id:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**subscriber_hash:** `String` — The MD5 hash of the lowercase version of the list member's email address. This endpoint also accepts a list member's email address or contact_id.
    
</dd>
</dl>

<dl>
<dd>

**skip_merge_validation:** `Internal::Types::Boolean` — If skip_merge_validation is true, member data will be accepted without merge field values, even if the merge field is usually required. This defaults to false.
    
</dd>
</dl>

<dl>
<dd>

**email_address:** `String` — Email address for a subscriber. This value is required only if the email address is not already present on the list.
    
</dd>
</dl>

<dl>
<dd>

**email_type:** `String` — Type of email this member asked to get ('html' or 'text').
    
</dd>
</dl>

<dl>
<dd>

**interests:** `Internal::Types::Hash[String, Internal::Types::Boolean]` — The key of this object's properties is the ID of the interest in question.
    
</dd>
</dl>

<dl>
<dd>

**ip_opt:** `String` — The IP address the subscriber used to confirm their opt-in status.
    
</dd>
</dl>

<dl>
<dd>

**ip_signup:** `String` — IP address the subscriber signed up from.
    
</dd>
</dl>

<dl>
<dd>

**language:** `String` — If set/detected, the [subscriber's language](https://mailchimp.com/help/view-and-edit-contact-languages/).
    
</dd>
</dl>

<dl>
<dd>

**location:** `Mailchimp::Lists::Types::UpsertMemberListsRequestLocation` — Subscriber location information.
    
</dd>
</dl>

<dl>
<dd>

**marketing_permissions:** `Internal::Types::Array[Mailchimp::Lists::Types::UpsertMemberListsRequestMarketingPermissionsItem]` — The marketing permissions for the subscriber.
    
</dd>
</dl>

<dl>
<dd>

**merge_fields:** `Internal::Types::Hash[String, Mailchimp::Lists::Types::UpsertMemberListsRequestMergeFieldsValue]` — A dictionary of merge fields where the keys are the merge tags. See the [Merge Fields documentation](https://mailchimp.com/developer/marketing/docs/merge-fields/#structure) for more about the structure.
    
</dd>
</dl>

<dl>
<dd>

**status:** `Mailchimp::Lists::Types::UpsertMemberListsRequestStatus` — Subscriber's current status.
    
</dd>
</dl>

<dl>
<dd>

**status_if_new:** `Mailchimp::Lists::Types::UpsertMemberListsRequestStatusIfNew` — Subscriber's status. This value is required only if the email address is not already present on the list.
    
</dd>
</dl>

<dl>
<dd>

**tags:** `Internal::Types::Array[String]` — The tags that are associated with a member.
    
</dd>
</dl>

<dl>
<dd>

**timestamp_opt:** `Mailchimp::Lists::Types::UpsertMemberListsRequestTimestampOpt` 
    
</dd>
</dl>

<dl>
<dd>

**timestamp_signup:** `Mailchimp::Lists::Types::UpsertMemberListsRequestTimestampSignup` 
    
</dd>
</dl>

<dl>
<dd>

**vip:** `Internal::Types::Boolean` — [VIP status](https://mailchimp.com/help/designate-and-send-to-vip-contacts/) for subscriber.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Lists::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/lib/mailchimp/lists/client.rb">delete_member</a>(list_id:, subscriber_hash:) -> </code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Archive a list member. To permanently delete, use the delete-permanent action.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.lists.delete_member(
  list_id: "list_id",
  subscriber_hash: "subscriber_hash"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**list_id:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**subscriber_hash:** `String` — The MD5 hash of the lowercase version of the list member's email address. This endpoint also accepts a list member's email address or contact_id.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Lists::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/lib/mailchimp/lists/client.rb">update_member</a>(list_id:, subscriber_hash:, request) -> Mailchimp::Types::ListMembers</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Update information for a specific list member.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.lists.update_member(
  list_id: "list_id",
  subscriber_hash: "subscriber_hash"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**list_id:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**subscriber_hash:** `String` — The MD5 hash of the lowercase version of the list member's email address. This endpoint also accepts a list member's email address or contact_id.
    
</dd>
</dl>

<dl>
<dd>

**skip_merge_validation:** `Internal::Types::Boolean` — If skip_merge_validation is true, member data will be accepted without merge field values, even if the merge field is usually required. This defaults to false.
    
</dd>
</dl>

<dl>
<dd>

**email_address:** `String` — Email address for a subscriber.
    
</dd>
</dl>

<dl>
<dd>

**email_type:** `String` — Type of email this member asked to get ('html' or 'text').
    
</dd>
</dl>

<dl>
<dd>

**interests:** `Internal::Types::Hash[String, Internal::Types::Boolean]` — The key of this object's properties is the ID of the interest in question.
    
</dd>
</dl>

<dl>
<dd>

**ip_opt:** `String` — The IP address the subscriber used to confirm their opt-in status.
    
</dd>
</dl>

<dl>
<dd>

**ip_signup:** `String` — IP address the subscriber signed up from.
    
</dd>
</dl>

<dl>
<dd>

**language:** `String` — If set/detected, the [subscriber's language](https://mailchimp.com/help/view-and-edit-contact-languages/).
    
</dd>
</dl>

<dl>
<dd>

**location:** `Mailchimp::Lists::Types::UpdateMemberListsRequestLocation` — Subscriber location information.
    
</dd>
</dl>

<dl>
<dd>

**marketing_permissions:** `Internal::Types::Array[Mailchimp::Lists::Types::UpdateMemberListsRequestMarketingPermissionsItem]` — The marketing permissions for the subscriber.
    
</dd>
</dl>

<dl>
<dd>

**merge_fields:** `Internal::Types::Hash[String, Mailchimp::Lists::Types::UpdateMemberListsRequestMergeFieldsValue]` — A dictionary of merge fields where the keys are the merge tags. See the [Merge Fields documentation](https://mailchimp.com/developer/marketing/docs/merge-fields/#structure) for more about the structure.
    
</dd>
</dl>

<dl>
<dd>

**status:** `Mailchimp::Lists::Types::UpdateMemberListsRequestStatus` — Subscriber's current status.
    
</dd>
</dl>

<dl>
<dd>

**timestamp_opt:** `Mailchimp::Lists::Types::UpdateMemberListsRequestTimestampOpt` 
    
</dd>
</dl>

<dl>
<dd>

**timestamp_signup:** `Mailchimp::Lists::Types::UpdateMemberListsRequestTimestampSignup` 
    
</dd>
</dl>

<dl>
<dd>

**vip:** `Internal::Types::Boolean` — [VIP status](https://mailchimp.com/help/designate-and-send-to-vip-contacts/) for subscriber.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Lists::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/lib/mailchimp/lists/client.rb">create_member_action_delete_permanent</a>(list_id:, subscriber_hash:) -> </code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Delete all personally identifiable information related to a list member, and remove them from a list. This will make it impossible to re-import the list member.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.lists.create_member_action_delete_permanent(
  list_id: "list_id",
  subscriber_hash: "subscriber_hash"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**list_id:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**subscriber_hash:** `String` — The MD5 hash of the lowercase version of the list member's email address.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Lists::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/lib/mailchimp/lists/client.rb">list_member_activity</a>(list_id:, subscriber_hash:) -> Mailchimp::Lists::Types::ListMemberActivityListsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get the last 50 events of a member's activity on a specific list, including opens, clicks, and unsubscribes.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.lists.list_member_activity(
  list_id: "list_id",
  subscriber_hash: "subscriber_hash"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**list_id:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**subscriber_hash:** `String` — The MD5 hash of the lowercase version of the list member's email address. This endpoint also accepts a list member's email address or contact_id.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `String` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**exclude_fields:** `String` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**action:** `Mailchimp::Lists::Types::ListMemberActivityListsRequestActionItem` — A comma seperated list of actions to return.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Lists::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/lib/mailchimp/lists/client.rb">list_member_activity_feed</a>(list_id:, subscriber_hash:) -> Mailchimp::Lists::Types::ListMemberActivityFeedListsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get a member's activity on a specific list, including opens, clicks, and unsubscribes.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.lists.list_member_activity_feed(
  list_id: "list_id",
  subscriber_hash: "subscriber_hash"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**list_id:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**subscriber_hash:** `String` — The MD5 hash of the lowercase version of the list member's email address. This endpoint also accepts a list member's email address or contact_id.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `String` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**exclude_fields:** `String` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**count:** `Integer` — The number of records to return. Default value is 10. Maximum value is 1000
    
</dd>
</dl>

<dl>
<dd>

**offset:** `Integer` — Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    
</dd>
</dl>

<dl>
<dd>

**activity_filters:** `Mailchimp::Lists::Types::ListMemberActivityFeedListsRequestActivityFiltersItem` — A comma-separated list of activity filters that correspond to a set of activity types, e.g "?activity_filters=open,bounce,click".
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Lists::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/lib/mailchimp/lists/client.rb">list_member_events</a>(list_id:, subscriber_hash:) -> Mailchimp::Lists::Types::ListMemberEventsListsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get events for a contact.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.lists.list_member_events(
  list_id: "list_id",
  subscriber_hash: "subscriber_hash"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**list_id:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**subscriber_hash:** `String` — The MD5 hash of the lowercase version of the list member's email address. This endpoint also accepts a list member's email address or contact_id.
    
</dd>
</dl>

<dl>
<dd>

**count:** `Integer` — The number of records to return. Default value is 10. Maximum value is 1000
    
</dd>
</dl>

<dl>
<dd>

**offset:** `Integer` — Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `String` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**exclude_fields:** `String` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Lists::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/lib/mailchimp/lists/client.rb">create_member_event</a>(list_id:, subscriber_hash:, request) -> </code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Add an event for a list member.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.lists.create_member_event(
  list_id: "list_id",
  subscriber_hash: "subscriber_hash",
  name: "name"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**list_id:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**subscriber_hash:** `String` — The MD5 hash of the lowercase version of the list member's email address. This endpoint also accepts a list member's email address or contact_id.
    
</dd>
</dl>

<dl>
<dd>

**is_syncing:** `Internal::Types::Boolean` — Events created with the is_syncing value set to `true` will not trigger automations.
    
</dd>
</dl>

<dl>
<dd>

**name:** `String` — The name for this type of event ('purchased', 'visited', etc). Must be 2-30 characters in length
    
</dd>
</dl>

<dl>
<dd>

**occurred_at:** `String` — The date and time the event occurred in ISO 8601 format.
    
</dd>
</dl>

<dl>
<dd>

**properties:** `Internal::Types::Hash[String, String]` — An optional list of properties
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Lists::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/lib/mailchimp/lists/client.rb">list_member_goals</a>(list_id:, subscriber_hash:) -> Mailchimp::Lists::Types::ListMemberGoalsListsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get the last 50 Goal events for a member on a specific list.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.lists.list_member_goals(
  list_id: "list_id",
  subscriber_hash: "subscriber_hash"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**list_id:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**subscriber_hash:** `String` — The MD5 hash of the lowercase version of the list member's email address. This endpoint also accepts a list member's email address or contact_id.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `String` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**exclude_fields:** `String` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Lists::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/lib/mailchimp/lists/client.rb">list_member_notes</a>(list_id:, subscriber_hash:) -> Mailchimp::Lists::Types::ListMemberNotesListsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get recent notes for a specific list member.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.lists.list_member_notes(
  list_id: "list_id",
  subscriber_hash: "subscriber_hash"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**list_id:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**subscriber_hash:** `String` — The MD5 hash of the lowercase version of the list member's email address.
    
</dd>
</dl>

<dl>
<dd>

**sort_field:** `Mailchimp::Lists::Types::ListMemberNotesListsRequestSortField` — Returns notes sorted by the specified field.
    
</dd>
</dl>

<dl>
<dd>

**sort_dir:** `Mailchimp::Lists::Types::ListMemberNotesListsRequestSortDir` — Determines the order direction for sorted results.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `String` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**exclude_fields:** `String` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**count:** `Integer` — The number of records to return. Default value is 10. Maximum value is 1000
    
</dd>
</dl>

<dl>
<dd>

**offset:** `Integer` — Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Lists::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/lib/mailchimp/lists/client.rb">create_member_note</a>(list_id:, subscriber_hash:, request) -> Mailchimp::Types::MemberNotes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Add a new note for a specific subscriber.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.lists.create_member_note(
  list_id: "list_id",
  subscriber_hash: "subscriber_hash"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**list_id:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**subscriber_hash:** `String` — The MD5 hash of the lowercase version of the list member's email address.
    
</dd>
</dl>

<dl>
<dd>

**note:** `String` — The content of the note. Note length is limited to 1,000 characters.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Lists::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/lib/mailchimp/lists/client.rb">get_member_note</a>(list_id:, subscriber_hash:, note_id:) -> Mailchimp::Types::MemberNotes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get a specific note for a specific list member.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.lists.get_member_note(
  list_id: "list_id",
  subscriber_hash: "subscriber_hash",
  note_id: "note_id"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**list_id:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**subscriber_hash:** `String` — The MD5 hash of the lowercase version of the list member's email address. This endpoint also accepts a list member's email address or contact_id.
    
</dd>
</dl>

<dl>
<dd>

**note_id:** `String` — The id for the note.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `String` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**exclude_fields:** `String` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Lists::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/lib/mailchimp/lists/client.rb">delete_member_note</a>(list_id:, subscriber_hash:, note_id:) -> </code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Delete a specific note for a specific list member.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.lists.delete_member_note(
  list_id: "list_id",
  subscriber_hash: "subscriber_hash",
  note_id: "note_id"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**list_id:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**subscriber_hash:** `String` — The MD5 hash of the lowercase version of the list member's email address. This endpoint also accepts a list member's email address or contact_id.
    
</dd>
</dl>

<dl>
<dd>

**note_id:** `String` — The id for the note.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Lists::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/lib/mailchimp/lists/client.rb">update_member_note</a>(list_id:, subscriber_hash:, note_id:, request) -> Mailchimp::Types::MemberNotes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Update a specific note for a specific list member.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.lists.update_member_note(
  list_id: "list_id",
  subscriber_hash: "subscriber_hash",
  note_id: "note_id"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**list_id:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**subscriber_hash:** `String` — The MD5 hash of the lowercase version of the list member's email address. This endpoint also accepts a list member's email address or contact_id.
    
</dd>
</dl>

<dl>
<dd>

**note_id:** `String` — The id for the note.
    
</dd>
</dl>

<dl>
<dd>

**note:** `String` — The content of the note. Note length is limited to 1,000 characters.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Lists::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/lib/mailchimp/lists/client.rb">list_member_tags</a>(list_id:, subscriber_hash:) -> Mailchimp::Lists::Types::ListMemberTagsListsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get the tags on a list member.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.lists.list_member_tags(
  list_id: "list_id",
  subscriber_hash: "subscriber_hash"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**list_id:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**subscriber_hash:** `String` — The MD5 hash of the lowercase version of the list member's email address. This endpoint also accepts a list member's email address or contact_id.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `String` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**exclude_fields:** `String` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**count:** `Integer` — The number of records to return. Default value is 10. Maximum value is 1000
    
</dd>
</dl>

<dl>
<dd>

**offset:** `Integer` — Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Lists::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/lib/mailchimp/lists/client.rb">create_member_tag</a>(list_id:, subscriber_hash:, request) -> </code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Add or remove tags from a list member. If a tag that does not exist is passed in and set as 'active', a new tag will be created.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.lists.create_member_tag(
  list_id: "list_id",
  subscriber_hash: "subscriber_hash",
  tags: [{
    name: "name",
    status: "inactive"
  }]
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**list_id:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**subscriber_hash:** `String` — The MD5 hash of the lowercase version of the list member's email address.
    
</dd>
</dl>

<dl>
<dd>

**is_syncing:** `Internal::Types::Boolean` — When is_syncing is true, automations based on the tags in the request will not fire
    
</dd>
</dl>

<dl>
<dd>

**tags:** `Internal::Types::Array[Mailchimp::Lists::Types::CreateMemberTagListsRequestTagsItem]` — A list of tags assigned to the list member.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Lists::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/lib/mailchimp/lists/client.rb">list_merge_fields</a>(list_id:) -> Mailchimp::Lists::Types::ListMergeFieldsListsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get a list of all merge fields for an audience.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.lists.list_merge_fields(list_id: "list_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**list_id:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `String` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**exclude_fields:** `String` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**count:** `Integer` — The number of records to return. Default value is 10. Maximum value is 1000
    
</dd>
</dl>

<dl>
<dd>

**offset:** `Integer` — Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    
</dd>
</dl>

<dl>
<dd>

**type:** `String` — The merge field type.
    
</dd>
</dl>

<dl>
<dd>

**required:** `Internal::Types::Boolean` — Whether it's a required merge field.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Lists::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/lib/mailchimp/lists/client.rb">create_merge_field</a>(list_id:, request) -> Mailchimp::Types::MergeField</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Add a new merge field for a specific audience.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.lists.create_merge_field(
  list_id: "list_id",
  name: "name",
  type: "text"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**list_id:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**default_value:** `String` — The default value for the merge field if `null`.
    
</dd>
</dl>

<dl>
<dd>

**display_order:** `Integer` — The order that the merge field displays on the list signup form.
    
</dd>
</dl>

<dl>
<dd>

**help_text:** `String` — Extra text to help the subscriber fill out the form.
    
</dd>
</dl>

<dl>
<dd>

**name:** `String` — The name of the merge field (audience field).
    
</dd>
</dl>

<dl>
<dd>

**options:** `Mailchimp::Lists::Types::CreateMergeFieldListsRequestOptions` — Extra options for some merge field types.
    
</dd>
</dl>

<dl>
<dd>

**public:** `Internal::Types::Boolean` — Whether the merge field is displayed on the signup form.
    
</dd>
</dl>

<dl>
<dd>

**required:** `Internal::Types::Boolean` — Whether the merge field is required to import a contact.
    
</dd>
</dl>

<dl>
<dd>

**tag:** `String` — The merge tag used for Mailchimp campaigns and [adding contact information](https://mailchimp.com/developer/marketing/docs/merge-fields/#add-merge-data-to-contacts).
    
</dd>
</dl>

<dl>
<dd>

**type:** `Mailchimp::Lists::Types::CreateMergeFieldListsRequestType` — The [type](https://mailchimp.com/developer/marketing/docs/merge-fields/#structure) for the merge field.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Lists::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/lib/mailchimp/lists/client.rb">get_merge_field</a>(list_id:, merge_id:) -> Mailchimp::Types::MergeField</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get information about a specific merge field.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.lists.get_merge_field(
  list_id: "list_id",
  merge_id: "merge_id"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**list_id:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**merge_id:** `String` — The id for the merge field.
    
</dd>
</dl>

<dl>
<dd>

**exclude_fields:** `String` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `String` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Lists::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/lib/mailchimp/lists/client.rb">delete_merge_field</a>(list_id:, merge_id:) -> </code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Delete a specific merge field.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.lists.delete_merge_field(
  list_id: "list_id",
  merge_id: "merge_id"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**list_id:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**merge_id:** `String` — The id for the merge field.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Lists::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/lib/mailchimp/lists/client.rb">update_merge_field</a>(list_id:, merge_id:, request) -> Mailchimp::Types::MergeField</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Update a specific merge field.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.lists.update_merge_field(
  list_id: "list_id",
  merge_id: "merge_id"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**list_id:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**merge_id:** `String` — The id for the merge field.
    
</dd>
</dl>

<dl>
<dd>

**default_value:** `String` — The default value for the merge field if `null`.
    
</dd>
</dl>

<dl>
<dd>

**display_order:** `Integer` — The order that the merge field displays on the list signup form.
    
</dd>
</dl>

<dl>
<dd>

**help_text:** `String` — Extra text to help the subscriber fill out the form.
    
</dd>
</dl>

<dl>
<dd>

**name:** `String` — The name of the merge field (audience field).
    
</dd>
</dl>

<dl>
<dd>

**options:** `Mailchimp::Lists::Types::UpdateMergeFieldListsRequestOptions` — Extra options for some merge field types.
    
</dd>
</dl>

<dl>
<dd>

**public:** `Internal::Types::Boolean` — Whether the merge field is displayed on the signup form.
    
</dd>
</dl>

<dl>
<dd>

**required:** `Internal::Types::Boolean` — Whether the merge field is required to import a contact.
    
</dd>
</dl>

<dl>
<dd>

**tag:** `String` — The merge tag used for Mailchimp campaigns and [adding contact information](https://mailchimp.com/developer/marketing/docs/merge-fields/#add-merge-data-to-contacts).
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Lists::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/lib/mailchimp/lists/client.rb">list_segments</a>(list_id:) -> Mailchimp::Lists::Types::ListSegmentsListsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get information about all available segments for a specific list.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.lists.list_segments(list_id: "list_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**list_id:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `String` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**exclude_fields:** `String` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**count:** `Integer` — The number of records to return. Default value is 10. Maximum value is 1000
    
</dd>
</dl>

<dl>
<dd>

**offset:** `Integer` — Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    
</dd>
</dl>

<dl>
<dd>

**type:** `String` — Limit results based on segment type.
    
</dd>
</dl>

<dl>
<dd>

**since_created_at:** `String` — Restrict results to segments created after the set time. Uses ISO 8601 time format: 2015-10-21T15:41:36+00:00.
    
</dd>
</dl>

<dl>
<dd>

**before_created_at:** `String` — Restrict results to segments created before the set time. Uses ISO 8601 time format: 2015-10-21T15:41:36+00:00.
    
</dd>
</dl>

<dl>
<dd>

**include_cleaned:** `Internal::Types::Boolean` — Include cleaned members in response
    
</dd>
</dl>

<dl>
<dd>

**include_transactional:** `Internal::Types::Boolean` — Include transactional members in response
    
</dd>
</dl>

<dl>
<dd>

**include_unsubscribed:** `Internal::Types::Boolean` — Include unsubscribed members in response
    
</dd>
</dl>

<dl>
<dd>

**since_updated_at:** `String` — Restrict results to segments update after the set time. Uses ISO 8601 time format: 2015-10-21T15:41:36+00:00.
    
</dd>
</dl>

<dl>
<dd>

**before_updated_at:** `String` — Restrict results to segments update before the set time. Uses ISO 8601 time format: 2015-10-21T15:41:36+00:00.
    
</dd>
</dl>

<dl>
<dd>

**exclude_type:** `Mailchimp::Lists::Types::ListSegmentsListsRequestExcludeType` — Exclude results based on segment type. For example, use `exclude_type=static` to exclude tags from the response.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Lists::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/lib/mailchimp/lists/client.rb">create_segment</a>(list_id:, request) -> Mailchimp::Types::List</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Create a new segment in a specific list.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.lists.create_segment(
  list_id: "list_id",
  name: "name"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**list_id:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**name:** `String` — The name of the segment.
    
</dd>
</dl>

<dl>
<dd>

**options:** `Mailchimp::Lists::Types::CreateSegmentListsRequestOptions` — The [conditions of the segment](https://mailchimp.com/help/save-and-manage-segments/). Static and fuzzy segments don't have conditions.
    
</dd>
</dl>

<dl>
<dd>

**static_segment:** `Internal::Types::Array[String]` — An array of emails to be used for a static segment. Any emails provided that are not present on the list will be ignored. Passing an empty array will create a static segment without any subscribers. This field cannot be provided with the options field.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Lists::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/lib/mailchimp/lists/client.rb">get_segment</a>(list_id:, segment_id:) -> Mailchimp::Types::List</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get information about a specific segment.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.lists.get_segment(
  list_id: "list_id",
  segment_id: "segment_id"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**list_id:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**segment_id:** `String` — The unique id for the segment.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `String` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**exclude_fields:** `String` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**include_cleaned:** `Internal::Types::Boolean` — Include cleaned members in response
    
</dd>
</dl>

<dl>
<dd>

**include_transactional:** `Internal::Types::Boolean` — Include transactional members in response
    
</dd>
</dl>

<dl>
<dd>

**include_unsubscribed:** `Internal::Types::Boolean` — Include unsubscribed members in response
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Lists::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/lib/mailchimp/lists/client.rb">batch_add_or_remove_members</a>(list_id:, segment_id:, request) -> Mailchimp::Lists::Types::BatchAddOrRemoveMembersListsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Batch add/remove list members to static segment
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.lists.batch_add_or_remove_members(
  list_id: "list_id",
  segment_id: "segment_id"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**list_id:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**segment_id:** `String` — The unique id for the segment.
    
</dd>
</dl>

<dl>
<dd>

**members_to_add:** `Internal::Types::Array[String]` — An array of emails to be used for a static segment. Any emails provided that are not present on the list will be ignored. A maximum of 500 members can be sent.
    
</dd>
</dl>

<dl>
<dd>

**members_to_remove:** `Internal::Types::Array[String]` — An array of emails to be used for a static segment. Any emails provided that are not present on the list will be ignored. A maximum of 500 members can be sent.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Lists::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/lib/mailchimp/lists/client.rb">delete_segment</a>(list_id:, segment_id:) -> </code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Delete a specific segment in a list.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.lists.delete_segment(
  list_id: "list_id",
  segment_id: "segment_id"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**list_id:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**segment_id:** `String` — The unique id for the segment.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Lists::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/lib/mailchimp/lists/client.rb">update_segment</a>(list_id:, segment_id:, request) -> Mailchimp::Types::List</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Update a specific segment in a list.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.lists.update_segment(
  list_id: "list_id",
  segment_id: "segment_id"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**list_id:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**segment_id:** `String` — The unique id for the segment.
    
</dd>
</dl>

<dl>
<dd>

**name:** `String` — The name of the segment.
    
</dd>
</dl>

<dl>
<dd>

**options:** `Mailchimp::Lists::Types::UpdateSegmentListsRequestOptions` — The [conditions of the segment](https://mailchimp.com/help/save-and-manage-segments/). Static and fuzzy segments don't have conditions.
    
</dd>
</dl>

<dl>
<dd>

**static_segment:** `Internal::Types::Array[String]` — An array of emails to be used for a static segment. Any emails provided that are not present on the list will be ignored. Passing an empty array for an existing static segment will reset that segment and remove all members. This field cannot be provided with the `options` field.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Lists::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/lib/mailchimp/lists/client.rb">list_segment_members</a>(list_id:, segment_id:) -> Mailchimp::Lists::Types::ListSegmentMembersListsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get information about members in a saved segment.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.lists.list_segment_members(
  list_id: "list_id",
  segment_id: "segment_id"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**list_id:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**segment_id:** `String` — The unique id for the segment.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `String` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**exclude_fields:** `String` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**count:** `Integer` — The number of records to return. Default value is 10. Maximum value is 1000
    
</dd>
</dl>

<dl>
<dd>

**offset:** `Integer` — Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    
</dd>
</dl>

<dl>
<dd>

**include_cleaned:** `Internal::Types::Boolean` — Include cleaned members in response
    
</dd>
</dl>

<dl>
<dd>

**include_transactional:** `Internal::Types::Boolean` — Include transactional members in response
    
</dd>
</dl>

<dl>
<dd>

**include_unsubscribed:** `Internal::Types::Boolean` — Include unsubscribed members in response
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Lists::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/lib/mailchimp/lists/client.rb">create_segment_member</a>(list_id:, segment_id:, request) -> Mailchimp::Types::ListsSegmentsMembers</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Add a member to a static segment.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.lists.create_segment_member(
  list_id: "list_id",
  segment_id: "segment_id",
  email_address: "email_address"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**list_id:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**segment_id:** `String` — The unique id for the segment.
    
</dd>
</dl>

<dl>
<dd>

**email_address:** `String` — Email address for a subscriber.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Lists::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/lib/mailchimp/lists/client.rb">delete_segment_member</a>(list_id:, segment_id:, subscriber_hash:) -> </code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Remove a member from the specified static segment.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.lists.delete_segment_member(
  list_id: "list_id",
  segment_id: "segment_id",
  subscriber_hash: "subscriber_hash"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**list_id:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**segment_id:** `String` — The unique id for the segment.
    
</dd>
</dl>

<dl>
<dd>

**subscriber_hash:** `String` — The MD5 hash of the lowercase version of the list member's email address.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Lists::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/lib/mailchimp/lists/client.rb">list_signup_forms</a>(list_id:) -> Mailchimp::Lists::Types::ListSignupFormsListsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get signup forms for a specific list.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.lists.list_signup_forms(list_id: "list_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**list_id:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Lists::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/lib/mailchimp/lists/client.rb">create_signup_form</a>(list_id:, request) -> Mailchimp::Types::SignupForm</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Customize a list's default signup form.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.lists.create_signup_form(list_id: "list_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**list_id:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**contents:** `Internal::Types::Array[Mailchimp::Lists::Types::CreateSignupFormListsRequestContentsItem]` — The signup form body content.
    
</dd>
</dl>

<dl>
<dd>

**header:** `Mailchimp::Lists::Types::CreateSignupFormListsRequestHeader` — Options for customizing your signup form header.
    
</dd>
</dl>

<dl>
<dd>

**styles:** `Internal::Types::Array[Mailchimp::Lists::Types::CreateSignupFormListsRequestStylesItem]` — An array of objects, each representing an element style for the signup form.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Lists::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/lib/mailchimp/lists/client.rb">list_surveys</a>(list_id:) -> Object</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get information about all available surveys for a specific list.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.lists.list_surveys(list_id: "list_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**list_id:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Lists::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/lib/mailchimp/lists/client.rb">create_survey</a>(list_id:, request) -> Object</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Create a draft survey for an audience.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.lists.create_survey(list_id: "list_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**list_id:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**title:** `String` — The title of the survey.
    
</dd>
</dl>

<dl>
<dd>

**sections:** `Internal::Types::Array[Mailchimp::Types::SurveySectionRequest]` — Initial survey sections.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Lists::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/lib/mailchimp/lists/client.rb">get_survey</a>(list_id:, survey_id:) -> Object</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get details about a specific survey.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.lists.get_survey(
  list_id: "list_id",
  survey_id: "survey_id"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**list_id:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**survey_id:** `String` — The ID of the survey.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Lists::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/lib/mailchimp/lists/client.rb">delete_survey</a>(list_id:, survey_id:) -> </code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Delete a survey.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.lists.delete_survey(
  list_id: "list_id",
  survey_id: "survey_id"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**list_id:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**survey_id:** `String` — The ID of the survey.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Lists::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/lib/mailchimp/lists/client.rb">update_survey</a>(list_id:, survey_id:, request) -> Object</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Update a survey. When sections is provided, send the complete section list in display order. Any existing section not included is deleted.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.lists.update_survey(
  list_id: "list_id",
  survey_id: "survey_id"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**list_id:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**survey_id:** `String` — The ID of the survey.
    
</dd>
</dl>

<dl>
<dd>

**title:** `String` — The title of the survey.
    
</dd>
</dl>

<dl>
<dd>

**is_piped_to_inbox:** `Internal::Types::Boolean` — Whether responses are sent to Mailchimp Inbox.
    
</dd>
</dl>

<dl>
<dd>

**sections:** `Internal::Types::Array[Mailchimp::Types::SurveySectionRequest]` — The complete survey section list in display order. On update, sections omitted from this array are deleted. Include section id to update an existing section; omit section id to add a new section.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Lists::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/lib/mailchimp/lists/client.rb">create_list_survey_action_replicate</a>(list_id_path_param:, survey_id:, request) -> Object</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Replicate a survey.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.lists.create_list_survey_action_replicate(
  list_id_path_param: "list_id",
  survey_id: "survey_id"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**list_id_path_param:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**survey_id:** `String` — The ID of the survey.
    
</dd>
</dl>

<dl>
<dd>

**title:** `String` — The title for the replicated survey.
    
</dd>
</dl>

<dl>
<dd>

**list_id:** `String` — The unique ID of the audience for the replicated survey. Defaults to the source survey audience.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Lists::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/lib/mailchimp/lists/client.rb">list_tag_search</a>(list_id:) -> Mailchimp::Lists::Types::ListTagSearchListsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Search for tags on a list by name. If no name is provided, will return all tags on the list.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.lists.list_tag_search(list_id: "list_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**list_id:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**name:** `String` — The search query used to filter tags.  The search query will be compared to each tag as a prefix, so all tags that have a name starting with this field will be returned.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Lists::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/lib/mailchimp/lists/client.rb">list_webhooks</a>(list_id:) -> Mailchimp::Lists::Types::ListWebhooksListsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get information about all webhooks for a specific list.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.lists.list_webhooks(list_id: "list_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**list_id:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Lists::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/lib/mailchimp/lists/client.rb">create_webhook</a>(list_id:, request) -> Mailchimp::Lists::Types::CreateWebhookListsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Create a new webhook for a specific list.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.lists.create_webhook(list_id: "list_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**list_id:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**request:** `Mailchimp::Types::AddWebhook` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Lists::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/lib/mailchimp/lists/client.rb">get_webhook</a>(list_id:, webhook_id:) -> Mailchimp::Types::ListWebhooks</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get information about a specific webhook.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.lists.get_webhook(
  list_id: "list_id",
  webhook_id: "webhook_id"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**list_id:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**webhook_id:** `String` — The webhook's id.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Lists::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/lib/mailchimp/lists/client.rb">delete_webhook</a>(list_id:, webhook_id:) -> </code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Delete a specific webhook in a list.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.lists.delete_webhook(
  list_id: "list_id",
  webhook_id: "webhook_id"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**list_id:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**webhook_id:** `String` — The webhook's id.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Lists::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.lists.<a href="/lib/mailchimp/lists/client.rb">update_webhook</a>(list_id:, webhook_id:, request) -> Mailchimp::Types::ListWebhooks</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Update the settings for an existing webhook.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.lists.update_webhook(
  list_id: "list_id",
  webhook_id: "webhook_id"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**list_id:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**webhook_id:** `String` — The webhook's id.
    
</dd>
</dl>

<dl>
<dd>

**request:** `Mailchimp::Types::AddWebhook` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Lists::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## surveys
<details><summary><code>client.surveys.<a href="/lib/mailchimp/surveys/client.rb">create_list_survey_action_create_email</a>(list_id:, survey_id:) -> Mailchimp::Types::Campaign</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Utilize the List ID and Survey ID to generate a Campaign that links to your survey.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.surveys.create_list_survey_action_create_email(
  list_id: "list_id",
  survey_id: "survey_id"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**list_id:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**survey_id:** `String` — The ID of the survey.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Surveys::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.surveys.<a href="/lib/mailchimp/surveys/client.rb">create_list_survey_action_publish</a>(list_id:, survey_id:) -> Object</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Publish a survey that is in draft, unpublished, or has been previously published and edited.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.surveys.create_list_survey_action_publish(
  list_id: "list_id",
  survey_id: "survey_id"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**list_id:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**survey_id:** `String` — The ID of the survey.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Surveys::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.surveys.<a href="/lib/mailchimp/surveys/client.rb">create_list_survey_action_unpublish</a>(list_id:, survey_id:) -> Object</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Unpublish a survey that has been published.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.surveys.create_list_survey_action_unpublish(
  list_id: "list_id",
  survey_id: "survey_id"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**list_id:** `String` — The unique ID for the list.
    
</dd>
</dl>

<dl>
<dd>

**survey_id:** `String` — The ID of the survey.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Surveys::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## ping
<details><summary><code>client.ping.<a href="/lib/mailchimp/ping/client.rb">list</a>() -> Mailchimp::Ping::Types::ListPingResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

A health check for the API that won't return any account-specific information.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ping.list
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request_options:** `Mailchimp::Ping::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## reporting
<details><summary><code>client.reporting.<a href="/lib/mailchimp/reporting/client.rb">list</a>() -> Internal::Types::Array[Mailchimp::Reporting::Types::ListReportingResponseItem]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get information about the reporting endpoint's resources.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.reporting.list
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request_options:** `Mailchimp::Reporting::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.reporting.<a href="/lib/mailchimp/reporting/client.rb">list_facebook_ads</a>() -> Mailchimp::Reporting::Types::ListFacebookAdsReportingResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get reports of Facebook ads.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.reporting.list_facebook_ads
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**fields:** `String` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**exclude_fields:** `String` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**count:** `Integer` — The number of records to return. Default value is 10. Maximum value is 1000
    
</dd>
</dl>

<dl>
<dd>

**offset:** `Integer` — Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    
</dd>
</dl>

<dl>
<dd>

**sort_field:** `Mailchimp::Reporting::Types::ListFacebookAdsReportingRequestSortField` — Returns files sorted by the specified field.
    
</dd>
</dl>

<dl>
<dd>

**sort_dir:** `Mailchimp::Reporting::Types::ListFacebookAdsReportingRequestSortDir` — Determines the order direction for sorted results.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Reporting::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.reporting.<a href="/lib/mailchimp/reporting/client.rb">get_facebook_ad</a>(outreach_id:) -> Mailchimp::Types::ReportingFacebookAd</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get report of a Facebook ad.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.reporting.get_facebook_ad(outreach_id: "outreach_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**outreach_id:** `String` — The outreach id.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `String` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**exclude_fields:** `String` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Reporting::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.reporting.<a href="/lib/mailchimp/reporting/client.rb">list_facebook_ad_ecommerce_product_activity</a>(outreach_id:) -> Mailchimp::Reporting::Types::ListFacebookAdEcommerceProductActivityReportingResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get breakdown of product activity for an outreach.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.reporting.list_facebook_ad_ecommerce_product_activity(outreach_id: "outreach_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**outreach_id:** `String` — The outreach id.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `String` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**exclude_fields:** `String` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**count:** `Integer` — The number of records to return. Default value is 10. Maximum value is 1000
    
</dd>
</dl>

<dl>
<dd>

**offset:** `Integer` — Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    
</dd>
</dl>

<dl>
<dd>

**sort_field:** `Mailchimp::Reporting::Types::ListFacebookAdEcommerceProductActivityReportingRequestSortField` — Returns files sorted by the specified field.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Reporting::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.reporting.<a href="/lib/mailchimp/reporting/client.rb">list_landing_pages</a>() -> Mailchimp::Reporting::Types::ListLandingPagesReportingResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get reports of landing pages.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.reporting.list_landing_pages
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**fields:** `String` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**exclude_fields:** `String` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**count:** `Integer` — The number of records to return. Default value is 10. Maximum value is 1000
    
</dd>
</dl>

<dl>
<dd>

**offset:** `Integer` — Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Reporting::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.reporting.<a href="/lib/mailchimp/reporting/client.rb">get_landing_page</a>(outreach_id:) -> Mailchimp::Types::LandingPageReport</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get report of a landing page.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.reporting.get_landing_page(outreach_id: "outreach_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**outreach_id:** `String` — The outreach id.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `String` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**exclude_fields:** `String` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Reporting::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.reporting.<a href="/lib/mailchimp/reporting/client.rb">list_surveys</a>() -> Mailchimp::Reporting::Types::ListSurveysReportingResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get reports for surveys.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.reporting.list_surveys
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**fields:** `String` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**exclude_fields:** `String` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**count:** `Integer` — The number of records to return. Default value is 10. Maximum value is 1000
    
</dd>
</dl>

<dl>
<dd>

**offset:** `Integer` — Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Reporting::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.reporting.<a href="/lib/mailchimp/reporting/client.rb">get_survey</a>(survey_id:) -> Mailchimp::Reporting::Types::GetSurveyReportingResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get report for a survey.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.reporting.get_survey(survey_id: "survey_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**survey_id:** `String` — The ID of the survey.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `String` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**exclude_fields:** `String` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Reporting::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.reporting.<a href="/lib/mailchimp/reporting/client.rb">list_survey_questions</a>(survey_id:) -> Mailchimp::Reporting::Types::ListSurveyQuestionsReportingResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get reports for survey questions.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.reporting.list_survey_questions(survey_id: "survey_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**survey_id:** `String` — The ID of the survey.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `String` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**exclude_fields:** `String` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Reporting::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.reporting.<a href="/lib/mailchimp/reporting/client.rb">get_survey_question</a>(survey_id:, question_id:) -> Mailchimp::Types::SurveyQuestionReport</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get report for a survey question.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.reporting.get_survey_question(
  survey_id: "survey_id",
  question_id: "question_id"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**survey_id:** `String` — The ID of the survey.
    
</dd>
</dl>

<dl>
<dd>

**question_id:** `String` — The ID of the survey question.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `String` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**exclude_fields:** `String` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Reporting::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.reporting.<a href="/lib/mailchimp/reporting/client.rb">list_survey_question_answers</a>(survey_id:, question_id:) -> Mailchimp::Reporting::Types::ListSurveyQuestionAnswersReportingResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get answers for a survey question.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.reporting.list_survey_question_answers(
  survey_id: "survey_id",
  question_id: "question_id"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**survey_id:** `String` — The ID of the survey.
    
</dd>
</dl>

<dl>
<dd>

**question_id:** `String` — The ID of the survey question.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `String` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**exclude_fields:** `String` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**respondent_familiarity_is:** `Mailchimp::Reporting::Types::ListSurveyQuestionAnswersReportingRequestRespondentFamiliarityIs` — Filter survey responses by familiarity of the respondents.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Reporting::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.reporting.<a href="/lib/mailchimp/reporting/client.rb">list_survey_responses</a>(survey_id:) -> Mailchimp::Reporting::Types::ListSurveyResponsesReportingResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get responses to a survey.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.reporting.list_survey_responses(survey_id: "survey_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**survey_id:** `String` — The ID of the survey.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `String` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**exclude_fields:** `String` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**answered_question:** `Integer` — The ID of the question that was answered.
    
</dd>
</dl>

<dl>
<dd>

**chose_answer:** `String` — The ID of the option chosen to filter responses on.
    
</dd>
</dl>

<dl>
<dd>

**respondent_familiarity_is:** `Mailchimp::Reporting::Types::ListSurveyResponsesReportingRequestRespondentFamiliarityIs` — Filter survey responses by familiarity of the respondents.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Reporting::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.reporting.<a href="/lib/mailchimp/reporting/client.rb">get_survey_respons</a>(survey_id:, response_id:) -> Mailchimp::Reporting::Types::GetSurveyResponsReportingResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get a single survey response.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.reporting.get_survey_respons(
  survey_id: "survey_id",
  response_id: "response_id"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**survey_id:** `String` — The ID of the survey.
    
</dd>
</dl>

<dl>
<dd>

**response_id:** `String` — The ID of the survey response.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Reporting::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## reports
<details><summary><code>client.reports.<a href="/lib/mailchimp/reports/client.rb">list</a>() -> Mailchimp::Reports::Types::ListReportsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get campaign reports.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.reports.list
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**fields:** `String` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**exclude_fields:** `String` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**count:** `Integer` — The number of records to return. Default value is 10. Maximum value is 1000
    
</dd>
</dl>

<dl>
<dd>

**offset:** `Integer` — Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    
</dd>
</dl>

<dl>
<dd>

**type:** `Mailchimp::Reports::Types::ListReportsRequestType` — The campaign type.
    
</dd>
</dl>

<dl>
<dd>

**before_send_time:** `String` — Restrict the response to campaigns sent before the set time. Uses ISO 8601 time format: 2015-10-21T15:41:36+00:00.
    
</dd>
</dl>

<dl>
<dd>

**since_send_time:** `String` — Restrict the response to campaigns sent after the set time. Uses ISO 8601 time format: 2015-10-21T15:41:36+00:00.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Reports::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.reports.<a href="/lib/mailchimp/reports/client.rb">get</a>(campaign_id:) -> Mailchimp::Types::CampaignReport</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get report details for a specific sent campaign.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.reports.get(campaign_id: "campaign_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**campaign_id:** `String` — The unique id for the campaign.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `String` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**exclude_fields:** `String` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Reports::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.reports.<a href="/lib/mailchimp/reports/client.rb">list_abuse_reports</a>(campaign_id:) -> Mailchimp::Reports::Types::ListAbuseReportsReportsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get a list of abuse complaints for a specific campaign.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.reports.list_abuse_reports(campaign_id: "campaign_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**campaign_id:** `String` — The unique id for the campaign.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `String` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**exclude_fields:** `String` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Reports::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.reports.<a href="/lib/mailchimp/reports/client.rb">get_abuse_report</a>(campaign_id:, report_id:) -> Mailchimp::Types::AbuseComplaint</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get information about a specific abuse report for a campaign.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.reports.get_abuse_report(
  campaign_id: "campaign_id",
  report_id: "report_id"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**campaign_id:** `String` — The unique id for the campaign.
    
</dd>
</dl>

<dl>
<dd>

**report_id:** `String` — The id for the abuse report.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `String` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**exclude_fields:** `String` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Reports::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.reports.<a href="/lib/mailchimp/reports/client.rb">list_advice</a>(campaign_id:) -> Mailchimp::Reports::Types::ListAdviceReportsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get feedback based on a campaign's statistics. Advice feedback is based on campaign stats like opens, clicks, unsubscribes, bounces, and more.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.reports.list_advice(campaign_id: "campaign_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**campaign_id:** `String` — The unique id for the campaign.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `String` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**exclude_fields:** `String` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Reports::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.reports.<a href="/lib/mailchimp/reports/client.rb">list_click_details</a>(campaign_id:) -> Mailchimp::Reports::Types::ListClickDetailsReportsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get information about clicks on specific links in your Mailchimp campaigns.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.reports.list_click_details(campaign_id: "campaign_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**campaign_id:** `String` — The unique id for the campaign.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `String` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**exclude_fields:** `String` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**count:** `Integer` — The number of records to return. Default value is 10. Maximum value is 1000
    
</dd>
</dl>

<dl>
<dd>

**offset:** `Integer` — Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    
</dd>
</dl>

<dl>
<dd>

**sort_field:** `Mailchimp::Reports::Types::ListClickDetailsReportsRequestSortField` — Returns click reports sorted by the specified field.
    
</dd>
</dl>

<dl>
<dd>

**sort_dir:** `Mailchimp::Reports::Types::ListClickDetailsReportsRequestSortDir` — Determines the order direction for sorted results.
    
</dd>
</dl>

<dl>
<dd>

**filter_bots:** `Internal::Types::Boolean` — When true, exclude automated bot clicks so the returned click counts reflect human clicks only, matching the in-app Recipient Activity view. Filtering changes a link's counts, but never removes a link from the response. Defaults to false (all clicks).
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Reports::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.reports.<a href="/lib/mailchimp/reports/client.rb">get_click_detail</a>(campaign_id:, link_id:) -> Mailchimp::Types::ClickDetailReport</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get click details for a specific link in a campaign.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.reports.get_click_detail(
  campaign_id: "campaign_id",
  link_id: "link_id"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**campaign_id:** `String` — The unique id for the campaign.
    
</dd>
</dl>

<dl>
<dd>

**link_id:** `String` — The id for the link.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `String` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**exclude_fields:** `String` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**filter_bots:** `Internal::Types::Boolean` — When true, exclude automated bot clicks so the returned click counts reflect human clicks only, matching the in-app Recipient Activity view. Filtering changes a link's counts, but never removes a link from the response. Defaults to false (all clicks).
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Reports::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.reports.<a href="/lib/mailchimp/reports/client.rb">list_click_detail_members</a>(campaign_id:, link_id:) -> Mailchimp::Reports::Types::ListClickDetailMembersReportsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get information about list members who clicked on a specific link in a campaign.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.reports.list_click_detail_members(
  campaign_id: "campaign_id",
  link_id: "link_id"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**campaign_id:** `String` — The unique id for the campaign.
    
</dd>
</dl>

<dl>
<dd>

**link_id:** `String` — The id for the link.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `String` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**exclude_fields:** `String` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**count:** `Integer` — The number of records to return. Default value is 10. Maximum value is 1000
    
</dd>
</dl>

<dl>
<dd>

**offset:** `Integer` — Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Reports::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.reports.<a href="/lib/mailchimp/reports/client.rb">get_click_detail_member</a>(campaign_id:, link_id:, subscriber_hash:) -> Mailchimp::Types::ClickDetailMember</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get information about a specific subscriber who clicked a link in a specific campaign.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.reports.get_click_detail_member(
  campaign_id: "campaign_id",
  link_id: "link_id",
  subscriber_hash: "subscriber_hash"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**campaign_id:** `String` — The unique id for the campaign.
    
</dd>
</dl>

<dl>
<dd>

**link_id:** `String` — The id for the link.
    
</dd>
</dl>

<dl>
<dd>

**subscriber_hash:** `String` — The MD5 hash of the lowercase version of the list member's email address.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `String` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**exclude_fields:** `String` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Reports::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.reports.<a href="/lib/mailchimp/reports/client.rb">list_domain_performance</a>(campaign_id:) -> Mailchimp::Reports::Types::ListDomainPerformanceReportsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get statistics for the top-performing email domains in a campaign.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.reports.list_domain_performance(campaign_id: "campaign_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**campaign_id:** `String` — The unique id for the campaign.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `String` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**exclude_fields:** `String` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Reports::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.reports.<a href="/lib/mailchimp/reports/client.rb">list_ecommerce_product_activity</a>(campaign_id:) -> Mailchimp::Reports::Types::ListEcommerceProductActivityReportsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get breakdown of product activity for a campaign
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.reports.list_ecommerce_product_activity(campaign_id: "campaign_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**campaign_id:** `String` — The unique id for the campaign.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `String` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**exclude_fields:** `String` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**count:** `Integer` — The number of records to return. Default value is 10. Maximum value is 1000
    
</dd>
</dl>

<dl>
<dd>

**offset:** `Integer` — Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    
</dd>
</dl>

<dl>
<dd>

**sort_field:** `Mailchimp::Reports::Types::ListEcommerceProductActivityReportsRequestSortField` — Returns files sorted by the specified field.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Reports::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.reports.<a href="/lib/mailchimp/reports/client.rb">list_eepurl</a>(campaign_id:) -> Mailchimp::Reports::Types::ListEepurlReportsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get a summary of social activity for the campaign, tracked by EepURL.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.reports.list_eepurl(campaign_id: "campaign_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**campaign_id:** `String` — The unique id for the campaign.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `String` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**exclude_fields:** `String` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Reports::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.reports.<a href="/lib/mailchimp/reports/client.rb">list_email_activity</a>(campaign_id:) -> Mailchimp::Reports::Types::ListEmailActivityReportsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get a list of member's subscriber activity in a specific campaign.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.reports.list_email_activity(campaign_id: "campaign_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**campaign_id:** `String` — The unique id for the campaign.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `String` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**exclude_fields:** `String` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**count:** `Integer` — The number of records to return. Default value is 10. Maximum value is 1000
    
</dd>
</dl>

<dl>
<dd>

**offset:** `Integer` — Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    
</dd>
</dl>

<dl>
<dd>

**since:** `String` — Restrict results to email activity events that occur after a specific time. Uses ISO 8601 time format: 2015-10-21T15:41:36+00:00.
    
</dd>
</dl>

<dl>
<dd>

**filter_bots:** `Internal::Types::Boolean` — When true, exclude automated bot and Apple Mail Privacy Protection (MPP) proxy activity so the returned activity reflects human-only opens and clicks, matching the in-app Recipient Activity view. Filtering removes events from a member's activity, but never removes the member from the response. Defaults to false (all activity).
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Reports::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.reports.<a href="/lib/mailchimp/reports/client.rb">get_email_activity</a>(campaign_id:, subscriber_hash:) -> Mailchimp::Types::EmailActivity</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get a specific list member's activity in a campaign including opens, clicks, and bounces.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.reports.get_email_activity(
  campaign_id: "campaign_id",
  subscriber_hash: "subscriber_hash"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**campaign_id:** `String` — The unique id for the campaign.
    
</dd>
</dl>

<dl>
<dd>

**subscriber_hash:** `String` — The MD5 hash of the lowercase version of the list member's email address.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `String` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**exclude_fields:** `String` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**since:** `String` — Restrict results to email activity events that occur after a specific time. Uses ISO 8601 time format: 2015-10-21T15:41:36+00:00.
    
</dd>
</dl>

<dl>
<dd>

**filter_bots:** `Internal::Types::Boolean` — When true, exclude automated bot and Apple Mail Privacy Protection (MPP) proxy activity so the returned activity reflects human-only opens and clicks, matching the in-app Recipient Activity view. Filtering removes events from a member's activity, but never removes the member from the response. Defaults to false (all activity).
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Reports::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.reports.<a href="/lib/mailchimp/reports/client.rb">list_locations</a>(campaign_id:) -> Mailchimp::Reports::Types::ListLocationsReportsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get top open locations for a specific campaign.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.reports.list_locations(campaign_id: "campaign_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**campaign_id:** `String` — The unique id for the campaign.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `String` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**exclude_fields:** `String` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**count:** `Integer` — The number of records to return. Default value is 10. Maximum value is 1000
    
</dd>
</dl>

<dl>
<dd>

**offset:** `Integer` — Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Reports::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.reports.<a href="/lib/mailchimp/reports/client.rb">list_open_details</a>(campaign_id:) -> Mailchimp::Reports::Types::ListOpenDetailsReportsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get detailed information about any campaign emails that were opened by a list member.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.reports.list_open_details(
  campaign_id: "campaign_id",
  since: "2016-04-12 12:00:00"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**campaign_id:** `String` — The unique id for the campaign.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `String` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**exclude_fields:** `String` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**count:** `Integer` — The number of records to return. Default value is 10. Maximum value is 1000
    
</dd>
</dl>

<dl>
<dd>

**offset:** `Integer` — Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    
</dd>
</dl>

<dl>
<dd>

**since:** `String` — Restrict results to campaign open events that occur after a specific time. Uses ISO 8601 time format: 2015-10-21T15:41:36+00:00.
    
</dd>
</dl>

<dl>
<dd>

**sort_field:** `Mailchimp::Reports::Types::ListOpenDetailsReportsRequestSortField` — Returns open reports sorted by the specified field.
    
</dd>
</dl>

<dl>
<dd>

**sort_dir:** `Mailchimp::Reports::Types::ListOpenDetailsReportsRequestSortDir` — Determines the order direction for sorted results.
    
</dd>
</dl>

<dl>
<dd>

**filter_bots:** `Internal::Types::Boolean` — When true, exclude automated (proxy/bot) opens so the returned open counts reflect human opens only, matching the in-app Recipient Activity view. A member whose opens are all automated is excluded from the human-only view. Defaults to false (all opens).
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Reports::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.reports.<a href="/lib/mailchimp/reports/client.rb">get_open_detail</a>(campaign_id:, subscriber_hash:) -> Mailchimp::Types::OpenActivity</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get information about a specific subscriber who opened a campaign.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.reports.get_open_detail(
  campaign_id: "campaign_id",
  subscriber_hash: "subscriber_hash"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**campaign_id:** `String` — The unique id for the campaign.
    
</dd>
</dl>

<dl>
<dd>

**subscriber_hash:** `String` — The MD5 hash of the lowercase version of the list member's email address.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `String` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**exclude_fields:** `String` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**filter_bots:** `Internal::Types::Boolean` — When true, exclude automated (proxy/bot) opens so the returned open counts reflect human opens only, matching the in-app Recipient Activity view. A member whose opens are all automated is excluded from the human-only view. Defaults to false (all opens).
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Reports::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.reports.<a href="/lib/mailchimp/reports/client.rb">list_sent_to</a>(campaign_id:) -> Mailchimp::Reports::Types::ListSentToReportsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get information about campaign recipients.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.reports.list_sent_to(campaign_id: "campaign_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**campaign_id:** `String` — The unique id for the campaign.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `String` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**exclude_fields:** `String` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**count:** `Integer` — The number of records to return. Default value is 10. Maximum value is 1000
    
</dd>
</dl>

<dl>
<dd>

**offset:** `Integer` — Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Reports::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.reports.<a href="/lib/mailchimp/reports/client.rb">get_sent_to</a>(campaign_id:, subscriber_hash:) -> Mailchimp::Types::SentTo</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get information about a specific campaign recipient.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.reports.get_sent_to(
  campaign_id: "campaign_id",
  subscriber_hash: "subscriber_hash"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**campaign_id:** `String` — The unique id for the campaign.
    
</dd>
</dl>

<dl>
<dd>

**subscriber_hash:** `String` — The MD5 hash of the lowercase version of the list member's email address.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `String` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**exclude_fields:** `String` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Reports::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.reports.<a href="/lib/mailchimp/reports/client.rb">list_sub_reports</a>(campaign_id:) -> Mailchimp::Reports::Types::ListSubReportsReportsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get a list of reports with child campaigns for a specific parent campaign.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.reports.list_sub_reports(campaign_id: "campaign_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**campaign_id:** `String` — The unique id for the campaign.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `String` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**exclude_fields:** `String` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Reports::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.reports.<a href="/lib/mailchimp/reports/client.rb">list_unsubscribed</a>(campaign_id:) -> Mailchimp::Reports::Types::ListUnsubscribedReportsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get information about members who have unsubscribed from a specific campaign.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.reports.list_unsubscribed(campaign_id: "campaign_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**campaign_id:** `String` — The unique id for the campaign.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `String` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**exclude_fields:** `String` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**count:** `Integer` — The number of records to return. Default value is 10. Maximum value is 1000
    
</dd>
</dl>

<dl>
<dd>

**offset:** `Integer` — Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Reports::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.reports.<a href="/lib/mailchimp/reports/client.rb">get_unsubscribed</a>(campaign_id:, subscriber_hash:) -> Mailchimp::Types::Unsubscribes</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get information about a specific list member who unsubscribed from a campaign.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.reports.get_unsubscribed(
  campaign_id: "campaign_id",
  subscriber_hash: "subscriber_hash"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**campaign_id:** `String` — The unique id for the campaign.
    
</dd>
</dl>

<dl>
<dd>

**subscriber_hash:** `String` — The MD5 hash of the lowercase version of the list member's email address.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `String` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**exclude_fields:** `String` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Reports::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## SearchCampaigns
<details><summary><code>client.search_campaigns.<a href="/lib/mailchimp/search_campaigns/client.rb">list</a>() -> Mailchimp::SearchCampaigns::Types::ListSearchCampaignsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Search all campaigns for the specified query terms.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.search_campaigns.list(query: "query")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**fields:** `String` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**exclude_fields:** `String` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**query:** `String` — The search query used to filter results.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::SearchCampaigns::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## SmsCampaigns
<details><summary><code>client.sms_campaigns.<a href="/lib/mailchimp/sms_campaigns/client.rb">list</a>() -> Mailchimp::SmsCampaigns::Types::ListSmsCampaignsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get all SMS campaigns in an account.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.sms_campaigns.list
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**fields:** `String` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**exclude_fields:** `String` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**count:** `Integer` — The number of records to return. Default value is 10. Maximum value is 1000
    
</dd>
</dl>

<dl>
<dd>

**offset:** `Integer` — Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::SmsCampaigns::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.sms_campaigns.<a href="/lib/mailchimp/sms_campaigns/client.rb">create</a>(request) -> Mailchimp::Types::SmsCampaign</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Create a new SMS campaign.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.sms_campaigns.create(name: "name")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**name:** `String` — The name of the campaign.
    
</dd>
</dl>

<dl>
<dd>

**list_id:** `Integer` — The numeric ID of the list to send the campaign to.
    
</dd>
</dl>

<dl>
<dd>

**folder_id:** `String` — The ID of the folder to place this campaign in.
    
</dd>
</dl>

<dl>
<dd>

**segments:** `Internal::Types::Array[Integer]` — The segment IDs to target for this campaign.
    
</dd>
</dl>

<dl>
<dd>

**excluded_segments:** `Internal::Types::Array[Integer]` — The segment IDs to exclude from this campaign.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::SmsCampaigns::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.sms_campaigns.<a href="/lib/mailchimp/sms_campaigns/client.rb">get</a>(sms_campaign_id:) -> Mailchimp::Types::SmsCampaign</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get the details for a single SMS campaign.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.sms_campaigns.get(sms_campaign_id: "sms_campaign_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**sms_campaign_id:** `String` — The unique id for the SMS campaign.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `String` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**exclude_fields:** `String` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::SmsCampaigns::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.sms_campaigns.<a href="/lib/mailchimp/sms_campaigns/client.rb">delete</a>(sms_campaign_id:) -> </code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Remove a campaign from your Mailchimp account.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.sms_campaigns.delete(sms_campaign_id: "sms_campaign_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**sms_campaign_id:** `String` — The unique id for the SMS campaign.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::SmsCampaigns::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.sms_campaigns.<a href="/lib/mailchimp/sms_campaigns/client.rb">update</a>(sms_campaign_id:, request) -> Mailchimp::Types::SmsCampaign</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Update an SMS campaign.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.sms_campaigns.update(sms_campaign_id: "sms_campaign_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**sms_campaign_id:** `String` — The unique id for the SMS campaign.
    
</dd>
</dl>

<dl>
<dd>

**name:** `String` — The name of the campaign.
    
</dd>
</dl>

<dl>
<dd>

**folder_id:** `String` — The ID of the folder to place this campaign in.
    
</dd>
</dl>

<dl>
<dd>

**segments:** `Internal::Types::Array[Integer]` — The segment IDs to target for this campaign.
    
</dd>
</dl>

<dl>
<dd>

**excluded_segments:** `Internal::Types::Array[Integer]` — The segment IDs to exclude from this campaign.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::SmsCampaigns::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.sms_campaigns.<a href="/lib/mailchimp/sms_campaigns/client.rb">create_action_cancel_send</a>(sms_campaign_id:) -> </code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Cancel a scheduled or sending SMS campaign.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.sms_campaigns.create_action_cancel_send(sms_campaign_id: "sms_campaign_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**sms_campaign_id:** `String` — The unique id for the SMS campaign.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::SmsCampaigns::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.sms_campaigns.<a href="/lib/mailchimp/sms_campaigns/client.rb">create_action_schedule</a>(sms_campaign_id:, request) -> </code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Schedule an SMS campaign for delivery.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.sms_campaigns.create_action_schedule(
  sms_campaign_id: "sms_campaign_id",
  schedule_time: "2024-01-15T09:30:00Z"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**sms_campaign_id:** `String` — The unique id for the SMS campaign.
    
</dd>
</dl>

<dl>
<dd>

**schedule_time:** `String` — The UTC date and time to schedule the campaign.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::SmsCampaigns::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.sms_campaigns.<a href="/lib/mailchimp/sms_campaigns/client.rb">create_action_send</a>(sms_campaign_id:) -> </code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Send an SMS campaign.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.sms_campaigns.create_action_send(sms_campaign_id: "sms_campaign_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**sms_campaign_id:** `String` — The unique id for the SMS campaign.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::SmsCampaigns::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.sms_campaigns.<a href="/lib/mailchimp/sms_campaigns/client.rb">get_content</a>(sms_campaign_id:) -> Mailchimp::Types::SmsCampaignContent</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get the content for an SMS campaign.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.sms_campaigns.get_content(sms_campaign_id: "sms_campaign_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**sms_campaign_id:** `String` — The unique id for the SMS campaign.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `String` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**exclude_fields:** `String` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::SmsCampaigns::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.sms_campaigns.<a href="/lib/mailchimp/sms_campaigns/client.rb">upsert_content</a>(sms_campaign_id:, request) -> Mailchimp::Types::SmsCampaignContent</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Set the content for an SMS campaign.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.sms_campaigns.upsert_content(
  sms_campaign_id: "sms_campaign_id",
  message_body: "message_body"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**sms_campaign_id:** `String` — The unique id for the SMS campaign.
    
</dd>
</dl>

<dl>
<dd>

**message_body:** `String` — The SMS message body.
    
</dd>
</dl>

<dl>
<dd>

**media:** `Internal::Types::Array[Mailchimp::SmsCampaigns::Types::UpsertContentSmsCampaignsRequestMediaItem]` — Attached images or files. Limited to one item. Omitting this field or sending an empty array removes any existing media; to keep the current media while updating other fields, re-send the media array.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::SmsCampaigns::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## SearchMembers
<details><summary><code>client.search_members.<a href="/lib/mailchimp/search_members/client.rb">list</a>() -> Mailchimp::SearchMembers::Types::ListSearchMembersResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Search for list members. This search can be restricted to a specific list, or can be used to search across all lists in an account.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.search_members.list(query: "query")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**fields:** `String` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**exclude_fields:** `String` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**query:** `String` — The search query used to filter results. Query should be a valid email, or a string representing a contact's first or last name.
    
</dd>
</dl>

<dl>
<dd>

**list_id:** `String` — The unique id for the list.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::SearchMembers::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## TemplateFolders
<details><summary><code>client.template_folders.<a href="/lib/mailchimp/template_folders/client.rb">list</a>() -> Mailchimp::TemplateFolders::Types::ListTemplateFoldersResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get all folders used to organize templates.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.template_folders.list
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**fields:** `String` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**exclude_fields:** `String` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**count:** `Integer` — The number of records to return. Default value is 10. Maximum value is 1000
    
</dd>
</dl>

<dl>
<dd>

**offset:** `Integer` — Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::TemplateFolders::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.template_folders.<a href="/lib/mailchimp/template_folders/client.rb">create</a>(request) -> Mailchimp::TemplateFolders::Types::CreateTemplateFoldersResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Create a new template folder.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.template_folders.create(name: "name")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**name:** `String` — The name of the folder.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::TemplateFolders::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.template_folders.<a href="/lib/mailchimp/template_folders/client.rb">get</a>(folder_id:) -> Mailchimp::TemplateFolders::Types::GetTemplateFoldersResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get information about a specific folder used to organize templates.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.template_folders.get(folder_id: "folder_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**folder_id:** `String` — The unique id for the template folder.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `String` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**exclude_fields:** `String` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::TemplateFolders::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.template_folders.<a href="/lib/mailchimp/template_folders/client.rb">delete</a>(folder_id:) -> </code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Delete a specific template folder, and mark all the templates in the folder as 'unfiled'.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.template_folders.delete(folder_id: "folder_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**folder_id:** `String` — The unique id for the template folder.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::TemplateFolders::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.template_folders.<a href="/lib/mailchimp/template_folders/client.rb">update</a>(folder_id:, request) -> Mailchimp::TemplateFolders::Types::UpdateTemplateFoldersResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Update a specific folder used to organize templates.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.template_folders.update(
  folder_id: "folder_id",
  name: "name"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**folder_id:** `String` — The unique id for the template folder.
    
</dd>
</dl>

<dl>
<dd>

**name:** `String` — The name of the folder.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::TemplateFolders::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## templates
<details><summary><code>client.templates.<a href="/lib/mailchimp/templates/client.rb">list</a>() -> Mailchimp::Templates::Types::ListTemplatesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get a list of an account's available templates.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.templates.list
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**fields:** `String` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**exclude_fields:** `String` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**count:** `Integer` — The number of records to return. Default value is 10. Maximum value is 1000
    
</dd>
</dl>

<dl>
<dd>

**offset:** `Integer` — Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this is the number of records from a collection to skip. Default value is 0.
    
</dd>
</dl>

<dl>
<dd>

**created_by:** `String` — The Mailchimp account user who created the template.
    
</dd>
</dl>

<dl>
<dd>

**since_date_created:** `String` — Restrict the response to templates created after the set date. Uses ISO 8601 time format: 2015-10-21T15:41:36+00:00.
    
</dd>
</dl>

<dl>
<dd>

**before_date_created:** `String` — Restrict the response to templates created before the set date. Uses ISO 8601 time format: 2015-10-21T15:41:36+00:00.
    
</dd>
</dl>

<dl>
<dd>

**type:** `String` — Limit results based on template type.
    
</dd>
</dl>

<dl>
<dd>

**category:** `String` — Limit results based on category.
    
</dd>
</dl>

<dl>
<dd>

**folder_id:** `String` — The unique folder id.
    
</dd>
</dl>

<dl>
<dd>

**sort_field:** `Mailchimp::Templates::Types::ListTemplatesRequestSortField` — Returns user templates sorted by the specified field.
    
</dd>
</dl>

<dl>
<dd>

**content_type:** `Mailchimp::Templates::Types::ListTemplatesRequestContentType` — Limit results based on how the template's content is put together. Only templates of type `user` can be filtered by `content_type`. If you want to retrieve saved templates created with the legacy email editor, then filter `content_type` to `template`. If you'd rather pull your saved templates for the new editor, filter to `multichannel`. For code your own templates, filter to `html`.
    
</dd>
</dl>

<dl>
<dd>

**sort_dir:** `Mailchimp::Templates::Types::ListTemplatesRequestSortDir` — Determines the order direction for sorted results.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Templates::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.templates.<a href="/lib/mailchimp/templates/client.rb">create</a>(request) -> Mailchimp::Types::TemplateInstance</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Create a new template for the account. Only Classic templates are supported.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.templates.create(
  html: "html",
  name: "Freddie's Jokes"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**folder_id:** `String` — The id of the folder the template is currently in.
    
</dd>
</dl>

<dl>
<dd>

**html:** `String` — The raw HTML for the template. We  support the Mailchimp [Template Language](https://mailchimp.com/help/getting-started-with-mailchimps-template-language/) in any HTML code passed via the API.
    
</dd>
</dl>

<dl>
<dd>

**name:** `String` — The name of the template.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Templates::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.templates.<a href="/lib/mailchimp/templates/client.rb">get</a>(template_id:) -> Mailchimp::Types::TemplateInstance</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get information about a specific template.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.templates.get(template_id: "template_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**template_id:** `String` — The unique id for the template.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `String` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**exclude_fields:** `String` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Templates::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.templates.<a href="/lib/mailchimp/templates/client.rb">delete</a>(template_id:) -> </code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Delete a specific template.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.templates.delete(template_id: "template_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**template_id:** `String` — The unique id for the template.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Templates::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.templates.<a href="/lib/mailchimp/templates/client.rb">update</a>(template_id:, request) -> Mailchimp::Types::TemplateInstance</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Update the name, HTML, or `folder_id` of an existing template.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.templates.update(template_id: "template_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**template_id:** `String` — The unique id for the template.
    
</dd>
</dl>

<dl>
<dd>

**folder_id:** `String` — The id of the folder the template is currently in.
    
</dd>
</dl>

<dl>
<dd>

**html:** `String` — The raw HTML for the template. We  support the Mailchimp [Template Language](https://mailchimp.com/help/getting-started-with-mailchimps-template-language/) in any HTML code passed via the API.
    
</dd>
</dl>

<dl>
<dd>

**name:** `String` — The name of the template.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Templates::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.templates.<a href="/lib/mailchimp/templates/client.rb">list_default_content</a>(template_id:) -> Mailchimp::Templates::Types::ListDefaultContentTemplatesResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get the sections that you can edit in a template, including each section's default content.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.templates.list_default_content(template_id: "template_id")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**template_id:** `String` — The unique id for the template.
    
</dd>
</dl>

<dl>
<dd>

**fields:** `String` — A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**exclude_fields:** `String` — A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::Templates::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## VerifiedDomains
<details><summary><code>client.verified_domains.<a href="/lib/mailchimp/verified_domains/client.rb">list</a>() -> Mailchimp::VerifiedDomains::Types::ListVerifiedDomainsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get all of the sending domains on the account.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.verified_domains.list
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request_options:** `Mailchimp::VerifiedDomains::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.verified_domains.<a href="/lib/mailchimp/verified_domains/client.rb">create</a>(request) -> Mailchimp::VerifiedDomains::Types::CreateVerifiedDomainsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Add a domain to the account.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.verified_domains.create(verification_email: "verification_email")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**verification_email:** `String` — The e-mail address at the domain you want to verify. This will receive a two-factor challenge to be used in the verify action.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::VerifiedDomains::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.verified_domains.<a href="/lib/mailchimp/verified_domains/client.rb">get</a>(domain_name:) -> Mailchimp::VerifiedDomains::Types::GetVerifiedDomainsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Get the details for a single domain on the account.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.verified_domains.get(domain_name: "domain_name")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**domain_name:** `String` — The domain name.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::VerifiedDomains::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.verified_domains.<a href="/lib/mailchimp/verified_domains/client.rb">delete</a>(domain_name:) -> </code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Delete a verified domain from the account.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.verified_domains.delete(domain_name: "domain_name")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**domain_name:** `String` — The domain name.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::VerifiedDomains::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.verified_domains.<a href="/lib/mailchimp/verified_domains/client.rb">create_action_verify</a>(domain_name:, request) -> Mailchimp::VerifiedDomains::Types::CreateActionVerifyVerifiedDomainsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Verify a domain for sending.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.verified_domains.create_action_verify(
  domain_name: "domain_name",
  code: "code"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**domain_name:** `String` — The domain name.
    
</dd>
</dl>

<dl>
<dd>

**code:** `String` — The code that was sent to the email address provided when adding a new domain to verify.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailchimp::VerifiedDomains::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

