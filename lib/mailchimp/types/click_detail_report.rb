# frozen_string_literal: true

module Mailchimp
  module Types
    # A report of links clicked in a specific campaign.
    class ClickDetailReport < Internal::Types::Model
      field :links, -> { Internal::Types::Array[Mailchimp::Types::ClickDetailReportLinksItem] }, optional: true, nullable: false, api_name: "_links"

      field :ab_split, -> { Mailchimp::Types::ClickDetailReportAbSplit }, optional: true, nullable: false

      field :campaign_id, -> { String }, optional: true, nullable: false

      field :click_percentage, -> { Integer }, optional: true, nullable: false

      field :id, -> { String }, optional: true, nullable: false

      field :last_click, -> { String }, optional: true, nullable: false

      field :total_clicks, -> { Integer }, optional: true, nullable: false

      field :unique_click_percentage, -> { Integer }, optional: true, nullable: false

      field :unique_clicks, -> { Integer }, optional: true, nullable: false

      field :url, -> { String }, optional: true, nullable: false
    end
  end
end
