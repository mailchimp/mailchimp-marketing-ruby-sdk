# frozen_string_literal: true

module Mailchimp
  module FileManager
    module Types
      class DeleteFileFileManagerRequest < Internal::Types::Model
        field :file_id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
