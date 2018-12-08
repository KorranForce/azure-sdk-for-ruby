# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V6_2_0_9
  module Models
    #
    # Describes the partition information for the name as a string that is
    # based on partition schemes.
    #
    class NamedPartitionInformation < PartitionInformation

      include MsRestAzure


      def initialize
        @ServicePartitionKind = "Named"
      end

      attr_accessor :ServicePartitionKind

      # @return [String] Name of the partition.
      attr_accessor :name


      #
      # Mapper for NamedPartitionInformation class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Named',
          type: {
            name: 'Composite',
            class_name: 'NamedPartitionInformation',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'Id',
                type: {
                  name: 'String'
                }
              },
              ServicePartitionKind: {
                client_side_validation: true,
                required: true,
                serialized_name: 'ServicePartitionKind',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'Name',
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
