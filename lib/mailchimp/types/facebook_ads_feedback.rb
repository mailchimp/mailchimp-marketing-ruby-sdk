# frozen_string_literal: true

module Mailchimp
  module Types
    # Check if this ad is connected to a facebook page
    class FacebookAdsFeedback < Internal::Types::Model
      field :audience, -> { String }, optional: true, nullable: false

      field :budget, -> { String }, optional: true, nullable: false

      field :compliance, -> { String }, optional: true, nullable: false

      field :content, -> { String }, optional: true, nullable: false
    end
  end
end
