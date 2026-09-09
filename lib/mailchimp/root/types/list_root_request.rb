# frozen_string_literal: true

module Mailchimp
  module Root
    module Types
      class ListRootRequest < Internal::Types::Model
        field :fields, -> { String }, optional: true, nullable: false

        field :exclude_fields, -> { String }, optional: true, nullable: false
      end
    end
  end
end
