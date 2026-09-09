# frozen_string_literal: true

module Mailchimp
  module Lists
    module Types
      # Batch add/remove List members to/from static segment
      class BatchAddOrRemoveMembersListsResponse < Internal::Types::Model
        field :links, -> { Internal::Types::Array[Mailchimp::Lists::Types::BatchAddOrRemoveMembersListsResponseLinksItem] }, optional: true, nullable: false, api_name: "_links"

        field :error_count, -> { Integer }, optional: true, nullable: false

        field :errors, -> { Internal::Types::Array[Mailchimp::Lists::Types::BatchAddOrRemoveMembersListsResponseErrorsItem] }, optional: true, nullable: false

        field :members_added, -> { Internal::Types::Array[Mailchimp::Types::ListsPost] }, optional: true, nullable: false

        field :members_removed, -> { Internal::Types::Array[Mailchimp::Types::ListsPost] }, optional: true, nullable: false

        field :total_added, -> { Integer }, optional: true, nullable: false

        field :total_removed, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
