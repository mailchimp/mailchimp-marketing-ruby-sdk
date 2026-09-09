# frozen_string_literal: true

module Mailchimp
  module Types
    # Segment by interaction with a campaign via Conversations.
    class SegmentTypeItemConversation < Internal::Types::Model
      field :field, -> { Mailchimp::Types::SegmentTypeItemConversationField }, optional: false, nullable: false

      field :op, -> { Mailchimp::Types::SegmentTypeItemConversationOp }, optional: false, nullable: false

      field :value, -> { String }, optional: false, nullable: false
    end
  end
end
