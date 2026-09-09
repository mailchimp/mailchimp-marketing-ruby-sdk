# frozen_string_literal: true

module Mailchimp
  module Types
    class CampaignReportTimeseriesItem < Internal::Types::Model
      field :emails_sent, -> { Integer }, optional: true, nullable: false

      field :proxy_excluded_unique_opens, -> { Integer }, optional: true, nullable: false

      field :recipients_clicks, -> { Integer }, optional: true, nullable: false

      field :timestamp, -> { String }, optional: true, nullable: false

      field :unique_opens, -> { Integer }, optional: true, nullable: false
    end
  end
end
