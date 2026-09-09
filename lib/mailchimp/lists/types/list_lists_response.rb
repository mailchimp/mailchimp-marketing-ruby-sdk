# frozen_string_literal: true

module Mailchimp
  module Lists
    module Types
      # A collection of subscriber lists for this account.
      class ListListsResponse < Internal::Types::Model
        field :links, -> { Internal::Types::Array[Mailchimp::Lists::Types::ListListsResponseLinksItem] }, optional: true, nullable: false, api_name: "_links"

        field :constraints, -> { Mailchimp::Lists::Types::ListListsResponseConstraints }, optional: true, nullable: false

        field :lists, -> { Internal::Types::Array[Mailchimp::Types::SubscriberList] }, optional: false, nullable: false

        field :total_items, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
