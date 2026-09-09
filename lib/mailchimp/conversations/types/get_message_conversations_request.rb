# frozen_string_literal: true

module Mailchimp
  module Conversations
    module Types
      class GetMessageConversationsRequest < Internal::Types::Model
        field :conversation_id, -> { String }, optional: false, nullable: false

        field :message_id, -> { String }, optional: false, nullable: false

        field :fields, -> { String }, optional: true, nullable: false

        field :exclude_fields, -> { String }, optional: true, nullable: false
      end
    end
  end
end
