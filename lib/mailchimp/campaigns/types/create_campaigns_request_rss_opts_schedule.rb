# frozen_string_literal: true

module Mailchimp
  module Campaigns
    module Types
      # The schedule for sending the RSS Campaign.
      class CreateCampaignsRequestRssOptsSchedule < Internal::Types::Model
        field :daily_send, -> { Mailchimp::Campaigns::Types::CreateCampaignsRequestRssOptsScheduleDailySend }, optional: true, nullable: false

        field :hour, -> { Integer }, optional: true, nullable: false

        field :monthly_send_date, -> { Integer }, optional: true, nullable: false

        field :weekly_send_day, -> { Mailchimp::Campaigns::Types::CreateCampaignsRequestRssOptsScheduleWeeklySendDay }, optional: true, nullable: false
      end
    end
  end
end
