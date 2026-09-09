# frozen_string_literal: true

module Mailchimp
  module Types
    module CampaignRssOptsFrequency
      extend Mailchimp::Internal::Types::Enum

      DAILY = "daily"
      WEEKLY = "weekly"
      MONTHLY = "monthly"
    end
  end
end
