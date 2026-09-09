# frozen_string_literal: true

module Mailchimp
  module Types
    # The clicks and visits data from the last five weeks.
    class LandingPageReportTimeseriesWeeklyStats < Internal::Types::Model
      field :clicks, -> { Internal::Types::Array[Mailchimp::Types::LandingPageReportTimeseriesWeeklyStatsClicksItem] }, optional: true, nullable: false

      field :unique_visits, -> { Internal::Types::Array[Mailchimp::Types::LandingPageReportTimeseriesWeeklyStatsUniqueVisitsItem] }, optional: true, nullable: false

      field :visits, -> { Internal::Types::Array[Mailchimp::Types::LandingPageReportTimeseriesWeeklyStatsVisitsItem] }, optional: true, nullable: false
    end
  end
end
