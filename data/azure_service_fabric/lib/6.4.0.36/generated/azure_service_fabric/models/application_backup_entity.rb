# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V6_4_0_36
  module Models
    #
    # Identifies the Service Fabric application which is being backed up.
    #
    class ApplicationBackupEntity < BackupEntity

      include MsRestAzure


      def initialize
        @EntityKind = "Application"
      end

      attr_accessor :EntityKind

      # @return [String] The name of the application, including the 'fabric:'
      # URI scheme.
      attr_accessor :application_name


      #
      # Mapper for ApplicationBackupEntity class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Application',
          type: {
            name: 'Composite',
            class_name: 'ApplicationBackupEntity',
            model_properties: {
              EntityKind: {
                client_side_validation: true,
                required: true,
                serialized_name: 'EntityKind',
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
              }
            }
          }
        }
      end
    end
  end
end
