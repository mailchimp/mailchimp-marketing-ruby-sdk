# frozen_string_literal: true

module Mailchimp
  module Reporting
    module Types
      class ListSurveyResponsesReportingRequest < Internal::Types::Model
        field :survey_id, -> { String }, optional: false, nullable: false

        field :fields, -> { String }, optional: true, nullable: false

        field :exclude_fields, -> { String }, optional: true, nullable: false

        field :answered_question, -> { Integer }, optional: true, nullable: false

        field :chose_answer, -> { String }, optional: true, nullable: false

        field :respondent_familiarity_is, -> { Mailchimp::Reporting::Types::ListSurveyResponsesReportingRequestRespondentFamiliarityIs }, optional: true, nullable: false
      end
    end
  end
end
