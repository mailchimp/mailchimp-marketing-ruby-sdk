# frozen_string_literal: true

module Mailchimp
  module Reporting
    module Types
      # A single survey response.
      class GetSurveyResponsReportingResponse < Internal::Types::Model
        field :contact, -> { Mailchimp::Reporting::Types::GetSurveyResponsReportingResponseContact }, optional: true, nullable: false

        field :is_new_contact, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :response_id, -> { String }, optional: true, nullable: false

        field :results, -> { Internal::Types::Array[Mailchimp::Reporting::Types::GetSurveyResponsReportingResponseResultsItem] }, optional: true, nullable: false

        field :submitted_at, -> { String }, optional: true, nullable: false
      end
    end
  end
end
