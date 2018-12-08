# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V6_2_0_9
  module Models
    #
    # Information about a image store folder. It includes how many files this
    # folder contains and its image store relative path.
    #
    class FolderInfo

      include MsRestAzure

      # @return [String] The remote location within image store. This path is
      # relative to the image store root.
      attr_accessor :store_relative_path

      # @return [String] The number of files from within the image store
      # folder.
      attr_accessor :file_count


      #
      # Mapper for FolderInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'FolderInfo',
          type: {
            name: 'Composite',
            class_name: 'FolderInfo',
            model_properties: {
              store_relative_path: {
                client_side_validation: true,
                required: false,
                serialized_name: 'StoreRelativePath',
                type: {
                  name: 'String'
                }
              },
              file_count: {
                client_side_validation: true,
                required: false,
                serialized_name: 'FileCount',
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
