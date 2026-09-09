# frozen_string_literal: true

module Mailchimp
  module Lists
    module Types
      # A single marketing permission a subscriber has either opted-in to or opted-out of.
      class UpdateMemberListsRequestMarketingPermissionsItem < Internal::Types::Model
        field :enabled, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :marketing_permission_id, -> { String }, optional: true, nullable: false
      end
    end
  end
end
