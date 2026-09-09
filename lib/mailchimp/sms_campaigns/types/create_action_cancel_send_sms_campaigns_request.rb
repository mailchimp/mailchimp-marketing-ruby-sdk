# frozen_string_literal: true

module Mailchimp
  module SmsCampaigns
    module Types
      class CreateActionCancelSendSmsCampaignsRequest < Internal::Types::Model
        field :sms_campaign_id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
