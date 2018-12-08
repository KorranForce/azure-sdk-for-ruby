# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V6_3_0_9
  module Models
    #
    # Describes the list of nodes targeted by a repair action.
    #
    # This type supports the Service Fabric platform; it is not meant to be
    # used directly from your code.
    #
    class NodeRepairTargetDescription < RepairTargetDescriptionBase

      include MsRestAzure


      def initialize
        @Kind = "Node"
      end

      attr_accessor :Kind

      # @return [Array<String>] The list of nodes targeted by a repair action.
      attr_accessor :node_names


      #
      # Mapper for NodeRepairTargetDescription class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Node',
          type: {
            name: 'Composite',
            class_name: 'NodeRepairTargetDescription',
            model_properties: {
              Kind: {
                client_side_validation: true,
                required: true,
                serialized_name: 'Kind',
                type: {
                  name: 'String'
                }
              },
              node_names: {
                client_side_validation: true,
                required: false,
                serialized_name: 'NodeNames',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
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
