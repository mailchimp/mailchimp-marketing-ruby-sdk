# frozen_string_literal: true

module Mailchimp
  module Lists
    module Types
      class ListMemberTagsListsResponseTagsItem < Internal::Types::Model
        field :date_added, -> { String }, optional: true, nullable: false

        field :id, -> { Integer }, optional: true, nullable: false

        field :name, -> { String }, optional: true, nullable: false
      end
    end
  end
end
