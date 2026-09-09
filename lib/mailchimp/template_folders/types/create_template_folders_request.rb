# frozen_string_literal: true

module Mailchimp
  module TemplateFolders
    module Types
      class CreateTemplateFoldersRequest < Internal::Types::Model
        field :name, -> { String }, optional: false, nullable: false
      end
    end
  end
end
