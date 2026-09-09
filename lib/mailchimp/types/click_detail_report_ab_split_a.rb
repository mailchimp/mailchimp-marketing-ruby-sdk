# frozen_string_literal: true

module Mailchimp
  module Types
    # Stats for Group A.
    class ClickDetailReportAbSplitA < Internal::Types::Model
      field :click_percentage_a, -> { Integer }, optional: true, nullable: false

      field :total_clicks_a, -> { Integer }, optional: true, nullable: false

      field :unique_click_percentage_a, -> { Integer }, optional: true, nullable: false

      field :unique_clicks_a, -> { Integer }, optional: true, nullable: false
    end
  end
end
