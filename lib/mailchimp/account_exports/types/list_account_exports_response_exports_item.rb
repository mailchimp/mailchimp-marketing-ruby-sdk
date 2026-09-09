# frozen_string_literal: true

module Mailchimp
  module AccountExports
    module Types
      # An account export.
      class ListAccountExportsResponseExportsItem < Internal::Types::Model
        field :links, -> { Internal::Types::Array[Mailchimp::AccountExports::Types::ListAccountExportsResponseExportsItemLinksItem] }, optional: true, nullable: false, api_name: "_links"

        field :download_url, -> { String }, optional: true, nullable: false

        field :export_id, -> { Integer }, optional: true, nullable: false

        field :finished, -> { String }, optional: true, nullable: false

        field :size_in_bytes, -> { Integer }, optional: true, nullable: false

        field :started, -> { String }, optional: true, nullable: false
      end
    end
  end
end
