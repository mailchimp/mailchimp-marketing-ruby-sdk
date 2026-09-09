# frozen_string_literal: true

module Mailchimp
  module Lists
    module Types
      # A collection of events for a given contact
      class ListMemberEventsListsResponse < Internal::Types::Model
        field :links, -> { Internal::Types::Array[Mailchimp::Lists::Types::ListMemberEventsListsResponseLinksItem] }, optional: true, nullable: false, api_name: "_links"

        field :events, -> { Internal::Types::Array[Mailchimp::Lists::Types::ListMemberEventsListsResponseEventsItem] }, optional: true, nullable: false

        field :total_items, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
