# frozen_string_literal: true

module Mailchimp
  module Lists
    module Types
      class UpsertMemberListsRequest < Internal::Types::Model
        field :list_id, -> { String }, optional: false, nullable: false

        field :subscriber_hash, -> { String }, optional: false, nullable: false

        field :skip_merge_validation, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :email_address, -> { String }, optional: false, nullable: false

        field :email_type, -> { String }, optional: true, nullable: false

        field :interests, -> { Internal::Types::Hash[String, Internal::Types::Boolean] }, optional: true, nullable: false

        field :ip_opt, -> { String }, optional: true, nullable: false

        field :ip_signup, -> { String }, optional: true, nullable: false

        field :language, -> { String }, optional: true, nullable: false

        field :location, -> { Mailchimp::Lists::Types::UpsertMemberListsRequestLocation }, optional: true, nullable: false

        field :marketing_permissions, -> { Internal::Types::Array[Mailchimp::Lists::Types::UpsertMemberListsRequestMarketingPermissionsItem] }, optional: true, nullable: false

        field :merge_fields, -> { Internal::Types::Hash[String, Mailchimp::Lists::Types::UpsertMemberListsRequestMergeFieldsValue] }, optional: true, nullable: false

        field :status, -> { Mailchimp::Lists::Types::UpsertMemberListsRequestStatus }, optional: true, nullable: false

        field :status_if_new, -> { Mailchimp::Lists::Types::UpsertMemberListsRequestStatusIfNew }, optional: true, nullable: false

        field :tags, -> { Internal::Types::Array[String] }, optional: true, nullable: false

        field :timestamp_opt, -> { Mailchimp::Lists::Types::UpsertMemberListsRequestTimestampOpt }, optional: true, nullable: false

        field :timestamp_signup, -> { Mailchimp::Lists::Types::UpsertMemberListsRequestTimestampSignup }, optional: true, nullable: false

        field :vip, -> { Internal::Types::Boolean }, optional: true, nullable: false
      end
    end
  end
end
