# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V6_4_0_36
  module Models
    #
    # Information about a stateful replica running in a code package. Note
    # DeployedServiceReplicaQueryResult will contain duplicate data like
    # ServiceKind, ServiceName, PartitionId and replicaId.
    #
    class DeployedStatefulServiceReplicaDetailInfo < DeployedServiceReplicaDetailInfo

      include MsRestAzure


      def initialize
        @ServiceKind = "Stateful"
      end

      attr_accessor :ServiceKind

      # @return [String] Id of a stateful service replica. ReplicaId is used by
      # Service Fabric to uniquely identify a replica of a partition. It is
      # unique within a partition and does not change for the lifetime of the
      # replica. If a replica gets dropped and another replica gets created on
      # the same node for the same partition, it will get a different value for
      # the id. Sometimes the id of a stateless service instance is also
      # referred as a replica id.
      attr_accessor :replica_id

      # @return [ReplicatorOperationName] Specifies the operation currently
      # being executed by the Replicator. Possible values include: 'Invalid',
      # 'None', 'Open', 'ChangeRole', 'UpdateEpoch', 'Close', 'Abort',
      # 'OnDataLoss', 'WaitForCatchup', 'Build'
      attr_accessor :current_replicator_operation

      # @return [PartitionAccessStatus] Specifies the access status of the
      # partition. Possible values include: 'Invalid', 'Granted',
      # 'ReconfigurationPending', 'NotPrimary', 'NoWriteQuorum'
      attr_accessor :read_status

      # @return [PartitionAccessStatus] Specifies the access status of the
      # partition. Possible values include: 'Invalid', 'Granted',
      # 'ReconfigurationPending', 'NotPrimary', 'NoWriteQuorum'
      attr_accessor :write_status

      # @return [ReplicatorStatus] Represents a base class for primary or
      # secondary replicator status.
      # Contains information about the service fabric replicator like the
      # replication/copy queue utilization, last acknowledgement received
      # timestamp, etc.
      attr_accessor :replicator_status

      # @return [KeyValueStoreReplicaStatus] Key value store related
      # information for the replica.
      attr_accessor :replica_status

      # @return [DeployedStatefulServiceReplicaInfo] Information about a
      # stateful service replica deployed on a node.
      attr_accessor :deployed_service_replica_query_result


      #
      # Mapper for DeployedStatefulServiceReplicaDetailInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Stateful',
          type: {
            name: 'Composite',
            class_name: 'DeployedStatefulServiceReplicaDetailInfo',
            model_properties: {
              service_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ServiceName',
                type: {
                  name: 'String'
                }
              },
              partition_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'PartitionId',
                type: {
                  name: 'String'
                }
              },
              current_service_operation: {
                client_side_validation: true,
                required: false,
                serialized_name: 'CurrentServiceOperation',
                type: {
                  name: 'String'
                }
              },
              current_service_operation_start_time_utc: {
                client_side_validation: true,
                required: false,
                serialized_name: 'CurrentServiceOperationStartTimeUtc',
                type: {
                  name: 'DateTime'
                }
              },
              reported_load: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ReportedLoad',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'LoadMetricReportInfoElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'LoadMetricReportInfo'
                      }
                  }
                }
              },
              ServiceKind: {
                client_side_validation: true,
                required: true,
                serialized_name: 'ServiceKind',
                type: {
                  name: 'String'
                }
              },
              replica_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ReplicaId',
                type: {
                  name: 'String'
                }
              },
              current_replicator_operation: {
                client_side_validation: true,
                required: false,
                serialized_name: 'CurrentReplicatorOperation',
                type: {
                  name: 'String'
                }
              },
              read_status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ReadStatus',
                type: {
                  name: 'String'
                }
              },
              write_status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'WriteStatus',
                type: {
                  name: 'String'
                }
              },
              replicator_status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ReplicatorStatus',
                type: {
                  name: 'Composite',
                  polymorphic_discriminator: 'Kind',
                  uber_parent: 'ReplicatorStatus',
                  class_name: 'ReplicatorStatus'
                }
              },
              replica_status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ReplicaStatus',
                type: {
                  name: 'Composite',
                  class_name: 'KeyValueStoreReplicaStatus'
                }
              },
              deployed_service_replica_query_result: {
                client_side_validation: true,
                required: false,
                serialized_name: 'DeployedServiceReplicaQueryResult',
                type: {
                  name: 'Composite',
                  class_name: 'DeployedStatefulServiceReplicaInfo'
                }
              }
            }
          }
        }
      end
    end
  end
end
