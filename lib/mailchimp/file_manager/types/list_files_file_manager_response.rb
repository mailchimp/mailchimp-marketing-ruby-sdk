# frozen_string_literal: true

module Mailchimp
  module FileManager
    module Types
      # A list of available images and files stored in the File Manager for the account.
      class ListFilesFileManagerResponse < Internal::Types::Model
        field :links, -> { Internal::Types::Array[Mailchimp::FileManager::Types::ListFilesFileManagerResponseLinksItem] }, optional: true, nullable: false, api_name: "_links"

        field :files, -> { Internal::Types::Array[Mailchimp::Types::GalleryFile] }, optional: true, nullable: false

        field :total_file_size, -> { Integer }, optional: true, nullable: false

        field :total_items, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
