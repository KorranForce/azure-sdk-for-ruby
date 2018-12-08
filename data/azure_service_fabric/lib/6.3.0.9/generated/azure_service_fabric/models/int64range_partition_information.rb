# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V6_3_0_9
  module Models
    #
    # Describes the partition information for the integer range that is based
    # on partition schemes.
    #
    class Int64RangePartitionInformation < PartitionInformation

      include MsRestAzure


      def initialize
        @ServicePartitionKind = "Int64Range"
      end

      attr_accessor :ServicePartitionKind

      # @return [String] Specifies the minimum key value handled by this
      # partition.
      attr_accessor :low_key

      # @return [String] Specifies the maximum key value handled by this
      # partition.
      attr_accessor :high_key


      #
      # Mapper for Int64RangePartitionInformation class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Int64Range',
          type: {
            name: 'Composite',
            class_name: 'Int64RangePartitionInformation',
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
              low_key: {
                client_side_validation: true,
                required: false,
                serialized_name: 'LowKey',
                type: {
                  name: 'String'
                }
              },
              high_key: {
                client_side_validation: true,
                required: false,
                serialized_name: 'HighKey',
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
