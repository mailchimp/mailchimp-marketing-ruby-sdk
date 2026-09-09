# frozen_string_literal: true

module Mailchimp
  module Types
    class ReportingFacebookAdReportSummaryExtendedAt < Internal::Types::Model
      field :datetime, -> { String }, optional: true, nullable: false

      field :timezone, -> { String }, optional: true, nullable: false
    end
  end
end
