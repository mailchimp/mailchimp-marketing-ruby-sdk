# frozen_string_literal: true

module Mailchimp
  module Conversations
    module Types
      class ListMessagesConversationsRequest < Internal::Types::Model
        field :conversation_id, -> { String }, optional: false, nullable: false

        field :fields, -> { String }, optional: true, nullable: false

        field :exclude_fields, -> { String }, optional: true, nullable: false

        field :is_read, -> { Mailchimp::Conversations::Types::ListMessagesConversationsRequestIsRead }, optional: true, nullable: false

        field :before_timestamp, -> { String }, optional: true, nullable: false

        field :since_timestamp, -> { String }, optional: true, nullable: false
      end
    end
  end
end
