# frozen_string_literal: true

module Mailchimp
  module Types
    # Segment by interaction with a SurveyMonkey survey.
    class SegmentTypeItemSurveyMonkey < Internal::Types::Model
      field :field, -> { Mailchimp::Types::SegmentTypeItemSurveyMonkeyField }, optional: false, nullable: false

      field :op, -> { Mailchimp::Types::SegmentTypeItemSurveyMonkeyOp }, optional: false, nullable: false

      field :value, -> { String }, optional: false, nullable: false
    end
  end
end
