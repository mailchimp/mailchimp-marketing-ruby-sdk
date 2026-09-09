# frozen_string_literal: true

module Mailchimp
  module Types
    # The most recent Note added about this member.
    class ListsSegmentsMembersLastNote < Internal::Types::Model
      field :created_at, -> { String }, optional: true, nullable: false

      field :created_by, -> { String }, optional: true, nullable: false

      field :note, -> { String }, optional: true, nullable: false

      field :note_id, -> { Integer }, optional: true, nullable: false
    end
  end
end
