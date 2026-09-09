# frozen_string_literal: true

module Mailchimp
  module Types
    # Segment by VIP status.
    class SegmentTypeItemVip < Internal::Types::Model
      field :field, -> { Mailchimp::Types::SegmentTypeItemVipField }, optional: false, nullable: false

      field :op, -> { Mailchimp::Types::SegmentTypeItemVipOp }, optional: false, nullable: false
    end
  end
end
