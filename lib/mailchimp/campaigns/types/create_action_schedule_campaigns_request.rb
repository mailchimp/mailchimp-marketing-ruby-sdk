# frozen_string_literal: true

module Mailchimp
  module Campaigns
    module Types
      class CreateActionScheduleCampaignsRequest < Internal::Types::Model
        field :campaign_id, -> { String }, optional: false, nullable: false

        field :batch_delivery, -> { Mailchimp::Campaigns::Types::CreateActionScheduleCampaignsRequestBatchDelivery }, optional: true, nullable: false

        field :schedule_time, -> { String }, optional: false, nullable: false

        field :timewarp, -> { Internal::Types::Boolean }, optional: true, nullable: false
      end
    end
  end
end
