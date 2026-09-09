# frozen_string_literal: true

module Mailchimp
  module Types
    # An individual message in a conversation. Conversation tracking is a feature available to paid accounts that lets
    # you view replies to your campaigns in your Mailchimp account.
    class ConversationMessage < Internal::Types::Model
      field :links, -> { Internal::Types::Array[Mailchimp::Types::ConversationMessageLinksItem] }, optional: true, nullable: false, api_name: "_links"

      field :conversation_id, -> { String }, optional: true, nullable: false

      field :from_email, -> { String }, optional: true, nullable: false

      field :from_label, -> { String }, optional: true, nullable: false

      field :id, -> { String }, optional: true, nullable: false

      field :list_id, -> { Integer }, optional: true, nullable: false

      field :message, -> { String }, optional: true, nullable: false

      field :read, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :subject, -> { String }, optional: true, nullable: false

      field :timestamp, -> { String }, optional: true, nullable: false
    end
  end
end
