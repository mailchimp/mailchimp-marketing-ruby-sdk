# frozen_string_literal: true

module Mailchimp
  module Types
    # A subscriber's status for a specific campaign.
    class SentTo < Internal::Types::Model
      field :links, -> { Internal::Types::Array[Mailchimp::Types::SentToLinksItem] }, optional: true, nullable: false, api_name: "_links"

      field :absplit_group, -> { Mailchimp::Types::SentToAbsplitGroup }, optional: true, nullable: false

      field :campaign_id, -> { String }, optional: true, nullable: false

      field :email_address, -> { String }, optional: true, nullable: false

      field :email_id, -> { String }, optional: true, nullable: false

      field :gmt_offset, -> { Integer }, optional: true, nullable: false

      field :last_open, -> { String }, optional: true, nullable: false

      field :list_id, -> { String }, optional: true, nullable: false

      field :list_is_active, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :merge_fields, -> { Internal::Types::Hash[String, Mailchimp::Types::SentToMergeFieldsValue] }, optional: true, nullable: false

      field :open_count, -> { Integer }, optional: true, nullable: false

      field :status, -> { Mailchimp::Types::SentToStatus }, optional: true, nullable: false

      field :vip, -> { Internal::Types::Boolean }, optional: true, nullable: false
    end
  end
end
