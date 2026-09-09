# frozen_string_literal: true

module Mailchimp
  module Types
    class LandingPageReportTimeseries < Internal::Types::Model
      field :daily_stats, -> { Mailchimp::Types::LandingPageReportTimeseriesDailyStats }, optional: true, nullable: false

      field :weekly_stats, -> { Mailchimp::Types::LandingPageReportTimeseriesWeeklyStats }, optional: true, nullable: false
    end
  end
end
