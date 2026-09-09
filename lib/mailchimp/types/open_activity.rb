# frozen_string_literal: true

module Mailchimp
  module Types
    # A list of a member's opens activity in a specific campaign.
    class OpenActivity < Internal::Types::Model
      field :links, -> { Internal::Types::Array[Mailchimp::Types::OpenActivityLinksItem] }, optional: true, nullable: false, api_name: "_links"

      field :campaign_id, -> { String }, optional: true, nullable: false

      field :contact_status, -> { String }, optional: true, nullable: false

      field :email_address, -> { String }, optional: true, nullable: false

      field :email_id, -> { String }, optional: true, nullable: false

      field :list_id, -> { String }, optional: true, nullable: false

      field :list_is_active, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :merge_fields, -> { Internal::Types::Hash[String, Mailchimp::Types::OpenActivityMergeFieldsValue] }, optional: true, nullable: false

      field :opens, -> { Internal::Types::Array[Mailchimp::Types::OpenActivityOpensItem] }, optional: true, nullable: false

      field :opens_count, -> { Integer }, optional: true, nullable: false

      field :proxy_excluded_opens_count, -> { Integer }, optional: true, nullable: false

      field :vip, -> { Internal::Types::Boolean }, optional: true, nullable: false
    end
  end
end
