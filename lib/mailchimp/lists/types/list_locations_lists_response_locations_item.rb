# frozen_string_literal: true

module Mailchimp
  module Lists
    module Types
      class ListLocationsListsResponseLocationsItem < Internal::Types::Model
        field :cc, -> { String }, optional: true, nullable: false

        field :country, -> { String }, optional: true, nullable: false

        field :percent, -> { Integer }, optional: true, nullable: false

        field :total, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
