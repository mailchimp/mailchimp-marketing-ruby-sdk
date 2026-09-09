# frozen_string_literal: true

module Mailchimp
  module Lists
    module Types
      # Information about this list's interest categories.
      class ListInterestCategoriesListsResponse < Internal::Types::Model
        field :links, -> { Internal::Types::Array[Mailchimp::Lists::Types::ListInterestCategoriesListsResponseLinksItem] }, optional: true, nullable: false, api_name: "_links"

        field :categories, -> { Internal::Types::Array[Mailchimp::Types::InterestCategory] }, optional: true, nullable: false

        field :list_id, -> { String }, optional: true, nullable: false

        field :total_items, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
