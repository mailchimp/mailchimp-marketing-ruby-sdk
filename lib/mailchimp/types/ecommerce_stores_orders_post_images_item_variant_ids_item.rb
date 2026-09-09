# frozen_string_literal: true

module Mailchimp
  module Types
    class EcommerceStoresOrdersPostImagesItemVariantIDsItem < Internal::Types::Model
      extend Mailchimp::Internal::Types::Union

      member -> { String }

      member -> { Integer }
    end
  end
end
