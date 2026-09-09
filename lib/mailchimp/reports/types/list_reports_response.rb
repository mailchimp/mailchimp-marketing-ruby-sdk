# frozen_string_literal: true

module Mailchimp
  module Reports
    module Types
      # A list of reports containing campaigns marked as Sent.
      class ListReportsResponse < Internal::Types::Model
        field :links, -> { Internal::Types::Array[Mailchimp::Reports::Types::ListReportsResponseLinksItem] }, optional: true, nullable: false, api_name: "_links"

        field :reports, -> { Internal::Types::Array[Mailchimp::Types::CampaignReport] }, optional: true, nullable: false

        field :total_items, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
