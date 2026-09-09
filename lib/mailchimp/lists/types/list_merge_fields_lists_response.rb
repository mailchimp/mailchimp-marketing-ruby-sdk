# frozen_string_literal: true

module Mailchimp
  module Lists
    module Types
      # The [merge fields](https://mailchimp.com/developer/marketing/docs/merge-fields/) for an audience.
      class ListMergeFieldsListsResponse < Internal::Types::Model
        field :links, -> { Internal::Types::Array[Mailchimp::Lists::Types::ListMergeFieldsListsResponseLinksItem] }, optional: true, nullable: false, api_name: "_links"

        field :list_id, -> { String }, optional: true, nullable: false

        field :merge_field_limit, -> { Integer }, optional: true, nullable: false

        field :merge_fields, -> { Internal::Types::Array[Mailchimp::Types::MergeField] }, optional: true, nullable: false

        field :total_items, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
