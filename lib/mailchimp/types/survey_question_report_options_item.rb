# frozen_string_literal: true

module Mailchimp
  module Types
    class SurveyQuestionReportOptionsItem < Internal::Types::Model
      field :count, -> { Integer }, optional: true, nullable: false

      field :id, -> { String }, optional: true, nullable: false

      field :label, -> { String }, optional: true, nullable: false
    end
  end
end
