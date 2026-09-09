# frozen_string_literal: true

module Mailchimp
  module Automations
    class Client
      # @param client [Mailchimp::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # Get a summary of an account's classic automations.
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
      # @option params [String, nil] :fields
      # @option params [String, nil] :exclude_fields
      # @option params [String, nil] :before_create_time
      # @option params [String, nil] :since_create_time
      # @option params [String, nil] :before_start_time
      # @option params [String, nil] :since_start_time
      # @option params [Mailchimp::Automations::Types::ListAutomationsRequestStatus, nil] :status
      #
      # @example
      #   client.automations.list
      #
      # @return [Mailchimp::Automations::Types::ListAutomationsResponse]
      def list(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["count"] = params[:count] if params.key?(:count)
        query_params["offset"] = params[:offset] if params.key?(:offset)
        query_params["fields"] = params[:fields] if params.key?(:fields)
        query_params["exclude_fields"] = params[:exclude_fields] if params.key?(:exclude_fields)
        query_params["before_create_time"] = params[:before_create_time] if params.key?(:before_create_time)
        query_params["since_create_time"] = params[:since_create_time] if params.key?(:since_create_time)
        query_params["before_start_time"] = params[:before_start_time] if params.key?(:before_start_time)
        query_params["since_start_time"] = params[:since_start_time] if params.key?(:since_start_time)
        query_params["status"] = params[:status] if params.key?(:status)

        Mailchimp::Internal::OffsetItemIterator.new(
          initial_page: query_params["offset"],
          item_field: :automations,
          has_next_field: nil,
          step: false
        ) do |next_page|
          query_params["offset"] = next_page
          request = Mailchimp::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "GET",
            path: "3.0/automations",
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
            parsed_response = Mailchimp::Automations::Types::ListAutomationsResponse.load(response.body)
            [parsed_response, response]
          else
            error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end
      end

      # Create a new classic automation in your Mailchimp account.
      #
      # @param request_options [Hash]
      # @param params [Mailchimp::Automations::Types::CreateAutomationsRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @example
      #   client.automations.create(
      #     recipients: {},
      #     trigger_settings: {
      #       workflow_type: "abandonedBrowse"
      #     }
      #   )
      #
      # @return [Mailchimp::Types::AutomationWorkflow]
      def create(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "3.0/automations",
          body: Mailchimp::Automations::Types::CreateAutomationsRequest.new(params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Mailchimp::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Mailchimp::Types::AutomationWorkflow.load(response.body)
        else
          error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Get a summary of an individual classic automation workflow's settings and content. The `trigger_settings` object
      # returns information for the first email in the workflow.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :workflow_id
      # @option params [String, nil] :fields
      # @option params [String, nil] :exclude_fields
      #
      # @example
      #   client.automations.get(workflow_id: "workflow_id")
      #
      # @return [Mailchimp::Types::AutomationWorkflow]
      def get(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["fields"] = params[:fields] if params.key?(:fields)
        query_params["exclude_fields"] = params[:exclude_fields] if params.key?(:exclude_fields)

        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "3.0/automations/#{URI.encode_uri_component(params[:workflow_id].to_s)}",
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
          Mailchimp::Types::AutomationWorkflow.load(response.body)
        else
          error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Archiving will permanently end your automation and keep the report data. You’ll be able to replicate your
      # archived automation, but you can’t restart it.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :workflow_id
      #
      # @example
      #   client.automations.create_action_archive(workflow_id: "workflow_id")
      #
      # @return [untyped]
      def create_action_archive(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "3.0/automations/#{URI.encode_uri_component(params[:workflow_id].to_s)}/actions/archive",
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

      # Pause all emails in a specific classic automation workflow.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :workflow_id
      #
      # @example
      #   client.automations.create_action_pause_all_email(workflow_id: "workflow_id")
      #
      # @return [untyped]
      def create_action_pause_all_email(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "3.0/automations/#{URI.encode_uri_component(params[:workflow_id].to_s)}/actions/pause-all-emails",
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

      # Start all emails in a classic automation workflow.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :workflow_id
      #
      # @example
      #   client.automations.create_action_start_all_email(workflow_id: "workflow_id")
      #
      # @return [untyped]
      def create_action_start_all_email(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "3.0/automations/#{URI.encode_uri_component(params[:workflow_id].to_s)}/actions/start-all-emails",
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

      # Get a summary of the emails in a classic automation workflow.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :workflow_id
      #
      # @example
      #   client.automations.list_emails(workflow_id: "workflow_id")
      #
      # @return [Mailchimp::Automations::Types::ListEmailsAutomationsResponse]
      def list_emails(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "3.0/automations/#{URI.encode_uri_component(params[:workflow_id].to_s)}/emails",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Mailchimp::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Mailchimp::Automations::Types::ListEmailsAutomationsResponse.load(response.body)
        else
          error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Get information about an individual classic automation workflow email.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :workflow_id
      # @option params [String] :workflow_email_id
      #
      # @example
      #   client.automations.get_email(
      #     workflow_id: "workflow_id",
      #     workflow_email_id: "workflow_email_id"
      #   )
      #
      # @return [Mailchimp::Types::AutomationWorkflowEmail]
      def get_email(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "3.0/automations/#{URI.encode_uri_component(params[:workflow_id].to_s)}/emails/#{URI.encode_uri_component(params[:workflow_email_id].to_s)}",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Mailchimp::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Mailchimp::Types::AutomationWorkflowEmail.load(response.body)
        else
          error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Removes an individual classic automation workflow email. Emails from certain workflow types, including the
      # Abandoned Cart Email (abandonedCart) and Product Retargeting Email (abandonedBrowse) Workflows, cannot be
      # deleted.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :workflow_id
      # @option params [String] :workflow_email_id
      #
      # @example
      #   client.automations.delete_email(
      #     workflow_id: "workflow_id",
      #     workflow_email_id: "workflow_email_id"
      #   )
      #
      # @return [untyped]
      def delete_email(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "DELETE",
          path: "3.0/automations/#{URI.encode_uri_component(params[:workflow_id].to_s)}/emails/#{URI.encode_uri_component(params[:workflow_email_id].to_s)}",
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

      # Update settings for a classic automation workflow email.  Only works with workflows of type: abandonedBrowse,
      # abandonedCart, emailFollowup, or singleWelcome.
      #
      # @param request_options [Hash]
      # @param params [Mailchimp::Automations::Types::UpdateEmailAutomationsRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :workflow_id
      # @option params [String] :workflow_email_id
      #
      # @example
      #   client.automations.update_email(
      #     workflow_id: "workflow_id",
      #     workflow_email_id: "workflow_email_id"
      #   )
      #
      # @return [Mailchimp::Types::AutomationWorkflowEmail]
      def update_email(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        request_data = Mailchimp::Automations::Types::UpdateEmailAutomationsRequest.new(params).to_h
        non_body_param_names = %w[workflow_id workflow_email_id]
        body = request_data.except(*non_body_param_names)

        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "PATCH",
          path: "3.0/automations/#{URI.encode_uri_component(params[:workflow_id].to_s)}/emails/#{URI.encode_uri_component(params[:workflow_email_id].to_s)}",
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
          Mailchimp::Types::AutomationWorkflowEmail.load(response.body)
        else
          error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Pause an automated email.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :workflow_id
      # @option params [String] :workflow_email_id
      #
      # @example
      #   client.automations.create_email_action_pause(
      #     workflow_id: "workflow_id",
      #     workflow_email_id: "workflow_email_id"
      #   )
      #
      # @return [untyped]
      def create_email_action_pause(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "3.0/automations/#{URI.encode_uri_component(params[:workflow_id].to_s)}/emails/#{URI.encode_uri_component(params[:workflow_email_id].to_s)}/actions/pause",
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

      # Start an automated email.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :workflow_id
      # @option params [String] :workflow_email_id
      #
      # @example
      #   client.automations.create_email_action_start(
      #     workflow_id: "workflow_id",
      #     workflow_email_id: "workflow_email_id"
      #   )
      #
      # @return [untyped]
      def create_email_action_start(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "3.0/automations/#{URI.encode_uri_component(params[:workflow_id].to_s)}/emails/#{URI.encode_uri_component(params[:workflow_email_id].to_s)}/actions/start",
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

      # Get information about a classic automation email queue.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :workflow_id
      # @option params [String] :workflow_email_id
      #
      # @example
      #   client.automations.list_email_queue(
      #     workflow_id: "workflow_id",
      #     workflow_email_id: "workflow_email_id"
      #   )
      #
      # @return [Mailchimp::Automations::Types::ListEmailQueueAutomationsResponse]
      def list_email_queue(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "3.0/automations/#{URI.encode_uri_component(params[:workflow_id].to_s)}/emails/#{URI.encode_uri_component(params[:workflow_email_id].to_s)}/queue",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Mailchimp::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Mailchimp::Automations::Types::ListEmailQueueAutomationsResponse.load(response.body)
        else
          error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Manually add a subscriber to a workflow, bypassing the default trigger settings. You can also use this endpoint
      # to trigger a series of automated emails in an API 3.0 workflow type.
      #
      # @param request_options [Hash]
      # @param params [Mailchimp::Automations::Types::CreateEmailQueueAutomationsRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :workflow_id
      # @option params [String] :workflow_email_id
      #
      # @example
      #   client.automations.create_email_queue(
      #     workflow_id: "workflow_id",
      #     workflow_email_id: "workflow_email_id",
      #     email_address: "email_address"
      #   )
      #
      # @return [Mailchimp::Types::SubscriberInAutomationQueue]
      def create_email_queue(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        request_data = Mailchimp::Automations::Types::CreateEmailQueueAutomationsRequest.new(params).to_h
        non_body_param_names = %w[workflow_id workflow_email_id]
        body = request_data.except(*non_body_param_names)

        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "3.0/automations/#{URI.encode_uri_component(params[:workflow_id].to_s)}/emails/#{URI.encode_uri_component(params[:workflow_email_id].to_s)}/queue",
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
          Mailchimp::Types::SubscriberInAutomationQueue.load(response.body)
        else
          error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Get information about a specific subscriber in a classic automation email queue.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :workflow_id
      # @option params [String] :workflow_email_id
      # @option params [String] :subscriber_hash
      #
      # @example
      #   client.automations.get_email_queue(
      #     workflow_id: "workflow_id",
      #     workflow_email_id: "workflow_email_id",
      #     subscriber_hash: "subscriber_hash"
      #   )
      #
      # @return [Mailchimp::Types::SubscriberInAutomationQueue]
      def get_email_queue(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "3.0/automations/#{URI.encode_uri_component(params[:workflow_id].to_s)}/emails/#{URI.encode_uri_component(params[:workflow_email_id].to_s)}/queue/#{URI.encode_uri_component(params[:subscriber_hash].to_s)}",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Mailchimp::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Mailchimp::Types::SubscriberInAutomationQueue.load(response.body)
        else
          error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Get information about subscribers who were removed from a classic automation workflow.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :workflow_id
      #
      # @example
      #   client.automations.list_removed_subscribers(workflow_id: "workflow_id")
      #
      # @return [Mailchimp::Automations::Types::ListRemovedSubscribersAutomationsResponse]
      def list_removed_subscribers(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "3.0/automations/#{URI.encode_uri_component(params[:workflow_id].to_s)}/removed-subscribers",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Mailchimp::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Mailchimp::Automations::Types::ListRemovedSubscribersAutomationsResponse.load(response.body)
        else
          error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Remove a subscriber from a specific classic automation workflow. You can remove a subscriber at any point in an
      # automation workflow, regardless of how many emails they've been sent from that workflow. Once they're removed,
      # they can never be added back to the same workflow.
      #
      # @param request_options [Hash]
      # @param params [Mailchimp::Automations::Types::CreateRemovedSubscriberAutomationsRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :workflow_id
      #
      # @example
      #   client.automations.create_removed_subscriber(
      #     workflow_id: "workflow_id",
      #     email_address: "email_address"
      #   )
      #
      # @return [Mailchimp::Types::SubscriberRemovedFromAutomationWorkflow]
      def create_removed_subscriber(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        request_data = Mailchimp::Automations::Types::CreateRemovedSubscriberAutomationsRequest.new(params).to_h
        non_body_param_names = %w[workflow_id]
        body = request_data.except(*non_body_param_names)

        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "3.0/automations/#{URI.encode_uri_component(params[:workflow_id].to_s)}/removed-subscribers",
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
          Mailchimp::Types::SubscriberRemovedFromAutomationWorkflow.load(response.body)
        else
          error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Get information about a specific subscriber who was removed from a classic automation workflow.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :workflow_id
      # @option params [String] :subscriber_hash
      #
      # @example
      #   client.automations.get_removed_subscriber(
      #     workflow_id: "workflow_id",
      #     subscriber_hash: "subscriber_hash"
      #   )
      #
      # @return [Mailchimp::Types::SubscriberRemovedFromAutomationWorkflow]
      def get_removed_subscriber(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "3.0/automations/#{URI.encode_uri_component(params[:workflow_id].to_s)}/removed-subscribers/#{URI.encode_uri_component(params[:subscriber_hash].to_s)}",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Mailchimp::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Mailchimp::Types::SubscriberRemovedFromAutomationWorkflow.load(response.body)
        else
          error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end
