# frozen_string_literal: true

module Mailchimp
  module Types
    # A [merge field](https://mailchimp.com/developer/marketing/docs/merge-fields/) for an audience.
    class SurveyQuestionReportMergeField < Internal::Types::Model
      field :id, -> { Integer }, optional: true, nullable: false

      field :label, -> { String }, optional: true, nullable: false

      field :type, -> { Mailchimp::Types::SurveyQuestionReportMergeFieldType }, optional: true, nullable: false
    end
  end
end
