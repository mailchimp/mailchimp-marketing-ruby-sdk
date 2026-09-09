# frozen_string_literal: true

module Mailchimp
  module Types
    # The average campaign statistics for your industry.
    class CampaignReportIndustryStats < Internal::Types::Model
      field :abuse_rate, -> { Integer }, optional: true, nullable: false

      field :bounce_rate, -> { Integer }, optional: true, nullable: false

      field :click_rate, -> { Integer }, optional: true, nullable: false

      field :open_rate, -> { Integer }, optional: true, nullable: false

      field :type, -> { String }, optional: true, nullable: false

      field :unopen_rate, -> { Integer }, optional: true, nullable: false

      field :unsub_rate, -> { Integer }, optional: true, nullable: false
    end
  end
end
