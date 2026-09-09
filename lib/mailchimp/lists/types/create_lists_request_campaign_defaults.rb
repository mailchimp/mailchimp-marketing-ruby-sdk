# frozen_string_literal: true

module Mailchimp
  module Lists
    module Types
      # [Default values for
      # campaigns](https://mailchimp.com/help/edit-your-emails-subject-preview-text-from-name-or-from-email-address/)
      # created for this list.
      class CreateListsRequestCampaignDefaults < Internal::Types::Model
        field :from_email, -> { String }, optional: false, nullable: false

        field :from_name, -> { String }, optional: false, nullable: false

        field :language, -> { String }, optional: false, nullable: false

        field :subject, -> { String }, optional: false, nullable: false
      end
    end
  end
end
