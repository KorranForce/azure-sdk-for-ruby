# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2019_12_01
  module Models
    #
    # Contract details.
    #
    class TagDescriptionContract < Resource

      include MsRestAzure

      # @return [String] Description of the Tag.
      attr_accessor :description

      # @return [String] Absolute URL of external resources describing the tag.
      attr_accessor :external_docs_url

      # @return [String] Description of the external resources describing the
      # tag.
      attr_accessor :external_docs_description

      # @return [String] Identifier of the tag in the form of /tags/{tagId}
      attr_accessor :tag_id

      # @return [String] Tag name.
      attr_accessor :display_name


      #
      # Mapper for TagDescriptionContract class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'TagDescriptionContract',
          type: {
            name: 'Composite',
            class_name: 'TagDescriptionContract',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.description',
                type: {
                  name: 'String'
                }
              },
              external_docs_url: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.externalDocsUrl',
                constraints: {
                  MaxLength: 2000
                },
                type: {
                  name: 'String'
                }
              },
              external_docs_description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.externalDocsDescription',
                type: {
                  name: 'String'
                }
              },
              tag_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.tagId',
                type: {
                  name: 'String'
                }
              },
              display_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.displayName',
                constraints: {
                  MaxLength: 160,
                  MinLength: 1
                },
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
