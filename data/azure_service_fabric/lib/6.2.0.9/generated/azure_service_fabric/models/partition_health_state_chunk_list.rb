# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V6_2_0_9
  module Models
    #
    # The list of partition health state chunks that respect the input filters
    # in the chunk query description.
    # Returned by get cluster health state chunks query as part of the parent
    # application hierarchy.
    #
    class PartitionHealthStateChunkList

      include MsRestAzure

      # @return [Array<PartitionHealthStateChunk>] The list of partition health
      # state chunks that respect the input filters in the chunk query.
      attr_accessor :items


      #
      # Mapper for PartitionHealthStateChunkList class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PartitionHealthStateChunkList',
          type: {
            name: 'Composite',
            class_name: 'PartitionHealthStateChunkList',
            model_properties: {
              items: {
                client_side_validation: true,
                required: false,
                serialized_name: 'Items',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'PartitionHealthStateChunkElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'PartitionHealthStateChunk'
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
