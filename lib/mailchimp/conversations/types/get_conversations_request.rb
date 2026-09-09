# frozen_string_literal: true

module Mailchimp
  module Conversations
    module Types
      class GetConversationsRequest < Internal::Types::Model
        field :conversation_id, -> { String }, optional: false, nullable: false

        field :fields, -> { String }, optional: true, nullable: false

        field :exclude_fields, -> { String }, optional: true, nullable: false
      end
    end
  end
end
