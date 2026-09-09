# frozen_string_literal: true

module Mailchimp
  module Lists
    module Types
      class UpsertMemberListsRequestTimestampSignup < Internal::Types::Model
        extend Mailchimp::Internal::Types::Union

        member -> { String }

        member -> { Mailchimp::Lists::Types::UpsertMemberListsRequestTimestampSignupOne }
      end
    end
  end
end
