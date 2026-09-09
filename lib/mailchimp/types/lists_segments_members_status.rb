# frozen_string_literal: true

module Mailchimp
  module Types
    module ListsSegmentsMembersStatus
      extend Mailchimp::Internal::Types::Enum

      SUBSCRIBED = "subscribed"
      UNSUBSCRIBED = "unsubscribed"
      CLEANED = "cleaned"
      PENDING = "pending"
      TRANSACTIONAL = "transactional"
    end
  end
end
