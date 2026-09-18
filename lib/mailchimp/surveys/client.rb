# frozen_string_literal: true

module Mailchimp
  module Surveys
    class Client
      # @param client [Mailchimp::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # Utilize the List ID and Survey ID to generate a Campaign that links to your survey.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :list_id
      # @option params [String] :survey_id
      #
      # @example
      #   client.surveys.create_list_survey_action_create_email(
      #     list_id: "list_id",
      #     survey_id: "survey_id"
      #   )
      #
      # @return [Mailchimp::Types::Campaign]
      def create_list_survey_action_create_email(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "3.0/lists/#{URI.encode_uri_component(params[:list_id].to_s)}/surveys/#{URI.encode_uri_component(params[:survey_id].to_s)}/actions/create-email",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Mailchimp::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          (response.body.to_s.empty? ? nil : Mailchimp::Types::Campaign.load(response.body))
        else
          error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Publish a survey that is in draft, unpublished, or has been previously published and edited.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :list_id
      # @option params [String] :survey_id
      #
      # @example
      #   client.surveys.create_list_survey_action_publish(
      #     list_id: "list_id",
      #     survey_id: "survey_id"
      #   )
      #
      # @return [Object]
      def create_list_survey_action_publish(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "3.0/lists/#{URI.encode_uri_component(params[:list_id].to_s)}/surveys/#{URI.encode_uri_component(params[:survey_id].to_s)}/actions/publish",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Mailchimp::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          (response.body.to_s.empty? ? nil : JSON.parse(response.body, symbolize_names: true))
        else
          error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Unpublish a survey that has been published.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :list_id
      # @option params [String] :survey_id
      #
      # @example
      #   client.surveys.create_list_survey_action_unpublish(
      #     list_id: "list_id",
      #     survey_id: "survey_id"
      #   )
      #
      # @return [Object]
      def create_list_survey_action_unpublish(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "3.0/lists/#{URI.encode_uri_component(params[:list_id].to_s)}/surveys/#{URI.encode_uri_component(params[:survey_id].to_s)}/actions/unpublish",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Mailchimp::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          (response.body.to_s.empty? ? nil : JSON.parse(response.body, symbolize_names: true))
        else
          error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end
