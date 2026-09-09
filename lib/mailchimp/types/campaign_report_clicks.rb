# frozen_string_literal: true

module Mailchimp
  module Types
    # An object describing the click activity for the campaign.
    class CampaignReportClicks < Internal::Types::Model
      field :click_rate, -> { Integer }, optional: true, nullable: false

      field :clicks_total, -> { Integer }, optional: true, nullable: false

      field :last_click, -> { String }, optional: true, nullable: false

      field :unique_clicks, -> { Integer }, optional: true, nullable: false

      field :unique_subscriber_clicks, -> { Integer }, optional: true, nullable: false
    end
  end
end
