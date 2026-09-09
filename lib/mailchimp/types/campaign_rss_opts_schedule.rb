# frozen_string_literal: true

module Mailchimp
  module Types
    # The schedule for sending the RSS Campaign.
    class CampaignRssOptsSchedule < Internal::Types::Model
      field :daily_send, -> { Mailchimp::Types::CampaignRssOptsScheduleDailySend }, optional: true, nullable: false

      field :hour, -> { Integer }, optional: true, nullable: false

      field :monthly_send_date, -> { Integer }, optional: true, nullable: false

      field :weekly_send_day, -> { Mailchimp::Types::CampaignRssOptsScheduleWeeklySendDay }, optional: true, nullable: false
    end
  end
end
