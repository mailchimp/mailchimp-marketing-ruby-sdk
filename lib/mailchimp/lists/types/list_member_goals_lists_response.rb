# frozen_string_literal: true

module Mailchimp
  module Lists
    module Types
      # The last 50 Goal events for a member on a specific list.
      class ListMemberGoalsListsResponse < Internal::Types::Model
        field :links, -> { Internal::Types::Array[Mailchimp::Lists::Types::ListMemberGoalsListsResponseLinksItem] }, optional: true, nullable: false, api_name: "_links"

        field :email_id, -> { String }, optional: true, nullable: false

        field :goals, -> { Internal::Types::Array[Mailchimp::Lists::Types::ListMemberGoalsListsResponseGoalsItem] }, optional: true, nullable: false

        field :list_id, -> { String }, optional: true, nullable: false

        field :total_items, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
