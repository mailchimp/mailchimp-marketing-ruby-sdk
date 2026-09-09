# frozen_string_literal: true

module Mailchimp
  module ConnectedSites
    module Types
      class CreateConnectedSitesRequest < Internal::Types::Model
        field :domain, -> { String }, optional: false, nullable: false

        field :foreign_id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
