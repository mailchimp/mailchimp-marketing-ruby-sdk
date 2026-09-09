# frozen_string_literal: true

module Mailchimp
  module Lists
    module Types
      # Subscriber location information.
      class UpdateMemberListsRequestLocation < Internal::Types::Model
        field :latitude, -> { Mailchimp::Lists::Types::UpdateMemberListsRequestLocationLatitude }, optional: true, nullable: false

        field :longitude, -> { Mailchimp::Lists::Types::UpdateMemberListsRequestLocationLongitude }, optional: true, nullable: false
      end
    end
  end
end
