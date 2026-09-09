# frozen_string_literal: true

module Mailchimp
  module Reporting
    module Types
      class ListSurveyQuestionAnswersReportingRequest < Internal::Types::Model
        field :survey_id, -> { String }, optional: false, nullable: false

        field :question_id, -> { String }, optional: false, nullable: false

        field :fields, -> { String }, optional: true, nullable: false

        field :exclude_fields, -> { String }, optional: true, nullable: false

        field :respondent_familiarity_is, -> { Mailchimp::Reporting::Types::ListSurveyQuestionAnswersReportingRequestRespondentFamiliarityIs }, optional: true, nullable: false
      end
    end
  end
end
