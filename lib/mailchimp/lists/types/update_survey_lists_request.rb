# frozen_string_literal: true

module Mailchimp
  module Lists
    module Types
      class UpdateSurveyListsRequest < Internal::Types::Model
        field :list_id, -> { String }, optional: false, nullable: false

        field :survey_id, -> { String }, optional: false, nullable: false

        field :title, -> { String }, optional: true, nullable: false

        field :is_piped_to_inbox, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :sections, -> { Internal::Types::Array[Mailchimp::Types::SurveySectionRequest] }, optional: true, nullable: false
      end
    end
  end
end
