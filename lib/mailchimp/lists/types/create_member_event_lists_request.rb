# frozen_string_literal: true

module Mailchimp
  module Lists
    module Types
      class CreateMemberEventListsRequest < Internal::Types::Model
        field :list_id, -> { String }, optional: false, nullable: false

        field :subscriber_hash, -> { String }, optional: false, nullable: false

        field :is_syncing, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :name, -> { String }, optional: false, nullable: false

        field :occurred_at, -> { String }, optional: true, nullable: false

        field :properties, -> { Internal::Types::Hash[String, String] }, optional: true, nullable: false
      end
    end
  end
end
