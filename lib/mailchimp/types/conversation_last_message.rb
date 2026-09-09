# frozen_string_literal: true

module Mailchimp
  module Types
    # The most recent message in the conversation.
    class ConversationLastMessage < Internal::Types::Model
      field :from_email, -> { String }, optional: true, nullable: false

      field :from_label, -> { String }, optional: true, nullable: false

      field :message, -> { String }, optional: true, nullable: false

      field :read, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :subject, -> { String }, optional: true, nullable: false

      field :timestamp, -> { String }, optional: true, nullable: false
    end
  end
end
