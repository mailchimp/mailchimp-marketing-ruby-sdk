# frozen_string_literal: true

module Mailchimp
  module Reports
    module Types
      class ListReportsRequest < Internal::Types::Model
        field :fields, -> { String }, optional: true, nullable: false

        field :exclude_fields, -> { String }, optional: true, nullable: false

        field :count, -> { Integer }, optional: true, nullable: false

        field :offset, -> { Integer }, optional: true, nullable: false

        field :type, -> { Mailchimp::Reports::Types::ListReportsRequestType }, optional: true, nullable: false

        field :before_send_time, -> { String }, optional: true, nullable: false

        field :since_send_time, -> { String }, optional: true, nullable: false
      end
    end
  end
end
