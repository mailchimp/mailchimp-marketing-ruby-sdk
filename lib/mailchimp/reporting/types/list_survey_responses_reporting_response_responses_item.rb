# frozen_string_literal: true

module Mailchimp
  module Reporting
    module Types
      # Survey respondent details.
      class ListSurveyResponsesReportingResponseResponsesItem < Internal::Types::Model
        field :contact, -> { Mailchimp::Reporting::Types::ListSurveyResponsesReportingResponseResponsesItemContact }, optional: true, nullable: false

        field :is_new_contact, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :response_id, -> { String }, optional: true, nullable: false

        field :submitted_at, -> { String }, optional: true, nullable: false
      end
    end
  end
end
