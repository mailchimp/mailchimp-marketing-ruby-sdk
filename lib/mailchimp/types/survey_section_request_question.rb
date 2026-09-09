# frozen_string_literal: true

module Mailchimp
  module Types
    # A survey question. On PATCH, include the question id to update it. Omitting question id creates a new question; it
    # does not delete an existing one. To delete a question, omit its section from the sections array.
    class SurveySectionRequestQuestion < Internal::Types::Model
      field :id, -> { String }, optional: true, nullable: false

      field :query, -> { String }, optional: false, nullable: false

      field :type, -> { Mailchimp::Types::SurveySectionRequestQuestionType }, optional: false, nullable: false

      field :is_required, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :has_other, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :other_label, -> { String }, optional: true, nullable: false

      field :range_low_label, -> { String }, optional: true, nullable: false

      field :range_high_label, -> { String }, optional: true, nullable: false

      field :range_low_value, -> { Integer }, optional: true, nullable: false

      field :range_high_value, -> { Integer }, optional: true, nullable: false

      field :range_presentation, -> { String }, optional: true, nullable: false

      field :placeholder_label, -> { String }, optional: true, nullable: false

      field :subscribe_checkbox_enabled, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :subscribe_checkbox_label, -> { String }, optional: true, nullable: false

      field :should_auto_tag, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :options, -> { Internal::Types::Array[Mailchimp::Types::SurveySectionRequestQuestionOptionsItem] }, optional: true, nullable: false

      field :merge_field, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false
    end
  end
end
