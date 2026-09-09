# frozen_string_literal: true

module Mailchimp
  module TemplateFolders
    module Types
      # A folder used to organize templates.
      class CreateTemplateFoldersResponse < Internal::Types::Model
        field :links, -> { Internal::Types::Array[Mailchimp::TemplateFolders::Types::CreateTemplateFoldersResponseLinksItem] }, optional: true, nullable: false, api_name: "_links"

        field :count, -> { Integer }, optional: true, nullable: false

        field :id, -> { String }, optional: true, nullable: false

        field :name, -> { String }, optional: true, nullable: false
      end
    end
  end
end
