=begin
#NSX-T Manager API

#VMware NSX-T Manager REST API

OpenAPI spec version: 2.5.1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.7

=end

require 'uri'

module NSXT
  class ManagementPlaneApiLogicalRoutingAndServicesNatApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Add a NAT rule in a specific logical router
    # Add a NAT rule in a specific logical router. 
    # @param logical_router_id 
    # @param nat_rule 
    # @param [Hash] opts the optional parameters
    # @return [NatRule]
    def add_nat_rule(logical_router_id, nat_rule, opts = {})
      data, _status_code, _headers = add_nat_rule_with_http_info(logical_router_id, nat_rule, opts)
      data
    end

    # Add a NAT rule in a specific logical router
    # Add a NAT rule in a specific logical router. 
    # @param logical_router_id 
    # @param nat_rule 
    # @param [Hash] opts the optional parameters
    # @return [Array<(NatRule, Fixnum, Hash)>] NatRule data, response status code and response headers
    def add_nat_rule_with_http_info(logical_router_id, nat_rule, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiLogicalRoutingAndServicesNatApi.add_nat_rule ...'
      end
      # verify the required parameter 'logical_router_id' is set
      if @api_client.config.client_side_validation && logical_router_id.nil?
        fail ArgumentError, "Missing the required parameter 'logical_router_id' when calling ManagementPlaneApiLogicalRoutingAndServicesNatApi.add_nat_rule"
      end
      # verify the required parameter 'nat_rule' is set
      if @api_client.config.client_side_validation && nat_rule.nil?
        fail ArgumentError, "Missing the required parameter 'nat_rule' when calling ManagementPlaneApiLogicalRoutingAndServicesNatApi.add_nat_rule"
      end
      # resource path
      local_var_path = '/logical-routers/{logical-router-id}/nat/rules'.sub('{' + 'logical-router-id' + '}', logical_router_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(nat_rule)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'NatRule')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiLogicalRoutingAndServicesNatApi#add_nat_rule\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Add multiple NAT rules in a specific logical router
    # Create multiple NAT rules in a specific logical router. The API succeeds only when all rules are accepted and created successfully. Any one validation voilation will fail the API, no rule will be created. The ruleIds of each rules can be found from the responsed message. 
    # @param logical_router_id 
    # @param nat_rule_list 
    # @param [Hash] opts the optional parameters
    # @return [NatRuleList]
    def add_nat_rules_create_multiple(logical_router_id, nat_rule_list, opts = {})
      data, _status_code, _headers = add_nat_rules_create_multiple_with_http_info(logical_router_id, nat_rule_list, opts)
      data
    end

    # Add multiple NAT rules in a specific logical router
    # Create multiple NAT rules in a specific logical router. The API succeeds only when all rules are accepted and created successfully. Any one validation voilation will fail the API, no rule will be created. The ruleIds of each rules can be found from the responsed message. 
    # @param logical_router_id 
    # @param nat_rule_list 
    # @param [Hash] opts the optional parameters
    # @return [Array<(NatRuleList, Fixnum, Hash)>] NatRuleList data, response status code and response headers
    def add_nat_rules_create_multiple_with_http_info(logical_router_id, nat_rule_list, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiLogicalRoutingAndServicesNatApi.add_nat_rules_create_multiple ...'
      end
      # verify the required parameter 'logical_router_id' is set
      if @api_client.config.client_side_validation && logical_router_id.nil?
        fail ArgumentError, "Missing the required parameter 'logical_router_id' when calling ManagementPlaneApiLogicalRoutingAndServicesNatApi.add_nat_rules_create_multiple"
      end
      # verify the required parameter 'nat_rule_list' is set
      if @api_client.config.client_side_validation && nat_rule_list.nil?
        fail ArgumentError, "Missing the required parameter 'nat_rule_list' when calling ManagementPlaneApiLogicalRoutingAndServicesNatApi.add_nat_rules_create_multiple"
      end
      # resource path
      local_var_path = '/logical-routers/{logical-router-id}/nat/rules?action=create_multiple'.sub('{' + 'logical-router-id' + '}', logical_router_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(nat_rule_list)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'NatRuleList')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiLogicalRoutingAndServicesNatApi#add_nat_rules_create_multiple\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Delete a specific NAT rule from a logical router
    # Delete a specific NAT rule from a logical router 
    # @param logical_router_id 
    # @param rule_id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_nat_rule(logical_router_id, rule_id, opts = {})
      delete_nat_rule_with_http_info(logical_router_id, rule_id, opts)
      nil
    end

    # Delete a specific NAT rule from a logical router
    # Delete a specific NAT rule from a logical router 
    # @param logical_router_id 
    # @param rule_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_nat_rule_with_http_info(logical_router_id, rule_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiLogicalRoutingAndServicesNatApi.delete_nat_rule ...'
      end
      # verify the required parameter 'logical_router_id' is set
      if @api_client.config.client_side_validation && logical_router_id.nil?
        fail ArgumentError, "Missing the required parameter 'logical_router_id' when calling ManagementPlaneApiLogicalRoutingAndServicesNatApi.delete_nat_rule"
      end
      # verify the required parameter 'rule_id' is set
      if @api_client.config.client_side_validation && rule_id.nil?
        fail ArgumentError, "Missing the required parameter 'rule_id' when calling ManagementPlaneApiLogicalRoutingAndServicesNatApi.delete_nat_rule"
      end
      # resource path
      local_var_path = '/logical-routers/{logical-router-id}/nat/rules/{rule-id}'.sub('{' + 'logical-router-id' + '}', logical_router_id.to_s).sub('{' + 'rule-id' + '}', rule_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiLogicalRoutingAndServicesNatApi#delete_nat_rule\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get a specific NAT rule from a given logical router
    # Get a specific NAT rule from a given logical router 
    # @param logical_router_id 
    # @param rule_id 
    # @param [Hash] opts the optional parameters
    # @return [NatRule]
    def get_nat_rule(logical_router_id, rule_id, opts = {})
      data, _status_code, _headers = get_nat_rule_with_http_info(logical_router_id, rule_id, opts)
      data
    end

    # Get a specific NAT rule from a given logical router
    # Get a specific NAT rule from a given logical router 
    # @param logical_router_id 
    # @param rule_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(NatRule, Fixnum, Hash)>] NatRule data, response status code and response headers
    def get_nat_rule_with_http_info(logical_router_id, rule_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiLogicalRoutingAndServicesNatApi.get_nat_rule ...'
      end
      # verify the required parameter 'logical_router_id' is set
      if @api_client.config.client_side_validation && logical_router_id.nil?
        fail ArgumentError, "Missing the required parameter 'logical_router_id' when calling ManagementPlaneApiLogicalRoutingAndServicesNatApi.get_nat_rule"
      end
      # verify the required parameter 'rule_id' is set
      if @api_client.config.client_side_validation && rule_id.nil?
        fail ArgumentError, "Missing the required parameter 'rule_id' when calling ManagementPlaneApiLogicalRoutingAndServicesNatApi.get_nat_rule"
      end
      # resource path
      local_var_path = '/logical-routers/{logical-router-id}/nat/rules/{rule-id}'.sub('{' + 'logical-router-id' + '}', logical_router_id.to_s).sub('{' + 'rule-id' + '}', rule_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'NatRule')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiLogicalRoutingAndServicesNatApi#get_nat_rule\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get the statistics of all rules of the logical router
    # Returns the summation of statistics for all rules from all nodes for the Specified Logical Router. Also gives the per transport node statistics for provided logical router. The query parameter \"source=realtime\" is not supported. 
    # @param logical_router_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :source Data source type.
    # @return [NatStatisticsPerLogicalRouter]
    def get_nat_statistics_per_logical_router(logical_router_id, opts = {})
      data, _status_code, _headers = get_nat_statistics_per_logical_router_with_http_info(logical_router_id, opts)
      data
    end

    # Get the statistics of all rules of the logical router
    # Returns the summation of statistics for all rules from all nodes for the Specified Logical Router. Also gives the per transport node statistics for provided logical router. The query parameter \&quot;source&#x3D;realtime\&quot; is not supported. 
    # @param logical_router_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :source Data source type.
    # @return [Array<(NatStatisticsPerLogicalRouter, Fixnum, Hash)>] NatStatisticsPerLogicalRouter data, response status code and response headers
    def get_nat_statistics_per_logical_router_with_http_info(logical_router_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiLogicalRoutingAndServicesNatApi.get_nat_statistics_per_logical_router ...'
      end
      # verify the required parameter 'logical_router_id' is set
      if @api_client.config.client_side_validation && logical_router_id.nil?
        fail ArgumentError, "Missing the required parameter 'logical_router_id' when calling ManagementPlaneApiLogicalRoutingAndServicesNatApi.get_nat_statistics_per_logical_router"
      end
      if @api_client.config.client_side_validation && opts[:'source'] && !['realtime', 'cached'].include?(opts[:'source'])
        fail ArgumentError, 'invalid value for "source", must be one of realtime, cached'
      end
      # resource path
      local_var_path = '/logical-routers/{logical-router-id}/nat/rules/statistics'.sub('{' + 'logical-router-id' + '}', logical_router_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'source'] = opts[:'source'] if !opts[:'source'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'NatStatisticsPerLogicalRouter')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiLogicalRoutingAndServicesNatApi#get_nat_statistics_per_logical_router\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get the statistics of a specified logical router NAT Rule
    # Returns the summation of statistics from all nodes for the Specified Logical Router NAT Rule. Query parameter \"source=realtime\" is the only supported source. 
    # @param logical_router_id 
    # @param rule_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :source Data source type.
    # @return [NatStatisticsPerRule]
    def get_nat_statistics_per_rule(logical_router_id, rule_id, opts = {})
      data, _status_code, _headers = get_nat_statistics_per_rule_with_http_info(logical_router_id, rule_id, opts)
      data
    end

    # Get the statistics of a specified logical router NAT Rule
    # Returns the summation of statistics from all nodes for the Specified Logical Router NAT Rule. Query parameter \&quot;source&#x3D;realtime\&quot; is the only supported source. 
    # @param logical_router_id 
    # @param rule_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :source Data source type.
    # @return [Array<(NatStatisticsPerRule, Fixnum, Hash)>] NatStatisticsPerRule data, response status code and response headers
    def get_nat_statistics_per_rule_with_http_info(logical_router_id, rule_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiLogicalRoutingAndServicesNatApi.get_nat_statistics_per_rule ...'
      end
      # verify the required parameter 'logical_router_id' is set
      if @api_client.config.client_side_validation && logical_router_id.nil?
        fail ArgumentError, "Missing the required parameter 'logical_router_id' when calling ManagementPlaneApiLogicalRoutingAndServicesNatApi.get_nat_statistics_per_rule"
      end
      # verify the required parameter 'rule_id' is set
      if @api_client.config.client_side_validation && rule_id.nil?
        fail ArgumentError, "Missing the required parameter 'rule_id' when calling ManagementPlaneApiLogicalRoutingAndServicesNatApi.get_nat_statistics_per_rule"
      end
      if @api_client.config.client_side_validation && opts[:'source'] && !['realtime', 'cached'].include?(opts[:'source'])
        fail ArgumentError, 'invalid value for "source", must be one of realtime, cached'
      end
      # resource path
      local_var_path = '/logical-routers/{logical-router-id}/nat/rules/{rule-id}/statistics'.sub('{' + 'logical-router-id' + '}', logical_router_id.to_s).sub('{' + 'rule-id' + '}', rule_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'source'] = opts[:'source'] if !opts[:'source'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'NatStatisticsPerRule')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiLogicalRoutingAndServicesNatApi#get_nat_statistics_per_rule\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get statistics for all logical router NAT rules on a transport node
    # Returns the summation of statistics for all rules from all logical routers which are present on given transport node. Only cached statistics are supported. The query parameter \"source=realtime\" is not supported. 
    # @param node_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :source Data source type.
    # @return [NatStatisticsPerTransportNode]
    def get_nat_statistics_per_transport_node(node_id, opts = {})
      data, _status_code, _headers = get_nat_statistics_per_transport_node_with_http_info(node_id, opts)
      data
    end

    # Get statistics for all logical router NAT rules on a transport node
    # Returns the summation of statistics for all rules from all logical routers which are present on given transport node. Only cached statistics are supported. The query parameter \&quot;source&#x3D;realtime\&quot; is not supported. 
    # @param node_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :source Data source type.
    # @return [Array<(NatStatisticsPerTransportNode, Fixnum, Hash)>] NatStatisticsPerTransportNode data, response status code and response headers
    def get_nat_statistics_per_transport_node_with_http_info(node_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiLogicalRoutingAndServicesNatApi.get_nat_statistics_per_transport_node ...'
      end
      # verify the required parameter 'node_id' is set
      if @api_client.config.client_side_validation && node_id.nil?
        fail ArgumentError, "Missing the required parameter 'node_id' when calling ManagementPlaneApiLogicalRoutingAndServicesNatApi.get_nat_statistics_per_transport_node"
      end
      if @api_client.config.client_side_validation && opts[:'source'] && !['realtime', 'cached'].include?(opts[:'source'])
        fail ArgumentError, 'invalid value for "source", must be one of realtime, cached'
      end
      # resource path
      local_var_path = '/transport-nodes/{node-id}/statistics/nat-rules'.sub('{' + 'node-id' + '}', node_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'source'] = opts[:'source'] if !opts[:'source'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'NatStatisticsPerTransportNode')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiLogicalRoutingAndServicesNatApi#get_nat_statistics_per_transport_node\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List NAT rules of the logical router
    # Returns paginated list of all user defined NAT rules of the specific logical router 
    # @param logical_router_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer) (default to 1000)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [NatRuleListResult]
    def list_nat_rules(logical_router_id, opts = {})
      data, _status_code, _headers = list_nat_rules_with_http_info(logical_router_id, opts)
      data
    end

    # List NAT rules of the logical router
    # Returns paginated list of all user defined NAT rules of the specific logical router 
    # @param logical_router_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [Array<(NatRuleListResult, Fixnum, Hash)>] NatRuleListResult data, response status code and response headers
    def list_nat_rules_with_http_info(logical_router_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiLogicalRoutingAndServicesNatApi.list_nat_rules ...'
      end
      # verify the required parameter 'logical_router_id' is set
      if @api_client.config.client_side_validation && logical_router_id.nil?
        fail ArgumentError, "Missing the required parameter 'logical_router_id' when calling ManagementPlaneApiLogicalRoutingAndServicesNatApi.list_nat_rules"
      end
      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling ManagementPlaneApiLogicalRoutingAndServicesNatApi.list_nat_rules, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] < 0
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling ManagementPlaneApiLogicalRoutingAndServicesNatApi.list_nat_rules, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/logical-routers/{logical-router-id}/nat/rules'.sub('{' + 'logical-router-id' + '}', logical_router_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'cursor'] = opts[:'cursor'] if !opts[:'cursor'].nil?
      query_params[:'included_fields'] = opts[:'included_fields'] if !opts[:'included_fields'].nil?
      query_params[:'page_size'] = opts[:'page_size'] if !opts[:'page_size'].nil?
      query_params[:'sort_ascending'] = opts[:'sort_ascending'] if !opts[:'sort_ascending'].nil?
      query_params[:'sort_by'] = opts[:'sort_by'] if !opts[:'sort_by'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'NatRuleListResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiLogicalRoutingAndServicesNatApi#list_nat_rules\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update a specific NAT rule from a given logical router
    # Update a specific NAT rule from a given logical router. 
    # @param logical_router_id 
    # @param rule_id 
    # @param nat_rule 
    # @param [Hash] opts the optional parameters
    # @return [NatRule]
    def update_nat_rule(logical_router_id, rule_id, nat_rule, opts = {})
      data, _status_code, _headers = update_nat_rule_with_http_info(logical_router_id, rule_id, nat_rule, opts)
      data
    end

    # Update a specific NAT rule from a given logical router
    # Update a specific NAT rule from a given logical router. 
    # @param logical_router_id 
    # @param rule_id 
    # @param nat_rule 
    # @param [Hash] opts the optional parameters
    # @return [Array<(NatRule, Fixnum, Hash)>] NatRule data, response status code and response headers
    def update_nat_rule_with_http_info(logical_router_id, rule_id, nat_rule, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiLogicalRoutingAndServicesNatApi.update_nat_rule ...'
      end
      # verify the required parameter 'logical_router_id' is set
      if @api_client.config.client_side_validation && logical_router_id.nil?
        fail ArgumentError, "Missing the required parameter 'logical_router_id' when calling ManagementPlaneApiLogicalRoutingAndServicesNatApi.update_nat_rule"
      end
      # verify the required parameter 'rule_id' is set
      if @api_client.config.client_side_validation && rule_id.nil?
        fail ArgumentError, "Missing the required parameter 'rule_id' when calling ManagementPlaneApiLogicalRoutingAndServicesNatApi.update_nat_rule"
      end
      # verify the required parameter 'nat_rule' is set
      if @api_client.config.client_side_validation && nat_rule.nil?
        fail ArgumentError, "Missing the required parameter 'nat_rule' when calling ManagementPlaneApiLogicalRoutingAndServicesNatApi.update_nat_rule"
      end
      # resource path
      local_var_path = '/logical-routers/{logical-router-id}/nat/rules/{rule-id}'.sub('{' + 'logical-router-id' + '}', logical_router_id.to_s).sub('{' + 'rule-id' + '}', rule_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(nat_rule)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'NatRule')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiLogicalRoutingAndServicesNatApi#update_nat_rule\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end