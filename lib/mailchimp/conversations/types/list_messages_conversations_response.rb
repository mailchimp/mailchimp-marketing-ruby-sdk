# frozen_string_literal: true

module Mailchimp
  module Conversations
    module Types
      # Messages from a specific conversation.
      class ListMessagesConversationsResponse < Internal::Types::Model
        field :links, -> { Internal::Types::Array[Mailchimp::Conversations::Types::ListMessagesConversationsResponseLinksItem] }, optional: true, nullable: false, api_name: "_links"

        field :conversation_id, -> { String }, optional: true, nullable: false

        field :conversation_messages, -> { Internal::Types::Array[Mailchimp::Types::ConversationMessage] }, optional: true, nullable: false

        field :total_items, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
