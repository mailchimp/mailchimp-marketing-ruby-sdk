# frozen_string_literal: true

module Mailchimp
  module Types
    # The script used to connect your site with Mailchimp.
    class ConnectedSiteSiteScript < Internal::Types::Model
      field :fragment, -> { String }, optional: true, nullable: false

      field :url, -> { String }, optional: true, nullable: false
    end
  end
end
