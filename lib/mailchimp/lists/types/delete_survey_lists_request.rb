# frozen_string_literal: true

module Mailchimp
  module Lists
    module Types
      class DeleteSurveyListsRequest < Internal::Types::Model
        field :list_id, -> { String }, optional: false, nullable: false

        field :survey_id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
