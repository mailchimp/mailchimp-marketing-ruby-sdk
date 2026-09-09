# frozen_string_literal: true

module Mailchimp
  module Lists
    module Types
      # Manage members of a specific Mailchimp list, including currently subscribed, unsubscribed, and bounced members.
      class ListMembersListsResponse < Internal::Types::Model
        field :links, -> { Internal::Types::Array[Mailchimp::Lists::Types::ListMembersListsResponseLinksItem] }, optional: true, nullable: false, api_name: "_links"

        field :list_id, -> { String }, optional: true, nullable: false

        field :members, -> { Internal::Types::Array[Mailchimp::Types::ListMembers] }, optional: true, nullable: false

        field :total_items, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
