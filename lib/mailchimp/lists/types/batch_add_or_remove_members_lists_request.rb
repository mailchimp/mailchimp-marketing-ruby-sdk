# frozen_string_literal: true

module Mailchimp
  module Lists
    module Types
      class BatchAddOrRemoveMembersListsRequest < Internal::Types::Model
        field :list_id, -> { String }, optional: false, nullable: false

        field :segment_id, -> { String }, optional: false, nullable: false

        field :members_to_add, -> { Internal::Types::Array[String] }, optional: true, nullable: false

        field :members_to_remove, -> { Internal::Types::Array[String] }, optional: true, nullable: false
      end
    end
  end
end
