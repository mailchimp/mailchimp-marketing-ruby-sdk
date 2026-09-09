# frozen_string_literal: true

module Mailchimp
  module Types
    # Stats for Group B.
    class ClickDetailReportAbSplitB < Internal::Types::Model
      field :click_percentage_b, -> { Integer }, optional: true, nullable: false

      field :total_clicks_b, -> { Integer }, optional: true, nullable: false

      field :unique_click_percentage_b, -> { Integer }, optional: true, nullable: false

      field :unique_clicks_b, -> { Integer }, optional: true, nullable: false
    end
  end
end
