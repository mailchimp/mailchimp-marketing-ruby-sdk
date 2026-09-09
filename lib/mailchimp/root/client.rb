# frozen_string_literal: true

module Mailchimp
  module Root
    class Client
      # @param client [Mailchimp::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # Get links to all other resources available in the API.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String, nil] :fields
      # @option params [String, nil] :exclude_fields
      #
      # @example
      #   client.root.list
      #
      # @return [Mailchimp::Root::Types::ListRootResponse]
      def list(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["fields"] = params[:fields] if params.key?(:fields)
        query_params["exclude_fields"] = params[:exclude_fields] if params.key?(:exclude_fields)

        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "3.0/",
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
          Mailchimp::Root::Types::ListRootResponse.load(response.body)
        else
          error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end
