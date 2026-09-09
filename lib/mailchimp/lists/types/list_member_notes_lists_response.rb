# frozen_string_literal: true

module Mailchimp
  module Lists
    module Types
      # The last 10 notes for a specific list member, based on date created.
      class ListMemberNotesListsResponse < Internal::Types::Model
        field :links, -> { Internal::Types::Array[Mailchimp::Lists::Types::ListMemberNotesListsResponseLinksItem] }, optional: true, nullable: false, api_name: "_links"

        field :email_id, -> { String }, optional: true, nullable: false

        field :list_id, -> { String }, optional: true, nullable: false

        field :notes, -> { Internal::Types::Array[Mailchimp::Types::MemberNotes] }, optional: true, nullable: false

        field :total_items, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
