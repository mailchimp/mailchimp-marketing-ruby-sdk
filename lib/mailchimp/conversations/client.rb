# frozen_string_literal: true

module Mailchimp
  module Conversations
    class Client
      # @param client [Mailchimp::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # Get a list of conversations for the account. Conversations has been deprecated in favor of Inbox and these
      # endpoints don't include Inbox data. Past Conversations are still available via this endpoint, but new campaign
      # replies and other Inbox messages aren’t available using this endpoint.
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
      # @option params [Mailchimp::Conversations::Types::ListConversationsRequestHasUnreadMessages, nil] :has_unread_messages
      # @option params [String, nil] :list_id
      # @option params [String, nil] :campaign_id
      #
      # @example
      #   client.conversations.list
      #
      # @return [Mailchimp::Conversations::Types::ListConversationsResponse]
      def list(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["fields"] = params[:fields] if params.key?(:fields)
        query_params["exclude_fields"] = params[:exclude_fields] if params.key?(:exclude_fields)
        query_params["count"] = params[:count] if params.key?(:count)
        query_params["offset"] = params[:offset] if params.key?(:offset)
        query_params["has_unread_messages"] = params[:has_unread_messages] if params.key?(:has_unread_messages)
        query_params["list_id"] = params[:list_id] if params.key?(:list_id)
        query_params["campaign_id"] = params[:campaign_id] if params.key?(:campaign_id)

        Mailchimp::Internal::OffsetItemIterator.new(
          initial_page: query_params["offset"],
          item_field: :conversations,
          has_next_field: nil,
          step: false
        ) do |next_page|
          query_params["offset"] = next_page
          request = Mailchimp::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "GET",
            path: "3.0/conversations",
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
            parsed_response = Mailchimp::Conversations::Types::ListConversationsResponse.load(response.body)
            [parsed_response, response]
          else
            error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end
      end

      # Get details about an individual conversation. Conversations has been deprecated in favor of Inbox and these
      # endpoints don't include Inbox data. Past Conversations are still available via this endpoint, but new campaign
      # replies and other Inbox messages aren’t available using this endpoint.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :conversation_id
      # @option params [String, nil] :fields
      # @option params [String, nil] :exclude_fields
      #
      # @example
      #   client.conversations.get(conversation_id: "conversation_id")
      #
      # @return [Mailchimp::Types::Conversation]
      def get(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["fields"] = params[:fields] if params.key?(:fields)
        query_params["exclude_fields"] = params[:exclude_fields] if params.key?(:exclude_fields)

        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "3.0/conversations/#{URI.encode_uri_component(params[:conversation_id].to_s)}",
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
          Mailchimp::Types::Conversation.load(response.body)
        else
          error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Get messages from a specific conversation. Conversations has been deprecated in favor of Inbox and these
      # endpoints don't include Inbox data. Past Conversations are still available via this endpoint, but new campaign
      # replies and other Inbox messages aren’t available using this endpoint.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :conversation_id
      # @option params [String, nil] :fields
      # @option params [String, nil] :exclude_fields
      # @option params [Mailchimp::Conversations::Types::ListMessagesConversationsRequestIsRead, nil] :is_read
      # @option params [String, nil] :before_timestamp
      # @option params [String, nil] :since_timestamp
      #
      # @example
      #   client.conversations.list_messages(conversation_id: "conversation_id")
      #
      # @return [Mailchimp::Conversations::Types::ListMessagesConversationsResponse]
      def list_messages(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["fields"] = params[:fields] if params.key?(:fields)
        query_params["exclude_fields"] = params[:exclude_fields] if params.key?(:exclude_fields)
        query_params["is_read"] = params[:is_read] if params.key?(:is_read)
        query_params["before_timestamp"] = params[:before_timestamp] if params.key?(:before_timestamp)
        query_params["since_timestamp"] = params[:since_timestamp] if params.key?(:since_timestamp)

        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "3.0/conversations/#{URI.encode_uri_component(params[:conversation_id].to_s)}/messages",
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
          Mailchimp::Conversations::Types::ListMessagesConversationsResponse.load(response.body)
        else
          error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Get an individual message in a conversation. Conversations has been deprecated in favor of Inbox and these
      # endpoints don't include Inbox data. Past Conversations are still available via this endpoint, but new campaign
      # replies and other Inbox messages aren’t available using this endpoint.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :conversation_id
      # @option params [String] :message_id
      # @option params [String, nil] :fields
      # @option params [String, nil] :exclude_fields
      #
      # @example
      #   client.conversations.get_message(
      #     conversation_id: "conversation_id",
      #     message_id: "message_id"
      #   )
      #
      # @return [Mailchimp::Types::ConversationMessage]
      def get_message(request_options: {}, **params)
        params = Mailchimp::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["fields"] = params[:fields] if params.key?(:fields)
        query_params["exclude_fields"] = params[:exclude_fields] if params.key?(:exclude_fields)

        request = Mailchimp::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "3.0/conversations/#{URI.encode_uri_component(params[:conversation_id].to_s)}/messages/#{URI.encode_uri_component(params[:message_id].to_s)}",
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
          Mailchimp::Types::ConversationMessage.load(response.body)
        else
          error_class = Mailchimp::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end
