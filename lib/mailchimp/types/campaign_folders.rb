# frozen_string_literal: true

module Mailchimp
  module Types
    # A list of campaign folders
    class CampaignFolders < Internal::Types::Model
      field :links, -> { Internal::Types::Array[Mailchimp::Types::CampaignFoldersLinksItem] }, optional: true, nullable: false, api_name: "_links"

      field :folders, -> { Internal::Types::Array[Mailchimp::Types::CampaignFoldersFoldersItem] }, optional: true, nullable: false

      field :total_items, -> { Integer }, optional: true, nullable: false
    end
  end
end
