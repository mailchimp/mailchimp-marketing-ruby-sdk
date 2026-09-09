# frozen_string_literal: true

module Mailchimp
  module Campaigns
    module Types
      class CreateActionTestCampaignsRequest < Internal::Types::Model
        field :campaign_id, -> { String }, optional: false, nullable: false

        field :send_type, -> { Mailchimp::Campaigns::Types::CreateActionTestCampaignsRequestSendType }, optional: false, nullable: false

        field :test_emails, -> { Internal::Types::Array[String] }, optional: false, nullable: false
      end
    end
  end
end
