# frozen_string_literal: true

module Mailchimp
  module Types
    # Stats for Campaign A.
    class CampaignReportAbSplitA < Internal::Types::Model
      field :abuse_reports, -> { Integer }, optional: true, nullable: false

      field :bounces, -> { Integer }, optional: true, nullable: false

      field :forwards, -> { Integer }, optional: true, nullable: false

      field :forwards_opens, -> { Integer }, optional: true, nullable: false

      field :last_open, -> { String }, optional: true, nullable: false

      field :opens, -> { Integer }, optional: true, nullable: false

      field :recipient_clicks, -> { Integer }, optional: true, nullable: false

      field :unique_opens, -> { Integer }, optional: true, nullable: false

      field :unsubs, -> { Integer }, optional: true, nullable: false
    end
  end
end
