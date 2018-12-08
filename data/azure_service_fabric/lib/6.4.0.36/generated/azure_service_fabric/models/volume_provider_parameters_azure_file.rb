# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V6_4_0_36
  module Models
    #
    # This type describes a volume provided by an Azure Files file share.
    #
    class VolumeProviderParametersAzureFile

      include MsRestAzure

      # @return [String] Name of the Azure storage account for the File Share.
      attr_accessor :account_name

      # @return [String] Access key of the Azure storage account for the File
      # Share.
      attr_accessor :account_key

      # @return [String] Name of the Azure Files file share that provides
      # storage for the volume.
      attr_accessor :share_name


      #
      # Mapper for VolumeProviderParametersAzureFile class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'VolumeProviderParametersAzureFile',
          type: {
            name: 'Composite',
            class_name: 'VolumeProviderParametersAzureFile',
            model_properties: {
              account_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'accountName',
                type: {
                  name: 'String'
                }
              },
              account_key: {
                client_side_validation: true,
                required: false,
                serialized_name: 'accountKey',
                type: {
                  name: 'String'
                }
              },
              share_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'shareName',
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
