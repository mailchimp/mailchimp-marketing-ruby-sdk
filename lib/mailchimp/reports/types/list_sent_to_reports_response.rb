# frozen_string_literal: true

module Mailchimp
  module Reports
    module Types
      # A list of subscribers who were sent a specific campaign.
      class ListSentToReportsResponse < Internal::Types::Model
        field :links, -> { Internal::Types::Array[Mailchimp::Reports::Types::ListSentToReportsResponseLinksItem] }, optional: true, nullable: false, api_name: "_links"

        field :campaign_id, -> { String }, optional: true, nullable: false

        field :sent_to, -> { Internal::Types::Array[Mailchimp::Types::SentTo] }, optional: true, nullable: false

        field :total_items, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
