# frozen_string_literal: true

module Mailchimp
  module Types
    # For email question types, how many are new, known, or unknown contacts.
    class SurveyQuestionReportContactCounts < Internal::Types::Model
      field :known, -> { Integer }, optional: true, nullable: false

      field :new, -> { Integer }, optional: true, nullable: false

      field :unknown, -> { Integer }, optional: true, nullable: false
    end
  end
end
