# frozen_string_literal: true

module Mailchimp
  module Types
    # Segment by interaction with an Automation workflow.
    class SegmentTypeItemAutomation < Internal::Types::Model
      field :field, -> { Mailchimp::Types::SegmentTypeItemAutomationField }, optional: false, nullable: false

      field :op, -> { Mailchimp::Types::SegmentTypeItemAutomationOp }, optional: false, nullable: false

      field :value, -> { String }, optional: false, nullable: false
    end
  end
end
