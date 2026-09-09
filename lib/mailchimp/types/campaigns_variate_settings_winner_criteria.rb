# frozen_string_literal: true

module Mailchimp
  module Types
    module CampaignsVariateSettingsWinnerCriteria
      extend Mailchimp::Internal::Types::Enum

      OPENS = "opens"
      CLICKS = "clicks"
      MANUAL = "manual"
      TOTAL_REVENUE = "total_revenue"
    end
  end
end
