# frozen_string_literal: true

module Mailchimp
  module Lists
    module Types
      # A list of this category's interests
      class ListInterestCategoryInterestsListsResponse < Internal::Types::Model
        field :links, -> { Internal::Types::Array[Mailchimp::Lists::Types::ListInterestCategoryInterestsListsResponseLinksItem] }, optional: true, nullable: false, api_name: "_links"

        field :category_id, -> { String }, optional: true, nullable: false

        field :interests, -> { Internal::Types::Array[Mailchimp::Types::Interest] }, optional: true, nullable: false

        field :list_id, -> { String }, optional: true, nullable: false

        field :total_items, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
