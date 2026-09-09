# frozen_string_literal: true

module Mailchimp
  module VerifiedDomains
    module Types
      class DeleteVerifiedDomainsRequest < Internal::Types::Model
        field :domain_name, -> { String }, optional: false, nullable: false
      end
    end
  end
end
