# frozen_string_literal: true

module Mailchimp
  module Types
    # General stats about different groups of an A/B Split campaign. Does not return information about Multivariate
    # Campaigns.
    class CampaignReportAbSplit < Internal::Types::Model
      field :a, -> { Mailchimp::Types::CampaignReportAbSplitA }, optional: true, nullable: false

      field :b, -> { Mailchimp::Types::CampaignReportAbSplitB }, optional: true, nullable: false
    end
  end
end
