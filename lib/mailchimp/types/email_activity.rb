# frozen_string_literal: true

module Mailchimp
  module Types
    # A list of a member's subscriber activity in a specific campaign, including opens, clicks, and bounces.
    class EmailActivity < Internal::Types::Model
      field :links, -> { Internal::Types::Array[Mailchimp::Types::EmailActivityLinksItem] }, optional: true, nullable: false, api_name: "_links"

      field :activity, -> { Internal::Types::Array[Mailchimp::Types::EmailActivityActivityItem] }, optional: true, nullable: false

      field :campaign_id, -> { String }, optional: true, nullable: false

      field :email_address, -> { String }, optional: true, nullable: false

      field :email_id, -> { String }, optional: true, nullable: false

      field :list_id, -> { String }, optional: true, nullable: false

      field :list_is_active, -> { Internal::Types::Boolean }, optional: true, nullable: false
    end
  end
end
