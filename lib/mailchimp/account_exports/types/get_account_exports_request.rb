# frozen_string_literal: true

module Mailchimp
  module AccountExports
    module Types
      class GetAccountExportsRequest < Internal::Types::Model
        field :export_id, -> { String }, optional: false, nullable: false

        field :fields, -> { String }, optional: true, nullable: false

        field :exclude_fields, -> { String }, optional: true, nullable: false
      end
    end
  end
end
