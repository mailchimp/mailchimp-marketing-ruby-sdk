# frozen_string_literal: true

module Mailchimp
  module Types
    # Details about an individual conversation. Conversation tracking is a feature available to paid accounts that lets
    # you view replies to your campaigns in your Mailchimp account.
    class Conversation < Internal::Types::Model
      field :links, -> { Internal::Types::Array[Mailchimp::Types::ConversationLinksItem] }, optional: true, nullable: false, api_name: "_links"

      field :campaign_id, -> { String }, optional: true, nullable: false

      field :from_email, -> { String }, optional: true, nullable: false

      field :from_label, -> { String }, optional: true, nullable: false

      field :id, -> { String }, optional: true, nullable: false

      field :last_message, -> { Mailchimp::Types::ConversationLastMessage }, optional: true, nullable: false

      field :list_id, -> { String }, optional: true, nullable: false

      field :message_count, -> { Integer }, optional: true, nullable: false

      field :subject, -> { String }, optional: true, nullable: false

      field :unread_messages, -> { Integer }, optional: true, nullable: false
    end
  end
end
