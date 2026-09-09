# frozen_string_literal: true

module Mailchimp
  module Lists
    module Types
      # A single instance of a goal activity.
      class ListMemberGoalsListsResponseGoalsItem < Internal::Types::Model
        field :data, -> { String }, optional: true, nullable: false

        field :event, -> { String }, optional: true, nullable: false

        field :goal_id, -> { Integer }, optional: true, nullable: false

        field :last_visited_at, -> { String }, optional: true, nullable: false
      end
    end
  end
end
