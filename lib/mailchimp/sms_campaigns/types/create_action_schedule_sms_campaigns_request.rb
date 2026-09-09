# frozen_string_literal: true

module Mailchimp
  module SmsCampaigns
    module Types
      class CreateActionScheduleSmsCampaignsRequest < Internal::Types::Model
        field :sms_campaign_id, -> { String }, optional: false, nullable: false

        field :schedule_time, -> { String }, optional: false, nullable: false
      end
    end
  end
end
