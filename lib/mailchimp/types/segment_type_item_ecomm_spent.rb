# frozen_string_literal: true

module Mailchimp
  module Types
    # Segment by amount spent on a single order or across all orders.
    class SegmentTypeItemEcommSpent < Internal::Types::Model
      field :field, -> { Mailchimp::Types::SegmentTypeItemEcommSpentField }, optional: true, nullable: false

      field :op, -> { Mailchimp::Types::SegmentTypeItemEcommSpentOp }, optional: true, nullable: false

      field :value, -> { Mailchimp::Types::SegmentTypeItemEcommSpentValue }, optional: true, nullable: false
    end
  end
end
