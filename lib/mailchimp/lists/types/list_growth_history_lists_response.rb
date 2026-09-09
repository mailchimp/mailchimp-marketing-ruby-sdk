# frozen_string_literal: true

module Mailchimp
  module Lists
    module Types
      # A month-by-month summary of a specific list's growth activity.
      class ListGrowthHistoryListsResponse < Internal::Types::Model
        field :links, -> { Internal::Types::Array[Mailchimp::Lists::Types::ListGrowthHistoryListsResponseLinksItem] }, optional: true, nullable: false, api_name: "_links"

        field :history, -> { Internal::Types::Array[Mailchimp::Types::GrowthHistory] }, optional: true, nullable: false

        field :list_id, -> { String }, optional: true, nullable: false

        field :total_items, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
