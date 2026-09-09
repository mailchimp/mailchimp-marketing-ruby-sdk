# frozen_string_literal: true

module Mailchimp
  module SearchMembers
    module Types
      class ListSearchMembersRequest < Internal::Types::Model
        field :fields, -> { String }, optional: true, nullable: false

        field :exclude_fields, -> { String }, optional: true, nullable: false

        field :query, -> { String }, optional: false, nullable: false

        field :list_id, -> { String }, optional: true, nullable: false
      end
    end
  end
end
