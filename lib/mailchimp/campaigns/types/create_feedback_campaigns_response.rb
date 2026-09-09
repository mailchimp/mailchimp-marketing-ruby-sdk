# frozen_string_literal: true

module Mailchimp
  module Campaigns
    module Types
      # A specific feedback message from a specific campaign.
      class CreateFeedbackCampaignsResponse < Internal::Types::Model
        field :block_id, -> { Integer }, optional: true, nullable: false

        field :is_complete, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :message, -> { String }, optional: false, nullable: false
      end
    end
  end
end
