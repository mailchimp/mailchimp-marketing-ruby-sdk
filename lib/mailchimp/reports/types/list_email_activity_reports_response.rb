# frozen_string_literal: true

module Mailchimp
  module Reports
    module Types
      # A list of member's subscriber activity in a specific campaign.
      class ListEmailActivityReportsResponse < Internal::Types::Model
        field :links, -> { Internal::Types::Array[Mailchimp::Reports::Types::ListEmailActivityReportsResponseLinksItem] }, optional: true, nullable: false, api_name: "_links"

        field :campaign_id, -> { String }, optional: true, nullable: false

        field :emails, -> { Internal::Types::Array[Mailchimp::Types::EmailActivity] }, optional: true, nullable: false

        field :total_items, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
