# frozen_string_literal: true

module Mailchimp
  module Types
    # E-Commerce stats for a campaign.
    class CampaignReportEcommerce < Internal::Types::Model
      field :currency_code, -> { String }, optional: true, nullable: false

      field :total_orders, -> { Integer }, optional: true, nullable: false

      field :total_revenue, -> { Integer }, optional: true, nullable: false

      field :total_spent, -> { Integer }, optional: true, nullable: false
    end
  end
end
