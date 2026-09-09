# frozen_string_literal: true

module Mailchimp
  module Lists
    module Types
      class BatchSubscribeOrUnsubscribeListsRequestMembersItemTimestampOpt < Internal::Types::Model
        extend Mailchimp::Internal::Types::Union

        member -> { String }

        member -> { Mailchimp::Lists::Types::BatchSubscribeOrUnsubscribeListsRequestMembersItemTimestampOptOne }
      end
    end
  end
end
