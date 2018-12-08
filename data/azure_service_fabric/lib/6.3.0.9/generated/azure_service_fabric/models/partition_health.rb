# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V6_3_0_9
  module Models
    #
    # Information about the health of a Service Fabric partition.
    #
    class PartitionHealth < EntityHealth

      include MsRestAzure

      # @return ID of the partition whose health information is described by
      # this object.
      attr_accessor :partition_id

      # @return [Array<ReplicaHealthState>] The list of replica health states
      # associated with the partition.
      attr_accessor :replica_health_states


      #
      # Mapper for PartitionHealth class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PartitionHealth',
          type: {
            name: 'Composite',
            class_name: 'PartitionHealth',
            model_properties: {
              aggregated_health_state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'AggregatedHealthState',
                type: {
                  name: 'String'
                }
              },
              health_events: {
                client_side_validation: true,
                required: false,
                serialized_name: 'HealthEvents',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'HealthEventElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'HealthEvent'
                      }
                  }
                }
              },
              unhealthy_evaluations: {
                client_side_validation: true,
                required: false,
                serialized_name: 'UnhealthyEvaluations',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'HealthEvaluationWrapperElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'HealthEvaluationWrapper'
                      }
                  }
                }
              },
              health_statistics: {
                client_side_validation: true,
                required: false,
                serialized_name: 'HealthStatistics',
                type: {
                  name: 'Composite',
                  class_name: 'HealthStatistics'
                }
              },
              partition_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'PartitionId',
                type: {
                  name: 'String'
                }
              },
              replica_health_states: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ReplicaHealthStates',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ReplicaHealthStateElementType',
                      type: {
                        name: 'Composite',
                        polymorphic_discriminator: 'ServiceKind',
                        uber_parent: 'EntityHealthState',
                        class_name: 'ReplicaHealthState'
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
