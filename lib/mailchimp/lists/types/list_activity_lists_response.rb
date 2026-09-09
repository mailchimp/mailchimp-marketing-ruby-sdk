# frozen_string_literal: true

module Mailchimp
  module Lists
    module Types
      # Up to the previous 180 days of daily detailed aggregated activity stats for a specific list. Does not include
      # AutoResponder or Automation activity.
      class ListActivityListsResponse < Internal::Types::Model
        field :links, -> { Internal::Types::Array[Mailchimp::Lists::Types::ListActivityListsResponseLinksItem] }, optional: true, nullable: false, api_name: "_links"

        field :activity, -> { Internal::Types::Array[Mailchimp::Lists::Types::ListActivityListsResponseActivityItem] }, optional: true, nullable: false

        field :list_id, -> { String }, optional: true, nullable: false

        field :total_items, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
