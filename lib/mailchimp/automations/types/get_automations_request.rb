# frozen_string_literal: true

module Mailchimp
  module Automations
    module Types
      class GetAutomationsRequest < Internal::Types::Model
        field :workflow_id, -> { String }, optional: false, nullable: false

        field :fields, -> { String }, optional: true, nullable: false

        field :exclude_fields, -> { String }, optional: true, nullable: false
      end
    end
  end
end
