# frozen_string_literal: true

module Mailchimp
  module Lists
    module Types
      module ListMembersListsRequestStatus
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
end
