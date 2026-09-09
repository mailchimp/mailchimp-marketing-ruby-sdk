# frozen_string_literal: true

module Mailchimp
  module Conversations
    module Types
      class ListConversationsRequest < Internal::Types::Model
        field :fields, -> { String }, optional: true, nullable: false

        field :exclude_fields, -> { String }, optional: true, nullable: false

        field :count, -> { Integer }, optional: true, nullable: false

        field :offset, -> { Integer }, optional: true, nullable: false

        field :has_unread_messages, -> { Mailchimp::Conversations::Types::ListConversationsRequestHasUnreadMessages }, optional: true, nullable: false

        field :list_id, -> { String }, optional: true, nullable: false

        field :campaign_id, -> { String }, optional: true, nullable: false
      end
    end
  end
end
