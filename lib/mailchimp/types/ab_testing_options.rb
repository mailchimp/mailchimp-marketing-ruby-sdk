# frozen_string_literal: true

module Mailchimp
  module Types
    # [A/B Testing](https://mailchimp.com/help/about-ab-tests/) options for a campaign.
    class AbTestingOptions < Internal::Types::Model
      field :from_name_a, -> { String }, optional: true, nullable: false

      field :from_name_b, -> { String }, optional: true, nullable: false

      field :pick_winner, -> { Mailchimp::Types::AbTestingOptionsPickWinner }, optional: true, nullable: false

      field :reply_email_a, -> { String }, optional: true, nullable: false

      field :reply_email_b, -> { String }, optional: true, nullable: false

      field :send_time_a, -> { String }, optional: true, nullable: false

      field :send_time_b, -> { String }, optional: true, nullable: false

      field :send_time_winner, -> { String }, optional: true, nullable: false

      field :split_size, -> { Integer }, optional: true, nullable: false

      field :split_test, -> { Mailchimp::Types::AbTestingOptionsSplitTest }, optional: true, nullable: false

      field :subject_a, -> { String }, optional: true, nullable: false

      field :subject_b, -> { String }, optional: true, nullable: false

      field :wait_time, -> { Integer }, optional: true, nullable: false

      field :wait_units, -> { Mailchimp::Types::AbTestingOptionsWaitUnits }, optional: true, nullable: false
    end
  end
end
