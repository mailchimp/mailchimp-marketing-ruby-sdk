# frozen_string_literal: true

module Mailchimp
  module Lists
    module Types
      # A list of available segments.
      class ListSegmentsListsResponse < Internal::Types::Model
        field :links, -> { Internal::Types::Array[Mailchimp::Lists::Types::ListSegmentsListsResponseLinksItem] }, optional: true, nullable: false, api_name: "_links"

        field :list_id, -> { String }, optional: true, nullable: false

        field :segments, -> { Internal::Types::Array[Mailchimp::Types::List] }, optional: true, nullable: false

        field :total_items, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
