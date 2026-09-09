# frozen_string_literal: true

module Mailchimp
  module Types
    # The Connected Site associated with the store.
    class ECommerceStoreConnectedSite < Internal::Types::Model
      field :site_foreign_id, -> { String }, optional: true, nullable: false

      field :site_script, -> { Mailchimp::Types::ECommerceStoreConnectedSiteSiteScript }, optional: true, nullable: false
    end
  end
end
