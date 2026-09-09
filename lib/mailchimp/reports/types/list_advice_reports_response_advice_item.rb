# frozen_string_literal: true

module Mailchimp
  module Reports
    module Types
      # Campaign feedback details.
      class ListAdviceReportsResponseAdviceItem < Internal::Types::Model
        field :links, -> { Internal::Types::Array[Mailchimp::Reports::Types::ListAdviceReportsResponseAdviceItemLinksItem] }, optional: true, nullable: false, api_name: "_links"

        field :message, -> { String }, optional: true, nullable: false

        field :type, -> { Mailchimp::Reports::Types::ListAdviceReportsResponseAdviceItemType }, optional: true, nullable: false
      end
    end
  end
end
