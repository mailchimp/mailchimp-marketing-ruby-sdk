# frozen_string_literal: true

module Mailchimp
  module Campaigns
    module Types
      module CreateCampaignsRequestRssOptsFrequency
        extend Mailchimp::Internal::Types::Enum

        DAILY = "daily"
        WEEKLY = "weekly"
        MONTHLY = "monthly"
      end
    end
  end
end
