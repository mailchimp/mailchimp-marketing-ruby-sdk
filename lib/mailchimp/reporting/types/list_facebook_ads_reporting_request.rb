# frozen_string_literal: true

module Mailchimp
  module Reporting
    module Types
      class ListFacebookAdsReportingRequest < Internal::Types::Model
        field :fields, -> { String }, optional: true, nullable: false

        field :exclude_fields, -> { String }, optional: true, nullable: false

        field :count, -> { Integer }, optional: true, nullable: false

        field :offset, -> { Integer }, optional: true, nullable: false

        field :sort_field, -> { Mailchimp::Reporting::Types::ListFacebookAdsReportingRequestSortField }, optional: true, nullable: false

        field :sort_dir, -> { Mailchimp::Reporting::Types::ListFacebookAdsReportingRequestSortDir }, optional: true, nullable: false
      end
    end
  end
end
