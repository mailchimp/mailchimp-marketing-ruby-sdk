# frozen_string_literal: true

module Mailchimp
  module Reporting
    module Types
      # The report for a survey.
      class GetSurveyReportingResponse < Internal::Types::Model
        field :created_at, -> { String }, optional: true, nullable: false

        field :id, -> { String }, optional: true, nullable: false

        field :list_id, -> { String }, optional: true, nullable: false

        field :list_name, -> { String }, optional: true, nullable: false

        field :published_at, -> { String }, optional: true, nullable: false

        field :status, -> { Mailchimp::Reporting::Types::GetSurveyReportingResponseStatus }, optional: true, nullable: false

        field :title, -> { String }, optional: true, nullable: false

        field :total_responses, -> { Integer }, optional: true, nullable: false

        field :updated_at, -> { String }, optional: true, nullable: false

        field :url, -> { String }, optional: true, nullable: false

        field :web_id, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
