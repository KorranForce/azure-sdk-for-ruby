# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview
  module Models
    #
    # Additional SQL Server feature settings.
    #
    class AdditionalFeaturesServerConfigurations

      include MsRestAzure

      # @return [Boolean] Enable or disable R services (SQL 2016 onwards).
      attr_accessor :is_rservices_enabled


      #
      # Mapper for AdditionalFeaturesServerConfigurations class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AdditionalFeaturesServerConfigurations',
          type: {
            name: 'Composite',
            class_name: 'AdditionalFeaturesServerConfigurations',
            model_properties: {
              is_rservices_enabled: {
                client_side_validation: true,
                required: false,
                serialized_name: 'isRServicesEnabled',
                type: {
                  name: 'Boolean'
                }
              }
            }
          }
        }
      end
    end
  end
end
