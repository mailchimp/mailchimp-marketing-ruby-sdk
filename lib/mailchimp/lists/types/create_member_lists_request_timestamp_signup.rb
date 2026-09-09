# frozen_string_literal: true

module Mailchimp
  module Lists
    module Types
      class CreateMemberListsRequestTimestampSignup < Internal::Types::Model
        extend Mailchimp::Internal::Types::Union

        member -> { String }

        member -> { Mailchimp::Lists::Types::CreateMemberListsRequestTimestampSignupOne }
      end
    end
  end
end
