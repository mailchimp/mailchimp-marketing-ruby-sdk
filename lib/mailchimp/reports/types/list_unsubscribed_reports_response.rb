# frozen_string_literal: true

module Mailchimp
  module Reports
    module Types
      # A list of members who have unsubscribed from a specific campaign.
      class ListUnsubscribedReportsResponse < Internal::Types::Model
        field :links, -> { Internal::Types::Array[Mailchimp::Reports::Types::ListUnsubscribedReportsResponseLinksItem] }, optional: true, nullable: false, api_name: "_links"

        field :campaign_id, -> { String }, optional: true, nullable: false

        field :total_items, -> { Integer }, optional: true, nullable: false

        field :unsubscribes, -> { Internal::Types::Array[Mailchimp::Types::Unsubscribes] }, optional: true, nullable: false
      end
    end
  end
end
