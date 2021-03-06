# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::AnalysisServices::Mgmt::V2017_08_01_beta
  module Models
    #
    # An object that represents SKU details for existing resources.
    #
    class SkuDetailsForExistingResource

      include MsRestAzure

      # @return [ResourceSku] The SKU in SKU details for existing resources.
      attr_accessor :sku


      #
      # Mapper for SkuDetailsForExistingResource class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SkuDetailsForExistingResource',
          type: {
            name: 'Composite',
            class_name: 'SkuDetailsForExistingResource',
            model_properties: {
              sku: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sku',
                type: {
                  name: 'Composite',
                  class_name: 'ResourceSku'
                }
              }
            }
          }
        }
      end
    end
  end
end
