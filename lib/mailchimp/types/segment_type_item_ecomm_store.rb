# frozen_string_literal: true

module Mailchimp
  module Types
    # Segment by purchases from a specific store.
    class SegmentTypeItemEcommStore < Internal::Types::Model
      field :field, -> { Mailchimp::Types::SegmentTypeItemEcommStoreField }, optional: true, nullable: false

      field :op, -> { Mailchimp::Types::SegmentTypeItemEcommStoreOp }, optional: true, nullable: false

      field :value, -> { String }, optional: true, nullable: false
    end
  end
end
