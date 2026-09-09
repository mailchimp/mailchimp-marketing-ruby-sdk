# frozen_string_literal: true

module Mailchimp
  module Conversations
    module Types
      # A collection of this account's tracked conversations.
      class ListConversationsResponse < Internal::Types::Model
        field :links, -> { Internal::Types::Array[Mailchimp::Conversations::Types::ListConversationsResponseLinksItem] }, optional: true, nullable: false, api_name: "_links"

        field :conversations, -> { Internal::Types::Array[Mailchimp::Types::Conversation] }, optional: true, nullable: false

        field :total_items, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
