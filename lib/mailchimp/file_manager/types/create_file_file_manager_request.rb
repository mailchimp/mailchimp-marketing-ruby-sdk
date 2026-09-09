# frozen_string_literal: true

module Mailchimp
  module FileManager
    module Types
      class CreateFileFileManagerRequest < Internal::Types::Model
        field :file_data, -> { String }, optional: false, nullable: false

        field :folder_id, -> { Integer }, optional: true, nullable: false

        field :name, -> { String }, optional: false, nullable: false
      end
    end
  end
end
