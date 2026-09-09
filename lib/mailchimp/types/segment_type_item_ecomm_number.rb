# frozen_string_literal: true

module Mailchimp
  module Types
    # Segment by average spent total, number of orders, total number of products purchased, or average number of
    # products per order.
    class SegmentTypeItemEcommNumber < Internal::Types::Model
      field :field, -> { Mailchimp::Types::SegmentTypeItemEcommNumberField }, optional: false, nullable: false

      field :op, -> { Mailchimp::Types::SegmentTypeItemEcommNumberOp }, optional: false, nullable: false

      field :value, -> { Mailchimp::Types::SegmentTypeItemEcommNumberValue }, optional: false, nullable: false
    end
  end
end
