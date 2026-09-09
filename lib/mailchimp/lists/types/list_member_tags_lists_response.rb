# frozen_string_literal: true

module Mailchimp
  module Lists
    module Types
      # A list of tags assigned to a list member.
      class ListMemberTagsListsResponse < Internal::Types::Model
        field :links, -> { Internal::Types::Array[Mailchimp::Lists::Types::ListMemberTagsListsResponseLinksItem] }, optional: true, nullable: false, api_name: "_links"

        field :tags, -> { Internal::Types::Array[Mailchimp::Lists::Types::ListMemberTagsListsResponseTagsItem] }, optional: true, nullable: false

        field :total_items, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
