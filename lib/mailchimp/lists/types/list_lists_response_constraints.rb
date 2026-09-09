# frozen_string_literal: true

module Mailchimp
  module Lists
    module Types
      # Do particular authorization constraints around this collection limit creation of new instances?
      class ListListsResponseConstraints < Internal::Types::Model
        field :current_total_instances, -> { Integer }, optional: true, nullable: false

        field :max_instances, -> { Integer }, optional: false, nullable: false

        field :may_create, -> { Internal::Types::Boolean }, optional: false, nullable: false
      end
    end
  end
end
