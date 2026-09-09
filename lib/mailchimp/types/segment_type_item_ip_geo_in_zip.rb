# frozen_string_literal: true

module Mailchimp
  module Types
    # Segment by a specific US ZIP code.
    class SegmentTypeItemIPGeoInZip < Internal::Types::Model
      field :extra, -> { Integer }, optional: false, nullable: false

      field :field, -> { Mailchimp::Types::SegmentTypeItemIPGeoInZipField }, optional: false, nullable: false

      field :op, -> { Mailchimp::Types::SegmentTypeItemIPGeoInZipOp }, optional: false, nullable: false

      field :value, -> { Integer }, optional: false, nullable: false
    end
  end
end
