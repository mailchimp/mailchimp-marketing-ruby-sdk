# frozen_string_literal: true

module Mailchimp
  module Campaigns
    module Types
      class ListSendChecklistCampaignsResponseItemsItem < Internal::Types::Model
        field :details, -> { String }, optional: true, nullable: false

        field :heading, -> { String }, optional: true, nullable: false

        field :id, -> { Integer }, optional: true, nullable: false

        field :type, -> { Mailchimp::Campaigns::Types::ListSendChecklistCampaignsResponseItemsItemType }, optional: true, nullable: false
      end
    end
  end
end
