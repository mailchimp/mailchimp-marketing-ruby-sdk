# frozen_string_literal: true

module Mailchimp
  module Types
    # Segment by a specific US ZIP code.
    class SegmentTypeItemIPGeoZip < Internal::Types::Model
      field :field, -> { Mailchimp::Types::SegmentTypeItemIPGeoZipField }, optional: false, nullable: false

      field :op, -> { Mailchimp::Types::SegmentTypeItemIPGeoZipOp }, optional: false, nullable: false

      field :value, -> { Integer }, optional: false, nullable: false
    end
  end
end
