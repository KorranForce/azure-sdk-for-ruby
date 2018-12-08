# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V6_4_0_36
  module Models
    #
    # Information about a stateless service instance deployed on a node.
    #
    class DeployedStatelessServiceInstanceInfo < DeployedServiceReplicaInfo

      include MsRestAzure


      def initialize
        @ServiceKind = "Stateless"
      end

      attr_accessor :ServiceKind

      # @return [String] Id of a stateless service instance. InstanceId is used
      # by Service Fabric to uniquely identify an instance of a partition of a
      # stateless service. It is unique within a partition and does not change
      # for the lifetime of the instance. If the instance has failed over on
      # the same or different node, it will get a different value for the
      # InstanceId.
      attr_accessor :instance_id


      #
      # Mapper for DeployedStatelessServiceInstanceInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Stateless',
          type: {
            name: 'Composite',
            class_name: 'DeployedStatelessServiceInstanceInfo',
            model_properties: {
              service_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ServiceName',
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
              service_manifest_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ServiceManifestName',
                type: {
                  name: 'String'
                }
              },
              code_package_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'CodePackageName',
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
              },
              replica_status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ReplicaStatus',
                type: {
                  name: 'String'
                }
              },
              address: {
                client_side_validation: true,
                required: false,
                serialized_name: 'Address',
                type: {
                  name: 'String'
                }
              },
              service_package_activation_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ServicePackageActivationId',
                type: {
                  name: 'String'
                }
              },
              host_process_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'HostProcessId',
                type: {
                  name: 'String'
                }
              },
              ServiceKind: {
                client_side_validation: true,
                required: true,
                serialized_name: 'ServiceKind',
                type: {
                  name: 'String'
                }
              },
              instance_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'InstanceId',
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
