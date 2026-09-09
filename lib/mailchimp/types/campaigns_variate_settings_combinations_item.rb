# frozen_string_literal: true

module Mailchimp
  module Types
    class CampaignsVariateSettingsCombinationsItem < Internal::Types::Model
      field :content_description, -> { Integer }, optional: true, nullable: false

      field :from_name, -> { Integer }, optional: true, nullable: false

      field :id, -> { String }, optional: true, nullable: false

      field :recipients, -> { Integer }, optional: true, nullable: false

      field :reply_to, -> { Integer }, optional: true, nullable: false

      field :send_time, -> { Integer }, optional: true, nullable: false

      field :subject_line, -> { Integer }, optional: true, nullable: false
    end
  end
end
