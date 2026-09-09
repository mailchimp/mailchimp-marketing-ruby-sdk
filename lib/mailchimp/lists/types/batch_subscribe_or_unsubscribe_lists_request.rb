# frozen_string_literal: true

module Mailchimp
  module Lists
    module Types
      class BatchSubscribeOrUnsubscribeListsRequest < Internal::Types::Model
        field :list_id, -> { String }, optional: false, nullable: false

        field :skip_merge_validation, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :skip_duplicate_check, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :members, -> { Internal::Types::Array[Mailchimp::Lists::Types::BatchSubscribeOrUnsubscribeListsRequestMembersItem] }, optional: false, nullable: false

        field :sync_tags, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :update_existing, -> { Internal::Types::Boolean }, optional: true, nullable: false
      end
    end
  end
end
