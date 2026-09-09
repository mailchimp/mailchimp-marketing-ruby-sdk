# frozen_string_literal: true

module Mailchimp
  module Types
    class ListMembersTagsItem < Internal::Types::Model
      field :id, -> { Integer }, optional: true, nullable: false

      field :name, -> { String }, optional: true, nullable: false
    end
  end
end
