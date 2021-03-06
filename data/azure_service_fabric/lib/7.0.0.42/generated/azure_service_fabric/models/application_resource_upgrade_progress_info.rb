# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V7_0_0_42
  module Models
    #
    # This type describes an application resource upgrade.
    #
    class ApplicationResourceUpgradeProgressInfo

      include MsRestAzure

      # @return [String] Name of the Application resource.
      attr_accessor :name

      # @return [String] The target application version for the application
      # upgrade.
      attr_accessor :target_application_type_version

      # @return [String] The estimated UTC datetime when the upgrade started.
      attr_accessor :start_timestamp_utc

      # @return [ApplicationResourceUpgradeState] The state of the application
      # resource upgrade. Possible values include: 'Invalid',
      # 'ProvisioningTarget', 'RollingForward', 'UnprovisioningCurrent',
      # 'CompletedRollforward', 'RollingBack', 'UnprovisioningTarget',
      # 'CompletedRollback', 'Failed'
      attr_accessor :upgrade_state

      # @return [String] The estimated percent of replicas are completed in the
      # upgrade.
      attr_accessor :percent_completed

      # @return [Array<ServiceUpgradeProgress>] List of service upgrade
      # progresses.
      attr_accessor :service_upgrade_progress

      # @return [RollingUpgradeMode] The mode used to monitor health during a
      # rolling upgrade. The values are UnmonitoredAuto, UnmonitoredManual, and
      # Monitored. Possible values include: 'Invalid', 'UnmonitoredAuto',
      # 'UnmonitoredManual', 'Monitored'. Default value: 'Monitored' .
      attr_accessor :rolling_upgrade_mode

      # @return [String] The estimated amount of time that the overall upgrade
      # elapsed. It is first interpreted as a string representing an ISO 8601
      # duration. If that fails, then it is interpreted as a number
      # representing the total number of milliseconds. Default value:
      # 'PT0H2M0S' .
      attr_accessor :upgrade_duration

      # @return [String] Additional detailed information about the status of
      # the pending upgrade.
      attr_accessor :application_upgrade_status_details

      # @return [Integer] The maximum amount of time to block processing of an
      # upgrade domain and prevent loss of availability when there are
      # unexpected issues. When this timeout expires, processing of the upgrade
      # domain will proceed regardless of availability loss issues. The timeout
      # is reset at the start of each upgrade domain. Valid values are between
      # 0 and 42949672925 inclusive. (unsigned 32-bit integer). Default value:
      # 42949672925 .
      attr_accessor :upgrade_replica_set_check_timeout_in_seconds

      # @return [String] The estimated UTC datetime when the upgrade failed and
      # FailureAction was executed.
      attr_accessor :failure_timestamp_utc


      #
      # Mapper for ApplicationResourceUpgradeProgressInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ApplicationResourceUpgradeProgressInfo',
          type: {
            name: 'Composite',
            class_name: 'ApplicationResourceUpgradeProgressInfo',
            model_properties: {
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'Name',
                type: {
                  name: 'String'
                }
              },
              target_application_type_version: {
                client_side_validation: true,
                required: false,
                serialized_name: 'TargetApplicationTypeVersion',
                type: {
                  name: 'String'
                }
              },
              start_timestamp_utc: {
                client_side_validation: true,
                required: false,
                serialized_name: 'StartTimestampUtc',
                type: {
                  name: 'String'
                }
              },
              upgrade_state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'UpgradeState',
                type: {
                  name: 'String'
                }
              },
              percent_completed: {
                client_side_validation: true,
                required: false,
                serialized_name: 'PercentCompleted',
                type: {
                  name: 'String'
                }
              },
              service_upgrade_progress: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ServiceUpgradeProgress',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ServiceUpgradeProgressElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ServiceUpgradeProgress'
                      }
                  }
                }
              },
              rolling_upgrade_mode: {
                client_side_validation: true,
                required: false,
                serialized_name: 'RollingUpgradeMode',
                default_value: 'Monitored',
                type: {
                  name: 'String'
                }
              },
              upgrade_duration: {
                client_side_validation: true,
                required: false,
                serialized_name: 'UpgradeDuration',
                default_value: 'PT0H2M0S',
                type: {
                  name: 'String'
                }
              },
              application_upgrade_status_details: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ApplicationUpgradeStatusDetails',
                type: {
                  name: 'String'
                }
              },
              upgrade_replica_set_check_timeout_in_seconds: {
                client_side_validation: true,
                required: false,
                serialized_name: 'UpgradeReplicaSetCheckTimeoutInSeconds',
                default_value: 42949672925,
                type: {
                  name: 'Number'
                }
              },
              failure_timestamp_utc: {
                client_side_validation: true,
                required: false,
                serialized_name: 'FailureTimestampUtc',
                type: {
                  name: 'String'
                }
              }
            }
          }
        }
      end
    end
  end
end
