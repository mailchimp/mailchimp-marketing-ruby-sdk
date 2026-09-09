# frozen_string_literal: true

module Mailchimp
  module Types
    class EcommerceStoresOrdersPostVariantsItemPrice < Internal::Types::Model
      extend Mailchimp::Internal::Types::Union

      member -> { Integer }

      member -> { String }
    end
  end
end
