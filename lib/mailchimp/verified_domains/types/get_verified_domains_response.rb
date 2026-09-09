# frozen_string_literal: true

module Mailchimp
  module VerifiedDomains
    module Types
      # The verified domains currently on the account.
      class GetVerifiedDomainsResponse < Internal::Types::Model
        field :authenticated, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :domain, -> { String }, optional: true, nullable: false

        field :is_free_email_provider, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :status, -> { Mailchimp::VerifiedDomains::Types::GetVerifiedDomainsResponseStatus }, optional: true, nullable: false

        field :verification_email, -> { String }, optional: true, nullable: false

        field :verification_sent, -> { String }, optional: true, nullable: false

        field :verified, -> { Internal::Types::Boolean }, optional: true, nullable: false
      end
    end
  end
end
