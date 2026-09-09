# frozen_string_literal: true

module Mailchimp
  module FileManager
    module Types
      class ListFolderFilesFileManagerRequest < Internal::Types::Model
        field :folder_id, -> { String }, optional: false, nullable: false

        field :fields, -> { String }, optional: true, nullable: false

        field :exclude_fields, -> { String }, optional: true, nullable: false

        field :count, -> { Integer }, optional: true, nullable: false

        field :offset, -> { Integer }, optional: true, nullable: false

        field :type, -> { String }, optional: true, nullable: false

        field :created_by, -> { String }, optional: true, nullable: false

        field :before_created_at, -> { String }, optional: true, nullable: false

        field :since_created_at, -> { String }, optional: true, nullable: false

        field :sort_field, -> { Mailchimp::FileManager::Types::ListFolderFilesFileManagerRequestSortField }, optional: true, nullable: false

        field :sort_dir, -> { Mailchimp::FileManager::Types::ListFolderFilesFileManagerRequestSortDir }, optional: true, nullable: false
      end
    end
  end
end
