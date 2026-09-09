# frozen_string_literal: true

module Mailchimp
  module Lists
    module Types
      # The member activity events for a given member.
      class ListMemberActivityFeedListsResponse < Internal::Types::Model
        field :links, -> { Internal::Types::Array[Mailchimp::Lists::Types::ListMemberActivityFeedListsResponseLinksItem] }, optional: true, nullable: false, api_name: "_links"

        field :activity, -> { Internal::Types::Array[Object] }, optional: true, nullable: false

        field :email_id, -> { String }, optional: true, nullable: false

        field :list_id, -> { String }, optional: true, nullable: false
      end
    end
  end
end
