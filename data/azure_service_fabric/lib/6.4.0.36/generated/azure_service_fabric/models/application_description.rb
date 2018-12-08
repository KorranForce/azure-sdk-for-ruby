# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V6_4_0_36
  module Models
    #
    # Describes a Service Fabric application.
    #
    class ApplicationDescription

      include MsRestAzure

      # @return [String] The name of the application, including the 'fabric:'
      # URI scheme.
      attr_accessor :name

      # @return [String] The application type name as defined in the
      # application manifest.
      attr_accessor :type_name

      # @return [String] The version of the application type as defined in the
      # application manifest.
      attr_accessor :type_version

      # @return [Array<ApplicationParameter>] List of application parameters
      # with overridden values from their default values specified in the
      # application manifest.
      attr_accessor :parameter_list

      # @return [ApplicationCapacityDescription] Describes capacity information
      # for services of this application. This description can be used for
      # describing the following.
      # - Reserving the capacity for the services on the nodes
      # - Limiting the total number of nodes that services of this application
      # can run on
      # - Limiting the custom capacity metrics to limit the total consumption
      # of this metric by the services of this application
      attr_accessor :application_capacity


      #
      # Mapper for ApplicationDescription class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ApplicationDescription',
          type: {
            name: 'Composite',
            class_name: 'ApplicationDescription',
            model_properties: {
              name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'Name',
                type: {
                  name: 'String'
                }
              },
              type_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'TypeName',
                type: {
                  name: 'String'
                }
              },
              type_version: {
                client_side_validation: true,
                required: true,
                serialized_name: 'TypeVersion',
                type: {
                  name: 'String'
                }
              },
              parameter_list: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ParameterList',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ApplicationParameterElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ApplicationParameter'
                      }
                  }
                }
              },
              application_capacity: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ApplicationCapacity',
                type: {
                  name: 'Composite',
                  class_name: 'ApplicationCapacityDescription'
                }
              }
            }
          }
        }
      end
    end
  end
end
