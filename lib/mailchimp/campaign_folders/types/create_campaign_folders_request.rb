# frozen_string_literal: true

module Mailchimp
  module CampaignFolders
    module Types
      class CreateCampaignFoldersRequest < Internal::Types::Model
        field :name, -> { String }, optional: false, nullable: false
      end
    end
  end
end
