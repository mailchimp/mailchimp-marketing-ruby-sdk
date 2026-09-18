# frozen_string_literal: true

module Mailchimp
  module Types
    # A computation performed by the Mailchimp platform, triggered whenever any of its inputs change. Some inputs are
    # controlled by API users, while others are tracked internally by the platform. Computation is based on: audience
    # opt-in configuration (single vs. double opt-in), marketing consent status, and deliverability status (an internal
    # state for a contact, maintained by Mailchimp for a specific marketing channel instance). This new API field is
    # distinct from how contacts are displayed in the UI. See the [Audiences (BETA)
    # documentation](https://mailchimp.com/developer/marketing/docs/audiences-introduction) to learn about supported
    # values.
    class AudiencesContactEmailChannelEffectiveSubscriptionStatus < Internal::Types::Model
      field :value, -> { Mailchimp::Types::AudiencesContactEmailChannelEffectiveSubscriptionStatusValue }, optional: true, nullable: false
    end
  end
end
