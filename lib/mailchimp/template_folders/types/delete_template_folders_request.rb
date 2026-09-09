# frozen_string_literal: true

module Mailchimp
  module TemplateFolders
    module Types
      class DeleteTemplateFoldersRequest < Internal::Types::Model
        field :folder_id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
