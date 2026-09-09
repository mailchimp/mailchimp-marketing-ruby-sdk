# frozen_string_literal: true

module Mailchimp
  module VerifiedDomains
    class Client
      # @param client [Mailchimp::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # Get all of the sending domains on the account.
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
      #   client.verified_domains.list
      #
      # @return [Mailchimp::VerifiedDomains::Types::ListVerifiedDomainsResponse]
      def list(request_options: {}, **_params)
        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "3.0/verified-domains",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Mailchimp::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Mailchimp::VerifiedDomains::Types::ListVerifiedDomainsResponse.load(response.body)
        else
          error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Add a domain to the account.
      #
      # @param request_options [Hash]
      # @param params [Mailchimp::VerifiedDomains::Types::CreateVerifiedDomainsRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @example
      #   client.verified_domains.create(verification_email: "verification_email")
      #
      # @return [Mailchimp::VerifiedDomains::Types::CreateVerifiedDomainsResponse]
      def create(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "3.0/verified-domains",
          body: Mailchimp::VerifiedDomains::Types::CreateVerifiedDomainsRequest.new(params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Mailchimp::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Mailchimp::VerifiedDomains::Types::CreateVerifiedDomainsResponse.load(response.body)
        else
          error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Get the details for a single domain on the account.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :domain_name
      #
      # @example
      #   client.verified_domains.get(domain_name: "domain_name")
      #
      # @return [Mailchimp::VerifiedDomains::Types::GetVerifiedDomainsResponse]
      def get(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "3.0/verified-domains/#{URI.encode_uri_component(params[:domain_name].to_s)}",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Mailchimp::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Mailchimp::VerifiedDomains::Types::GetVerifiedDomainsResponse.load(response.body)
        else
          error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Delete a verified domain from the account.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :domain_name
      #
      # @example
      #   client.verified_domains.delete(domain_name: "domain_name")
      #
      # @return [untyped]
      def delete(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "DELETE",
          path: "3.0/verified-domains/#{URI.encode_uri_component(params[:domain_name].to_s)}",
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

      # Verify a domain for sending.
      #
      # @param request_options [Hash]
      # @param params [Mailchimp::VerifiedDomains::Types::CreateActionVerifyVerifiedDomainsRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :domain_name
      #
      # @example
      #   client.verified_domains.create_action_verify(
      #     domain_name: "domain_name",
      #     code: "code"
      #   )
      #
      # @return [Mailchimp::VerifiedDomains::Types::CreateActionVerifyVerifiedDomainsResponse]
      def create_action_verify(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        request_data = Mailchimp::VerifiedDomains::Types::CreateActionVerifyVerifiedDomainsRequest.new(params).to_h
        non_body_param_names = %w[domain_name]
        body = request_data.except(*non_body_param_names)

        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "3.0/verified-domains/#{URI.encode_uri_component(params[:domain_name].to_s)}/actions/verify",
          body: body,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Mailchimp::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Mailchimp::VerifiedDomains::Types::CreateActionVerifyVerifiedDomainsResponse.load(response.body)
        else
          error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end
