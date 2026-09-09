# frozen_string_literal: true

module Mailchimp
  module Templates
    module Types
      class ListDefaultContentTemplatesRequest < Internal::Types::Model
        field :template_id, -> { String }, optional: false, nullable: false

        field :fields, -> { String }, optional: true, nullable: false

        field :exclude_fields, -> { String }, optional: true, nullable: false
      end
    end
  end
end
