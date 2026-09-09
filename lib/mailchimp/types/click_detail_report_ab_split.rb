# frozen_string_literal: true

module Mailchimp
  module Types
    # A breakdown of clicks by different groups of an A/B Split campaign. Does not return information about Multivariate
    # Campaigns.
    class ClickDetailReportAbSplit < Internal::Types::Model
      field :a, -> { Mailchimp::Types::ClickDetailReportAbSplitA }, optional: true, nullable: false

      field :b, -> { Mailchimp::Types::ClickDetailReportAbSplitB }, optional: true, nullable: false
    end
  end
end
