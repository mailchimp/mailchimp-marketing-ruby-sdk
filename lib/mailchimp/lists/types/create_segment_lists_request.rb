# frozen_string_literal: true

module Mailchimp
  module Lists
    module Types
      class CreateSegmentListsRequest < Internal::Types::Model
        field :list_id, -> { String }, optional: false, nullable: false

        field :name, -> { String }, optional: false, nullable: false

        field :options, -> { Mailchimp::Lists::Types::CreateSegmentListsRequestOptions }, optional: true, nullable: false

        field :static_segment, -> { Internal::Types::Array[String] }, optional: true, nullable: false
      end
    end
  end
end
