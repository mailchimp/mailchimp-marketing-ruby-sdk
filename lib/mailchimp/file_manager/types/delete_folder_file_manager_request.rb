# frozen_string_literal: true

module Mailchimp
  module FileManager
    module Types
      class DeleteFolderFileManagerRequest < Internal::Types::Model
        field :folder_id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
