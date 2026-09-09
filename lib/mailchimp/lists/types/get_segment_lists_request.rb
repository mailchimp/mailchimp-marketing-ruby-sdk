# frozen_string_literal: true

module Mailchimp
  module Lists
    module Types
      class GetSegmentListsRequest < Internal::Types::Model
        field :list_id, -> { String }, optional: false, nullable: false

        field :segment_id, -> { String }, optional: false, nullable: false

        field :fields, -> { String }, optional: true, nullable: false

        field :exclude_fields, -> { String }, optional: true, nullable: false

        field :include_cleaned, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :include_transactional, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :include_unsubscribed, -> { Internal::Types::Boolean }, optional: true, nullable: false
      end
    end
  end
end
