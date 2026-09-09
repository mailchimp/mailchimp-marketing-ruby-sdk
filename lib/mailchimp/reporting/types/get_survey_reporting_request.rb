# frozen_string_literal: true

module Mailchimp
  module Reporting
    module Types
      class GetSurveyReportingRequest < Internal::Types::Model
        field :survey_id, -> { String }, optional: false, nullable: false

        field :fields, -> { String }, optional: true, nullable: false

        field :exclude_fields, -> { String }, optional: true, nullable: false
      end
    end
  end
end
