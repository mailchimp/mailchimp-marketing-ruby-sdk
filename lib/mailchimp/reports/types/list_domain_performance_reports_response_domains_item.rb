# frozen_string_literal: true

module Mailchimp
  module Reports
    module Types
      # A single email domain's performance
      class ListDomainPerformanceReportsResponseDomainsItem < Internal::Types::Model
        field :bounces, -> { Integer }, optional: true, nullable: false

        field :bounces_pct, -> { Integer }, optional: true, nullable: false

        field :clicks, -> { Integer }, optional: true, nullable: false

        field :clicks_pct, -> { Integer }, optional: true, nullable: false

        field :delivered, -> { Integer }, optional: true, nullable: false

        field :domain, -> { String }, optional: true, nullable: false

        field :emails_pct, -> { Integer }, optional: true, nullable: false

        field :emails_sent, -> { Integer }, optional: true, nullable: false

        field :opens, -> { Integer }, optional: true, nullable: false

        field :opens_pct, -> { Integer }, optional: true, nullable: false

        field :unsubs, -> { Integer }, optional: true, nullable: false

        field :unsubs_pct, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
