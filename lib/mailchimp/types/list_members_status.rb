# frozen_string_literal: true

module Mailchimp
  module Types
    module ListMembersStatus
      extend Mailchimp::Internal::Types::Enum

      SUBSCRIBED = "subscribed"
      UNSUBSCRIBED = "unsubscribed"
      CLEANED = "cleaned"
      PENDING = "pending"
      TRANSACTIONAL = "transactional"
      ARCHIVED = "archived"
    end
  end
end
