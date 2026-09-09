# frozen_string_literal: true

module Mailchimp
  module Types
    # The clicks and visits data from the last seven days.
    class LandingPageReportTimeseriesDailyStats < Internal::Types::Model
      field :clicks, -> { Internal::Types::Array[Mailchimp::Types::LandingPageReportTimeseriesDailyStatsClicksItem] }, optional: true, nullable: false

      field :unique_visits, -> { Internal::Types::Array[Mailchimp::Types::LandingPageReportTimeseriesDailyStatsUniqueVisitsItem] }, optional: true, nullable: false

      field :visits, -> { Internal::Types::Array[Mailchimp::Types::LandingPageReportTimeseriesDailyStatsVisitsItem] }, optional: true, nullable: false
    end
  end
end
