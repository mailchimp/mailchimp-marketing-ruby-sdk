# frozen_string_literal: true

module Mailchimp
  module Lists
    module Types
      # [Default values for
      # campaigns](https://mailchimp.com/help/edit-your-emails-subject-preview-text-from-name-or-from-email-address/)
      # created for this list.
      class UpdateListsRequestCampaignDefaults < Internal::Types::Model
        field :from_email, -> { String }, optional: true, nullable: false

        field :from_name, -> { String }, optional: true, nullable: false

        field :language, -> { String }, optional: true, nullable: false

        field :subject, -> { String }, optional: true, nullable: false
      end
    end
  end
end
