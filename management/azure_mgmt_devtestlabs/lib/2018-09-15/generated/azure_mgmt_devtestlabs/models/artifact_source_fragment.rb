# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DevTestLabs::Mgmt::V2018_09_15
  module Models
    #
    # Properties of an artifact source.
    #
    class ArtifactSourceFragment < UpdateResource

      include MsRestAzure

      # @return [String] The artifact source's display name.
      attr_accessor :display_name

      # @return [String] The artifact source's URI.
      attr_accessor :uri

      # @return [SourceControlType] The artifact source's type. Possible values
      # include: 'VsoGit', 'GitHub'
      attr_accessor :source_type

      # @return [String] The folder containing artifacts.
      attr_accessor :folder_path

      # @return [String] The folder containing Azure Resource Manager
      # templates.
      attr_accessor :arm_template_folder_path

      # @return [String] The artifact source's branch reference.
      attr_accessor :branch_ref

      # @return [String] The security token to authenticate to the artifact
      # source.
      attr_accessor :security_token

      # @return [EnableStatus] Indicates if the artifact source is enabled
      # (values: Enabled, Disabled). Possible values include: 'Enabled',
      # 'Disabled'
      attr_accessor :status


      #
      # Mapper for ArtifactSourceFragment class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ArtifactSourceFragment',
          type: {
            name: 'Composite',
            class_name: 'ArtifactSourceFragment',
            model_properties: {
              tags: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              display_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.displayName',
                type: {
                  name: 'String'
                }
              },
              uri: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.uri',
                type: {
                  name: 'String'
                }
              },
              source_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.sourceType',
                type: {
                  name: 'String'
                }
              },
              folder_path: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.folderPath',
                type: {
                  name: 'String'
                }
              },
              arm_template_folder_path: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.armTemplateFolderPath',
                type: {
                  name: 'String'
                }
              },
              branch_ref: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.branchRef',
                type: {
                  name: 'String'
                }
              },
              security_token: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.securityToken',
                type: {
                  name: 'String'
                }
              },
              status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.status',
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