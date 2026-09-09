# frozen_string_literal: true

module Mailchimp
  module Reporting
    module Types
      # Information about the contact.
      class GetSurveyResponsReportingResponseContact < Internal::Types::Model
        field :avatar_url, -> { String }, optional: true, nullable: false

        field :consents_to_one_to_one_messaging, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :contact_id, -> { String }, optional: true, nullable: false

        field :email, -> { String }, optional: true, nullable: false

        field :email_id, -> { String }, optional: true, nullable: false

        field :full_name, -> { String }, optional: true, nullable: false

        field :phone, -> { String }, optional: true, nullable: false

        field :status, -> { Mailchimp::Reporting::Types::GetSurveyResponsReportingResponseContactStatus }, optional: true, nullable: false
      end
    end
  end
end
