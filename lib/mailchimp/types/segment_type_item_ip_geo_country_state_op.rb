# frozen_string_literal: true

module Mailchimp
  module Types
    module SegmentTypeItemIPGeoCountryStateOp
      extend Mailchimp::Internal::Types::Enum

      IPGEOCOUNTRY = "ipgeocountry"
      IPGEONOTCOUNTRY = "ipgeonotcountry"
      IPGEOSTATE = "ipgeostate"
      IPGEONOTSTATE = "ipgeonotstate"
    end
  end
end
