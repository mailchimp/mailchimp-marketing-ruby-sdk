# frozen_string_literal: true

module Mailchimp
  module Lists
    module Types
      class CreateMemberTagListsRequest < Internal::Types::Model
        field :list_id, -> { String }, optional: false, nullable: false

        field :subscriber_hash, -> { String }, optional: false, nullable: false

        field :is_syncing, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :tags, -> { Internal::Types::Array[Mailchimp::Lists::Types::CreateMemberTagListsRequestTagsItem] }, optional: false, nullable: false
      end
    end
  end
end
