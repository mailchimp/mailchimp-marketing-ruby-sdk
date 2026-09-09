# frozen_string_literal: true

module Mailchimp
  module Types
    # The average campaign statistics for your list. This won't be present if we haven't calculated it yet for this
    # list.
    class CampaignReportListStats < Internal::Types::Model
      field :click_rate, -> { Integer }, optional: true, nullable: false

      field :open_rate, -> { Integer }, optional: true, nullable: false

      field :proxy_excluded_open_rate, -> { Integer }, optional: true, nullable: false

      field :sub_rate, -> { Integer }, optional: true, nullable: false

      field :unsub_rate, -> { Integer }, optional: true, nullable: false
    end
  end
end
