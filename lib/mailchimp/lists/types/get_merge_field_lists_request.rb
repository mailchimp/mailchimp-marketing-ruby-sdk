# frozen_string_literal: true

module Mailchimp
  module Lists
    module Types
      class GetMergeFieldListsRequest < Internal::Types::Model
        field :list_id, -> { String }, optional: false, nullable: false

        field :merge_id, -> { String }, optional: false, nullable: false

        field :exclude_fields, -> { String }, optional: true, nullable: false

        field :fields, -> { String }, optional: true, nullable: false
      end
    end
  end
end
