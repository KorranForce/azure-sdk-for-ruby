# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V6_3_0_9
  module Models
    #
    # Provides statistics about the Service Fabric Replicator, when it is
    # functioning in a Primary role.
    #
    class PrimaryReplicatorStatus < ReplicatorStatus

      include MsRestAzure


      def initialize
        @Kind = "Primary"
      end

      attr_accessor :Kind

      # @return [ReplicatorQueueStatus] Details about the replication queue on
      # the primary replicator.
      attr_accessor :replication_queue_status

      # @return [Array<RemoteReplicatorStatus>] The status of all the active
      # and idle secondary replicators that the primary is aware of.
      attr_accessor :remote_replicators


      #
      # Mapper for PrimaryReplicatorStatus class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Primary',
          type: {
            name: 'Composite',
            class_name: 'PrimaryReplicatorStatus',
            model_properties: {
              Kind: {
                client_side_validation: true,
                required: true,
                serialized_name: 'Kind',
                type: {
                  name: 'String'
                }
              },
              replication_queue_status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ReplicationQueueStatus',
                type: {
                  name: 'Composite',
                  class_name: 'ReplicatorQueueStatus'
                }
              },
              remote_replicators: {
                client_side_validation: true,
                required: false,
                serialized_name: 'RemoteReplicators',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'RemoteReplicatorStatusElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'RemoteReplicatorStatus'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end
