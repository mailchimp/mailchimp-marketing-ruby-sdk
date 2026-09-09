# frozen_string_literal: true

module Mailchimp
  module Reports
    module Types
      class ListEcommerceProductActivityReportsRequest < Internal::Types::Model
        field :campaign_id, -> { String }, optional: false, nullable: false

        field :fields, -> { String }, optional: true, nullable: false

        field :exclude_fields, -> { String }, optional: true, nullable: false

        field :count, -> { Integer }, optional: true, nullable: false

        field :offset, -> { Integer }, optional: true, nullable: false

        field :sort_field, -> { Mailchimp::Reports::Types::ListEcommerceProductActivityReportsRequestSortField }, optional: true, nullable: false
      end
    end
  end
end
