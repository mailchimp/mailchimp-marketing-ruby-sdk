# frozen_string_literal: true

module Mailchimp
  module Types
    # Segment by a specific country or US state.
    class SegmentTypeItemIPGeoCountryState < Internal::Types::Model
      field :field, -> { Mailchimp::Types::SegmentTypeItemIPGeoCountryStateField }, optional: false, nullable: false

      field :op, -> { Mailchimp::Types::SegmentTypeItemIPGeoCountryStateOp }, optional: false, nullable: false

      field :value, -> { String }, optional: false, nullable: false
    end
  end
end
