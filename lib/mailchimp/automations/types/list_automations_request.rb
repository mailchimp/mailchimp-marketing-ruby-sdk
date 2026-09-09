# frozen_string_literal: true

module Mailchimp
  module Automations
    module Types
      class ListAutomationsRequest < Internal::Types::Model
        field :count, -> { Integer }, optional: true, nullable: false

        field :offset, -> { Integer }, optional: true, nullable: false

        field :fields, -> { String }, optional: true, nullable: false

        field :exclude_fields, -> { String }, optional: true, nullable: false

        field :before_create_time, -> { String }, optional: true, nullable: false

        field :since_create_time, -> { String }, optional: true, nullable: false

        field :before_start_time, -> { String }, optional: true, nullable: false

        field :since_start_time, -> { String }, optional: true, nullable: false

        field :status, -> { Mailchimp::Automations::Types::ListAutomationsRequestStatus }, optional: true, nullable: false
      end
    end
  end
end
