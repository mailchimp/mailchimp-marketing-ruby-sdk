# frozen_string_literal: true

module Mailchimp
  module FileManager
    module Types
      # A list of all folders in the File Manager.
      class ListFoldersFileManagerResponse < Internal::Types::Model
        field :links, -> { Internal::Types::Array[Mailchimp::FileManager::Types::ListFoldersFileManagerResponseLinksItem] }, optional: true, nullable: false, api_name: "_links"

        field :folders, -> { Internal::Types::Array[Mailchimp::FileManager::Types::ListFoldersFileManagerResponseFoldersItem] }, optional: true, nullable: false

        field :total_items, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
