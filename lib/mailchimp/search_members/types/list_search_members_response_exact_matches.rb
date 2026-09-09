# frozen_string_literal: true

module Mailchimp
  module SearchMembers
    module Types
      # Exact matches of the provided search query.
      class ListSearchMembersResponseExactMatches < Internal::Types::Model
        field :members, -> { Internal::Types::Array[Mailchimp::Types::ListMembers] }, optional: true, nullable: false

        field :total_items, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
