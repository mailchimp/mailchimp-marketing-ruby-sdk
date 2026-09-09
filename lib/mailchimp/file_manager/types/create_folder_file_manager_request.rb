# frozen_string_literal: true

module Mailchimp
  module FileManager
    module Types
      class CreateFolderFileManagerRequest < Internal::Types::Model
        field :name, -> { String }, optional: false, nullable: false
      end
    end
  end
end
