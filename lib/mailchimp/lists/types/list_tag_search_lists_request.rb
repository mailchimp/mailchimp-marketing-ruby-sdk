# frozen_string_literal: true

module Mailchimp
  module Lists
    module Types
      class ListTagSearchListsRequest < Internal::Types::Model
        field :list_id, -> { String }, optional: false, nullable: false

        field :name, -> { String }, optional: true, nullable: false
      end
    end
  end
end
