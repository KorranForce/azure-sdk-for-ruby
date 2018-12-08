# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V6_2_0_9
  module Models
    #
    # Represents the health state of a deployed service package, containing the
    # entity identifier and the aggregated health state.
    #
    class DeployedServicePackageHealthState < EntityHealthState

      include MsRestAzure

      # @return [String] Name of the node on which the service package is
      # deployed.
      attr_accessor :node_name

      # @return [String] The name of the application, including the 'fabric:'
      # URI scheme.
      attr_accessor :application_name

      # @return [String] Name of the manifest describing the service package.
      attr_accessor :service_manifest_name

      # @return [String] The ActivationId of a deployed service package. If
      # ServicePackageActivationMode specified at the time of creating the
      # service
      # is 'SharedProcess' (or if it is not specified, in which case it
      # defaults to 'SharedProcess'), then value of ServicePackageActivationId
      # is always an empty string.
      attr_accessor :service_package_activation_id


      #
      # Mapper for DeployedServicePackageHealthState class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DeployedServicePackageHealthState',
          type: {
            name: 'Composite',
            class_name: 'DeployedServicePackageHealthState',
            model_properties: {
              aggregated_health_state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'AggregatedHealthState',
                type: {
                  name: 'String'
                }
              },
              node_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'NodeName',
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
              service_manifest_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ServiceManifestName',
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
              }
            }
          }
        }
      end
    end
  end
end
