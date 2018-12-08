# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V6_2_0_9
  module Models
    #
    # Safety check that ensures that a quorum of replicas are not lost for a
    # partition.
    #
    class EnsurePartitionQurumSafetyCheck < PartitionSafetyCheck

      include MsRestAzure


      def initialize
        @Kind = "EnsurePartitionQuorum"
      end

      attr_accessor :Kind


      #
      # Mapper for EnsurePartitionQurumSafetyCheck class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'EnsurePartitionQuorum',
          type: {
            name: 'Composite',
            class_name: 'EnsurePartitionQurumSafetyCheck',
            model_properties: {
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
              }
            }
          }
        }
      end
    end
  end
end
