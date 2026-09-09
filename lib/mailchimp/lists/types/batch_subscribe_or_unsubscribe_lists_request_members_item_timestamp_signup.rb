# frozen_string_literal: true

module Mailchimp
  module Lists
    module Types
      class BatchSubscribeOrUnsubscribeListsRequestMembersItemTimestampSignup < Internal::Types::Model
        extend Mailchimp::Internal::Types::Union

        member -> { String }

        member -> { Mailchimp::Lists::Types::BatchSubscribeOrUnsubscribeListsRequestMembersItemTimestampSignupOne }
      end
    end
  end
end
