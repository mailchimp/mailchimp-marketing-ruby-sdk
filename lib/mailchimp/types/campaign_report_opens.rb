# frozen_string_literal: true

module Mailchimp
  module Types
    # An object describing the open activity for the campaign.
    class CampaignReportOpens < Internal::Types::Model
      field :last_open, -> { String }, optional: true, nullable: false

      field :open_rate, -> { Integer }, optional: true, nullable: false

      field :opens_total, -> { Integer }, optional: true, nullable: false

      field :proxy_excluded_open_rate, -> { Integer }, optional: true, nullable: false

      field :proxy_excluded_opens, -> { Integer }, optional: true, nullable: false

      field :proxy_excluded_unique_opens, -> { Integer }, optional: true, nullable: false

      field :unique_opens, -> { Integer }, optional: true, nullable: false
    end
  end
end
