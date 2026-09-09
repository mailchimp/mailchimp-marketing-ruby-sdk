# frozen_string_literal: true

module Mailchimp
  module ConnectedSites
    module Types
      class DeleteConnectedSitesRequest < Internal::Types::Model
        field :connected_site_id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
