# frozen_string_literal: true

module Mailchimp
  module Types
    # A summary of opens and clicks for sent campaigns.
    class AutomationWorkflowReportSummary < Internal::Types::Model
      field :click_rate, -> { Integer }, optional: true, nullable: false

      field :clicks, -> { Integer }, optional: true, nullable: false

      field :open_rate, -> { Integer }, optional: true, nullable: false

      field :opens, -> { Integer }, optional: true, nullable: false

      field :subscriber_clicks, -> { Integer }, optional: true, nullable: false

      field :unique_opens, -> { Integer }, optional: true, nullable: false
    end
  end
end
