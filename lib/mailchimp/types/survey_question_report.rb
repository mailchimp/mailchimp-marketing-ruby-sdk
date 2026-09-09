# frozen_string_literal: true

module Mailchimp
  module Types
    # The details of a survey question's report.
    class SurveyQuestionReport < Internal::Types::Model
      field :average_rating, -> { Integer }, optional: true, nullable: false

      field :contact_counts, -> { Mailchimp::Types::SurveyQuestionReportContactCounts }, optional: true, nullable: false

      field :has_other, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :id, -> { String }, optional: true, nullable: false

      field :is_required, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :merge_field, -> { Mailchimp::Types::SurveyQuestionReportMergeField }, optional: true, nullable: false

      field :options, -> { Internal::Types::Array[Mailchimp::Types::SurveyQuestionReportOptionsItem] }, optional: true, nullable: false

      field :other_label, -> { String }, optional: true, nullable: false

      field :placeholder_label, -> { String }, optional: true, nullable: false

      field :query, -> { String }, optional: true, nullable: false

      field :range_high_label, -> { String }, optional: true, nullable: false

      field :range_low_label, -> { String }, optional: true, nullable: false

      field :subscribe_checkbox_enabled, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :subscribe_checkbox_label, -> { String }, optional: true, nullable: false

      field :survey_id, -> { String }, optional: true, nullable: false

      field :total_responses, -> { Integer }, optional: true, nullable: false

      field :type, -> { Mailchimp::Types::SurveyQuestionReportType }, optional: true, nullable: false
    end
  end
end
