# frozen_string_literal: true

module Mailchimp
  module Types
    # An object describing the bounce summary for the campaign.
    class CampaignReportBounces < Internal::Types::Model
      field :hard_bounces, -> { Integer }, optional: true, nullable: false

      field :soft_bounces, -> { Integer }, optional: true, nullable: false

      field :syntax_errors, -> { Integer }, optional: true, nullable: false
    end
  end
end
