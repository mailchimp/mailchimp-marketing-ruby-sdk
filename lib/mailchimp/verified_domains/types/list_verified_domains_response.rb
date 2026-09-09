# frozen_string_literal: true

module Mailchimp
  module VerifiedDomains
    module Types
      # The verified domains currently on the account.
      class ListVerifiedDomainsResponse < Internal::Types::Model
        field :domains, -> { Internal::Types::Array[Mailchimp::VerifiedDomains::Types::ListVerifiedDomainsResponseDomainsItem] }, optional: true, nullable: false

        field :total_items, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
