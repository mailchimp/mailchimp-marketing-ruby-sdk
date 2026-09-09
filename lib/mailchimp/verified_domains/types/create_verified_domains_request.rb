# frozen_string_literal: true

module Mailchimp
  module VerifiedDomains
    module Types
      class CreateVerifiedDomainsRequest < Internal::Types::Model
        field :verification_email, -> { String }, optional: false, nullable: false
      end
    end
  end
end
