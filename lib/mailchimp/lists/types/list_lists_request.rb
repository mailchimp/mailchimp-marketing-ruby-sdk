# frozen_string_literal: true

module Mailchimp
  module Lists
    module Types
      class ListListsRequest < Internal::Types::Model
        field :fields, -> { String }, optional: true, nullable: false

        field :exclude_fields, -> { String }, optional: true, nullable: false

        field :count, -> { Integer }, optional: true, nullable: false

        field :offset, -> { Integer }, optional: true, nullable: false

        field :before_date_created, -> { String }, optional: true, nullable: false

        field :since_date_created, -> { String }, optional: true, nullable: false

        field :before_campaign_last_sent, -> { String }, optional: true, nullable: false

        field :since_campaign_last_sent, -> { String }, optional: true, nullable: false

        field :email, -> { String }, optional: true, nullable: false

        field :sort_field, -> { Mailchimp::Lists::Types::ListListsRequestSortField }, optional: true, nullable: false

        field :sort_dir, -> { Mailchimp::Lists::Types::ListListsRequestSortDir }, optional: true, nullable: false

        field :has_ecommerce_store, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :include_total_contacts, -> { Internal::Types::Boolean }, optional: true, nullable: false
      end
    end
  end
end
