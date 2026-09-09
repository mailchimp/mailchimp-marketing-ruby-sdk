# frozen_string_literal: true

module Mailchimp
  module Surveys
    module Types
      class CreateListSurveyActionPublishSurveysRequest < Internal::Types::Model
        field :list_id, -> { String }, optional: false, nullable: false

        field :survey_id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
