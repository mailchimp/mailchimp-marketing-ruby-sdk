# frozen_string_literal: true

module Mailchimp
  module CampaignFolders
    module Types
      class UpdateCampaignFoldersRequest < Internal::Types::Model
        field :folder_id, -> { String }, optional: false, nullable: false

        field :name, -> { String }, optional: false, nullable: false
      end
    end
  end
end
