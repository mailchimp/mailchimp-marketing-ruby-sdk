# frozen_string_literal: true

module Mailchimp
  module Templates
    module Types
      # A list an account's available templates.
      class ListTemplatesResponse < Internal::Types::Model
        field :links, -> { Internal::Types::Array[Mailchimp::Templates::Types::ListTemplatesResponseLinksItem] }, optional: true, nullable: false, api_name: "_links"

        field :templates, -> { Internal::Types::Array[Mailchimp::Types::TemplateInstance] }, optional: true, nullable: false

        field :total_items, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
