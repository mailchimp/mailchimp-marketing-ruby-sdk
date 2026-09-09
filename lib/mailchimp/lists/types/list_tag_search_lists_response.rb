# frozen_string_literal: true

module Mailchimp
  module Lists
    module Types
      # A list of tags matching the input query.
      class ListTagSearchListsResponse < Internal::Types::Model
        field :tags, -> { Internal::Types::Array[Mailchimp::Lists::Types::ListTagSearchListsResponseTagsItem] }, optional: true, nullable: false

        field :total_items, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
