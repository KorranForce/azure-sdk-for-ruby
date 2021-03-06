# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::SQL::Mgmt::V2017_03_01_preview
  #
  # The Azure SQL Database management API provides a RESTful set of web
  # services that interact with Azure SQL Database services to manage your
  # databases. The API enables you to create, retrieve, update, and delete
  # databases.
  #
  class ManagedRestorableDroppedDatabaseBackupShortTermRetentionPolicies
    include MsRestAzure

    #
    # Creates and initializes a new instance of the ManagedRestorableDroppedDatabaseBackupShortTermRetentionPolicies class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [SqlManagementClient] reference to the SqlManagementClient
    attr_reader :client

    #
    # Gets a dropped database's short term retention policy.
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the resource. You can obtain this value from the Azure Resource
    # Manager API or the portal.
    # @param managed_instance_name [String] The name of the managed instance.
    # @param restorable_dropped_database_id [String]
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ManagedBackupShortTermRetentionPolicy] operation results.
    #
    def get(resource_group_name, managed_instance_name, restorable_dropped_database_id, custom_headers:nil)
      response = get_async(resource_group_name, managed_instance_name, restorable_dropped_database_id, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets a dropped database's short term retention policy.
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the resource. You can obtain this value from the Azure Resource
    # Manager API or the portal.
    # @param managed_instance_name [String] The name of the managed instance.
    # @param restorable_dropped_database_id [String]
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_with_http_info(resource_group_name, managed_instance_name, restorable_dropped_database_id, custom_headers:nil)
      get_async(resource_group_name, managed_instance_name, restorable_dropped_database_id, custom_headers:custom_headers).value!
    end

    #
    # Gets a dropped database's short term retention policy.
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the resource. You can obtain this value from the Azure Resource
    # Manager API or the portal.
    # @param managed_instance_name [String] The name of the managed instance.
    # @param restorable_dropped_database_id [String]
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_async(resource_group_name, managed_instance_name, restorable_dropped_database_id, custom_headers:nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'managed_instance_name is nil' if managed_instance_name.nil?
      fail ArgumentError, 'restorable_dropped_database_id is nil' if restorable_dropped_database_id.nil?
      policy_name = 'default'
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Sql/managedInstances/{managedInstanceName}/restorableDroppedDatabases/{restorableDroppedDatabaseId}/backupShortTermRetentionPolicies/{policyName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'managedInstanceName' => managed_instance_name,'restorableDroppedDatabaseId' => restorable_dropped_database_id,'policyName' => policy_name,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::SQL::Mgmt::V2017_03_01_preview::Models::ManagedBackupShortTermRetentionPolicy.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Sets a database's long term retention policy.
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the resource. You can obtain this value from the Azure Resource
    # Manager API or the portal.
    # @param managed_instance_name [String] The name of the managed instance.
    # @param restorable_dropped_database_id [String]
    # @param parameters [ManagedBackupShortTermRetentionPolicy] The long term
    # retention policy info.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ManagedBackupShortTermRetentionPolicy] operation results.
    #
    def create_or_update(resource_group_name, managed_instance_name, restorable_dropped_database_id, parameters, custom_headers:nil)
      response = create_or_update_async(resource_group_name, managed_instance_name, restorable_dropped_database_id, parameters, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the resource. You can obtain this value from the Azure Resource
    # Manager API or the portal.
    # @param managed_instance_name [String] The name of the managed instance.
    # @param restorable_dropped_database_id [String]
    # @param parameters [ManagedBackupShortTermRetentionPolicy] The long term
    # retention policy info.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Concurrent::Promise] promise which provides async access to http
    # response.
    #
    def create_or_update_async(resource_group_name, managed_instance_name, restorable_dropped_database_id, parameters, custom_headers:nil)
      # Send request
      promise = begin_create_or_update_async(resource_group_name, managed_instance_name, restorable_dropped_database_id, parameters, custom_headers:custom_headers)

      promise = promise.then do |response|
        # Defining deserialization method.
        deserialize_method = lambda do |parsed_response|
          result_mapper = Azure::SQL::Mgmt::V2017_03_01_preview::Models::ManagedBackupShortTermRetentionPolicy.mapper()
          parsed_response = @client.deserialize(result_mapper, parsed_response)
        end

        # Waiting for response.
        @client.get_long_running_operation_result(response, deserialize_method)
      end

      promise
    end

    #
    # Sets a database's long term retention policy.
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the resource. You can obtain this value from the Azure Resource
    # Manager API or the portal.
    # @param managed_instance_name [String] The name of the managed instance.
    # @param restorable_dropped_database_id [String]
    # @param parameters [ManagedBackupShortTermRetentionPolicy] The long term
    # retention policy info.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ManagedBackupShortTermRetentionPolicy] operation results.
    #
    def update(resource_group_name, managed_instance_name, restorable_dropped_database_id, parameters, custom_headers:nil)
      response = update_async(resource_group_name, managed_instance_name, restorable_dropped_database_id, parameters, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the resource. You can obtain this value from the Azure Resource
    # Manager API or the portal.
    # @param managed_instance_name [String] The name of the managed instance.
    # @param restorable_dropped_database_id [String]
    # @param parameters [ManagedBackupShortTermRetentionPolicy] The long term
    # retention policy info.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Concurrent::Promise] promise which provides async access to http
    # response.
    #
    def update_async(resource_group_name, managed_instance_name, restorable_dropped_database_id, parameters, custom_headers:nil)
      # Send request
      promise = begin_update_async(resource_group_name, managed_instance_name, restorable_dropped_database_id, parameters, custom_headers:custom_headers)

      promise = promise.then do |response|
        # Defining deserialization method.
        deserialize_method = lambda do |parsed_response|
          result_mapper = Azure::SQL::Mgmt::V2017_03_01_preview::Models::ManagedBackupShortTermRetentionPolicy.mapper()
          parsed_response = @client.deserialize(result_mapper, parsed_response)
        end

        # Waiting for response.
        @client.get_long_running_operation_result(response, deserialize_method)
      end

      promise
    end

    #
    # Gets a dropped database's short term retention policy list.
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the resource. You can obtain this value from the Azure Resource
    # Manager API or the portal.
    # @param managed_instance_name [String] The name of the managed instance.
    # @param restorable_dropped_database_id [String]
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Array<ManagedBackupShortTermRetentionPolicy>] operation results.
    #
    def list_by_restorable_dropped_database(resource_group_name, managed_instance_name, restorable_dropped_database_id, custom_headers:nil)
      first_page = list_by_restorable_dropped_database_as_lazy(resource_group_name, managed_instance_name, restorable_dropped_database_id, custom_headers:custom_headers)
      first_page.get_all_items
    end

    #
    # Gets a dropped database's short term retention policy list.
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the resource. You can obtain this value from the Azure Resource
    # Manager API or the portal.
    # @param managed_instance_name [String] The name of the managed instance.
    # @param restorable_dropped_database_id [String]
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_by_restorable_dropped_database_with_http_info(resource_group_name, managed_instance_name, restorable_dropped_database_id, custom_headers:nil)
      list_by_restorable_dropped_database_async(resource_group_name, managed_instance_name, restorable_dropped_database_id, custom_headers:custom_headers).value!
    end

    #
    # Gets a dropped database's short term retention policy list.
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the resource. You can obtain this value from the Azure Resource
    # Manager API or the portal.
    # @param managed_instance_name [String] The name of the managed instance.
    # @param restorable_dropped_database_id [String]
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_by_restorable_dropped_database_async(resource_group_name, managed_instance_name, restorable_dropped_database_id, custom_headers:nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'managed_instance_name is nil' if managed_instance_name.nil?
      fail ArgumentError, 'restorable_dropped_database_id is nil' if restorable_dropped_database_id.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Sql/managedInstances/{managedInstanceName}/restorableDroppedDatabases/{restorableDroppedDatabaseId}/backupShortTermRetentionPolicies'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'managedInstanceName' => managed_instance_name,'restorableDroppedDatabaseId' => restorable_dropped_database_id,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::SQL::Mgmt::V2017_03_01_preview::Models::ManagedBackupShortTermRetentionPolicyListResult.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Sets a database's long term retention policy.
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the resource. You can obtain this value from the Azure Resource
    # Manager API or the portal.
    # @param managed_instance_name [String] The name of the managed instance.
    # @param restorable_dropped_database_id [String]
    # @param parameters [ManagedBackupShortTermRetentionPolicy] The long term
    # retention policy info.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ManagedBackupShortTermRetentionPolicy] operation results.
    #
    def begin_create_or_update(resource_group_name, managed_instance_name, restorable_dropped_database_id, parameters, custom_headers:nil)
      response = begin_create_or_update_async(resource_group_name, managed_instance_name, restorable_dropped_database_id, parameters, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Sets a database's long term retention policy.
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the resource. You can obtain this value from the Azure Resource
    # Manager API or the portal.
    # @param managed_instance_name [String] The name of the managed instance.
    # @param restorable_dropped_database_id [String]
    # @param parameters [ManagedBackupShortTermRetentionPolicy] The long term
    # retention policy info.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def begin_create_or_update_with_http_info(resource_group_name, managed_instance_name, restorable_dropped_database_id, parameters, custom_headers:nil)
      begin_create_or_update_async(resource_group_name, managed_instance_name, restorable_dropped_database_id, parameters, custom_headers:custom_headers).value!
    end

    #
    # Sets a database's long term retention policy.
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the resource. You can obtain this value from the Azure Resource
    # Manager API or the portal.
    # @param managed_instance_name [String] The name of the managed instance.
    # @param restorable_dropped_database_id [String]
    # @param parameters [ManagedBackupShortTermRetentionPolicy] The long term
    # retention policy info.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def begin_create_or_update_async(resource_group_name, managed_instance_name, restorable_dropped_database_id, parameters, custom_headers:nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'managed_instance_name is nil' if managed_instance_name.nil?
      fail ArgumentError, 'restorable_dropped_database_id is nil' if restorable_dropped_database_id.nil?
      policy_name = 'default'
      fail ArgumentError, 'parameters is nil' if parameters.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      # Serialize Request
      request_mapper = Azure::SQL::Mgmt::V2017_03_01_preview::Models::ManagedBackupShortTermRetentionPolicy.mapper()
      request_content = @client.serialize(request_mapper,  parameters)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Sql/managedInstances/{managedInstanceName}/restorableDroppedDatabases/{restorableDroppedDatabaseId}/backupShortTermRetentionPolicies/{policyName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'managedInstanceName' => managed_instance_name,'restorableDroppedDatabaseId' => restorable_dropped_database_id,'policyName' => policy_name,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version},
          body: request_content,
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:put, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200 || status_code == 202
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::SQL::Mgmt::V2017_03_01_preview::Models::ManagedBackupShortTermRetentionPolicy.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Sets a database's long term retention policy.
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the resource. You can obtain this value from the Azure Resource
    # Manager API or the portal.
    # @param managed_instance_name [String] The name of the managed instance.
    # @param restorable_dropped_database_id [String]
    # @param parameters [ManagedBackupShortTermRetentionPolicy] The long term
    # retention policy info.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ManagedBackupShortTermRetentionPolicy] operation results.
    #
    def begin_update(resource_group_name, managed_instance_name, restorable_dropped_database_id, parameters, custom_headers:nil)
      response = begin_update_async(resource_group_name, managed_instance_name, restorable_dropped_database_id, parameters, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Sets a database's long term retention policy.
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the resource. You can obtain this value from the Azure Resource
    # Manager API or the portal.
    # @param managed_instance_name [String] The name of the managed instance.
    # @param restorable_dropped_database_id [String]
    # @param parameters [ManagedBackupShortTermRetentionPolicy] The long term
    # retention policy info.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def begin_update_with_http_info(resource_group_name, managed_instance_name, restorable_dropped_database_id, parameters, custom_headers:nil)
      begin_update_async(resource_group_name, managed_instance_name, restorable_dropped_database_id, parameters, custom_headers:custom_headers).value!
    end

    #
    # Sets a database's long term retention policy.
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the resource. You can obtain this value from the Azure Resource
    # Manager API or the portal.
    # @param managed_instance_name [String] The name of the managed instance.
    # @param restorable_dropped_database_id [String]
    # @param parameters [ManagedBackupShortTermRetentionPolicy] The long term
    # retention policy info.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def begin_update_async(resource_group_name, managed_instance_name, restorable_dropped_database_id, parameters, custom_headers:nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'managed_instance_name is nil' if managed_instance_name.nil?
      fail ArgumentError, 'restorable_dropped_database_id is nil' if restorable_dropped_database_id.nil?
      policy_name = 'default'
      fail ArgumentError, 'parameters is nil' if parameters.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      # Serialize Request
      request_mapper = Azure::SQL::Mgmt::V2017_03_01_preview::Models::ManagedBackupShortTermRetentionPolicy.mapper()
      request_content = @client.serialize(request_mapper,  parameters)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Sql/managedInstances/{managedInstanceName}/restorableDroppedDatabases/{restorableDroppedDatabaseId}/backupShortTermRetentionPolicies/{policyName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'managedInstanceName' => managed_instance_name,'restorableDroppedDatabaseId' => restorable_dropped_database_id,'policyName' => policy_name,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version},
          body: request_content,
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:patch, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200 || status_code == 202
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::SQL::Mgmt::V2017_03_01_preview::Models::ManagedBackupShortTermRetentionPolicy.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Gets a dropped database's short term retention policy list.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ManagedBackupShortTermRetentionPolicyListResult] operation results.
    #
    def list_by_restorable_dropped_database_next(next_page_link, custom_headers:nil)
      response = list_by_restorable_dropped_database_next_async(next_page_link, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets a dropped database's short term retention policy list.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_by_restorable_dropped_database_next_with_http_info(next_page_link, custom_headers:nil)
      list_by_restorable_dropped_database_next_async(next_page_link, custom_headers:custom_headers).value!
    end

    #
    # Gets a dropped database's short term retention policy list.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_by_restorable_dropped_database_next_async(next_page_link, custom_headers:nil)
      fail ArgumentError, 'next_page_link is nil' if next_page_link.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = '{nextLink}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          skip_encoding_path_params: {'nextLink' => next_page_link},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::SQL::Mgmt::V2017_03_01_preview::Models::ManagedBackupShortTermRetentionPolicyListResult.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Gets a dropped database's short term retention policy list.
    #
    # @param resource_group_name [String] The name of the resource group that
    # contains the resource. You can obtain this value from the Azure Resource
    # Manager API or the portal.
    # @param managed_instance_name [String] The name of the managed instance.
    # @param restorable_dropped_database_id [String]
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ManagedBackupShortTermRetentionPolicyListResult] which provide lazy
    # access to pages of the response.
    #
    def list_by_restorable_dropped_database_as_lazy(resource_group_name, managed_instance_name, restorable_dropped_database_id, custom_headers:nil)
      response = list_by_restorable_dropped_database_async(resource_group_name, managed_instance_name, restorable_dropped_database_id, custom_headers:custom_headers).value!
      unless response.nil?
        page = response.body
        page.next_method = Proc.new do |next_page_link|
          list_by_restorable_dropped_database_next_async(next_page_link, custom_headers:custom_headers)
        end
        page
      end
    end

  end
end
