# frozen_string_literal: true

module Mailchimp
  module Lists
    module Types
      class CreateMemberListsRequestTimestampOpt < Internal::Types::Model
        extend Mailchimp::Internal::Types::Union

        member -> { String }

        member -> { Mailchimp::Lists::Types::CreateMemberListsRequestTimestampOptOne }
      end
    end
  end
end
