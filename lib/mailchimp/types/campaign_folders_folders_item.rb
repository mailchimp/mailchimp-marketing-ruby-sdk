# frozen_string_literal: true

module Mailchimp
  module Types
    # A folder used to organize campaigns.
    class CampaignFoldersFoldersItem < Internal::Types::Model
      field :links, -> { Internal::Types::Array[Mailchimp::Types::CampaignFoldersFoldersItemLinksItem] }, optional: true, nullable: false, api_name: "_links"

      field :count, -> { Integer }, optional: true, nullable: false

      field :id, -> { String }, optional: true, nullable: false

      field :name, -> { String }, optional: true, nullable: false
    end
  end
end
