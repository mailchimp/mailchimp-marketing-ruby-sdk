# frozen_string_literal: true

module Mailchimp
  module Types
    # Segment by language.
    class SegmentTypeItemLanguage < Internal::Types::Model
      field :field, -> { Mailchimp::Types::SegmentTypeItemLanguageField }, optional: false, nullable: false

      field :op, -> { Mailchimp::Types::SegmentTypeItemLanguageOp }, optional: false, nullable: false

      field :value, -> { String }, optional: false, nullable: false
    end
  end
end
