# frozen_string_literal: true

module Mailchimp
  module AuthorizedApps
    module Types
      class GetAuthorizedAppsRequest < Internal::Types::Model
        field :app_id, -> { String }, optional: false, nullable: false

        field :fields, -> { String }, optional: true, nullable: false

        field :exclude_fields, -> { String }, optional: true, nullable: false
      end
    end
  end
end
