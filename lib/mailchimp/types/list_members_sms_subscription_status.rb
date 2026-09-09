# frozen_string_literal: true

module Mailchimp
  module Types
    module ListMembersSmsSubscriptionStatus
      extend Mailchimp::Internal::Types::Enum

      SUBSCRIBED = "subscribed"
      UNSUBSCRIBED = "unsubscribed"
      NONSUBSCRIBED = "nonsubscribed"
      PENDING = "pending"
    end
  end
end
