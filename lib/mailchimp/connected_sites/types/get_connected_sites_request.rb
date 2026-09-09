# frozen_string_literal: true

module Mailchimp
  module ConnectedSites
    module Types
      class GetConnectedSitesRequest < Internal::Types::Model
        field :connected_site_id, -> { String }, optional: false, nullable: false

        field :fields, -> { String }, optional: true, nullable: false

        field :exclude_fields, -> { String }, optional: true, nullable: false
      end
    end
  end
end
