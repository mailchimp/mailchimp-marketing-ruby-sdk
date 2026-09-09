# frozen_string_literal: true

module Mailchimp
  module Types
    # Segment members whose location information is unknown.
    class SegmentTypeItemIPGeoUnknown < Internal::Types::Model
      field :field, -> { Mailchimp::Types::SegmentTypeItemIPGeoUnknownField }, optional: false, nullable: false

      field :op, -> { Mailchimp::Types::SegmentTypeItemIPGeoUnknownOp }, optional: false, nullable: false
    end
  end
end
