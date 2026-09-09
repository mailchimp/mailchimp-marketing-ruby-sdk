# frozen_string_literal: true

module Mailchimp
  module Types
    # Information about a specific segment.
    class List < Internal::Types::Model
      field :links, -> { Internal::Types::Array[Mailchimp::Types::ListLinksItem] }, optional: true, nullable: false, api_name: "_links"

      field :created_at, -> { String }, optional: true, nullable: false

      field :id, -> { Integer }, optional: true, nullable: false

      field :list_id, -> { String }, optional: true, nullable: false

      field :member_count, -> { Integer }, optional: true, nullable: false

      field :name, -> { String }, optional: true, nullable: false

      field :options, -> { Mailchimp::Types::ListOptions }, optional: true, nullable: false

      field :type, -> { Mailchimp::Types::ListType }, optional: true, nullable: false

      field :updated_at, -> { String }, optional: true, nullable: false
    end
  end
end
