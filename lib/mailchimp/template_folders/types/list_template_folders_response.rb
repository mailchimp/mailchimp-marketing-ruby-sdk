# frozen_string_literal: true

module Mailchimp
  module TemplateFolders
    module Types
      # A list of template folders
      class ListTemplateFoldersResponse < Internal::Types::Model
        field :links, -> { Internal::Types::Array[Mailchimp::TemplateFolders::Types::ListTemplateFoldersResponseLinksItem] }, optional: true, nullable: false, api_name: "_links"

        field :folders, -> { Internal::Types::Array[Mailchimp::TemplateFolders::Types::ListTemplateFoldersResponseFoldersItem] }, optional: true, nullable: false

        field :total_items, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
