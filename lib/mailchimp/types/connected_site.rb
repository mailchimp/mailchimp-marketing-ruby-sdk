# frozen_string_literal: true

module Mailchimp
  module Types
    # Information about a specific connected site.
    class ConnectedSite < Internal::Types::Model
      field :links, -> { Internal::Types::Array[Mailchimp::Types::ConnectedSiteLinksItem] }, optional: true, nullable: false, api_name: "_links"

      field :created_at, -> { String }, optional: true, nullable: false

      field :domain, -> { String }, optional: true, nullable: false

      field :foreign_id, -> { String }, optional: true, nullable: false

      field :platform, -> { String }, optional: true, nullable: false

      field :site_script, -> { Mailchimp::Types::ConnectedSiteSiteScript }, optional: true, nullable: false

      field :store_id, -> { String }, optional: true, nullable: false

      field :updated_at, -> { String }, optional: true, nullable: false
    end
  end
end
