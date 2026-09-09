# frozen_string_literal: true

module Mailchimp
  module Types
    class CampaignReportTimewarpItem < Internal::Types::Model
      field :bounces, -> { Integer }, optional: true, nullable: false

      field :clicks, -> { Integer }, optional: true, nullable: false

      field :gmt_offset, -> { Integer }, optional: true, nullable: false

      field :last_click, -> { String }, optional: true, nullable: false

      field :last_open, -> { String }, optional: true, nullable: false

      field :opens, -> { Integer }, optional: true, nullable: false

      field :unique_clicks, -> { Integer }, optional: true, nullable: false

      field :unique_opens, -> { Integer }, optional: true, nullable: false
    end
  end
end
