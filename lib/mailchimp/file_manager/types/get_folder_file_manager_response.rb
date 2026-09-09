# frozen_string_literal: true

module Mailchimp
  module FileManager
    module Types
      # An individual folder listed in the File Manager.
      class GetFolderFileManagerResponse < Internal::Types::Model
        field :links, -> { Internal::Types::Array[Mailchimp::FileManager::Types::GetFolderFileManagerResponseLinksItem] }, optional: true, nullable: false, api_name: "_links"

        field :created_at, -> { String }, optional: true, nullable: false

        field :created_by, -> { String }, optional: true, nullable: false

        field :file_count, -> { Integer }, optional: true, nullable: false

        field :id, -> { Integer }, optional: true, nullable: false

        field :name, -> { String }, optional: true, nullable: false
      end
    end
  end
end
