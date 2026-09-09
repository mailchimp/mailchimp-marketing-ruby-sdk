# frozen_string_literal: true

module Mailchimp
  module Types
    # Segment by a specific geographic region.
    class SegmentTypeItemIPGeoIn < Internal::Types::Model
      field :addr, -> { String }, optional: false, nullable: false

      field :field, -> { Mailchimp::Types::SegmentTypeItemIPGeoInField }, optional: false, nullable: false

      field :lat, -> { String }, optional: false, nullable: false

      field :lng, -> { String }, optional: false, nullable: false

      field :op, -> { Mailchimp::Types::SegmentTypeItemIPGeoInOp }, optional: false, nullable: false

      field :value, -> { Integer }, optional: false, nullable: false
    end
  end
end
