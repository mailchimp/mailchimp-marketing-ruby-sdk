# frozen_string_literal: true

module Mailchimp
  module CampaignFolders
    module Types
      class DeleteCampaignFoldersRequest < Internal::Types::Model
        field :folder_id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
