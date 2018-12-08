# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V6_2_0_9
  module Models
    #
    # Service Created event.
    #
    class ServiceCreatedEvent < ServiceEvent

      include MsRestAzure


      def initialize
        @Kind = "ServiceCreated"
      end

      attr_accessor :Kind

      # @return [String] Service type name.
      attr_accessor :service_type_name

      # @return [String] Application name.
      attr_accessor :application_name

      # @return [String] Application type name.
      attr_accessor :application_type_name

      # @return [Integer] Id of Service instance.
      attr_accessor :service_instance

      # @return [Boolean] Indicates if Service is stateful.
      attr_accessor :is_stateful

      # @return [Integer] Number of partitions.
      attr_accessor :partition_count

      # @return [Integer] Size of target replicas set.
      attr_accessor :target_replica_set_size

      # @return [Integer] Minimum size of replicas set.
      attr_accessor :min_replica_set_size

      # @return [String] Version of Service package.
      attr_accessor :service_package_version

      # @return An internal ID used by Service Fabric to uniquely identify a
      # partition. This is a randomly generated GUID when the service was
      # created. The partition ID is unique and does not change for the
      # lifetime of the service. If the same service was deleted and recreated
      # the IDs of its partitions would be different.
      attr_accessor :partition_id


      #
      # Mapper for ServiceCreatedEvent class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ServiceCreated',
          type: {
            name: 'Composite',
            class_name: 'ServiceCreatedEvent',
            model_properties: {
              event_instance_id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'EventInstanceId',
                type: {
                  name: 'String'
                }
              },
              time_stamp: {
                client_side_validation: true,
                required: true,
                serialized_name: 'TimeStamp',
                type: {
                  name: 'DateTime'
                }
              },
              has_correlated_events: {
                client_side_validation: true,
                required: false,
                serialized_name: 'HasCorrelatedEvents',
                type: {
                  name: 'Boolean'
                }
              },
              Kind: {
                client_side_validation: true,
                required: true,
                serialized_name: 'Kind',
                type: {
                  name: 'String'
                }
              },
              service_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ServiceId',
                type: {
                  name: 'String'
                }
              },
              service_type_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ServiceTypeName',
                type: {
                  name: 'String'
                }
              },
              application_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ApplicationName',
                type: {
                  name: 'String'
                }
              },
              application_type_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ApplicationTypeName',
                type: {
                  name: 'String'
                }
              },
              service_instance: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ServiceInstance',
                type: {
                  name: 'Number'
                }
              },
              is_stateful: {
                client_side_validation: true,
                required: false,
                serialized_name: 'IsStateful',
                type: {
                  name: 'Boolean'
                }
              },
              partition_count: {
                client_side_validation: true,
                required: false,
                serialized_name: 'PartitionCount',
                type: {
                  name: 'Number'
                }
              },
              target_replica_set_size: {
                client_side_validation: true,
                required: false,
                serialized_name: 'TargetReplicaSetSize',
                type: {
                  name: 'Number'
                }
              },
              min_replica_set_size: {
                client_side_validation: true,
                required: false,
                serialized_name: 'MinReplicaSetSize',
                type: {
                  name: 'Number'
                }
              },
              service_package_version: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ServicePackageVersion',
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
