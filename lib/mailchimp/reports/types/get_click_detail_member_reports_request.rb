# frozen_string_literal: true

module Mailchimp
  module Reports
    module Types
      class GetClickDetailMemberReportsRequest < Internal::Types::Model
        field :campaign_id, -> { String }, optional: false, nullable: false

        field :link_id, -> { String }, optional: false, nullable: false

        field :subscriber_hash, -> { String }, optional: false, nullable: false

        field :fields, -> { String }, optional: true, nullable: false

        field :exclude_fields, -> { String }, optional: true, nullable: false
      end
    end
  end
end
