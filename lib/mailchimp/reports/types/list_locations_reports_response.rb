# frozen_string_literal: true

module Mailchimp
  module Reports
    module Types
      # Top open locations for a specific campaign.
      class ListLocationsReportsResponse < Internal::Types::Model
        field :links, -> { Internal::Types::Array[Mailchimp::Reports::Types::ListLocationsReportsResponseLinksItem] }, optional: true, nullable: false, api_name: "_links"

        field :campaign_id, -> { String }, optional: true, nullable: false

        field :locations, -> { Internal::Types::Array[Mailchimp::Reports::Types::ListLocationsReportsResponseLocationsItem] }, optional: true, nullable: false

        field :total_items, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
