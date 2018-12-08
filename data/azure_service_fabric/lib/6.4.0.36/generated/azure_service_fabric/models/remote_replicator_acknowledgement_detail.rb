# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V6_4_0_36
  module Models
    #
    # Provides various statistics of the acknowledgements that are being
    # received from the remote replicator.
    #
    class RemoteReplicatorAcknowledgementDetail

      include MsRestAzure

      # @return [String] Represents the average duration it takes for the
      # remote replicator to receive an operation.
      attr_accessor :average_receive_duration

      # @return [String] Represents the average duration it takes for the
      # remote replicator to apply an operation. This usually entails writing
      # the operation to disk.
      attr_accessor :average_apply_duration

      # @return [String] Represents the number of operations not yet received
      # by a remote replicator.
      attr_accessor :not_received_count

      # @return [String] Represents the number of operations received and not
      # yet applied by a remote replicator.
      attr_accessor :received_and_not_applied_count


      #
      # Mapper for RemoteReplicatorAcknowledgementDetail class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'RemoteReplicatorAcknowledgementDetail',
          type: {
            name: 'Composite',
            class_name: 'RemoteReplicatorAcknowledgementDetail',
            model_properties: {
              average_receive_duration: {
                client_side_validation: true,
                required: false,
                serialized_name: 'AverageReceiveDuration',
                type: {
                  name: 'String'
                }
              },
              average_apply_duration: {
                client_side_validation: true,
                required: false,
                serialized_name: 'AverageApplyDuration',
                type: {
                  name: 'String'
                }
              },
              not_received_count: {
                client_side_validation: true,
                required: false,
                serialized_name: 'NotReceivedCount',
                type: {
                  name: 'String'
                }
              },
              received_and_not_applied_count: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ReceivedAndNotAppliedCount',
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
