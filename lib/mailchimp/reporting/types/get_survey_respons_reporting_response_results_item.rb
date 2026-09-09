# frozen_string_literal: true

module Mailchimp
  module Reporting
    module Types
      # A single question and the response to that question.
      class GetSurveyResponsReportingResponseResultsItem < Internal::Types::Model
        field :answer, -> { String }, optional: true, nullable: false

        field :query, -> { String }, optional: true, nullable: false

        field :question_id, -> { String }, optional: true, nullable: false

        field :question_type, -> { Mailchimp::Reporting::Types::GetSurveyResponsReportingResponseResultsItemQuestionType }, optional: true, nullable: false
      end
    end
  end
end
