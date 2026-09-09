# frozen_string_literal: true

module Mailchimp
  module Types
    # Segment by purchases in specific items or categories.
    class SegmentTypeItemEcommCategory < Internal::Types::Model
      field :field, -> { Mailchimp::Types::SegmentTypeItemEcommCategoryField }, optional: true, nullable: false

      field :op, -> { Mailchimp::Types::SegmentTypeItemEcommCategoryOp }, optional: true, nullable: false

      field :value, -> { String }, optional: true, nullable: false
    end
  end
end
