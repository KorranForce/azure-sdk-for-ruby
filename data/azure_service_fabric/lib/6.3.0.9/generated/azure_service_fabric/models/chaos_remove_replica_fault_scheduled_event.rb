# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V6_3_0_9
  module Models
    #
    # Chaos Remove Replica Fault Scheduled event.
    #
    class ChaosRemoveReplicaFaultScheduledEvent < ReplicaEvent

      include MsRestAzure


      def initialize
        @Kind = "ChaosRemoveReplicaFaultScheduled"
      end

      attr_accessor :Kind

      # @return Id of fault group.
      attr_accessor :fault_group_id

      # @return Id of fault.
      attr_accessor :fault_id

      # @return [String] Service name.
      attr_accessor :service_uri


      #
      # Mapper for ChaosRemoveReplicaFaultScheduledEvent class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ChaosRemoveReplicaFaultScheduled',
          type: {
            name: 'Composite',
            class_name: 'ChaosRemoveReplicaFaultScheduledEvent',
            model_properties: {
              event_instance_id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'EventInstanceId',
                type: {
                  name: 'String'
                }
              },
              time_stamp: {
                client_side_validation: true,
                required: true,
                serialized_name: 'TimeStamp',
                type: {
                  name: 'DateTime'
                }
              },
              has_correlated_events: {
                client_side_validation: true,
                required: false,
                serialized_name: 'HasCorrelatedEvents',
                type: {
                  name: 'Boolean'
                }
              },
              Kind: {
                client_side_validation: true,
                required: true,
                serialized_name: 'Kind',
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
              replica_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ReplicaId',
                type: {
                  name: 'Number'
                }
              },
              fault_group_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'FaultGroupId',
                type: {
                  name: 'String'
                }
              },
              fault_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'FaultId',
                type: {
                  name: 'String'
                }
              },
              service_uri: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ServiceUri',
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
