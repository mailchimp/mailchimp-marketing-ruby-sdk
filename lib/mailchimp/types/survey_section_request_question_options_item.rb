# frozen_string_literal: true

module Mailchimp
  module Types
    class SurveySectionRequestQuestionOptionsItem < Internal::Types::Model
      field :label, -> { String }, optional: false, nullable: false

      field :value, -> { String }, optional: false, nullable: false
    end
  end
end
