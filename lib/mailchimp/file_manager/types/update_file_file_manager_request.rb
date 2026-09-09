# frozen_string_literal: true

module Mailchimp
  module FileManager
    module Types
      class UpdateFileFileManagerRequest < Internal::Types::Model
        field :file_id, -> { String }, optional: false, nullable: false

        field :folder_id, -> { Integer }, optional: true, nullable: false

        field :name, -> { String }, optional: true, nullable: false
      end
    end
  end
end
