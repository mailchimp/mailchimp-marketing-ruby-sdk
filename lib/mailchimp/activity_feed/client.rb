# frozen_string_literal: true

module Mailchimp
  module ActivityFeed
    class Client
      # @param client [Mailchimp::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # Get information about the activity feed endpoint's resources.
      #
      # @param request_options [Hash]
      # @param _params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @example
      #   client.activity_feed.list
      #
      # @return [Array[Mailchimp::ActivityFeed::Types::ListActivityFeedResponseItem]]
      def list(request_options: {}, **_params)
        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "3.0/activity-feed",
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

      # Return the Chimp Chatter for this account ordered by most recent.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Integer, nil] :count
      # @option params [Integer, nil] :offset
      #
      # @example
      #   client.activity_feed.list_chimp_chatter
      #
      # @return [Mailchimp::ActivityFeed::Types::ListChimpChatterActivityFeedResponse]
      def list_chimp_chatter(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["count"] = params[:count] if params.key?(:count)
        query_params["offset"] = params[:offset] if params.key?(:offset)

        Mailchimp::Internal::OffsetItemIterator.new(
          initial_page: query_params["offset"],
          item_field: :chimp_chatter,
          has_next_field: nil,
          step: false
        ) do |next_page|
          query_params["offset"] = next_page
          request = Mailchimp::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "GET",
            path: "3.0/activity-feed/chimp-chatter",
            query: query_params,
            request_options: request_options
          )
          begin
            response = @client.send(request)
          rescue Net::HTTPRequestTimeout
            raise Mailchimp::Errors::TimeoutError
          end
          code = response.code.to_i
          if code.between?(200, 299)
            parsed_response = Mailchimp::ActivityFeed::Types::ListChimpChatterActivityFeedResponse.load(response.body)
            [parsed_response, response]
          else
            error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end
      end
    end
  end
end
