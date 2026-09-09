# frozen_string_literal: true

module Mailchimp
  module Campaigns
    module Types
      # The schedule for sending the RSS Campaign.
      class UpdateCampaignsRequestRssOptsSchedule < Internal::Types::Model
        field :daily_send, -> { Mailchimp::Campaigns::Types::UpdateCampaignsRequestRssOptsScheduleDailySend }, optional: true, nullable: false

        field :hour, -> { Integer }, optional: true, nullable: false

        field :monthly_send_date, -> { Integer }, optional: true, nullable: false

        field :weekly_send_day, -> { Mailchimp::Campaigns::Types::UpdateCampaignsRequestRssOptsScheduleWeeklySendDay }, optional: true, nullable: false
      end
    end
  end
end
