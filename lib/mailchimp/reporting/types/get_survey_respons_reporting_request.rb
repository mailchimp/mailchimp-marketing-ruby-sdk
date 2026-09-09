# frozen_string_literal: true

module Mailchimp
  module Reporting
    module Types
      class GetSurveyResponsReportingRequest < Internal::Types::Model
        field :survey_id, -> { String }, optional: false, nullable: false

        field :response_id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
