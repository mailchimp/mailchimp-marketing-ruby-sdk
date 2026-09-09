# frozen_string_literal: true

module Mailchimp
  module Types
    # A member who unsubscribed from a specific campaign.
    class Unsubscribes < Internal::Types::Model
      field :links, -> { Internal::Types::Array[Mailchimp::Types::UnsubscribesLinksItem] }, optional: true, nullable: false, api_name: "_links"

      field :campaign_id, -> { String }, optional: true, nullable: false

      field :email_address, -> { String }, optional: true, nullable: false

      field :email_id, -> { String }, optional: true, nullable: false

      field :list_id, -> { String }, optional: true, nullable: false

      field :list_is_active, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :merge_fields, -> { Internal::Types::Hash[String, Mailchimp::Types::UnsubscribesMergeFieldsValue] }, optional: true, nullable: false

      field :reason, -> { String }, optional: true, nullable: false

      field :timestamp, -> { String }, optional: true, nullable: false

      field :vip, -> { Internal::Types::Boolean }, optional: true, nullable: false
    end
  end
end
