# frozen_string_literal: true

module Mailchimp
  module Lists
    module Types
      class ListMemberNotesListsRequest < Internal::Types::Model
        field :list_id, -> { String }, optional: false, nullable: false

        field :subscriber_hash, -> { String }, optional: false, nullable: false

        field :sort_field, -> { Mailchimp::Lists::Types::ListMemberNotesListsRequestSortField }, optional: true, nullable: false

        field :sort_dir, -> { Mailchimp::Lists::Types::ListMemberNotesListsRequestSortDir }, optional: true, nullable: false

        field :fields, -> { String }, optional: true, nullable: false

        field :exclude_fields, -> { String }, optional: true, nullable: false

        field :count, -> { Integer }, optional: true, nullable: false

        field :offset, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
