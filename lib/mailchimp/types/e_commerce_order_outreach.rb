# frozen_string_literal: true

module Mailchimp
  module Types
    # The outreach associated with this order. For example, an email campaign or Facebook ad.
    class ECommerceOrderOutreach < Internal::Types::Model
      field :id, -> { String }, optional: true, nullable: false

      field :name, -> { String }, optional: true, nullable: false

      field :published_time, -> { String }, optional: true, nullable: false

      field :type, -> { String }, optional: true, nullable: false
    end
  end
end
