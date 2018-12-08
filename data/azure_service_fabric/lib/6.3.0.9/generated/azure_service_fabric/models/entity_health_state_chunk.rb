# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V6_3_0_9
  module Models
    #
    # A base type for the health state chunk of various entities in the
    # cluster. It contains the aggregated health state.
    #
    class EntityHealthStateChunk

      include MsRestAzure

      # @return [HealthState] The health state of a Service Fabric entity such
      # as Cluster, Node, Application, Service, Partition, Replica etc.
      # Possible values include: 'Invalid', 'Ok', 'Warning', 'Error', 'Unknown'
      attr_accessor :health_state


      #
      # Mapper for EntityHealthStateChunk class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'EntityHealthStateChunk',
          type: {
            name: 'Composite',
            class_name: 'EntityHealthStateChunk',
            model_properties: {
              health_state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'HealthState',
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
