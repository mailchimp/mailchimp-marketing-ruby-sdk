# frozen_string_literal: true

module Mailchimp
  module Types
    # An object describing the forwards and forward activity for the campaign.
    class CampaignReportForwards < Internal::Types::Model
      field :forwards_count, -> { Integer }, optional: true, nullable: false

      field :forwards_opens, -> { Integer }, optional: true, nullable: false
    end
  end
end
