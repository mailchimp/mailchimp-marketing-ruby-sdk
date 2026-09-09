# frozen_string_literal: true

module Mailchimp
  module Lists
    module Types
      class CreateSurveyListsRequest < Internal::Types::Model
        field :list_id, -> { String }, optional: false, nullable: false

        field :title, -> { String }, optional: true, nullable: false

        field :sections, -> { Internal::Types::Array[Mailchimp::Types::SurveySectionRequest] }, optional: true, nullable: false
      end
    end
  end
end
