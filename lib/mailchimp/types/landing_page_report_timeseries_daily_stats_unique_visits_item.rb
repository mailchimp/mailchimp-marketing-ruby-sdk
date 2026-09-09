# frozen_string_literal: true

module Mailchimp
  module Types
    class LandingPageReportTimeseriesDailyStatsUniqueVisitsItem < Internal::Types::Model
      field :date, -> { String }, optional: true, nullable: false

      field :val, -> { Integer }, optional: true, nullable: false
    end
  end
end
