# frozen_string_literal: true

module Mailchimp
  module Types
    # A unique identifier for the product variant.
    class EcommerceStoresOrdersPostVariantsItemID < Internal::Types::Model
      extend Mailchimp::Internal::Types::Union

      member -> { String }

      member -> { Integer }
    end
  end
end
