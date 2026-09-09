# frozen_string_literal: true

module Mailchimp
  module Reporting
    module Types
      class ListFacebookAdEcommerceProductActivityReportingRequest < Internal::Types::Model
        field :outreach_id, -> { String }, optional: false, nullable: false

        field :fields, -> { String }, optional: true, nullable: false

        field :exclude_fields, -> { String }, optional: true, nullable: false

        field :count, -> { Integer }, optional: true, nullable: false

        field :offset, -> { Integer }, optional: true, nullable: false

        field :sort_field, -> { Mailchimp::Reporting::Types::ListFacebookAdEcommerceProductActivityReportingRequestSortField }, optional: true, nullable: false
      end
    end
  end
end
