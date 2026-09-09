# frozen_string_literal: true

module Mailchimp
  module Lists
    module Types
      class CreateMemberListsRequestLocationLatitude < Internal::Types::Model
        extend Mailchimp::Internal::Types::Union

        member -> { Integer }

        member -> { String }
      end
    end
  end
end
