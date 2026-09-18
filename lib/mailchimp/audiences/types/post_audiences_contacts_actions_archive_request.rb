# frozen_string_literal: true

module Mailchimp
  module Audiences
    module Types
      class PostAudiencesContactsActionsArchiveRequest < Internal::Types::Model
        field :audience_id, -> { String }, optional: false, nullable: false

        field :contact_id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
