# frozen_string_literal: true

module Mailchimp
  module Templates
    module Types
      class DeleteTemplatesRequest < Internal::Types::Model
        field :template_id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
