# frozen_string_literal: true

module Mailchimp
  module Lists
    module Types
      class ListSegmentsListsRequest < Internal::Types::Model
        field :list_id, -> { String }, optional: false, nullable: false

        field :fields, -> { String }, optional: true, nullable: false

        field :exclude_fields, -> { String }, optional: true, nullable: false

        field :count, -> { Integer }, optional: true, nullable: false

        field :offset, -> { Integer }, optional: true, nullable: false

        field :type, -> { String }, optional: true, nullable: false

        field :since_created_at, -> { String }, optional: true, nullable: false

        field :before_created_at, -> { String }, optional: true, nullable: false

        field :include_cleaned, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :include_transactional, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :include_unsubscribed, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :since_updated_at, -> { String }, optional: true, nullable: false

        field :before_updated_at, -> { String }, optional: true, nullable: false

        field :exclude_type, -> { Mailchimp::Lists::Types::ListSegmentsListsRequestExcludeType }, optional: true, nullable: false
      end
    end
  end
end
