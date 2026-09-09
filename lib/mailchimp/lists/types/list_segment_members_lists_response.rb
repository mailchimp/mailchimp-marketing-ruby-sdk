# frozen_string_literal: true

module Mailchimp
  module Lists
    module Types
      # View members in a specific list segment.
      class ListSegmentMembersListsResponse < Internal::Types::Model
        field :links, -> { Internal::Types::Array[Mailchimp::Lists::Types::ListSegmentMembersListsResponseLinksItem] }, optional: true, nullable: false, api_name: "_links"

        field :members, -> { Internal::Types::Array[Mailchimp::Types::ListsSegmentsMembers] }, optional: true, nullable: false

        field :total_items, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
