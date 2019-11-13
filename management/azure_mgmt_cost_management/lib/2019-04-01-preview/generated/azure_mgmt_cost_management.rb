# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

require 'uri'
require 'cgi'
require 'date'
require 'json'
require 'base64'
require 'erb'
require 'securerandom'
require 'time'
require 'timeliness'
require 'faraday'
require 'faraday-cookie_jar'
require 'concurrent'
require 'ms_rest'
require '2019-04-01-preview/generated/azure_mgmt_cost_management/module_definition'
require 'ms_rest_azure'

module Azure::CostManagement::Mgmt::V2019_04_01_preview
  autoload :Views,                                              '2019-04-01-preview/generated/azure_mgmt_cost_management/views.rb'
  autoload :Budgets,                                            '2019-04-01-preview/generated/azure_mgmt_cost_management/budgets.rb'
  autoload :Budget,                                             '2019-04-01-preview/generated/azure_mgmt_cost_management/budget.rb'
  autoload :Operations,                                         '2019-04-01-preview/generated/azure_mgmt_cost_management/operations.rb'
  autoload :CostManagementClient,                               '2019-04-01-preview/generated/azure_mgmt_cost_management/cost_management_client.rb'

  module Models
    autoload :OperationDisplay,                                   '2019-04-01-preview/generated/azure_mgmt_cost_management/models/operation_display.rb'
    autoload :ErrorBase,                                          '2019-04-01-preview/generated/azure_mgmt_cost_management/models/error_base.rb'
    autoload :Operation,                                          '2019-04-01-preview/generated/azure_mgmt_cost_management/models/operation.rb'
    autoload :ErrorResponse,                                      '2019-04-01-preview/generated/azure_mgmt_cost_management/models/error_response.rb'
    autoload :OperationListResult,                                '2019-04-01-preview/generated/azure_mgmt_cost_management/models/operation_list_result.rb'
    autoload :ProxyResource,                                      '2019-04-01-preview/generated/azure_mgmt_cost_management/models/proxy_resource.rb'
    autoload :Scope,                                              '2019-04-01-preview/generated/azure_mgmt_cost_management/models/scope.rb'
    autoload :ReportConfigDatasetConfiguration,                   '2019-04-01-preview/generated/azure_mgmt_cost_management/models/report_config_dataset_configuration.rb'
    autoload :KpiProperties,                                      '2019-04-01-preview/generated/azure_mgmt_cost_management/models/kpi_properties.rb'
    autoload :ReportConfigGrouping,                               '2019-04-01-preview/generated/azure_mgmt_cost_management/models/report_config_grouping.rb'
    autoload :PivotProperties,                                    '2019-04-01-preview/generated/azure_mgmt_cost_management/models/pivot_properties.rb'
    autoload :ReportConfigComparisonExpression,                   '2019-04-01-preview/generated/azure_mgmt_cost_management/models/report_config_comparison_expression.rb'
    autoload :ReportConfigFilter,                                 '2019-04-01-preview/generated/azure_mgmt_cost_management/models/report_config_filter.rb'
    autoload :ReportConfigDataset,                                '2019-04-01-preview/generated/azure_mgmt_cost_management/models/report_config_dataset.rb'
    autoload :Resource,                                           '2019-04-01-preview/generated/azure_mgmt_cost_management/models/resource.rb'
    autoload :ViewListResult,                                     '2019-04-01-preview/generated/azure_mgmt_cost_management/models/view_list_result.rb'
    autoload :ReportConfigAggregation,                            '2019-04-01-preview/generated/azure_mgmt_cost_management/models/report_config_aggregation.rb'
    autoload :BudgetTimePeriod,                                   '2019-04-01-preview/generated/azure_mgmt_cost_management/models/budget_time_period.rb'
    autoload :ErrorDetails,                                       '2019-04-01-preview/generated/azure_mgmt_cost_management/models/error_details.rb'
    autoload :CurrentSpend,                                       '2019-04-01-preview/generated/azure_mgmt_cost_management/models/current_spend.rb'
    autoload :ReportConfigSorting,                                '2019-04-01-preview/generated/azure_mgmt_cost_management/models/report_config_sorting.rb'
    autoload :Notification,                                       '2019-04-01-preview/generated/azure_mgmt_cost_management/models/notification.rb'
    autoload :ReportConfigTimePeriod,                             '2019-04-01-preview/generated/azure_mgmt_cost_management/models/report_config_time_period.rb'
    autoload :BudgetsListResult,                                  '2019-04-01-preview/generated/azure_mgmt_cost_management/models/budgets_list_result.rb'
    autoload :View,                                               '2019-04-01-preview/generated/azure_mgmt_cost_management/models/view.rb'
    autoload :BudgetModel,                                        '2019-04-01-preview/generated/azure_mgmt_cost_management/models/budget_model.rb'
    autoload :TimeframeType,                                      '2019-04-01-preview/generated/azure_mgmt_cost_management/models/timeframe_type.rb'
    autoload :GranularityType,                                    '2019-04-01-preview/generated/azure_mgmt_cost_management/models/granularity_type.rb'
    autoload :ReportConfigColumnType,                             '2019-04-01-preview/generated/azure_mgmt_cost_management/models/report_config_column_type.rb'
    autoload :OperatorType,                                       '2019-04-01-preview/generated/azure_mgmt_cost_management/models/operator_type.rb'
    autoload :ChartType,                                          '2019-04-01-preview/generated/azure_mgmt_cost_management/models/chart_type.rb'
    autoload :AccumulatedType,                                    '2019-04-01-preview/generated/azure_mgmt_cost_management/models/accumulated_type.rb'
    autoload :MetricType,                                         '2019-04-01-preview/generated/azure_mgmt_cost_management/models/metric_type.rb'
    autoload :KpiTypeType,                                        '2019-04-01-preview/generated/azure_mgmt_cost_management/models/kpi_type_type.rb'
    autoload :PivotTypeType,                                      '2019-04-01-preview/generated/azure_mgmt_cost_management/models/pivot_type_type.rb'
    autoload :CategoryType,                                       '2019-04-01-preview/generated/azure_mgmt_cost_management/models/category_type.rb'
    autoload :TimeGrainType,                                      '2019-04-01-preview/generated/azure_mgmt_cost_management/models/time_grain_type.rb'
    autoload :NotificationOperatorType,                           '2019-04-01-preview/generated/azure_mgmt_cost_management/models/notification_operator_type.rb'
  end
end