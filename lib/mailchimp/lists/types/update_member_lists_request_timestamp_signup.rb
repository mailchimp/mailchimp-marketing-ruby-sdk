# frozen_string_literal: true

module Mailchimp
  module Lists
    module Types
      class UpdateMemberListsRequestTimestampSignup < Internal::Types::Model
        extend Mailchimp::Internal::Types::Union

        member -> { String }

        member -> { Mailchimp::Lists::Types::UpdateMemberListsRequestTimestampSignupOne }
      end
    end
  end
end
