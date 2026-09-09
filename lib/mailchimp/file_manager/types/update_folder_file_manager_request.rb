# frozen_string_literal: true

module Mailchimp
  module FileManager
    module Types
      class UpdateFolderFileManagerRequest < Internal::Types::Model
        field :folder_id, -> { String }, optional: false, nullable: false

        field :name, -> { String }, optional: false, nullable: false
      end
    end
  end
end
