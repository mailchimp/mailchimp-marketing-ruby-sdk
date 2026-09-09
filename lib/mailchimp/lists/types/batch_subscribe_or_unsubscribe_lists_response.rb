# frozen_string_literal: true

module Mailchimp
  module Lists
    module Types
      # Batch update list members.
      class BatchSubscribeOrUnsubscribeListsResponse < Internal::Types::Model
        field :links, -> { Internal::Types::Array[Mailchimp::Lists::Types::BatchSubscribeOrUnsubscribeListsResponseLinksItem] }, optional: true, nullable: false, api_name: "_links"

        field :error_count, -> { Integer }, optional: true, nullable: false

        field :errors, -> { Internal::Types::Array[Mailchimp::Lists::Types::BatchSubscribeOrUnsubscribeListsResponseErrorsItem] }, optional: true, nullable: false

        field :new_members, -> { Internal::Types::Array[Mailchimp::Types::ListsPost] }, optional: true, nullable: false

        field :total_created, -> { Integer }, optional: true, nullable: false

        field :total_updated, -> { Integer }, optional: true, nullable: false

        field :updated_members, -> { Internal::Types::Array[Mailchimp::Types::ListsPost] }, optional: true, nullable: false
      end
    end
  end
end
