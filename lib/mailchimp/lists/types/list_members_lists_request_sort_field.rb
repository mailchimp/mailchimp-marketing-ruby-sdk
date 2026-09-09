# frozen_string_literal: true

module Mailchimp
  module Lists
    module Types
      module ListMembersListsRequestSortField
        extend Mailchimp::Internal::Types::Enum

        TIMESTAMP_OPT = "timestamp_opt"
        TIMESTAMP_SIGNUP = "timestamp_signup"
        LAST_CHANGED = "last_changed"
      end
    end
  end
end
