# frozen_string_literal: true

module Mailchimp
  module CustomerJourneys
    class Client
      # @param client [Mailchimp::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # A step trigger in an Automation flow. To use it, create a starting point or step from the Automation flow
      # builder in the app using the Customer Journeys API condition. We’ll provide a url during the process that
      # includes the {journey_id} and {step_id}. You’ll then be able to use this endpoint to trigger the condition for
      # the posted contact.
      #
      # @param request_options [Hash]
      # @param params [Mailchimp::CustomerJourneys::Types::CreateJourneyStepActionTriggerCustomerJourneysRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Integer] :journey_id
      # @option params [Integer] :step_id
      #
      # @example
      #   client.customer_journeys.create_journey_step_action_trigger(
      #     journey_id: 1,
      #     step_id: 1,
      #     email_address: "email_address"
      #   )
      #
      # @return [untyped]
      def create_journey_step_action_trigger(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        request_data = Mailchimp::CustomerJourneys::Types::CreateJourneyStepActionTriggerCustomerJourneysRequest.new(params).to_h
        non_body_param_names = %w[journey_id step_id]
        body = request_data.except(*non_body_param_names)

        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "3.0/customer-journeys/journeys/#{URI.encode_uri_component(params[:journey_id].to_s)}/steps/#{URI.encode_uri_component(params[:step_id].to_s)}/actions/trigger",
          body: body,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Mailchimp::Errors::TimeoutError
        end
        code = response.code.to_i
        return if code.between?(200, 299)

        error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
      end
    end
  end
end
