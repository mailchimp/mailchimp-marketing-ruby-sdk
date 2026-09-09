# frozen_string_literal: true

module Mailchimp
  module Lists
    module Types
      # Individuals who are currently or have been previously subscribed to this list, including members who have
      # bounced or unsubscribed.
      class BatchSubscribeOrUnsubscribeListsRequestMembersItem < Internal::Types::Model
        extend Mailchimp::Internal::Types::Union

        member -> { Object }
      end
    end
  end
end
