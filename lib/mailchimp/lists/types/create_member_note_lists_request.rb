# frozen_string_literal: true

module Mailchimp
  module Lists
    module Types
      class CreateMemberNoteListsRequest < Internal::Types::Model
        field :list_id, -> { String }, optional: false, nullable: false

        field :subscriber_hash, -> { String }, optional: false, nullable: false

        field :note, -> { String }, optional: true, nullable: false
      end
    end
  end
end
