# frozen_string_literal: true

module Mailchimp
  module Templates
    module Types
      # Default content for a template.
      class ListDefaultContentTemplatesResponse < Internal::Types::Model
        field :links, -> { Internal::Types::Array[Mailchimp::Templates::Types::ListDefaultContentTemplatesResponseLinksItem] }, optional: true, nullable: false, api_name: "_links"

        field :sections, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false
      end
    end
  end
end
