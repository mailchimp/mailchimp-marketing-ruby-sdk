# frozen_string_literal: true

module Mailchimp
  module Types
    # Individuals who are currently or have been previously subscribed to this list, including members who have bounced
    # or unsubscribed.
    class ListMembers < Internal::Types::Model
      field :links, -> { Internal::Types::Array[Mailchimp::Types::ListMembersLinksItem] }, optional: true, nullable: false, api_name: "_links"

      field :consents_to_one_to_one_messaging, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :contact_id, -> { String }, optional: true, nullable: false

      field :email_address, -> { String }, optional: true, nullable: false

      field :email_client, -> { String }, optional: true, nullable: false

      field :email_type, -> { Object }, optional: true, nullable: false

      field :id, -> { String }, optional: true, nullable: false

      field :interests, -> { Internal::Types::Hash[String, Internal::Types::Boolean] }, optional: true, nullable: false

      field :ip_opt, -> { String }, optional: true, nullable: false

      field :ip_signup, -> { String }, optional: true, nullable: false

      field :language, -> { String }, optional: true, nullable: false

      field :last_changed, -> { String }, optional: true, nullable: false

      field :last_note, -> { Mailchimp::Types::ListMembersLastNote }, optional: true, nullable: false

      field :list_id, -> { String }, optional: true, nullable: false

      field :location, -> { Mailchimp::Types::ListMembersLocation }, optional: true, nullable: false

      field :marketing_permissions, -> { Internal::Types::Array[Mailchimp::Types::ListMembersMarketingPermissionsItem] }, optional: true, nullable: false

      field :member_rating, -> { Integer }, optional: true, nullable: false

      field :merge_fields, -> { Internal::Types::Hash[String, Mailchimp::Types::ListMembersMergeFieldsValue] }, optional: true, nullable: false

      field :sms_phone_number, -> { String }, optional: true, nullable: false

      field :sms_subscription_last_updated, -> { String }, optional: true, nullable: false

      field :sms_subscription_status, -> { Mailchimp::Types::ListMembersSmsSubscriptionStatus }, optional: true, nullable: false

      field :source, -> { String }, optional: true, nullable: false

      field :stats, -> { Mailchimp::Types::ListMembersStats }, optional: true, nullable: false

      field :status, -> { Mailchimp::Types::ListMembersStatus }, optional: true, nullable: false

      field :tags, -> { Internal::Types::Array[Mailchimp::Types::ListMembersTagsItem] }, optional: true, nullable: false

      field :tags_count, -> { Integer }, optional: true, nullable: false

      field :timestamp_opt, -> { String }, optional: true, nullable: false

      field :timestamp_signup, -> { String }, optional: true, nullable: false

      field :unique_email_id, -> { String }, optional: true, nullable: false

      field :unsubscribe_reason, -> { String }, optional: true, nullable: false

      field :vip, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :web_id, -> { Integer }, optional: true, nullable: false
    end
  end
end
