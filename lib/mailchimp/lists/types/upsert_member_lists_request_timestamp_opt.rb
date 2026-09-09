# frozen_string_literal: true

module Mailchimp
  module Lists
    module Types
      class UpsertMemberListsRequestTimestampOpt < Internal::Types::Model
        extend Mailchimp::Internal::Types::Union

        member -> { String }

        member -> { Mailchimp::Lists::Types::UpsertMemberListsRequestTimestampOptOne }
      end
    end
  end
end
