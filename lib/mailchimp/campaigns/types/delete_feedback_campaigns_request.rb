# frozen_string_literal: true

module Mailchimp
  module Campaigns
    module Types
      class DeleteFeedbackCampaignsRequest < Internal::Types::Model
        field :campaign_id, -> { String }, optional: false, nullable: false

        field :feedback_id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
