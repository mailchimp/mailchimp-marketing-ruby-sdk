# frozen_string_literal: true

module Mailchimp
  module Templates
    module Types
      class UpdateTemplatesRequest < Internal::Types::Model
        field :template_id, -> { String }, optional: false, nullable: false

        field :folder_id, -> { String }, optional: true, nullable: false

        field :html, -> { String }, optional: true, nullable: false

        field :name, -> { String }, optional: true, nullable: false
      end
    end
  end
end
