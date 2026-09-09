# frozen_string_literal: true

module Mailchimp
  module Lists
    module Types
      # [Contact information displayed in campaign footers](https://mailchimp.com/help/about-campaign-footers/) to
      # comply with international spam laws.
      class UpdateListsRequestContact < Internal::Types::Model
        field :address1, -> { String }, optional: true, nullable: false

        field :address2, -> { String }, optional: true, nullable: false

        field :city, -> { String }, optional: true, nullable: false

        field :company, -> { String }, optional: true, nullable: false

        field :country, -> { String }, optional: true, nullable: false

        field :phone, -> { String }, optional: true, nullable: false

        field :state, -> { String }, optional: true, nullable: false

        field :zip, -> { String }, optional: true, nullable: false
      end
    end
  end
end
