# frozen_string_literal: true

module Mailchimp
  module Lists
    module Types
      # The last 50 member events for a list.
      class ListMemberActivityListsResponse < Internal::Types::Model
        field :links, -> { Internal::Types::Array[Mailchimp::Lists::Types::ListMemberActivityListsResponseLinksItem] }, optional: true, nullable: false, api_name: "_links"

        field :activity, -> { Internal::Types::Array[Mailchimp::Lists::Types::ListMemberActivityListsResponseActivityItem] }, optional: true, nullable: false

        field :contact_id, -> { String }, optional: true, nullable: false

        field :email_id, -> { String }, optional: true, nullable: false

        field :list_id, -> { String }, optional: true, nullable: false

        field :total_items, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
