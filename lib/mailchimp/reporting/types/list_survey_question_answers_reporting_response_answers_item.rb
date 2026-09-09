# frozen_string_literal: true

module Mailchimp
  module Reporting
    module Types
      # The details of a survey question's answer.
      class ListSurveyQuestionAnswersReportingResponseAnswersItem < Internal::Types::Model
        field :contact, -> { Mailchimp::Reporting::Types::ListSurveyQuestionAnswersReportingResponseAnswersItemContact }, optional: true, nullable: false

        field :id, -> { String }, optional: true, nullable: false

        field :is_new_contact, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :response_id, -> { String }, optional: true, nullable: false

        field :submitted_at, -> { String }, optional: true, nullable: false

        field :value, -> { String }, optional: true, nullable: false
      end
    end
  end
end
