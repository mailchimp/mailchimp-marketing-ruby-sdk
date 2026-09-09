# frozen_string_literal: true

module Mailchimp
  module CampaignFolders
    module Types
      class GetCampaignFoldersRequest < Internal::Types::Model
        field :folder_id, -> { String }, optional: false, nullable: false

        field :fields, -> { String }, optional: true, nullable: false

        field :exclude_fields, -> { String }, optional: true, nullable: false
      end
    end
  end
end
