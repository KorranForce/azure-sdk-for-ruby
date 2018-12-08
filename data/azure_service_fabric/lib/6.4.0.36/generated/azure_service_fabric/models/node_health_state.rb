# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V6_4_0_36
  module Models
    #
    # Represents the health state of a node, which contains the node identifier
    # and its aggregated health state.
    #
    class NodeHealthState < EntityHealthState

      include MsRestAzure

      # @return [String] The name of a Service Fabric node.
      attr_accessor :name

      # @return [NodeId] An internal ID used by Service Fabric to uniquely
      # identify a node. Node Id is deterministically generated from node name.
      attr_accessor :id


      #
      # Mapper for NodeHealthState class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'NodeHealthState',
          type: {
            name: 'Composite',
            class_name: 'NodeHealthState',
            model_properties: {
              aggregated_health_state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'AggregatedHealthState',
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
              },
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'Id',
                type: {
                  name: 'Composite',
                  class_name: 'NodeId'
                }
              }
            }
          }
        }
      end
    end
  end
end
