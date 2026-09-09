# frozen_string_literal: true

module Mailchimp
  module SearchMembers
    module Types
      # Members found for given search term
      class ListSearchMembersResponse < Internal::Types::Model
        field :links, -> { Internal::Types::Array[Mailchimp::SearchMembers::Types::ListSearchMembersResponseLinksItem] }, optional: true, nullable: false, api_name: "_links"

        field :exact_matches, -> { Mailchimp::SearchMembers::Types::ListSearchMembersResponseExactMatches }, optional: true, nullable: false

        field :full_search, -> { Mailchimp::SearchMembers::Types::ListSearchMembersResponseFullSearch }, optional: true, nullable: false
      end
    end
  end
end
