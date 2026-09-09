# frozen_string_literal: true

module Mailchimp
  module Lists
    module Types
      class UpdateMemberListsRequestTimestampOpt < Internal::Types::Model
        extend Mailchimp::Internal::Types::Union

        member -> { String }

        member -> { Mailchimp::Lists::Types::UpdateMemberListsRequestTimestampOptOne }
      end
    end
  end
end
