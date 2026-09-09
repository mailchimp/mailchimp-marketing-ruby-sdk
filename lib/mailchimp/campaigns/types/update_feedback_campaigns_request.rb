# frozen_string_literal: true

module Mailchimp
  module Campaigns
    module Types
      class UpdateFeedbackCampaignsRequest < Internal::Types::Model
        field :campaign_id, -> { String }, optional: false, nullable: false

        field :feedback_id, -> { String }, optional: false, nullable: false

        field :block_id, -> { Integer }, optional: true, nullable: false

        field :is_complete, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :message, -> { String }, optional: true, nullable: false
      end
    end
  end
end
