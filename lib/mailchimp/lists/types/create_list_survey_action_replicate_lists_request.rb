# frozen_string_literal: true

module Mailchimp
  module Lists
    module Types
      class CreateListSurveyActionReplicateListsRequest < Internal::Types::Model
        field :list_id_path_param, -> { String }, optional: false, nullable: false, api_name: "list_idPathParam"

        field :survey_id, -> { String }, optional: false, nullable: false

        field :title, -> { String }, optional: true, nullable: false

        field :list_id, -> { String }, optional: true, nullable: false
      end
    end
  end
end
