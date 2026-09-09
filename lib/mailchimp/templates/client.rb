# frozen_string_literal: true

module Mailchimp
  module Templates
    class Client
      # @param client [Mailchimp::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # Get a list of an account's available templates.
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
      # @option params [Integer, nil] :count
      # @option params [Integer, nil] :offset
      # @option params [String, nil] :created_by
      # @option params [String, nil] :since_date_created
      # @option params [String, nil] :before_date_created
      # @option params [String, nil] :type
      # @option params [String, nil] :category
      # @option params [String, nil] :folder_id
      # @option params [Mailchimp::Templates::Types::ListTemplatesRequestSortField, nil] :sort_field
      # @option params [Mailchimp::Templates::Types::ListTemplatesRequestContentType, nil] :content_type
      # @option params [Mailchimp::Templates::Types::ListTemplatesRequestSortDir, nil] :sort_dir
      #
      # @example
      #   client.templates.list
      #
      # @return [Mailchimp::Templates::Types::ListTemplatesResponse]
      def list(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["fields"] = params[:fields] if params.key?(:fields)
        query_params["exclude_fields"] = params[:exclude_fields] if params.key?(:exclude_fields)
        query_params["count"] = params[:count] if params.key?(:count)
        query_params["offset"] = params[:offset] if params.key?(:offset)
        query_params["created_by"] = params[:created_by] if params.key?(:created_by)
        query_params["since_date_created"] = params[:since_date_created] if params.key?(:since_date_created)
        query_params["before_date_created"] = params[:before_date_created] if params.key?(:before_date_created)
        query_params["type"] = params[:type] if params.key?(:type)
        query_params["category"] = params[:category] if params.key?(:category)
        query_params["folder_id"] = params[:folder_id] if params.key?(:folder_id)
        query_params["sort_field"] = params[:sort_field] if params.key?(:sort_field)
        query_params["content_type"] = params[:content_type] if params.key?(:content_type)
        query_params["sort_dir"] = params[:sort_dir] if params.key?(:sort_dir)

        Mailchimp::Internal::OffsetItemIterator.new(
          initial_page: query_params["offset"],
          item_field: :templates,
          has_next_field: nil,
          step: false
        ) do |next_page|
          query_params["offset"] = next_page
          request = Mailchimp::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "GET",
            path: "3.0/templates",
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
            parsed_response = Mailchimp::Templates::Types::ListTemplatesResponse.load(response.body)
            [parsed_response, response]
          else
            error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end
      end

      # Create a new template for the account. Only Classic templates are supported.
      #
      # @param request_options [Hash]
      # @param params [Mailchimp::Templates::Types::CreateTemplatesRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @example
      #   client.templates.create(
      #     html: "html",
      #     name: "Freddie's Jokes"
      #   )
      #
      # @return [Mailchimp::Types::TemplateInstance]
      def create(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "3.0/templates",
          body: Mailchimp::Templates::Types::CreateTemplatesRequest.new(params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Mailchimp::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Mailchimp::Types::TemplateInstance.load(response.body)
        else
          error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Get information about a specific template.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :template_id
      # @option params [String, nil] :fields
      # @option params [String, nil] :exclude_fields
      #
      # @example
      #   client.templates.get(template_id: "template_id")
      #
      # @return [Mailchimp::Types::TemplateInstance]
      def get(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["fields"] = params[:fields] if params.key?(:fields)
        query_params["exclude_fields"] = params[:exclude_fields] if params.key?(:exclude_fields)

        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "3.0/templates/#{URI.encode_uri_component(params[:template_id].to_s)}",
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
          Mailchimp::Types::TemplateInstance.load(response.body)
        else
          error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Delete a specific template.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :template_id
      #
      # @example
      #   client.templates.delete(template_id: "template_id")
      #
      # @return [untyped]
      def delete(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "DELETE",
          path: "3.0/templates/#{URI.encode_uri_component(params[:template_id].to_s)}",
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

      # Update the name, HTML, or `folder_id` of an existing template.
      #
      # @param request_options [Hash]
      # @param params [Mailchimp::Templates::Types::UpdateTemplatesRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :template_id
      #
      # @example
      #   client.templates.update(template_id: "template_id")
      #
      # @return [Mailchimp::Types::TemplateInstance]
      def update(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        request_data = Mailchimp::Templates::Types::UpdateTemplatesRequest.new(params).to_h
        non_body_param_names = %w[template_id]
        body = request_data.except(*non_body_param_names)

        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "PATCH",
          path: "3.0/templates/#{URI.encode_uri_component(params[:template_id].to_s)}",
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
          Mailchimp::Types::TemplateInstance.load(response.body)
        else
          error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Get the sections that you can edit in a template, including each section's default content.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :template_id
      # @option params [String, nil] :fields
      # @option params [String, nil] :exclude_fields
      #
      # @example
      #   client.templates.list_default_content(template_id: "template_id")
      #
      # @return [Mailchimp::Templates::Types::ListDefaultContentTemplatesResponse]
      def list_default_content(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["fields"] = params[:fields] if params.key?(:fields)
        query_params["exclude_fields"] = params[:exclude_fields] if params.key?(:exclude_fields)

        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "3.0/templates/#{URI.encode_uri_component(params[:template_id].to_s)}/default-content",
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
          Mailchimp::Templates::Types::ListDefaultContentTemplatesResponse.load(response.body)
        else
          error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end
