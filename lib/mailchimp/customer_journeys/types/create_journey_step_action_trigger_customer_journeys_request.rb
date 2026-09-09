# frozen_string_literal: true

module Mailchimp
  module CustomerJourneys
    module Types
      class CreateJourneyStepActionTriggerCustomerJourneysRequest < Internal::Types::Model
        field :journey_id, -> { Integer }, optional: false, nullable: false

        field :step_id, -> { Integer }, optional: false, nullable: false

        field :email_address, -> { String }, optional: false, nullable: false
      end
    end
  end
end
