# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V6_3_0_9
  module Models
    #
    # Provides various statistics of the queue used in the service fabric
    # replicator.
    # Contains information about the service fabric replicator like the
    # replication/copy queue utilization, last acknowledgement received
    # timestamp, etc.
    # Depending on the role of the replicator, the properties in this type
    # imply different meanings.
    #
    class ReplicatorQueueStatus

      include MsRestAzure

      # @return [Integer] Represents the utilization of the queue. A value of 0
      # indicates that the queue is empty and a value of 100 indicates the
      # queue is full.
      attr_accessor :queue_utilization_percentage

      # @return [String] Represents the virtual memory consumed by the queue in
      # bytes.
      attr_accessor :queue_memory_size

      # @return [String] On a primary replicator, this is semantically the
      # sequence number of the operation for which all the secondary replicas
      # have sent an acknowledgement.
      # On a secondary replicator, this is the smallest sequence number of the
      # operation that is present in the queue.
      attr_accessor :first_sequence_number

      # @return [String] On a primary replicator, this is semantically the
      # highest sequence number of the operation for which all the secondary
      # replicas have sent an acknowledgement.
      # On a secondary replicator, this is semantically the highest sequence
      # number that has been applied to the persistent state.
      attr_accessor :completed_sequence_number

      # @return [String] On a primary replicator, this is semantically the
      # highest sequence number of the operation for which a write quorum of
      # the secondary replicas have sent an acknowledgement.
      # On a secondary replicator, this is semantically the highest sequence
      # number of the in-order operation received from the primary.
      attr_accessor :committed_sequence_number

      # @return [String] Represents the latest sequence number of the operation
      # that is available in the queue.
      attr_accessor :last_sequence_number


      #
      # Mapper for ReplicatorQueueStatus class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ReplicatorQueueStatus',
          type: {
            name: 'Composite',
            class_name: 'ReplicatorQueueStatus',
            model_properties: {
              queue_utilization_percentage: {
                client_side_validation: true,
                required: false,
                serialized_name: 'QueueUtilizationPercentage',
                type: {
                  name: 'Number'
                }
              },
              queue_memory_size: {
                client_side_validation: true,
                required: false,
                serialized_name: 'QueueMemorySize',
                type: {
                  name: 'String'
                }
              },
              first_sequence_number: {
                client_side_validation: true,
                required: false,
                serialized_name: 'FirstSequenceNumber',
                type: {
                  name: 'String'
                }
              },
              completed_sequence_number: {
                client_side_validation: true,
                required: false,
                serialized_name: 'CompletedSequenceNumber',
                type: {
                  name: 'String'
                }
              },
              committed_sequence_number: {
                client_side_validation: true,
                required: false,
                serialized_name: 'CommittedSequenceNumber',
                type: {
                  name: 'String'
                }
              },
              last_sequence_number: {
                client_side_validation: true,
                required: false,
                serialized_name: 'LastSequenceNumber',
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
