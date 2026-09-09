# frozen_string_literal: true

module Mailchimp
  module Root
    module Types
      # The [average campaign
      # statistics](https://mailchimp.com/resources/research/email-marketing-benchmarks/?utm_source=mc-api&utm_medium=docs&utm_campaign=apidocs)
      # for all campaigns in the account's specified industry.
      class ListRootResponseIndustryStats < Internal::Types::Model
        field :bounce_rate, -> { Integer }, optional: true, nullable: false

        field :click_rate, -> { Integer }, optional: true, nullable: false

        field :open_rate, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
