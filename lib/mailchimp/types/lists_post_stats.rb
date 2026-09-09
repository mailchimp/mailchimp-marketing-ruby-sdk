# frozen_string_literal: true

module Mailchimp
  module Types
    # Open and click rates for this subscriber.
    class ListsPostStats < Internal::Types::Model
      field :avg_click_rate, -> { Integer }, optional: true, nullable: false

      field :avg_open_rate, -> { Integer }, optional: true, nullable: false
    end
  end
end
