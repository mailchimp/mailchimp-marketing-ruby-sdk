# frozen_string_literal: true

module Mailchimp
  module Lists
    module Types
      # A summary of List's locations.
      class ListLocationsListsResponse < Internal::Types::Model
        field :links, -> { Internal::Types::Array[Mailchimp::Lists::Types::ListLocationsListsResponseLinksItem] }, optional: true, nullable: false, api_name: "_links"

        field :list_id, -> { String }, optional: true, nullable: false

        field :locations, -> { Internal::Types::Array[Mailchimp::Lists::Types::ListLocationsListsResponseLocationsItem] }, optional: true, nullable: false

        field :total_items, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
