# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V6_3_0_9
  module Models
    #
    # Represents a scaling mechanism for adding or removing instances of
    # stateless service partition.
    #
    class PartitionInstanceCountScaleMechanism < ScalingMechanismDescription

      include MsRestAzure


      def initialize
        @Kind = "PartitionInstanceCount"
      end

      attr_accessor :Kind

      # @return [Integer] Minimum number of instances of the partition.
      attr_accessor :min_instance_count

      # @return [Integer] Maximum number of instances of the partition.
      attr_accessor :max_instance_count

      # @return [Integer] The number of instances to add or remove during a
      # scaling operation.
      attr_accessor :scale_increment


      #
      # Mapper for PartitionInstanceCountScaleMechanism class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PartitionInstanceCount',
          type: {
            name: 'Composite',
            class_name: 'PartitionInstanceCountScaleMechanism',
            model_properties: {
              Kind: {
                client_side_validation: true,
                required: true,
                serialized_name: 'Kind',
                type: {
                  name: 'String'
                }
              },
              min_instance_count: {
                client_side_validation: true,
                required: true,
                serialized_name: 'MinInstanceCount',
                type: {
                  name: 'Number'
                }
              },
              max_instance_count: {
                client_side_validation: true,
                required: true,
                serialized_name: 'MaxInstanceCount',
                type: {
                  name: 'Number'
                }
              },
              scale_increment: {
                client_side_validation: true,
                required: true,
                serialized_name: 'ScaleIncrement',
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end
