# frozen_string_literal: true

module Mailchimp
  module Lists
    module Types
      class ListActivityListsRequest < Internal::Types::Model
        field :list_id, -> { String }, optional: false, nullable: false

        field :fields, -> { String }, optional: true, nullable: false

        field :exclude_fields, -> { String }, optional: true, nullable: false

        field :count, -> { Integer }, optional: true, nullable: false

        field :offset, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
